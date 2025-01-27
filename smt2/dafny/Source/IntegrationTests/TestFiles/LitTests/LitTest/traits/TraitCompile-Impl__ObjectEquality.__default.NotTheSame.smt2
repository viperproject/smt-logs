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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.ObjectEquality.C () T@U)
(declare-fun Tagclass.ObjectEquality.C? () T@U)
(declare-fun Tagclass.ObjectEquality.B () T@U)
(declare-fun Tagclass.ObjectEquality.A () T@U)
(declare-fun Tagclass.ObjectEquality.D () T@U)
(declare-fun Tagclass.ObjectEquality.D? () T@U)
(declare-fun Tagclass.ObjectEquality.A? () T@U)
(declare-fun Tagclass.ObjectEquality.B? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$D () T@U)
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
(declare-fun implements$ObjectEquality.B (T@U) Bool)
(declare-fun Tclass.ObjectEquality.C? () T@U)
(declare-fun Tclass.ObjectEquality.D? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.ObjectEquality.A () T@U)
(declare-fun Tclass.ObjectEquality.A? () T@U)
(declare-fun Tclass.ObjectEquality.B () T@U)
(declare-fun Tclass.ObjectEquality.B? () T@U)
(declare-fun Tclass.ObjectEquality.C () T@U)
(declare-fun Tclass.ObjectEquality.D () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$ObjectEquality.A (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.object? Tagclass._System.object Tagclass.ObjectEquality.C Tagclass.ObjectEquality.C? Tagclass.ObjectEquality.B Tagclass.ObjectEquality.A Tagclass.ObjectEquality.D Tagclass.ObjectEquality.D? Tagclass.ObjectEquality.A? Tagclass.ObjectEquality.B? tytagFamily$object tytagFamily$C tytagFamily$B tytagFamily$A tytagFamily$D)
)
(assert (implements$ObjectEquality.B Tclass.ObjectEquality.C?))
(assert (implements$ObjectEquality.B Tclass.ObjectEquality.D?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.ObjectEquality.C?)  (or (= $o null) (= (dtype $o) Tclass.ObjectEquality.C?)))
 :qid |unknown.0:0|
 :skolemid |6413|
 :pattern ( ($Is refType $o Tclass.ObjectEquality.C?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.ObjectEquality.D?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.ObjectEquality.D?)))
 :qid |unknown.0:0|
 :skolemid |6417|
 :pattern ( ($Is refType $o@@0 Tclass.ObjectEquality.D?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |6201|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ObjectEquality.A $h@@0) ($IsAlloc refType |c#0@@0| Tclass.ObjectEquality.A? $h@@0))
 :qid |unknown.0:0|
 :skolemid |6407|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ObjectEquality.A $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ObjectEquality.A? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.ObjectEquality.B $h@@1) ($IsAlloc refType |c#0@@1| Tclass.ObjectEquality.B? $h@@1))
 :qid |unknown.0:0|
 :skolemid |6412|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ObjectEquality.B $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ObjectEquality.B? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.ObjectEquality.C $h@@2) ($IsAlloc refType |c#0@@2| Tclass.ObjectEquality.C? $h@@2))
 :qid |unknown.0:0|
 :skolemid |6416|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.ObjectEquality.C $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.ObjectEquality.C? $h@@2))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass.ObjectEquality.D $h@@3) ($IsAlloc refType |c#0@@3| Tclass.ObjectEquality.D? $h@@3))
 :qid |unknown.0:0|
 :skolemid |6420|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.ObjectEquality.D $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.ObjectEquality.D? $h@@3))
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
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |6198|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.ObjectEquality.A? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |6405|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.ObjectEquality.A? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.ObjectEquality.B? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |6410|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.ObjectEquality.B? $h@@6))
)))
(assert (forall (($o@@4 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.ObjectEquality.C? $h@@7)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |6414|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.ObjectEquality.C? $h@@7))
)))
(assert (forall (($o@@5 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.ObjectEquality.D? $h@@8)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |6418|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.ObjectEquality.D? $h@@8))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |5952|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |5953|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5860|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |5944|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6200|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.ObjectEquality.A)  (and ($Is refType |c#0@@5| Tclass.ObjectEquality.A?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6406|
 :pattern ( ($Is refType |c#0@@5| Tclass.ObjectEquality.A))
 :pattern ( ($Is refType |c#0@@5| Tclass.ObjectEquality.A?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.ObjectEquality.B)  (and ($Is refType |c#0@@6| Tclass.ObjectEquality.B?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6411|
 :pattern ( ($Is refType |c#0@@6| Tclass.ObjectEquality.B))
 :pattern ( ($Is refType |c#0@@6| Tclass.ObjectEquality.B?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass.ObjectEquality.C)  (and ($Is refType |c#0@@7| Tclass.ObjectEquality.C?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6415|
 :pattern ( ($Is refType |c#0@@7| Tclass.ObjectEquality.C))
 :pattern ( ($Is refType |c#0@@7| Tclass.ObjectEquality.C?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass.ObjectEquality.D)  (and ($Is refType |c#0@@8| Tclass.ObjectEquality.D?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6419|
 :pattern ( ($Is refType |c#0@@8| Tclass.ObjectEquality.D))
 :pattern ( ($Is refType |c#0@@8| Tclass.ObjectEquality.D?))
)))
(assert (forall (($o@@6 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@6 Tclass.ObjectEquality.B? $heap) ($IsAlloc refType $o@@6 Tclass.ObjectEquality.A? $heap))
 :qid |unknown.0:0|
 :skolemid |6424|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.ObjectEquality.B? $heap))
)))
(assert (forall (($o@@7 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass.ObjectEquality.C? $heap@@0) ($IsAlloc refType $o@@7 Tclass.ObjectEquality.B? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |6428|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.ObjectEquality.C? $heap@@0))
)))
(assert (forall (($o@@8 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@8 Tclass.ObjectEquality.D? $heap@@1) ($IsAlloc refType $o@@8 Tclass.ObjectEquality.B? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |6432|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.ObjectEquality.D? $heap@@1))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |5951|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall (($o@@9 T@U) ) (! ($Is refType $o@@9 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |6197|
 :pattern ( ($Is refType $o@@9 Tclass._System.object?))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5859|
 :pattern ( ($Box T@@1 x@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@10 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8404|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f))
)))
(assert (forall (($o@@11 T@U) ) (!  (=> ($Is refType $o@@11 Tclass.ObjectEquality.B?) ($Is refType $o@@11 Tclass.ObjectEquality.A?))
 :qid |unknown.0:0|
 :skolemid |6423|
 :pattern ( ($Is refType $o@@11 Tclass.ObjectEquality.B?))
)))
(assert (forall (($o@@12 T@U) ) (!  (=> ($Is refType $o@@12 Tclass.ObjectEquality.C?) ($Is refType $o@@12 Tclass.ObjectEquality.B?))
 :qid |unknown.0:0|
 :skolemid |6427|
 :pattern ( ($Is refType $o@@12 Tclass.ObjectEquality.C?))
)))
(assert (forall (($o@@13 T@U) ) (!  (=> ($Is refType $o@@13 Tclass.ObjectEquality.D?) ($Is refType $o@@13 Tclass.ObjectEquality.B?))
 :qid |unknown.0:0|
 :skolemid |6431|
 :pattern ( ($Is refType $o@@13 Tclass.ObjectEquality.D?))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |5950|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.ObjectEquality.C) Tagclass.ObjectEquality.C))
(assert (= (TagFamily Tclass.ObjectEquality.C) tytagFamily$C))
(assert (= (Tag Tclass.ObjectEquality.C?) Tagclass.ObjectEquality.C?))
(assert (= (TagFamily Tclass.ObjectEquality.C?) tytagFamily$C))
(assert (= (Tag Tclass.ObjectEquality.B) Tagclass.ObjectEquality.B))
(assert (= (TagFamily Tclass.ObjectEquality.B) tytagFamily$B))
(assert (= (Tag Tclass.ObjectEquality.A) Tagclass.ObjectEquality.A))
(assert (= (TagFamily Tclass.ObjectEquality.A) tytagFamily$A))
(assert (= (Tag Tclass.ObjectEquality.D) Tagclass.ObjectEquality.D))
(assert (= (TagFamily Tclass.ObjectEquality.D) tytagFamily$D))
(assert (= (Tag Tclass.ObjectEquality.D?) Tagclass.ObjectEquality.D?))
(assert (= (TagFamily Tclass.ObjectEquality.D?) tytagFamily$D))
(assert (= (Tag Tclass.ObjectEquality.A?) Tagclass.ObjectEquality.A?))
(assert (= (TagFamily Tclass.ObjectEquality.A?) tytagFamily$A))
(assert (= (Tag Tclass.ObjectEquality.B?) Tagclass.ObjectEquality.B?))
(assert (= (TagFamily Tclass.ObjectEquality.B?) tytagFamily$B))
(assert (forall (($o@@14 T@U) ) (! (= ($Is refType $o@@14 Tclass.ObjectEquality.A?)  (or (= $o@@14 null) (implements$ObjectEquality.A (dtype $o@@14))))
 :qid |unknown.0:0|
 :skolemid |6404|
 :pattern ( ($Is refType $o@@14 Tclass.ObjectEquality.A?))
)))
(assert (forall (($o@@15 T@U) ) (! (= ($Is refType $o@@15 Tclass.ObjectEquality.B?)  (or (= $o@@15 null) (implements$ObjectEquality.B (dtype $o@@15))))
 :qid |unknown.0:0|
 :skolemid |6409|
 :pattern ( ($Is refType $o@@15 Tclass.ObjectEquality.B?))
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
(declare-fun |ObjectEquality.__default.Eq#canCall| (T@U T@U T@U) Bool)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@9| () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun |defass#oc#0| () Bool)
(declare-fun |oc#0| () T@U)
(declare-fun |defass#od#0| () Bool)
(declare-fun |od#0| () T@U)
(declare-fun |defass#ac#0| () Bool)
(declare-fun |ac#0| () T@U)
(declare-fun |defass#ad#0| () Bool)
(declare-fun |ad#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$ObjectEquality.__default.NotTheSame)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.ObjectEquality.C?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass.ObjectEquality.D?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) true) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (and (=> (= (ControlFlow 0 2) (- 0 14)) true) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (=> ($IsAlloc refType $nw@0 Tclass._System.object $Heap@1) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (=> ($IsAlloc refType $nw@1 Tclass._System.object $Heap@1) (=> (and (|ObjectEquality.__default.Eq#canCall| Tclass._System.object ($Box refType $nw@0) ($Box refType $nw@1)) (|ObjectEquality.__default.Eq#canCall| Tclass._System.object ($Box refType $nw@0) ($Box refType $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (=> ($IsAlloc refType $nw@0 Tclass._System.object $Heap@1) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (=> ($IsAlloc refType $nw@1 Tclass._System.object $Heap@1) (=> (and (|ObjectEquality.__default.Eq#canCall| Tclass._System.object ($Box refType $nw@0) ($Box refType $nw@1)) (|ObjectEquality.__default.Eq#canCall| Tclass._System.object ($Box refType $nw@0) ($Box refType $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> ($IsAlloc refType $nw@0 Tclass.ObjectEquality.A $Heap@1) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (=> ($IsAlloc refType $nw@1 Tclass.ObjectEquality.A $Heap@1) (=> (and (|ObjectEquality.__default.Eq#canCall| Tclass.ObjectEquality.A ($Box refType $nw@0) ($Box refType $nw@1)) (|ObjectEquality.__default.Eq#canCall| Tclass.ObjectEquality.A ($Box refType $nw@0) ($Box refType $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and ($IsAlloc refType $nw@0 Tclass.ObjectEquality.A $Heap@1) (= (ControlFlow 0 2) (- 0 1))) true))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#c#0| (and ($Is refType |c#0@@9| Tclass.ObjectEquality.C) ($IsAlloc refType |c#0@@9| Tclass.ObjectEquality.C $Heap))) true)) (and (and (=> |defass#d#0| (and ($Is refType |d#0| Tclass.ObjectEquality.D) ($IsAlloc refType |d#0| Tclass.ObjectEquality.D $Heap))) true) (and (=> |defass#oc#0| (and ($Is refType |oc#0| Tclass._System.object) ($IsAlloc refType |oc#0| Tclass._System.object $Heap))) true))) (and (and (and (=> |defass#od#0| (and ($Is refType |od#0| Tclass._System.object) ($IsAlloc refType |od#0| Tclass._System.object $Heap))) true) (and (=> |defass#ac#0| (and ($Is refType |ac#0| Tclass.ObjectEquality.A) ($IsAlloc refType |ac#0| Tclass.ObjectEquality.A $Heap))) true)) (and (and (=> |defass#ad#0| (and ($Is refType |ad#0| Tclass.ObjectEquality.A) ($IsAlloc refType |ad#0| Tclass.ObjectEquality.A $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 18) 2))))) anon0_correct)))
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
