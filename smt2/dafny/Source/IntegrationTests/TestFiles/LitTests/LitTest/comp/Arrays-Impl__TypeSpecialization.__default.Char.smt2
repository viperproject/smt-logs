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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
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
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt alloc Tagclass._System.array? Tagclass._System.array tytagFamily$array)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |5667|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |5673|
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
 :skolemid |5666|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |5410|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |5411|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5309|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5307|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@1 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@1))
 :qid |unknown.0:0|
 :skolemid |5664|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5318|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5672|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5331|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |5403|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |5402|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |5660|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |5669|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |5665|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |5409|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |5319|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |5322|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5330|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |5404|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |5395|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |5396|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |5661|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |5670|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5317|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |5668|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |5663|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |5313|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |5662|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |5671|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |5314|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |5408|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (or (= $o@@5 |l#3|) (= $o@@5 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7819|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5310|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5308|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5353|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc charType v@@3 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |5356|
 :pattern ( ($IsAlloc charType v@@3 TChar h@@5))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |5332|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |5335|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun TypeSpecialization._default.Char$T () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$TypeSpecialization.__default.Char)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc |a#0| |b#0|)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= 0 (LitInt 20)) (< (LitInt 20) (_System.array.Length |a#0|)))) (=> (and (<= 0 (LitInt 20)) (< (LitInt 20) (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField (LitInt 20))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField (LitInt 20)))) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap |a#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField (LitInt 20)) |t#0|))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= 0 (LitInt 20)) (< (LitInt 20) (_System.array.Length |b#0|)))) (=> (and (<= 0 (LitInt 20)) (< (LitInt 20) (_System.array.Length |b#0|))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (IndexField (LitInt 20))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (IndexField (LitInt 20)))) (=> (= |$rhs#1@0| (Lit charType (|char#FromInt| 107))) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 |b#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b#0|) (IndexField (LitInt 20)) ($Box charType |$rhs#1@0|)))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 (LitInt 21)) (< (LitInt 21) (_System.array.Length |b#0|)))) (=> (and (<= 0 (LitInt 21)) (< (LitInt 21) (_System.array.Length |b#0|))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (IndexField (LitInt 21))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (IndexField (LitInt 21)))) (=> (= |$rhs#2@0| (Lit charType (|char#FromInt| 107))) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |b#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |b#0|) (IndexField (LitInt 21)) ($Box charType |$rhs#2@0|)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 (LitInt 21)) (< (LitInt 21) (_System.array.Length |a#0|)))) (=> (and (<= 0 (LitInt 21)) (< (LitInt 21) (_System.array.Length |a#0|))) (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |a#0| (IndexField (LitInt 21)))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |a#0| (Tclass._System.array TypeSpecialization._default.Char$T)) ($IsAlloc refType |a#0| (Tclass._System.array TypeSpecialization._default.Char$T) $Heap))) (=> (and (and (and ($Is refType |b#0| (Tclass._System.array TChar)) ($IsAlloc refType |b#0| (Tclass._System.array TChar) $Heap)) (and ($IsBox |t#0| TypeSpecialization._default.Char$T) ($IsAllocBox |t#0| TypeSpecialization._default.Char$T $Heap))) (and (and (= 0 $FunctionContextHeight) (= (_System.array.Length |a#0|) (_System.array.Length |b#0|))) (and (= (_System.array.Length |b#0|) (LitInt 100)) (= (ControlFlow 0 14) 2)))) anon0_correct))))
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
