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
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Div (Int Int) Int)
(declare-fun $IsBox (T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array2? Tagclass._System.array2 tytagFamily$array2)
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
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@0))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@1 T@U) ($o@@2 T@U) ($i0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0) (< $i0 (_System.array2.Length0 $o@@2))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@2))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) (MultiIndexField (IndexField $i0) $i1)) _System.array2$arg@@4 $h@@1))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) (MultiIndexField (IndexField $i0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |610|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@2 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@5))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
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
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@3 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@6)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_System.array2.Length0 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@4 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@7)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_System.array2.Length1 $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |106|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@1 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f@@1 T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@7))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@7)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
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
(declare-fun |m#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |a#0@1| () Int)
(declare-fun |i#4@0| () Int)
(declare-fun |j#4@0| () Int)
(declare-fun _module._default.MirrorImage$T () T@U)
(declare-fun |i#2@0| () Int)
(declare-fun |j#2@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |i#0_2@0| () Int)
(declare-fun |j#0_6@0| () Int)
(declare-fun |b#0_0@2| () Int)
(declare-fun |j#0_4@0| () Int)
(declare-fun |j#0_2@0| () Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun |j#0_0@0| () Int)
(declare-fun |$w$loop#0_0@1| () Bool)
(declare-fun |$decr$loop#0_00@2| () Int)
(declare-fun $index0@2 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $index1@2 () T@U)
(declare-fun |$rhs#0_0_0@2| () T@U)
(declare-fun |$rhs#0_0_1@2| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |b#0_0@3| () Int)
(declare-fun |a#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |$decr_init$loop#0_00@1| () Int)
(declare-fun |b#0_0@1| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |a#0@0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MirrorImage)
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
 (=> (= (ControlFlow 0 0) 189) (let ((anon20_correct  (=> (and (forall ((|i#5| Int) (|j#5| Int) ) (!  (=> (and (and (and (<= |a#0@1| |i#5|) (< |i#5| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#5|)) (< |j#5| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#5|) |j#5|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5|) |j#5|))))
 :qid |MatrixFundfy.14:22|
 :skolemid |555|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5|) |j#5|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#5|) |j#5|)))
)) (= (ControlFlow 0 142) (- 0 141))) (or (not (= |m#0| null)) (not true)))))
(let ((anon70_Else_correct  (=> (and (not (and (and (and (<= |a#0@1| |i#4@0|) (< |i#4@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#4@0|)) (< |j#4@0| (_System.array2.Length1 |m#0|)))) (= (ControlFlow 0 151) 142)) anon20_correct)))
(let ((anon70_Then_correct  (=> (and (and (and (<= |a#0@1| |i#4@0|) (< |i#4@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#4@0|)) (< |j#4@0| (_System.array2.Length1 |m#0|))) (and (=> (= (ControlFlow 0 143) (- 0 150)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 143) (- 0 149)) (and (<= 0 |i#4@0|) (< |i#4@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 143) (- 0 148)) (and (<= 0 |j#4@0|) (< |j#4@0| (_System.array2.Length1 |m#0|)))) (and (=> (= (ControlFlow 0 143) (- 0 147)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 143) (- 0 146)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 143) (- 0 145)) (and (<= 0 |i#4@0|) (< |i#4@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 143) (- 0 144)) (and (<= 0 |j#4@0|) (< |j#4@0| (_System.array2.Length1 |m#0|)))) (=> (= (ControlFlow 0 143) 142) anon20_correct))))))))))))))
(let ((anon69_Else_correct  (=> (not (and (and (<= |a#0@1| |i#4@0|) (< |i#4@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#4@0|))) (and (=> (= (ControlFlow 0 154) 143) anon70_Then_correct) (=> (= (ControlFlow 0 154) 151) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (and (<= |a#0@1| |i#4@0|) (< |i#4@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#4@0|)) (and (=> (= (ControlFlow 0 152) (- 0 153)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 152) 143) anon70_Then_correct) (=> (= (ControlFlow 0 152) 151) anon70_Else_correct))))))
(let ((anon68_Else_correct  (=> (not (and (<= |a#0@1| |i#4@0|) (< |i#4@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 156) 152) anon69_Then_correct) (=> (= (ControlFlow 0 156) 154) anon69_Else_correct)))))
(let ((anon68_Then_correct  (=> (and (<= |a#0@1| |i#4@0|) (< |i#4@0| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 155) 152) anon69_Then_correct) (=> (= (ControlFlow 0 155) 154) anon69_Else_correct)))))
(let ((anon67_Else_correct  (=> (< |i#4@0| |a#0@1|) (and (=> (= (ControlFlow 0 159) 155) anon68_Then_correct) (=> (= (ControlFlow 0 159) 156) anon68_Else_correct)))))
(let ((anon67_Then_correct  (=> (<= |a#0@1| |i#4@0|) (and (=> (= (ControlFlow 0 157) (- 0 158)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 157) 155) anon68_Then_correct) (=> (= (ControlFlow 0 157) 156) anon68_Else_correct))))))
(let ((anon66_Then_correct  (and (=> (= (ControlFlow 0 160) 157) anon67_Then_correct) (=> (= (ControlFlow 0 160) 159) anon67_Else_correct))))
(let ((anon66_Else_correct true))
(let ((anon11_correct  (=> (forall ((|i#3| Int) (|j#3| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#3|) (< |i#3| |a#0@1|)) (<= (LitInt 0) |j#3|)) (< |j#3| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#3|) |j#3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3|) (- (- (_System.array2.Length1 |m#0|) 1) |j#3|)))))
 :qid |MatrixFundfy.12:22|
 :skolemid |552|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#3|) |j#3|)))
)) (and (=> (= (ControlFlow 0 161) 160) anon66_Then_correct) (=> (= (ControlFlow 0 161) 140) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (not (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |a#0@1|)) (<= (LitInt 0) |j#2@0|)) (< |j#2@0| (_System.array2.Length1 |m#0|)))) (= (ControlFlow 0 172) 161)) anon11_correct)))
(let ((anon65_Then_correct  (=> (and (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |a#0@1|)) (<= (LitInt 0) |j#2@0|)) (< |j#2@0| (_System.array2.Length1 |m#0|))) (and (=> (= (ControlFlow 0 162) (- 0 171)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 162) (- 0 170)) (and (<= 0 |i#2@0|) (< |i#2@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 162) (- 0 169)) (and (<= 0 |j#2@0|) (< |j#2@0| (_System.array2.Length1 |m#0|)))) (and (=> (= (ControlFlow 0 162) (- 0 168)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 162) (- 0 167)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 162) (- 0 166)) (and (<= 0 |i#2@0|) (< |i#2@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 162) (- 0 165)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 162) (- 0 164)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 162) (- 0 163)) (and (<= 0 (- (- (_System.array2.Length1 |m#0|) 1) |j#2@0|)) (< (- (- (_System.array2.Length1 |m#0|) 1) |j#2@0|) (_System.array2.Length1 |m#0|)))) (=> (= (ControlFlow 0 162) 161) anon11_correct)))))))))))))))))
(let ((anon64_Else_correct  (=> (not (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |a#0@1|)) (<= (LitInt 0) |j#2@0|))) (and (=> (= (ControlFlow 0 175) 162) anon65_Then_correct) (=> (= (ControlFlow 0 175) 172) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |a#0@1|)) (<= (LitInt 0) |j#2@0|)) (and (=> (= (ControlFlow 0 173) (- 0 174)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 173) 162) anon65_Then_correct) (=> (= (ControlFlow 0 173) 172) anon65_Else_correct))))))
(let ((anon63_Else_correct  (=> (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |a#0@1|))) (and (=> (= (ControlFlow 0 177) 173) anon64_Then_correct) (=> (= (ControlFlow 0 177) 175) anon64_Else_correct)))))
(let ((anon63_Then_correct  (=> (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |a#0@1|)) (and (=> (= (ControlFlow 0 176) 173) anon64_Then_correct) (=> (= (ControlFlow 0 176) 175) anon64_Else_correct)))))
(let ((anon62_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 179) 176) anon63_Then_correct) (=> (= (ControlFlow 0 179) 177) anon63_Else_correct)))))
(let ((anon62_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 178) 176) anon63_Then_correct) (=> (= (ControlFlow 0 178) 177) anon63_Else_correct)))))
(let ((anon61_Then_correct  (and (=> (= (ControlFlow 0 180) 178) anon62_Then_correct) (=> (= (ControlFlow 0 180) 179) anon62_Else_correct))))
(let ((anon61_Else_correct true))
(let ((anon60_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 181) (- 0 182)) (or (not (= |m#0| null)) (not true))) (=> (<= |a#0@1| (_System.array2.Length0 |m#0|)) (and (=> (= (ControlFlow 0 181) 180) anon61_Then_correct) (=> (= (ControlFlow 0 181) 139) anon61_Else_correct)))))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 135) (- 0 134)) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| (_System.array2.Length0 |m#0|))) (and (<= (LitInt 0) |j#1|) (< |j#1| (_System.array2.Length1 |m#0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |m#0|) (MultiIndexField (IndexField |i#1|) |j#1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#1|)))))
 :qid |MatrixFundfy.6:18|
 :skolemid |550|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |m#0|) (MultiIndexField (IndexField |i#1|) |j#1|)))
)))))
(let ((anon71_Then_correct  (=> (<= (_System.array2.Length0 |m#0|) |a#0@1|) (=> (and (= $Heap@4 $Heap@0) (= (ControlFlow 0 136) 135)) GeneratedUnifiedExit_correct))))
(let ((anon54_correct  (=> (forall ((|i#0_3| Int) (|j#0_7| Int) ) (!  (=> (and (and (and (<= (+ |a#0@1| 1) |i#0_3|) (< |i#0_3| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_7|)) (< |j#0_7| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#0_3|) |j#0_7|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3|) |j#0_7|))))
 :qid |MatrixFundfy.26:24|
 :skolemid |572|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3|) |j#0_7|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#0_3|) |j#0_7|)))
)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (=> (= (ControlFlow 0 43) (- 0 42)) (or (not (= (LitInt 2) 0)) (not true))))))))
(let ((anon90_Else_correct  (=> (and (not (and (and (and (<= (+ |a#0@1| 1) |i#0_2@0|) (< |i#0_2@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_6@0|)) (< |j#0_6@0| (_System.array2.Length1 |m#0|)))) (= (ControlFlow 0 53) 43)) anon54_correct)))
(let ((anon90_Then_correct  (=> (and (and (and (<= (+ |a#0@1| 1) |i#0_2@0|) (< |i#0_2@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_6@0|)) (< |j#0_6@0| (_System.array2.Length1 |m#0|))) (and (=> (= (ControlFlow 0 45) (- 0 52)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 51)) (and (<= 0 |i#0_2@0|) (< |i#0_2@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 45) (- 0 50)) (and (<= 0 |j#0_6@0|) (< |j#0_6@0| (_System.array2.Length1 |m#0|)))) (and (=> (= (ControlFlow 0 45) (- 0 49)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 48)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 45) (- 0 47)) (and (<= 0 |i#0_2@0|) (< |i#0_2@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= 0 |j#0_6@0|) (< |j#0_6@0| (_System.array2.Length1 |m#0|)))) (=> (= (ControlFlow 0 45) 43) anon54_correct))))))))))))))
(let ((anon89_Else_correct  (=> (not (and (and (<= (+ |a#0@1| 1) |i#0_2@0|) (< |i#0_2@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_6@0|))) (and (=> (= (ControlFlow 0 56) 45) anon90_Then_correct) (=> (= (ControlFlow 0 56) 53) anon90_Else_correct)))))
(let ((anon89_Then_correct  (=> (and (and (<= (+ |a#0@1| 1) |i#0_2@0|) (< |i#0_2@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_6@0|)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 54) 45) anon90_Then_correct) (=> (= (ControlFlow 0 54) 53) anon90_Else_correct))))))
(let ((anon88_Else_correct  (=> (not (and (<= (+ |a#0@1| 1) |i#0_2@0|) (< |i#0_2@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 58) 54) anon89_Then_correct) (=> (= (ControlFlow 0 58) 56) anon89_Else_correct)))))
(let ((anon88_Then_correct  (=> (and (<= (+ |a#0@1| 1) |i#0_2@0|) (< |i#0_2@0| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 57) 54) anon89_Then_correct) (=> (= (ControlFlow 0 57) 56) anon89_Else_correct)))))
(let ((anon87_Else_correct  (=> (< |i#0_2@0| (+ |a#0@1| 1)) (and (=> (= (ControlFlow 0 61) 57) anon88_Then_correct) (=> (= (ControlFlow 0 61) 58) anon88_Else_correct)))))
(let ((anon87_Then_correct  (=> (<= (+ |a#0@1| 1) |i#0_2@0|) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 59) 57) anon88_Then_correct) (=> (= (ControlFlow 0 59) 58) anon88_Else_correct))))))
(let ((anon86_Then_correct  (and (=> (= (ControlFlow 0 62) 59) anon87_Then_correct) (=> (= (ControlFlow 0 62) 61) anon87_Else_correct))))
(let ((anon86_Else_correct true))
(let ((anon45_correct  (=> (forall ((|j#0_5| Int) ) (!  (=> (and (<= |b#0_0@2| |j#0_5|) (< |j#0_5| (- (_System.array2.Length1 |m#0|) |b#0_0@2|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5|))))
 :qid |MatrixFundfy.25:24|
 :skolemid |569|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5|)))
)) (and (=> (= (ControlFlow 0 63) 62) anon86_Then_correct) (=> (= (ControlFlow 0 63) 41) anon86_Else_correct)))))
(let ((anon85_Else_correct  (=> (and (not (and (<= |b#0_0@2| |j#0_4@0|) (< |j#0_4@0| (- (_System.array2.Length1 |m#0|) |b#0_0@2|)))) (= (ControlFlow 0 72) 63)) anon45_correct)))
(let ((anon85_Then_correct  (=> (and (<= |b#0_0@2| |j#0_4@0|) (< |j#0_4@0| (- (_System.array2.Length1 |m#0|) |b#0_0@2|))) (and (=> (= (ControlFlow 0 64) (- 0 71)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 64) (- 0 70)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 64) (- 0 69)) (and (<= 0 |j#0_4@0|) (< |j#0_4@0| (_System.array2.Length1 |m#0|)))) (and (=> (= (ControlFlow 0 64) (- 0 68)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 64) (- 0 67)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 64) (- 0 66)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (and (<= 0 |j#0_4@0|) (< |j#0_4@0| (_System.array2.Length1 |m#0|)))) (=> (= (ControlFlow 0 64) 63) anon45_correct))))))))))))))
(let ((anon84_Else_correct  (=> (< |j#0_4@0| |b#0_0@2|) (and (=> (= (ControlFlow 0 75) 64) anon85_Then_correct) (=> (= (ControlFlow 0 75) 72) anon85_Else_correct)))))
(let ((anon84_Then_correct  (=> (<= |b#0_0@2| |j#0_4@0|) (and (=> (= (ControlFlow 0 73) (- 0 74)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 73) 64) anon85_Then_correct) (=> (= (ControlFlow 0 73) 72) anon85_Else_correct))))))
(let ((anon83_Then_correct  (and (=> (= (ControlFlow 0 76) 73) anon84_Then_correct) (=> (= (ControlFlow 0 76) 75) anon84_Else_correct))))
(let ((anon83_Else_correct true))
(let ((anon40_correct  (=> (and (forall ((|j#0_3| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_3|) (< |j#0_3| |b#0_0@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |564|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3|)))
)) (forall ((|j#0_3@@0| Int) (|_t#0#0_0| Int) ) (!  (=> (= |_t#0#0_0| (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@0|)) (=> (and (<= (LitInt 0) |j#0_3@@0|) (< |j#0_3@@0| |b#0_0@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |565|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@0|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@0|)))
))) (and (=> (= (ControlFlow 0 77) 76) anon83_Then_correct) (=> (= (ControlFlow 0 77) 40) anon83_Else_correct)))))
(let ((anon82_Else_correct  (=> (and (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_2@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_2@0|))))) (not true)) (= (ControlFlow 0 88) 77)) anon40_correct)))
(let ((anon82_Then_correct  (=> (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_2@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_2@0|)))) (and (=> (= (ControlFlow 0 79) (- 0 87)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 79) (- 0 86)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 79) (- 0 85)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 79) (- 0 84)) (and (<= 0 |j#0_2@0|) (< |j#0_2@0| (_System.array2.Length1 |m#0|)))) (and (=> (= (ControlFlow 0 79) (- 0 83)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 79) (- 0 82)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 79) (- 0 81)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (and (<= 0 (- (- (_System.array2.Length1 |m#0|) 1) |j#0_2@0|)) (< (- (- (_System.array2.Length1 |m#0|) 1) |j#0_2@0|) (_System.array2.Length1 |m#0|)))) (=> (= (ControlFlow 0 79) 77) anon40_correct)))))))))))))))
(let ((anon81_Then_correct  (=> (and (<= (LitInt 0) |j#0_2@0|) (< |j#0_2@0| |b#0_0@2|)) (and (=> (= (ControlFlow 0 89) (- 0 98)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 89) (- 0 97)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 89) (- 0 96)) (and (<= 0 |j#0_2@0|) (< |j#0_2@0| (_System.array2.Length1 |m#0|)))) (and (=> (= (ControlFlow 0 89) (- 0 95)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 89) (- 0 94)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 89) (- 0 93)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 89) (- 0 92)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 89) (- 0 91)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 89) (- 0 90)) (and (<= 0 (- (- (_System.array2.Length1 |m#0|) 1) |j#0_2@0|)) (< (- (- (_System.array2.Length1 |m#0|) 1) |j#0_2@0|) (_System.array2.Length1 |m#0|)))) (and (=> (= (ControlFlow 0 89) 79) anon82_Then_correct) (=> (= (ControlFlow 0 89) 88) anon82_Else_correct))))))))))))))))))
(let ((anon81_Else_correct  (=> (and (not (and (<= (LitInt 0) |j#0_2@0|) (< |j#0_2@0| |b#0_0@2|))) (= (ControlFlow 0 78) 77)) anon40_correct)))
(let ((anon80_Else_correct  (=> (< |j#0_2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 100) 89) anon81_Then_correct) (=> (= (ControlFlow 0 100) 78) anon81_Else_correct)))))
(let ((anon80_Then_correct  (=> (<= (LitInt 0) |j#0_2@0|) (and (=> (= (ControlFlow 0 99) 89) anon81_Then_correct) (=> (= (ControlFlow 0 99) 78) anon81_Else_correct)))))
(let ((anon79_Then_correct  (and (=> (= (ControlFlow 0 101) 99) anon80_Then_correct) (=> (= (ControlFlow 0 101) 100) anon80_Else_correct))))
(let ((anon79_Else_correct true))
(let ((anon34_correct  (=> (forall ((|i#0_1| Int) (|j#0_1| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#0_1|) (< |i#0_1| |a#0@1|)) (<= (LitInt 0) |j#0_1|)) (< |j#0_1| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#0_1|) |j#0_1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_1|)))))
 :qid |MatrixFundfy.20:24|
 :skolemid |560|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#0_1|) |j#0_1|)))
)) (and (=> (= (ControlFlow 0 102) 101) anon79_Then_correct) (=> (= (ControlFlow 0 102) 39) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (and (not (and (and (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |a#0@1|)) (<= (LitInt 0) |j#0_0@0|)) (< |j#0_0@0| (_System.array2.Length1 |m#0|)))) (= (ControlFlow 0 113) 102)) anon34_correct)))
(let ((anon78_Then_correct  (=> (and (and (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |a#0@1|)) (<= (LitInt 0) |j#0_0@0|)) (< |j#0_0@0| (_System.array2.Length1 |m#0|))) (and (=> (= (ControlFlow 0 103) (- 0 112)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 103) (- 0 111)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 103) (- 0 110)) (and (<= 0 |j#0_0@0|) (< |j#0_0@0| (_System.array2.Length1 |m#0|)))) (and (=> (= (ControlFlow 0 103) (- 0 109)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 103) (- 0 108)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 103) (- 0 107)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array2.Length0 |m#0|)))) (and (=> (= (ControlFlow 0 103) (- 0 106)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 103) (- 0 105)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (=> ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap) (and (=> (= (ControlFlow 0 103) (- 0 104)) (and (<= 0 (- (- (_System.array2.Length1 |m#0|) 1) |j#0_0@0|)) (< (- (- (_System.array2.Length1 |m#0|) 1) |j#0_0@0|) (_System.array2.Length1 |m#0|)))) (=> (= (ControlFlow 0 103) 102) anon34_correct)))))))))))))))))
(let ((anon77_Else_correct  (=> (not (and (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |a#0@1|)) (<= (LitInt 0) |j#0_0@0|))) (and (=> (= (ControlFlow 0 116) 103) anon78_Then_correct) (=> (= (ControlFlow 0 116) 113) anon78_Else_correct)))))
(let ((anon77_Then_correct  (=> (and (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |a#0@1|)) (<= (LitInt 0) |j#0_0@0|)) (and (=> (= (ControlFlow 0 114) (- 0 115)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 114) 103) anon78_Then_correct) (=> (= (ControlFlow 0 114) 113) anon78_Else_correct))))))
(let ((anon76_Else_correct  (=> (not (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |a#0@1|))) (and (=> (= (ControlFlow 0 118) 114) anon77_Then_correct) (=> (= (ControlFlow 0 118) 116) anon77_Else_correct)))))
(let ((anon76_Then_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |a#0@1|)) (and (=> (= (ControlFlow 0 117) 114) anon77_Then_correct) (=> (= (ControlFlow 0 117) 116) anon77_Else_correct)))))
(let ((anon75_Else_correct  (=> (< |i#0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 120) 117) anon76_Then_correct) (=> (= (ControlFlow 0 120) 118) anon76_Else_correct)))))
(let ((anon75_Then_correct  (=> (<= (LitInt 0) |i#0_0@0|) (and (=> (= (ControlFlow 0 119) 117) anon76_Then_correct) (=> (= (ControlFlow 0 119) 118) anon76_Else_correct)))))
(let ((anon74_Then_correct  (and (=> (= (ControlFlow 0 121) 119) anon75_Then_correct) (=> (= (ControlFlow 0 121) 120) anon75_Else_correct))))
(let ((anon74_Else_correct true))
(let ((anon73_Then_correct  (=> (not |$w$loop#0_0@1|) (and (=> (= (ControlFlow 0 122) (- 0 124)) (or (not (= |m#0| null)) (not true))) (and (=> (= (ControlFlow 0 122) (- 0 123)) (or (not (= (LitInt 2) 0)) (not true))) (=> (<= |b#0_0@2| (Div (_System.array2.Length1 |m#0|) (LitInt 2))) (and (=> (= (ControlFlow 0 122) 121) anon74_Then_correct) (=> (= (ControlFlow 0 122) 38) anon74_Else_correct))))))))
(let ((anon91_Else_correct  (=> (and (< |b#0_0@2| (Div (_System.array2.Length1 |m#0|) (LitInt 2))) (= |$decr$loop#0_00@2| (- (Div (_System.array2.Length1 |m#0|) (LitInt 2)) |b#0_0@2|))) (and (=> (= (ControlFlow 0 10) (- 0 34)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 33)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (=> (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 10) (- 0 32)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 31)) (and (<= 0 (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|)) (< (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|) (_System.array2.Length1 |m#0|)))) (=> (and (<= 0 (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|)) (< (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|) (_System.array2.Length1 |m#0|))) (=> (= $index0@2 (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|))) (and (=> (= (ControlFlow 0 10) (- 0 30)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| $index0@2))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| $index0@2)) (and (=> (= (ControlFlow 0 10) (- 0 29)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 28)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (=> (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 10) (- 0 27)) (and (<= 0 |b#0_0@2|) (< |b#0_0@2| (_System.array2.Length1 |m#0|)))) (=> (and (<= 0 |b#0_0@2|) (< |b#0_0@2| (_System.array2.Length1 |m#0|))) (=> (= $index1@2 (MultiIndexField (IndexField |a#0@1|) |b#0_0@2|)) (and (=> (= (ControlFlow 0 10) (- 0 26)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| $index1@2))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0| $index1@2)) (and (=> (= (ControlFlow 0 10) (- 0 25)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 24)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (=> (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 10) (- 0 23)) (and (<= 0 |b#0_0@2|) (< |b#0_0@2| (_System.array2.Length1 |m#0|)))) (=> (and (<= 0 |b#0_0@2|) (< |b#0_0@2| (_System.array2.Length1 |m#0|))) (=> (= |$rhs#0_0_0@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |b#0_0@2|))) (and (=> (= (ControlFlow 0 10) (- 0 22)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 21)) (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|)))) (=> (and (<= 0 |a#0@1|) (< |a#0@1| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 10) (- 0 20)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 19)) (and (<= 0 (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|)) (< (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|) (_System.array2.Length1 |m#0|)))) (=> (and (<= 0 (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|)) (< (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|) (_System.array2.Length1 |m#0|))) (=> (= |$rhs#0_0_1@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|)))) (and (=> (= (ControlFlow 0 10) (- 0 18)) (or (or (or (or (not (= |m#0| |m#0|)) (not true)) (or (not (= |a#0@1| |a#0@1|)) (not true))) (or (not (= |b#0_0@2| (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|))) (not true))) (= |$rhs#0_0_1@2| |$rhs#0_0_0@2|))) (=> (or (or (or (or (not (= |m#0| |m#0|)) (not true)) (or (not (= |a#0@1| |a#0@1|)) (not true))) (or (not (= |b#0_0@2| (- (- (_System.array2.Length1 |m#0|) 1) |b#0_0@2|))) (not true))) (= |$rhs#0_0_1@2| |$rhs#0_0_0@2|)) (=> (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) $index0@2 |$rhs#0_0_0@2|))) (=> (and (and ($IsGoodHeap $Heap@2) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 |m#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |m#0|) $index1@2 |$rhs#0_0_1@2|)))) (and ($IsGoodHeap $Heap@3) (= |b#0_0@3| (+ |b#0_0@2| 1)))) (and (=> (= (ControlFlow 0 10) (- 0 17)) (or (<= 0 |$decr$loop#0_00@2|) (= (- (Div (_System.array2.Length1 |m#0|) (LitInt 2)) |b#0_0@3|) |$decr$loop#0_00@2|))) (=> (or (<= 0 |$decr$loop#0_00@2|) (= (- (Div (_System.array2.Length1 |m#0|) (LitInt 2)) |b#0_0@3|) |$decr$loop#0_00@2|)) (and (=> (= (ControlFlow 0 10) (- 0 16)) (< (- (Div (_System.array2.Length1 |m#0|) (LitInt 2)) |b#0_0@3|) |$decr$loop#0_00@2|)) (=> (< (- (Div (_System.array2.Length1 |m#0|) (LitInt 2)) |b#0_0@3|) |$decr$loop#0_00@2|) (and (=> (= (ControlFlow 0 10) (- 0 15)) (=> |$w$loop#0_0@1| (<= |b#0_0@3| (Div (_System.array2.Length1 |m#0|) (LitInt 2))))) (=> (=> |$w$loop#0_0@1| (<= |b#0_0@3| (Div (_System.array2.Length1 |m#0|) (LitInt 2)))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (=> |$w$loop#0_0@1| (forall ((|i#0_1@@0| Int) (|j#0_1@@0| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#0_1@@0|) (< |i#0_1@@0| |a#0@1|)) (<= (LitInt 0) |j#0_1@@0|)) (< |j#0_1@@0| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |i#0_1@@0|) |j#0_1@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_1@@0|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_1@@0|)))))
 :qid |MatrixFundfy.20:24|
 :skolemid |562|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |i#0_1@@0|) |j#0_1@@0|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|i#0_1@@1| Int) (|j#0_1@@1| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#0_1@@1|) (< |i#0_1@@1| |a#0@1|)) (<= (LitInt 0) |j#0_1@@1|)) (< |j#0_1@@1| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |i#0_1@@1|) |j#0_1@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_1@@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_1@@1|)))))
 :qid |MatrixFundfy.20:24|
 :skolemid |562|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |i#0_1@@1|) |j#0_1@@1|)))
))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (=> |$w$loop#0_0@1| (forall ((|j#0_3@@1| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_3@@1|) (< |j#0_3@@1| |b#0_0@3|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@1|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |567|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@1|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|j#0_3@@2| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_3@@2|) (< |j#0_3@@2| |b#0_0@3|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@2|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |567|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@2|)))
))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (=> |$w$loop#0_0@1| (forall ((|j#0_3@@3| Int) (|_t#0#0_0@@0| Int) ) (!  (=> (= |_t#0#0_0@@0| (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@3|)) (=> (and (<= (LitInt 0) |j#0_3@@3|) (< |j#0_3@@3| |b#0_0@3|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@0|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |568|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@3|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@3|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|j#0_3@@4| Int) (|_t#0#0_0@@1| Int) ) (!  (=> (= |_t#0#0_0@@1| (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@4|)) (=> (and (<= (LitInt 0) |j#0_3@@4|) (< |j#0_3@@4| |b#0_0@3|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@4|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@1|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |568|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@4|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@4|)))
))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> |$w$loop#0_0@1| (forall ((|j#0_5@@0| Int) ) (!  (=> (and (<= |b#0_0@3| |j#0_5@@0|) (< |j#0_5@@0| (- (_System.array2.Length1 |m#0|) |b#0_0@3|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@0|))))
 :qid |MatrixFundfy.25:24|
 :skolemid |571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@0|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@0|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|j#0_5@@1| Int) ) (!  (=> (and (<= |b#0_0@3| |j#0_5@@1|) (< |j#0_5@@1| (- (_System.array2.Length1 |m#0|) |b#0_0@3|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@1|))))
 :qid |MatrixFundfy.25:24|
 :skolemid |571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@1|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@1|)))
))) (=> (= (ControlFlow 0 10) (- 0 9)) (=> |$w$loop#0_0@1| (forall ((|i#0_3@@0| Int) (|j#0_7@@0| Int) ) (!  (=> (and (and (and (<= (+ |a#0@1| 1) |i#0_3@@0|) (< |i#0_3@@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_7@@0|)) (< |j#0_7@@0| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |i#0_3@@0|) |j#0_7@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3@@0|) |j#0_7@@0|))))
 :qid |MatrixFundfy.26:24|
 :skolemid |574|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3@@0|) |j#0_7@@0|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0|) (MultiIndexField (IndexField |i#0_3@@0|) |j#0_7@@0|)))
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon91_Then_correct  (=> (and (<= (Div (_System.array2.Length1 |m#0|) (LitInt 2)) |b#0_0@2|) (= |a#0@2| (+ |a#0@1| 1))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array2.Length0 |m#0|) |a#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array2.Length0 |m#0|) |a#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (< (- (_System.array2.Length0 |m#0|) |a#0@2|) |$decr$loop#00@1|)) (=> (< (- (_System.array2.Length0 |m#0|) |a#0@2|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> |$w$loop#0@0| (<= |a#0@2| (_System.array2.Length0 |m#0|)))) (=> (=> |$w$loop#0@0| (<= |a#0@2| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> |$w$loop#0@0| (forall ((|i#3@@0| Int) (|j#3@@0| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#3@@0|) (< |i#3@@0| |a#0@2|)) (<= (LitInt 0) |j#3@@0|)) (< |j#3@@0| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#3@@0|) |j#3@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@0|) (- (- (_System.array2.Length1 |m#0|) 1) |j#3@@0|)))))
 :qid |MatrixFundfy.12:22|
 :skolemid |554|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#3@@0|) |j#3@@0|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#3@@1| Int) (|j#3@@1| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#3@@1|) (< |i#3@@1| |a#0@2|)) (<= (LitInt 0) |j#3@@1|)) (< |j#3@@1| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#3@@1|) |j#3@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#3@@1|)))))
 :qid |MatrixFundfy.12:22|
 :skolemid |554|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#3@@1|) |j#3@@1|)))
))) (=> (= (ControlFlow 0 4) (- 0 3)) (=> |$w$loop#0@0| (forall ((|i#5@@0| Int) (|j#5@@0| Int) ) (!  (=> (and (and (and (<= |a#0@2| |i#5@@0|) (< |i#5@@0| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#5@@0|)) (< |j#5@@0| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#5@@0|) |j#5@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@0|) |j#5@@0|))))
 :qid |MatrixFundfy.14:22|
 :skolemid |557|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@0|) |j#5@@0|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#5@@0|) |j#5@@0|)))
)))))))))))))))
(let ((anon73_Else_correct  (=> |$w$loop#0_0@1| (and (=> (= (ControlFlow 0 35) (- 0 37)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 35) 4) anon91_Then_correct) (=> (= (ControlFlow 0 35) 10) anon91_Else_correct)))))))))
(let ((anon72_LoopBody_correct  (and (=> (= (ControlFlow 0 125) 122) anon73_Then_correct) (=> (= (ControlFlow 0 125) 35) anon73_Else_correct))))
(let ((anon72_LoopDone_correct true))
(let ((anon72_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (and (and (not false) (<= 0 |a#0@1|)) |$w$loop#0@0|) (<= 0 |b#0_0@2|)) (and (=> |$w$loop#0_0@1| (<= |b#0_0@2| (Div (_System.array2.Length1 |m#0|) (LitInt 2)))) (=> |$w$loop#0_0@1| (forall ((|i#0_1@@2| Int) (|j#0_1@@2| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#0_1@@2|) (< |i#0_1@@2| |a#0@1|)) (<= (LitInt 0) |j#0_1@@2|)) (< |j#0_1@@2| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#0_1@@2|) |j#0_1@@2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_1@@2|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_1@@2|)))))
 :qid |MatrixFundfy.20:24|
 :skolemid |562|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#0_1@@2|) |j#0_1@@2|)))
))))) (and (and (and (=> |$w$loop#0_0@1| (forall ((|j#0_3@@5| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_3@@5|) (< |j#0_3@@5| |b#0_0@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@5|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@5|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |567|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@5|)))
))) (=> |$w$loop#0_0@1| (forall ((|j#0_3@@6| Int) (|_t#0#0_0@@2| Int) ) (!  (=> (= |_t#0#0_0@@2| (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@6|)) (=> (and (<= (LitInt 0) |j#0_3@@6|) (< |j#0_3@@6| |b#0_0@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@6|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@2|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |568|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@6|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@6|)))
)))) (and (=> |$w$loop#0_0@1| (forall ((|j#0_5@@2| Int) ) (!  (=> (and (<= |b#0_0@2| |j#0_5@@2|) (< |j#0_5@@2| (- (_System.array2.Length1 |m#0|) |b#0_0@2|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@2|))))
 :qid |MatrixFundfy.25:24|
 :skolemid |571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@2|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@2|)))
))) (=> |$w$loop#0_0@1| (forall ((|i#0_3@@1| Int) (|j#0_7@@1| Int) ) (!  (=> (and (and (and (<= (+ |a#0@1| 1) |i#0_3@@1|) (< |i#0_3@@1| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_7@@1|)) (< |j#0_7@@1| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#0_3@@1|) |j#0_7@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3@@1|) |j#0_7@@1|))))
 :qid |MatrixFundfy.26:24|
 :skolemid |574|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3@@1|) |j#0_7@@1|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |m#0|) (MultiIndexField (IndexField |i#0_3@@1|) |j#0_7@@1|)))
))))) (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8)) (= $o@@8 |m#0|)))
 :qid |MatrixFundfy.18:5|
 :skolemid |575|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@9 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@0))))
 :qid |MatrixFundfy.18:5|
 :skolemid |576|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) $f@@0))
)) (<= (- (Div (_System.array2.Length1 |m#0|) (LitInt 2)) |b#0_0@2|) |$decr_init$loop#0_00@1|))))) (and (=> (= (ControlFlow 0 126) 2) anon72_LoopDone_correct) (=> (= (ControlFlow 0 126) 125) anon72_LoopBody_correct))))))
(let ((anon71_Else_correct  (=> (and (and (< |a#0@1| (_System.array2.Length0 |m#0|)) (= |$decr$loop#00@1| (- (_System.array2.Length0 |m#0|) |a#0@1|))) (and (= |b#0_0@1| (LitInt 0)) (= |$decr_init$loop#0_00@1| (- (Div (_System.array2.Length1 |m#0|) (LitInt 2)) |b#0_0@1|)))) (and (=> (= (ControlFlow 0 127) (- 0 133)) (=> |$w$loop#0_0@1| (<= |b#0_0@1| (Div (_System.array2.Length1 |m#0|) (LitInt 2))))) (=> (=> |$w$loop#0_0@1| (<= |b#0_0@1| (Div (_System.array2.Length1 |m#0|) (LitInt 2)))) (and (=> (= (ControlFlow 0 127) (- 0 132)) (=> |$w$loop#0_0@1| (forall ((|i#0_1@@3| Int) (|j#0_1@@3| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#0_1@@3|) (< |i#0_1@@3| |a#0@1|)) (<= (LitInt 0) |j#0_1@@3|)) (< |j#0_1@@3| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#0_1@@3|) |j#0_1@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_1@@3|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_1@@3|)))))
 :qid |MatrixFundfy.20:24|
 :skolemid |562|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#0_1@@3|) |j#0_1@@3|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|i#0_1@@4| Int) (|j#0_1@@4| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#0_1@@4|) (< |i#0_1@@4| |a#0@1|)) (<= (LitInt 0) |j#0_1@@4|)) (< |j#0_1@@4| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#0_1@@4|) |j#0_1@@4|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_1@@4|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_1@@4|)))))
 :qid |MatrixFundfy.20:24|
 :skolemid |562|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#0_1@@4|) |j#0_1@@4|)))
))) (and (=> (= (ControlFlow 0 127) (- 0 131)) (=> |$w$loop#0_0@1| (forall ((|j#0_3@@7| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_3@@7|) (< |j#0_3@@7| |b#0_0@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@7|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@7|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |567|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@7|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|j#0_3@@8| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_3@@8|) (< |j#0_3@@8| |b#0_0@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@8|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@8|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |567|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@8|)))
))) (and (=> (= (ControlFlow 0 127) (- 0 130)) (=> |$w$loop#0_0@1| (forall ((|j#0_3@@9| Int) (|_t#0#0_0@@3| Int) ) (!  (=> (= |_t#0#0_0@@3| (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@9|)) (=> (and (<= (LitInt 0) |j#0_3@@9|) (< |j#0_3@@9| |b#0_0@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@9|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@3|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |568|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@9|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@9|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|j#0_3@@10| Int) (|_t#0#0_0@@4| Int) ) (!  (=> (= |_t#0#0_0@@4| (- (- (_System.array2.Length1 |m#0|) 1) |j#0_3@@10|)) (=> (and (<= (LitInt 0) |j#0_3@@10|) (< |j#0_3@@10| |b#0_0@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@10|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@4|)))))
 :qid |MatrixFundfy.22:24|
 :skolemid |568|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@4|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@10|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |_t#0#0_0@@4|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_3@@10|)))
))) (and (=> (= (ControlFlow 0 127) (- 0 129)) (=> |$w$loop#0_0@1| (forall ((|j#0_5@@3| Int) ) (!  (=> (and (<= |b#0_0@1| |j#0_5@@3|) (< |j#0_5@@3| (- (_System.array2.Length1 |m#0|) |b#0_0@1|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@3|))))
 :qid |MatrixFundfy.25:24|
 :skolemid |571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@3|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@3|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|j#0_5@@4| Int) ) (!  (=> (and (<= |b#0_0@1| |j#0_5@@4|) (< |j#0_5@@4| (- (_System.array2.Length1 |m#0|) |b#0_0@1|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@4|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@4|))))
 :qid |MatrixFundfy.25:24|
 :skolemid |571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@4|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |a#0@1|) |j#0_5@@4|)))
))) (and (=> (= (ControlFlow 0 127) (- 0 128)) (=> |$w$loop#0_0@1| (forall ((|i#0_3@@2| Int) (|j#0_7@@2| Int) ) (!  (=> (and (and (and (<= (+ |a#0@1| 1) |i#0_3@@2|) (< |i#0_3@@2| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_7@@2|)) (< |j#0_7@@2| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#0_3@@2|) |j#0_7@@2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3@@2|) |j#0_7@@2|))))
 :qid |MatrixFundfy.26:24|
 :skolemid |574|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3@@2|) |j#0_7@@2|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#0_3@@2|) |j#0_7@@2|)))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|i#0_3@@3| Int) (|j#0_7@@3| Int) ) (!  (=> (and (and (and (<= (+ |a#0@1| 1) |i#0_3@@3|) (< |i#0_3@@3| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#0_7@@3|)) (< |j#0_7@@3| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#0_3@@3|) |j#0_7@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3@@3|) |j#0_7@@3|))))
 :qid |MatrixFundfy.26:24|
 :skolemid |574|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0_3@@3|) |j#0_7@@3|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#0_3@@3|) |j#0_7@@3|)))
))) (=> (= (ControlFlow 0 127) 126) anon72_LoopHead_correct))))))))))))))))
(let ((anon60_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 137) (- 0 138)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 137) 136) anon71_Then_correct) (=> (= (ControlFlow 0 137) 127) anon71_Else_correct)))))))
(let ((anon59_LoopBody_correct  (and (=> (= (ControlFlow 0 183) 181) anon60_Then_correct) (=> (= (ControlFlow 0 183) 137) anon60_Else_correct))))
(let ((anon59_LoopDone_correct true))
(let ((anon59_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and (and (not false) (<= 0 |a#0@1|)) (=> |$w$loop#0@0| (<= |a#0@1| (_System.array2.Length0 |m#0|)))) (and (=> |$w$loop#0@0| (forall ((|i#3@@2| Int) (|j#3@@2| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#3@@2|) (< |i#3@@2| |a#0@1|)) (<= (LitInt 0) |j#3@@2|)) (< |j#3@@2| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#3@@2|) |j#3@@2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@2|) (- (- (_System.array2.Length1 |m#0|) 1) |j#3@@2|)))))
 :qid |MatrixFundfy.12:22|
 :skolemid |554|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#3@@2|) |j#3@@2|)))
))) (=> |$w$loop#0@0| (forall ((|i#5@@1| Int) (|j#5@@1| Int) ) (!  (=> (and (and (and (<= |a#0@1| |i#5@@1|) (< |i#5@@1| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#5@@1|)) (< |j#5@@1| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#5@@1|) |j#5@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@1|) |j#5@@1|))))
 :qid |MatrixFundfy.14:22|
 :skolemid |557|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@1|) |j#5@@1|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |m#0|) (MultiIndexField (IndexField |i#5@@1|) |j#5@@1|)))
))))) (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10)) (= $o@@10 |m#0|)))
 :qid |MatrixFundfy.10:3|
 :skolemid |558|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
)) ($HeapSucc $Heap $Heap@0)) (and (forall (($o@@11 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@11) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@11) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@1))))
 :qid |MatrixFundfy.10:3|
 :skolemid |559|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) $f@@1))
)) (<= (- (_System.array2.Length0 |m#0|) |a#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 184) 1) anon59_LoopDone_correct) (=> (= (ControlFlow 0 184) 183) anon59_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc |m#0|)) (=> (and (= |a#0@0| (LitInt 0)) (= |$decr_init$loop#00@0| (- (_System.array2.Length0 |m#0|) |a#0@0|))) (and (=> (= (ControlFlow 0 185) (- 0 188)) (=> |$w$loop#0@0| (<= |a#0@0| (_System.array2.Length0 |m#0|)))) (=> (=> |$w$loop#0@0| (<= |a#0@0| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 185) (- 0 187)) (=> |$w$loop#0@0| (forall ((|i#3@@3| Int) (|j#3@@3| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#3@@3|) (< |i#3@@3| |a#0@0|)) (<= (LitInt 0) |j#3@@3|)) (< |j#3@@3| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@3|) |j#3@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@3|) (- (- (_System.array2.Length1 |m#0|) 1) |j#3@@3|)))))
 :qid |MatrixFundfy.12:22|
 :skolemid |554|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@3|) |j#3@@3|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#3@@4| Int) (|j#3@@4| Int) ) (!  (=> (and (and (and (<= (LitInt 0) |i#3@@4|) (< |i#3@@4| |a#0@0|)) (<= (LitInt 0) |j#3@@4|)) (< |j#3@@4| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@4|) |j#3@@4|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@4|) (- (- (_System.array2.Length1 |m#0|) 1) |j#3@@4|)))))
 :qid |MatrixFundfy.12:22|
 :skolemid |554|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#3@@4|) |j#3@@4|)))
))) (and (=> (= (ControlFlow 0 185) (- 0 186)) (=> |$w$loop#0@0| (forall ((|i#5@@2| Int) (|j#5@@2| Int) ) (!  (=> (and (and (and (<= |a#0@0| |i#5@@2|) (< |i#5@@2| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#5@@2|)) (< |j#5@@2| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@2|) |j#5@@2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@2|) |j#5@@2|))))
 :qid |MatrixFundfy.14:22|
 :skolemid |557|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@2|) |j#5@@2|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@2|) |j#5@@2|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#5@@3| Int) (|j#5@@3| Int) ) (!  (=> (and (and (and (<= |a#0@0| |i#5@@3|) (< |i#5@@3| (_System.array2.Length0 |m#0|))) (<= (LitInt 0) |j#5@@3|)) (< |j#5@@3| (_System.array2.Length1 |m#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@3|) |j#5@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@3|) |j#5@@3|))))
 :qid |MatrixFundfy.14:22|
 :skolemid |557|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@3|) |j#5@@3|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#5@@3|) |j#5@@3|)))
))) (=> (= (ControlFlow 0 185) 184) anon59_LoopHead_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T)) ($IsAlloc refType |m#0| (Tclass._System.array2 _module._default.MirrorImage$T) $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 189) 185))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
