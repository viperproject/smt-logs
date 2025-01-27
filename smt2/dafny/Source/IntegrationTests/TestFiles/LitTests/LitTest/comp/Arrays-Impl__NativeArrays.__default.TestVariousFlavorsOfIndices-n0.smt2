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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun nat_from_bv5 ((_ BitVec 5)) Int)
(declare-fun nat_from_bv9 ((_ BitVec 9)) Int)
(declare-fun nat_from_bv19 ((_ BitVec 19)) Int)
(declare-fun TagFamily (T@U) T@U)
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
 :skolemid |1865|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |1994|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |1996|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |1871|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2002|
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
 :skolemid |1864|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@3 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@2)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1993|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1608|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1609|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1507|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1505|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |1862|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1516|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |1595|
 :pattern ( (MultiIndexField f i))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1870|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2001|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1529|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@4 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@5))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1991|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1601|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1600|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((b (_ BitVec 5)) ) (!  (and (and (<= 0 (nat_from_bv5 b)) (< (nat_from_bv5 b) 32)) (= (nat_from_bv5 b) (bv2int b)))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( (nat_from_bv5 b))
)))
(assert (forall ((b@@0 (_ BitVec 9)) ) (!  (and (and (<= 0 (nat_from_bv9 b@@0)) (< (nat_from_bv9 b@@0) 512)) (= (nat_from_bv9 b@@0) (bv2int b@@0)))
 :qid |unknown.0:0|
 :skolemid |1844|
 :pattern ( (nat_from_bv9 b@@0))
)))
(assert (forall ((b@@1 (_ BitVec 19)) ) (!  (and (and (<= 0 (nat_from_bv19 b@@1)) (< (nat_from_bv19 b@@1) 524288)) (= (nat_from_bv19 b@@1) (bv2int b@@1)))
 :qid |unknown.0:0|
 :skolemid |1836|
 :pattern ( (nat_from_bv19 b@@1))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1858|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1867|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |1985|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |1998|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |1863|
 :pattern ( ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |1992|
 :pattern ( ($Is refType $o@@7 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((a T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1607|
 :pattern ( ($HeapSucc a b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@5 T@U) ($o@@8 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@8))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@8))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |1990|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1517|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1528|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |1602|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length0 o@@1))
 :qid |unknown.0:0|
 :skolemid |1988|
 :pattern ( (_System.array2.Length0 o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array2.Length1 o@@2))
 :qid |unknown.0:0|
 :skolemid |1989|
 :pattern ( (_System.array2.Length1 o@@2))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |1593|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |1594|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |1859|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |1868|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |1986|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |1999|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1515|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@6 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@9)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |1866|
 :pattern ( (_System.array.Length $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@7 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@10)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |1995|
 :pattern ( (_System.array2.Length0 $o@@10) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@11)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |1997|
 :pattern ( (_System.array2.Length1 $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@9 T@U) ($o@@12 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@12)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |1861|
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
 :skolemid |7798|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |1596|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |1860|
 :pattern ( ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |1869|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |1987|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |2000|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f@@1 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1606|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1508|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1506|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1551|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1530|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun |$rhs#4@0| () (_ BitVec 9))
(declare-fun U_2_bv9 (T@U) (_ BitVec 9))
(declare-fun bv9Type () T@T)
(declare-fun bv9_2_U ((_ BitVec 9)) T@U)
(declare-fun |$rhs#5@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#6@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#7@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |$rhs#8@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |$rhs#9@0| () Int)
(declare-fun $Heap@8 () T@U)
(declare-fun |$rhs#10@0| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun |$rhs#11@0| () Int)
(declare-fun $Heap@10 () T@U)
(declare-fun |$rhs#12@0| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun |arr#0| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |bIndex#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (and (= (Ctor bv9Type) 7) (forall ((arg0@@5 (_ BitVec 9)) ) (! (= (U_2_bv9 (bv9_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv9|
 :pattern ( (bv9_2_U arg0@@5))
))) (forall ((x@@9 T@U) ) (! (= (bv9_2_U (U_2_bv9 x@@9)) x@@9)
 :qid |cast:U_2_bv9|
 :pattern ( (U_2_bv9 x@@9))
))))
(set-info :boogie-vc-id Impl$$NativeArrays.__default.TestVariousFlavorsOfIndices)
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
 (=> (= (ControlFlow 0 0) 76) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 75)) (<= 0 (LitInt 250))) (=> (<= 0 (LitInt 250)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 250)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 74)) (<= 0 (LitInt 20))) (=> (<= 0 (LitInt 20)) (and (=> (= (ControlFlow 0 2) (- 0 73)) (<= 0 (LitInt 30))) (=> (<= 0 (LitInt 30)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array2? TInt))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= (_System.array2.Length0 $nw@1) (LitInt 20)))) (and (and (= (_System.array2.Length1 $nw@1) (LitInt 30)) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 72)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |newtype$check#0@0| (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 71)) (and (<= 0 |newtype$check#0@0|) (< |newtype$check#0@0| 524288))) (=> (and (<= 0 |newtype$check#0@0|) (< |newtype$check#0@0| 524288)) (and (=> (= (ControlFlow 0 2) (- 0 70)) (< (nat_from_bv19 #b0000000000000000011) (_System.array.Length $nw@0))) (=> (< (nat_from_bv19 #b0000000000000000011) (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 69)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (nat_from_bv19 #b0000000000000000011))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (nat_from_bv19 #b0000000000000000011)))) (=> (= |$rhs#0@0| (LitInt 17)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField (nat_from_bv19 #b0000000000000000011)) ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 68)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |newtype$check#1@0| (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 67)) (and (<= 0 |newtype$check#1@0|) (< |newtype$check#1@0| 32))) (=> (and (<= 0 |newtype$check#1@0|) (< |newtype$check#1@0| 32)) (and (=> (= (ControlFlow 0 2) (- 0 66)) (< (nat_from_bv5 #b00100) (_System.array.Length $nw@0))) (=> (< (nat_from_bv5 #b00100) (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 65)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (nat_from_bv5 #b00100))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (nat_from_bv5 #b00100)))) (=> (= |$rhs#1@0| (LitInt 19)) (=> (and (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField (nat_from_bv5 #b00100)) ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@3)) (and (= |$rhs#2@0| (LitInt 3)) (= |newtype$check#2@0| (LitInt 4)))) (and (=> (= (ControlFlow 0 2) (- 0 64)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 256)) (=> (and (= |$rhs#3@0| (LitInt 4)) (= |$rhs#4@0| (U_2_bv9 (Lit bv9Type (bv9_2_U #b000000101))))) (and (=> (= (ControlFlow 0 2) (- 0 63)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 62)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 61)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 60)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |$rhs#2@0|) |$rhs#3@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |$rhs#2@0|) |$rhs#3@0|))) (and (=> (= (ControlFlow 0 2) (- 0 59)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 58)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0))) (=> (= |$rhs#5@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#2@0|))))) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@1) (MultiIndexField (IndexField |$rhs#2@0|) |$rhs#3@0|) ($Box intType (int_2_U |$rhs#5@0|))))) ($IsGoodHeap $Heap@4)) (and (=> (= (ControlFlow 0 2) (- 0 57)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 56)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 55)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |$rhs#2@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |$rhs#2@0|))) (and (=> (= (ControlFlow 0 2) (- 0 54)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 53)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 52)) (and (<= 0 (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001))) (< (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001)) (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001))) (< (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001)) (_System.array2.Length1 $nw@1))) (=> (= |$rhs#6@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@1) (MultiIndexField (IndexField |$rhs#2@0|) (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001))))))) (=> (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField |$rhs#2@0|) ($Box intType (int_2_U |$rhs#6@0|))))) ($IsGoodHeap $Heap@5)) (and (=> (= (ControlFlow 0 2) (- 0 51)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 50)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 49)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |$rhs#2@0|)))) (LitInt 17))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |$rhs#2@0|)))) (LitInt 17)) (and (=> (= (ControlFlow 0 2) (- 0 48)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 47)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 46)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 45)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 44)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 43)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |$rhs#3@0|) |$rhs#2@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |$rhs#3@0|) |$rhs#2@0|))) (and (=> (= (ControlFlow 0 2) (- 0 42)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 41)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0))) (=> (= |$rhs#7@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |$rhs#3@0|))))) (=> (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1) (MultiIndexField (IndexField |$rhs#3@0|) |$rhs#2@0|) ($Box intType (int_2_U |$rhs#7@0|))))) ($IsGoodHeap $Heap@6)) (and (=> (= (ControlFlow 0 2) (- 0 40)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 39)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 38)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |$rhs#3@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |$rhs#3@0|))) (and (=> (= (ControlFlow 0 2) (- 0 37)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 36)) (and (<= 0 (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001))) (< (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001)) (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001))) (< (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001)) (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length1 $nw@1))) (=> (= |$rhs#8@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1) (MultiIndexField (IndexField (nat_from_bv9 (bvsub |$rhs#4@0| #b000000001))) |$rhs#2@0|))))) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (IndexField |$rhs#3@0|) ($Box intType (int_2_U |$rhs#8@0|))))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 2) (- 0 34)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 33)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |$rhs#3@0|)))) (LitInt 19))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |$rhs#3@0|)))) (LitInt 19)) (and (=> (= (ControlFlow 0 2) (- 0 31)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 30)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 28)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |$rhs#2@0|) |$rhs#2@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |$rhs#2@0|) |$rhs#2@0|))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0))) (=> (= |$rhs#9@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |$rhs#2@0|)))) 1)) (=> (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@7 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@1) (MultiIndexField (IndexField |$rhs#2@0|) |$rhs#2@0|) ($Box intType (int_2_U |$rhs#9@0|))))) ($IsGoodHeap $Heap@8)) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |$rhs#2@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |$rhs#2@0|))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array2.Length1 $nw@1))) (=> (= |$rhs#10@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $nw@1) (MultiIndexField (IndexField |$rhs#2@0|) |$rhs#2@0|))))) (=> (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $nw@0) (IndexField |$rhs#2@0|) ($Box intType (int_2_U |$rhs#10@0|))))) ($IsGoodHeap $Heap@9)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |$rhs#3@0|) |$rhs#3@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |$rhs#3@0|) |$rhs#3@0|))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0))) (=> (= |$rhs#11@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@0) (IndexField |$rhs#3@0|)))) 1)) (=> (and (= $Heap@10 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@9 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@1) (MultiIndexField (IndexField |$rhs#3@0|) |$rhs#3@0|) ($Box intType (int_2_U |$rhs#11@0|))))) ($IsGoodHeap $Heap@10)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |$rhs#3@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |$rhs#3@0|))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length0 $nw@1)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length0 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length1 $nw@1)))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array2.Length1 $nw@1))) (=> (= |$rhs#12@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $nw@1) (MultiIndexField (IndexField |$rhs#3@0|) |$rhs#3@0|))))) (=> (and (= $Heap@11 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@10 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $nw@0) (IndexField |$rhs#3@0|) ($Box intType (int_2_U |$rhs#12@0|))))) ($IsGoodHeap $Heap@11)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 |$rhs#2@0|) (< |$rhs#2@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| (_System.array.Length $nw@0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is refType |arr#0| (Tclass._System.array TInt)) ($IsAlloc refType |arr#0| (Tclass._System.array TInt) $Heap)) true) (and (and ($Is refType |m#0| (Tclass._System.array2 TInt)) ($IsAlloc refType |m#0| (Tclass._System.array2 TInt) $Heap)) true)) (and (and (and (<= (LitInt 0) |bIndex#0|) (< |bIndex#0| 256)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 76) 2)))) anon0_correct))))
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
