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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
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
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.array2? Tagclass._System.array2 tytagFamily$array2)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@2 T@U) ($o@@4 T@U) ($i0@@0 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@4))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@4))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) (MultiIndexField (IndexField $i0@@0) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) (MultiIndexField (IndexField $i0@@0) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@1 TBool))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@3 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@5)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_System.array2.Length0 $o@@5) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@6)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_System.array2.Length1 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |611|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |106|
 :pattern ( (MultiIndexField f@@0 i@@2))
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
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@5))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |$rhs#0@0| () Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#1@0| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#2@0| () Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#3@0| () Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#4@0| () Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#5@0| () Bool)
(declare-fun $Heap@6 () T@U)
(declare-fun |$rhs#6@0| () Bool)
(declare-fun $Heap@7 () T@U)
(declare-fun |$rhs#7@0| () Bool)
(declare-fun $Heap@8 () T@U)
(declare-fun |$rhs#8@0| () Bool)
(declare-fun $Heap@9 () T@U)
(declare-fun |$rhs#9@0| () Bool)
(declare-fun $Heap@10 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |$rhs#10@0| () Int)
(declare-fun $Heap@15 () T@U)
(declare-fun |$rhs#11@0| () Int)
(declare-fun $Heap@16 () T@U)
(declare-fun |$rhs#12@0| () Int)
(declare-fun $Heap@17 () T@U)
(declare-fun |$rhs#13@0| () Int)
(declare-fun $Heap@18 () T@U)
(declare-fun |$rhs#14@0| () Int)
(declare-fun $Heap@19 () T@U)
(declare-fun |$rhs#15@0| () Int)
(declare-fun $Heap@20 () T@U)
(declare-fun |$rhs#16@0| () Int)
(declare-fun $Heap@21 () T@U)
(declare-fun |$rhs#17@0| () Int)
(declare-fun $Heap@22 () T@U)
(declare-fun |$rhs#18@0| () Int)
(declare-fun $Heap@23 () T@U)
(declare-fun $Heap@24 () T@U)
(declare-fun |B#0| () T@U)
(declare-fun |A#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 85) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#4| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 84)) (<= 0 (LitInt 2))) (=> (<= 0 (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 83)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array2? TBool))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array2.Length0 $nw@0) (LitInt 2)))) (and (and (= (_System.array2.Length1 $nw@0) (LitInt 5)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 82)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 81)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 80)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 79)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 0)))) (=> (= |$rhs#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0)) ($Box boolType (bool_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 78)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 77)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 76)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 75)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 1))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 1)))) (=> (= |$rhs#1@0| (U_2_bool (Lit boolType (bool_2_U false)))) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (MultiIndexField (IndexField (LitInt 0)) (LitInt 1)) ($Box boolType (bool_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 74)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 73)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 72)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 71)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 2))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 2)))) (=> (= |$rhs#2@0| (U_2_bool (Lit boolType (bool_2_U false)))) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (MultiIndexField (IndexField (LitInt 0)) (LitInt 2)) ($Box boolType (bool_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 2) (- 0 70)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 69)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 68)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 67)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 3))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 3)))) (=> (= |$rhs#3@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (MultiIndexField (IndexField (LitInt 0)) (LitInt 3)) ($Box boolType (bool_2_U |$rhs#3@0|))))) ($IsGoodHeap $Heap@4)) (and (=> (= (ControlFlow 0 2) (- 0 66)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 65)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 64)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 63)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 4))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 0)) (LitInt 4)))) (=> (= |$rhs#4@0| (U_2_bool (Lit boolType (bool_2_U false)))) (=> (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (MultiIndexField (IndexField (LitInt 0)) (LitInt 4)) ($Box boolType (bool_2_U |$rhs#4@0|))))) ($IsGoodHeap $Heap@5)) (and (=> (= (ControlFlow 0 2) (- 0 62)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 61)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 60)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 59)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 0)))) (=> (= |$rhs#5@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (MultiIndexField (IndexField (LitInt 1)) (LitInt 0)) ($Box boolType (bool_2_U |$rhs#5@0|))))) ($IsGoodHeap $Heap@6)) (and (=> (= (ControlFlow 0 2) (- 0 58)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 57)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 56)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 55)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 1))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 1)))) (=> (= |$rhs#6@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (MultiIndexField (IndexField (LitInt 1)) (LitInt 1)) ($Box boolType (bool_2_U |$rhs#6@0|))))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 2) (- 0 54)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 53)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 52)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 51)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 2))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 2)))) (=> (= |$rhs#7@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (MultiIndexField (IndexField (LitInt 1)) (LitInt 2)) ($Box boolType (bool_2_U |$rhs#7@0|))))) ($IsGoodHeap $Heap@8)) (and (=> (= (ControlFlow 0 2) (- 0 50)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 49)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 48)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 47)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 3))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 3)))) (=> (= |$rhs#8@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $nw@0) (MultiIndexField (IndexField (LitInt 1)) (LitInt 3)) ($Box boolType (bool_2_U |$rhs#8@0|))))) ($IsGoodHeap $Heap@9)) (and (=> (= (ControlFlow 0 2) (- 0 46)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 45)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 44)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array2.Length1 $nw@0)))) (=> (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array2.Length1 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 43)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 4))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField (LitInt 1)) (LitInt 4)))) (=> (= |$rhs#9@0| (U_2_bool (Lit boolType (bool_2_U false)))) (=> (and (= $Heap@10 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@9 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@0) (MultiIndexField (IndexField (LitInt 1)) (LitInt 4)) ($Box boolType (bool_2_U |$rhs#9@0|))))) ($IsGoodHeap $Heap@10)) (=> (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@8)))
 :qid |MatrixFundfy.83:8|
 :skolemid |604|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@8))
)) ($HeapSucc $Heap@10 $Heap@11))) (and (=> (= (ControlFlow 0 2) (- 0 42)) (forall (($o@@9 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@9) alloc)))) (= $o@@9 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@0)))
 :qid |MatrixFundfy.68:14|
 :skolemid |598|
))) (=> (forall (($o@@10 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@10) alloc)))) (= $o@@10 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@10 $f@@1)))
 :qid |MatrixFundfy.68:14|
 :skolemid |598|
)) (=> (and (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| (_System.array2.Length0 $nw@0))) (and (<= (LitInt 0) |j#1|) (< |j#1| (_System.array2.Length1 $nw@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@0) (MultiIndexField (IndexField |i#1|) |j#1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $nw@0) (MultiIndexField (IndexField |i#1|) (- (- (_System.array2.Length1 $nw@0) 1) |j#1|)))))
 :qid |MatrixFundfy.6:18|
 :skolemid |548|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@0) (MultiIndexField (IndexField |i#1|) |j#1|)))
))) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@11)) (= $o@@11 $nw@0)))
 :qid |MatrixFundfy.4:8|
 :skolemid |549|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@11))
)) ($HeapSucc $Heap@11 $Heap@12))) (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12)))
 :qid |MatrixFundfy.83:8|
 :skolemid |604|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@12))
)) ($HeapSucc $Heap@12 $Heap@13)))) (and (=> (= (ControlFlow 0 2) (- 0 41)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 40)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array2? TInt))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) alloc)))) (= (_System.array2.Length0 $nw@1) (LitInt 3)))) (and (and (= (_System.array2.Length1 $nw@1) (LitInt 3)) (= $Heap@14 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)))) (and (=> (= (ControlFlow 0 2) (- 0 39)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 38)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 37)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 0)) (LitInt 0)))) (=> (= |$rhs#10@0| (LitInt 5)) (=> (and (= $Heap@15 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@14 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@1) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0)) ($Box intType (int_2_U |$rhs#10@0|))))) ($IsGoodHeap $Heap@15)) (and (=> (= (ControlFlow 0 2) (- 0 35)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 34)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 0)) (LitInt 1))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 0)) (LitInt 1)))) (=> (= |$rhs#11@0| (LitInt 7)) (=> (and (= $Heap@16 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@15 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $nw@1) (MultiIndexField (IndexField (LitInt 0)) (LitInt 1)) ($Box intType (int_2_U |$rhs#11@0|))))) ($IsGoodHeap $Heap@16)) (and (=> (= (ControlFlow 0 2) (- 0 31)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 30)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 0)) (LitInt 2))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 0)) (LitInt 2)))) (=> (= |$rhs#12@0| (LitInt 9)) (=> (and (= $Heap@17 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@16 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $nw@1) (MultiIndexField (IndexField (LitInt 0)) (LitInt 2)) ($Box intType (int_2_U |$rhs#12@0|))))) ($IsGoodHeap $Heap@17)) (and (=> (= (ControlFlow 0 2) (- 0 27)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 1)) (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 1)) (LitInt 0)))) (=> (= |$rhs#13@0| (LitInt 6)) (=> (and (= $Heap@18 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@17 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $nw@1) (MultiIndexField (IndexField (LitInt 1)) (LitInt 0)) ($Box intType (int_2_U |$rhs#13@0|))))) ($IsGoodHeap $Heap@18)) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 1)) (LitInt 1))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 1)) (LitInt 1)))) (=> (= |$rhs#14@0| (LitInt 2)) (=> (and (= $Heap@19 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@18 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $nw@1) (MultiIndexField (IndexField (LitInt 1)) (LitInt 1)) ($Box intType (int_2_U |$rhs#14@0|))))) ($IsGoodHeap $Heap@19)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 1)) (LitInt 2))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 1)) (LitInt 2)))) (=> (= |$rhs#15@0| (LitInt 3)) (=> (and (= $Heap@20 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@19 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $nw@1) (MultiIndexField (IndexField (LitInt 1)) (LitInt 2)) ($Box intType (int_2_U |$rhs#15@0|))))) ($IsGoodHeap $Heap@20)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 2)) (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 2)) (LitInt 0)))) (=> (= |$rhs#16@0| (LitInt 7)) (=> (and (= $Heap@21 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@20 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 0)) ($Box intType (int_2_U |$rhs#16@0|))))) ($IsGoodHeap $Heap@21)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 2)) (LitInt 1))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 2)) (LitInt 1)))) (=> (= |$rhs#17@0| (LitInt 1)) (=> (and (= $Heap@22 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 1)) ($Box intType (int_2_U |$rhs#17@0|))))) ($IsGoodHeap $Heap@22)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 2)) (LitInt 2))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField (LitInt 2)) (LitInt 2)))) (=> (= |$rhs#18@0| (LitInt 0)) (=> (and (= $Heap@23 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@22 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $nw@1) (MultiIndexField (IndexField (LitInt 2)) (LitInt 2)) ($Box intType (int_2_U |$rhs#18@0|))))) ($IsGoodHeap $Heap@23)) (=> (and (and ($IsGoodHeap $Heap@24) ($IsHeapAnchor $Heap@24)) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@13)))
 :qid |MatrixFundfy.83:8|
 :skolemid |604|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@13))
)) ($HeapSucc $Heap@23 $Heap@24))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@14 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@14) alloc)))) (= $o@@14 $nw@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@2)))
 :qid |MatrixFundfy.78:7|
 :skolemid |601|
))) (=> (forall (($o@@15 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@15) alloc)))) (= $o@@15 $nw@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@3)))
 :qid |MatrixFundfy.78:7|
 :skolemid |601|
)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (_System.array2.Length0 $nw@1) (_System.array2.Length1 $nw@1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |B#0| (Tclass._System.array2 TBool)) ($IsAlloc refType |B#0| (Tclass._System.array2 TBool) $Heap)) true) (=> (and (and (and ($Is refType |A#0| (Tclass._System.array2 TInt)) ($IsAlloc refType |A#0| (Tclass._System.array2 TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 85) 2))) anon0_correct)))))
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
