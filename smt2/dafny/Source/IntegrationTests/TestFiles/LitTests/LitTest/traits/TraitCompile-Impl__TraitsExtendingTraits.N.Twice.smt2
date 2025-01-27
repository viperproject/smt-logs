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
(declare-fun Tagclass.TraitsExtendingTraits.N () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.B () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.B? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.C? () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.C () T@U)
(declare-fun Tagclass.TraitsExtendingTraits.N? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$N () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun tytagFamily$C () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.TraitsExtendingTraits.B () T@U)
(declare-fun Tclass.TraitsExtendingTraits.B? () T@U)
(declare-fun Tclass.TraitsExtendingTraits.C () T@U)
(declare-fun Tclass.TraitsExtendingTraits.C? () T@U)
(declare-fun Tclass.TraitsExtendingTraits.N () T@U)
(declare-fun Tclass.TraitsExtendingTraits.N? () T@U)
(declare-fun null () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.B (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$TraitsExtendingTraits.C (T@U) Bool)
(declare-fun implements$TraitsExtendingTraits.N (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.object? Tagclass._System.object Tagclass.TraitsExtendingTraits.N Tagclass.TraitsExtendingTraits.B Tagclass.TraitsExtendingTraits.B? Tagclass.TraitsExtendingTraits.C? Tagclass.TraitsExtendingTraits.C Tagclass.TraitsExtendingTraits.N? tytagFamily$object tytagFamily$N tytagFamily$B tytagFamily$C)
)
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |2923|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.TraitsExtendingTraits.B $h@@0) ($IsAlloc refType |c#0@@0| Tclass.TraitsExtendingTraits.B? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3163|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TraitsExtendingTraits.B $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TraitsExtendingTraits.B? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.TraitsExtendingTraits.C $h@@1) ($IsAlloc refType |c#0@@1| Tclass.TraitsExtendingTraits.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3169|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.TraitsExtendingTraits.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.TraitsExtendingTraits.C? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.N $h@@2) ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.N? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3210|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.N $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.TraitsExtendingTraits.N? $h@@2))
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
(assert (forall (($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2920|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.TraitsExtendingTraits.B? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3155|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.TraitsExtendingTraits.B? $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.TraitsExtendingTraits.C? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3166|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.TraitsExtendingTraits.C? $h@@5))
)))
(assert (forall (($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.TraitsExtendingTraits.N? $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3201|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.TraitsExtendingTraits.N? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2674|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2675|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2573|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2571|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2582|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2666|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2922|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.TraitsExtendingTraits.B)  (and ($Is refType |c#0@@4| Tclass.TraitsExtendingTraits.B?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3162|
 :pattern ( ($Is refType |c#0@@4| Tclass.TraitsExtendingTraits.B))
 :pattern ( ($Is refType |c#0@@4| Tclass.TraitsExtendingTraits.B?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.TraitsExtendingTraits.C)  (and ($Is refType |c#0@@5| Tclass.TraitsExtendingTraits.C?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3168|
 :pattern ( ($Is refType |c#0@@5| Tclass.TraitsExtendingTraits.C))
 :pattern ( ($Is refType |c#0@@5| Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.TraitsExtendingTraits.N)  (and ($Is refType |c#0@@6| Tclass.TraitsExtendingTraits.N?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3209|
 :pattern ( ($Is refType |c#0@@6| Tclass.TraitsExtendingTraits.N))
 :pattern ( ($Is refType |c#0@@6| Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.TraitsExtendingTraits.C? $heap) ($IsAlloc refType $o@@3 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |3230|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.TraitsExtendingTraits.C? $heap))
)))
(assert (forall (($o@@4 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass.TraitsExtendingTraits.N? $heap@@0) ($IsAlloc refType $o@@4 Tclass.TraitsExtendingTraits.B? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3246|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.TraitsExtendingTraits.N? $heap@@0))
)))
(assert (forall (($o@@5 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass.TraitsExtendingTraits.N? $heap@@1) ($IsAlloc refType $o@@5 Tclass.TraitsExtendingTraits.C? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3250|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.TraitsExtendingTraits.N? $heap@@1))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2673|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2919|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2581|
 :pattern ( ($Box T@@2 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8405|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |2894|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass.TraitsExtendingTraits.C?) ($Is refType $o@@8 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |3229|
 :pattern ( ($Is refType $o@@8 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass.TraitsExtendingTraits.N?) ($Is refType $o@@9 Tclass.TraitsExtendingTraits.B?))
 :qid |unknown.0:0|
 :skolemid |3245|
 :pattern ( ($Is refType $o@@9 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass.TraitsExtendingTraits.N?) ($Is refType $o@@10 Tclass.TraitsExtendingTraits.C?))
 :qid |unknown.0:0|
 :skolemid |3249|
 :pattern ( ($Is refType $o@@10 Tclass.TraitsExtendingTraits.N?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.TraitsExtendingTraits.N) Tagclass.TraitsExtendingTraits.N))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.N) tytagFamily$N))
(assert (= (Tag Tclass.TraitsExtendingTraits.B) Tagclass.TraitsExtendingTraits.B))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.B) tytagFamily$B))
(assert (= (Tag Tclass.TraitsExtendingTraits.B?) Tagclass.TraitsExtendingTraits.B?))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.B?) tytagFamily$B))
(assert (= (Tag Tclass.TraitsExtendingTraits.C?) Tagclass.TraitsExtendingTraits.C?))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.C?) tytagFamily$C))
(assert (= (Tag Tclass.TraitsExtendingTraits.C) Tagclass.TraitsExtendingTraits.C))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.C) tytagFamily$C))
(assert (= (Tag Tclass.TraitsExtendingTraits.N?) Tagclass.TraitsExtendingTraits.N?))
(assert (= (TagFamily Tclass.TraitsExtendingTraits.N?) tytagFamily$N))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass.TraitsExtendingTraits.B?)  (or (= $o@@11 null) (implements$TraitsExtendingTraits.B (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |3154|
 :pattern ( ($Is refType $o@@11 Tclass.TraitsExtendingTraits.B?))
)))
(assert (forall (($o@@12 T@U) ) (! (= ($Is refType $o@@12 Tclass.TraitsExtendingTraits.C?)  (or (= $o@@12 null) (implements$TraitsExtendingTraits.C (dtype $o@@12))))
 :qid |unknown.0:0|
 :skolemid |3165|
 :pattern ( ($Is refType $o@@12 Tclass.TraitsExtendingTraits.C?))
)))
(assert (forall (($o@@13 T@U) ) (! (= ($Is refType $o@@13 Tclass.TraitsExtendingTraits.N?)  (or (= $o@@13 null) (implements$TraitsExtendingTraits.N (dtype $o@@13))))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($Is refType $o@@13 Tclass.TraitsExtendingTraits.N?))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2574|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2572|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$TraitsExtendingTraits.N.Twice)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
