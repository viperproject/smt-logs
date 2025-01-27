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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.ClassA () T@U)
(declare-fun Tagclass._module.ClassA? () T@U)
(declare-fun Tagclass._module.ClassB () T@U)
(declare-fun Tagclass._module.ClassB? () T@U)
(declare-fun Tagclass._module.ClassC () T@U)
(declare-fun Tagclass._module.ClassC? () T@U)
(declare-fun Tagclass._module.Trait? () T@U)
(declare-fun Tagclass._module.Trait () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$ClassA () T@U)
(declare-fun tytagFamily$ClassB () T@U)
(declare-fun tytagFamily$ClassC () T@U)
(declare-fun tytagFamily$Trait () T@U)
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
(declare-fun TBitvector (Int) T@U)
(declare-fun bv8Type () T@T)
(declare-fun bv8_2_U ((_ BitVec 8)) T@U)
(declare-fun U_2_bv8 (T@U) (_ BitVec 8))
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun Tclass._module.Trait (T@U) T@U)
(declare-fun Tclass._module.Trait? (T@U) T@U)
(declare-fun Tclass._module.ClassA? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.ClassB? () T@U)
(declare-fun Tclass._module.ClassC? () T@U)
(declare-fun Tclass._module.ClassA () T@U)
(declare-fun Tclass._module.ClassB () T@U)
(declare-fun Tclass._module.ClassC () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Tclass._module.C (T@U) T@U)
(declare-fun _module.Trait.k (T@U T@U) T@U)
(declare-fun _module.Trait.y (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Trait (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Trait.l (T@U T@U) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._module.Trait?_0 (T@U) T@U)
(declare-fun Tclass._module.Trait_0 (T@U) T@U)
(declare-fun Tclass._module.C_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
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
(assert (distinct alloc Tagclass._System.array? Tagclass._System.array Tagclass._module.ClassA Tagclass._module.ClassA? Tagclass._module.ClassB Tagclass._module.ClassB? Tagclass._module.ClassC Tagclass._module.ClassC? Tagclass._module.Trait? Tagclass._module.Trait Tagclass._module.C tytagFamily$array tytagFamily$ClassA tytagFamily$ClassB tytagFamily$ClassC tytagFamily$Trait tytagFamily$C)
)
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |66|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert  (and (and (= (Ctor bv8Type) 3) (forall ((arg0@@2 (_ BitVec 8)) ) (! (= (U_2_bv8 (bv8_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv8|
 :pattern ( (bv8_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv8_2_U (U_2_bv8 x@@2)) x@@2)
 :qid |cast:U_2_bv8|
 :pattern ( (U_2_bv8 x@@2))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv8Type v@@0 (TBitvector 8) heap)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc bv8Type v@@0 (TBitvector 8) heap))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |45|
 :pattern ( ($Is intType v@@1 (TBitvector 0)))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is bv8Type v@@2 (TBitvector 8))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is bv8Type v@@2 (TBitvector 8)))
)))
(assert (= (Ctor refType) 4))
(assert (forall ((_System.array$arg T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg) $h))
)))
(assert (forall ((_module.Trait$Y T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Trait _module.Trait$Y) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.Trait? _module.Trait$Y) $h@@0))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Trait _module.Trait$Y) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Trait? _module.Trait$Y) $h@@0))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.ClassA?)  (or (= $o null) (= (dtype $o) Tclass._module.ClassA?)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($Is refType $o Tclass._module.ClassA?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.ClassB?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.ClassB?)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Is refType $o@@0 Tclass._module.ClassB?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.ClassC?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.ClassC?)))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($Is refType $o@@1 Tclass._module.ClassC?))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.ClassA $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.ClassA? $h@@1))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.ClassA $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.ClassA? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.ClassB $h@@2) ($IsAlloc refType |c#0@@2| Tclass._module.ClassB? $h@@2))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ClassB $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ClassB? $h@@2))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.ClassC $h@@3) ($IsAlloc refType |c#0@@3| Tclass._module.ClassC? $h@@3))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.ClassC $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.ClassC? $h@@3))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@3 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@3 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@4 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@4 arg1@@0)) arg0@@4)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@4 arg1@@0))
))) (forall ((arg0@@5 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@5 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@5 arg1@@1))
))))
(assert (forall ((_System.array$arg@@0 T@U) ($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@0) $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@0) $h@@4))
)))
(assert (forall ((_module.Trait$Y@@0 T@U) ($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.Trait? _module.Trait$Y@@0) $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.Trait? _module.Trait$Y@@0) $h@@5))
)))
(assert (forall ((bx T@U) ($h@@6 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.ClassA? $h@@6) ($IsGoodHeap $h@@6)) ($IsAllocBox bx (Tclass._module.Trait? (TBitvector 8)) $h@@6))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAllocBox bx Tclass._module.ClassA? $h@@6))
)))
(assert (forall (($o@@4 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.ClassA? $h@@7)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.ClassA? $h@@7))
)))
(assert (forall (($o@@5 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.ClassB? $h@@8)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.ClassB? $h@@8))
)))
(assert (forall (($o@@6 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.ClassC? $h@@9)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.ClassC? $h@@9))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((bx@@0 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.ClassB? $h@@10) ($IsGoodHeap $h@@10)) ($IsAllocBox bx@@0 (Tclass._module.Trait? (Tclass._System.array (TBitvector 8))) $h@@10))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.ClassB? $h@@10))
)))
(assert (forall ((bx@@1 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.ClassC? $h@@11) ($IsGoodHeap $h@@11)) ($IsAllocBox bx@@1 (Tclass._module.Trait? (Tclass._module.C (TBitvector 8))) $h@@11))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.ClassC? $h@@11))
)))
(assert (forall ((_module.Trait$Y@@1 T@U) (this T@U) ) (! (= (_module.Trait.k _module.Trait$Y@@1 this) (_module.Trait.y _module.Trait$Y@@1 this))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (_module.Trait.k _module.Trait$Y@@1 this))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@3))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 Tclass._module.ClassA?) ($Is refType $o@@7 (Tclass._module.Trait? (TBitvector 8))))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($Is refType $o@@7 Tclass._module.ClassA?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.ClassA?) ($IsBox bx@@2 (Tclass._module.Trait? (TBitvector 8))))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($IsBox bx@@2 Tclass._module.ClassA?))
)))
(assert (forall ((_System.array$arg@@1 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass._System.array _System.array$arg@@1))  (and ($Is refType |c#0@@4| (Tclass._System.array? _System.array$arg@@1)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array _System.array$arg@@1)))
 :pattern ( ($Is refType |c#0@@4| (Tclass._System.array? _System.array$arg@@1)))
)))
(assert (forall ((_module.Trait$Y@@2 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._module.Trait _module.Trait$Y@@2))  (and ($Is refType |c#0@@5| (Tclass._module.Trait? _module.Trait$Y@@2)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.Trait _module.Trait$Y@@2)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.Trait? _module.Trait$Y@@2)))
)))
(assert (forall ((v@@3 T@U) (t T@U) (h@@1 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@3) t h@@1) ($IsAlloc T@@0 v@@3 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@3) t h@@1))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass._module.ClassB?) ($Is refType $o@@8 (Tclass._module.Trait? (Tclass._System.array (TBitvector 8)))))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($Is refType $o@@8 Tclass._module.ClassB?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.ClassB?) ($IsBox bx@@3 (Tclass._module.Trait? (Tclass._System.array (TBitvector 8)))))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($IsBox bx@@3 Tclass._module.ClassB?))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass._module.ClassC?) ($Is refType $o@@9 (Tclass._module.Trait? (Tclass._module.C (TBitvector 8)))))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($Is refType $o@@9 Tclass._module.ClassC?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.ClassC?) ($IsBox bx@@4 (Tclass._module.Trait? (Tclass._module.C (TBitvector 8)))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@4 Tclass._module.ClassC?))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@5 t@@0 h@@2) ($IsAllocBox bx@@5 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@5 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@4 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@1 v@@4 t@@1 h@@3) ($IsAlloc T@@1 v@@4 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@1 v@@4 t@@1 h@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@2)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@2)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@3)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( (Tclass._System.array _System.array$arg@@3))
)))
(assert (forall ((_module.Trait$Y@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Trait? _module.Trait$Y@@3)) Tagclass._module.Trait?) (= (TagFamily (Tclass._module.Trait? _module.Trait$Y@@3)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Tclass._module.Trait? _module.Trait$Y@@3))
)))
(assert (forall ((_module.Trait$Y@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Trait _module.Trait$Y@@4)) Tagclass._module.Trait) (= (TagFamily (Tclass._module.Trait _module.Trait$Y@@4)) tytagFamily$Trait))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Tclass._module.Trait _module.Trait$Y@@4))
)))
(assert (forall ((_module.C$T T@U) ) (!  (and (= (Tag (Tclass._module.C _module.C$T)) Tagclass._module.C) (= (TagFamily (Tclass._module.C _module.C$T)) tytagFamily$C))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._module.C _module.C$T))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.ClassA) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.ClassA)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@6 Tclass._module.ClassA))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.ClassA?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.ClassA?)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@7 Tclass._module.ClassA?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.ClassB) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.ClassB)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@8 Tclass._module.ClassB))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.ClassB?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.ClassB?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@9 Tclass._module.ClassB?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.ClassC) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.ClassC)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@10 Tclass._module.ClassC))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.ClassC?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.ClassC?)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsBox bx@@11 Tclass._module.ClassC?))
)))
(assert (forall ((_System.array$arg@@4 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass._System.array? _System.array$arg@@4))  (or (= $o@@10 null) (= (dtype $o@@10) (Tclass._System.array? _System.array$arg@@4))))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( ($Is refType $o@@10 (Tclass._System.array? _System.array$arg@@4)))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.ClassA)  (and ($Is refType |c#0@@6| Tclass._module.ClassA?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ClassA))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ClassA?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.ClassB)  (and ($Is refType |c#0@@7| Tclass._module.ClassB?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.ClassB))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.ClassB?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.ClassC)  (and ($Is refType |c#0@@8| Tclass._module.ClassC?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.ClassC))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.ClassC?))
)))
(assert (implements$_module.Trait Tclass._module.ClassA? (TBitvector 8)))
(assert (forall (($o@@11 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.ClassA? $heap) ($IsAlloc refType $o@@11 (Tclass._module.Trait? (TBitvector 8)) $heap))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.ClassA? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (implements$_module.Trait Tclass._module.ClassB? (Tclass._System.array (TBitvector 8))))
(assert (implements$_module.Trait Tclass._module.ClassC? (Tclass._module.C (TBitvector 8))))
(assert (forall (($o@@12 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.ClassB? $heap@@0) ($IsAlloc refType $o@@12 (Tclass._module.Trait? (Tclass._System.array (TBitvector 8))) $heap@@0))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.ClassB? $heap@@0))
)))
(assert (forall (($o@@13 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.ClassC? $heap@@1) ($IsAlloc refType $o@@13 (Tclass._module.Trait? (Tclass._module.C (TBitvector 8))) $heap@@1))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.ClassC? $heap@@1))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@2) ($Is T@@2 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Trait$Y@@5 T@U) ($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 (Tclass._module.Trait? _module.Trait$Y@@5))) ($IsBox (_module.Trait.y _module.Trait$Y@@5 $o@@14) _module.Trait$Y@@5))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (_module.Trait.y _module.Trait$Y@@5 $o@@14))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Trait$Y@@6 T@U) ($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) ($Is refType $o@@15 (Tclass._module.Trait? _module.Trait$Y@@6))) ($IsBox (_module.Trait.l _module.Trait$Y@@6 $o@@15) _module.Trait$Y@@6))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (_module.Trait.l _module.Trait$Y@@6 $o@@15))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((_module.Trait$Y@@7 T@U) ($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 (Tclass._module.Trait? _module.Trait$Y@@7))) ($IsBox (_module.Trait.k _module.Trait$Y@@7 $o@@16) _module.Trait$Y@@7))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (_module.Trait.k _module.Trait$Y@@7 $o@@16))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Trait$Y@@8 T@U) ($h@@12 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 (Tclass._module.Trait? _module.Trait$Y@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@17) alloc)))) ($IsAllocBox (_module.Trait.y _module.Trait$Y@@8 $o@@17) _module.Trait$Y@@8 $h@@12))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (_module.Trait.y _module.Trait$Y@@8 $o@@17) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@17) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Trait$Y@@9 T@U) ($h@@13 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@18 null)) (not true)) ($Is refType $o@@18 (Tclass._module.Trait? _module.Trait$Y@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@18) alloc)))) ($IsAllocBox (_module.Trait.l _module.Trait$Y@@9 $o@@18) _module.Trait$Y@@9 $h@@13))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (_module.Trait.l _module.Trait$Y@@9 $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@18) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((_module.Trait$Y@@10 T@U) ($h@@14 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@19 null)) (not true)) ($Is refType $o@@19 (Tclass._module.Trait? _module.Trait$Y@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@19) alloc)))) ($IsAllocBox (_module.Trait.k _module.Trait$Y@@10 $o@@19) _module.Trait$Y@@10 $h@@14))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (_module.Trait.k _module.Trait$Y@@10 $o@@19) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@19) alloc)))
))))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@5)) _System.array$arg@@5)
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( (Tclass._System.array? _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.array _System.array$arg@@6))
)))
(assert (forall ((_module.Trait$Y@@11 T@U) ) (! (= (Tclass._module.Trait?_0 (Tclass._module.Trait? _module.Trait$Y@@11)) _module.Trait$Y@@11)
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (Tclass._module.Trait? _module.Trait$Y@@11))
)))
(assert (forall ((_module.Trait$Y@@12 T@U) ) (! (= (Tclass._module.Trait_0 (Tclass._module.Trait _module.Trait$Y@@12)) _module.Trait$Y@@12)
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (Tclass._module.Trait _module.Trait$Y@@12))
)))
(assert (forall ((_module.C$T@@0 T@U) ) (! (= (Tclass._module.C_0 (Tclass._module.C _module.C$T@@0)) _module.C$T@@0)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._module.C _module.C$T@@0))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((_module.Trait$Y@@13 T@U) ($o@@20 T@U) ) (! (= ($Is refType $o@@20 (Tclass._module.Trait? _module.Trait$Y@@13))  (or (= $o@@20 null) (implements$_module.Trait (dtype $o@@20) _module.Trait$Y@@13)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Is refType $o@@20 (Tclass._module.Trait? _module.Trait$Y@@13)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@21 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f))  (=> (and (or (not (= $o@@21 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@21) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |555|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@21 $f))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@12)) bx@@12) ($Is intType ($Unbox intType bx@@12) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@12 (TBitvector 0)))
)))
(assert (forall ((_System.array$arg@@7 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.array? _System.array$arg@@7)) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) (Tclass._System.array? _System.array$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsBox bx@@13 (Tclass._System.array? _System.array$arg@@7)))
)))
(assert (forall ((_System.array$arg@@8 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.array _System.array$arg@@8)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass._System.array _System.array$arg@@8))))
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( ($IsBox bx@@14 (Tclass._System.array _System.array$arg@@8)))
)))
(assert (forall ((_module.Trait$Y@@14 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._module.Trait? _module.Trait$Y@@14)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._module.Trait? _module.Trait$Y@@14))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsBox bx@@15 (Tclass._module.Trait? _module.Trait$Y@@14)))
)))
(assert (forall ((_module.Trait$Y@@15 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._module.Trait _module.Trait$Y@@15)) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) (Tclass._module.Trait _module.Trait$Y@@15))))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsBox bx@@16 (Tclass._module.Trait _module.Trait$Y@@15)))
)))
(assert (= (Ctor DatatypeTypeType) 8))
(assert (forall ((_module.C$T@@1 T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._module.C _module.C$T@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@17)) bx@@17) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@17) (Tclass._module.C _module.C$T@@1))))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@17 (Tclass._module.C _module.C$T@@1)))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (TBitvector 8)) (and (= ($Box bv8Type ($Unbox bv8Type bx@@18)) bx@@18) ($Is bv8Type ($Unbox bv8Type bx@@18) (TBitvector 8))))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@18 (TBitvector 8)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@5 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@5)))
)))
(assert (= (Tag Tclass._module.ClassA) Tagclass._module.ClassA))
(assert (= (TagFamily Tclass._module.ClassA) tytagFamily$ClassA))
(assert (= (Tag Tclass._module.ClassA?) Tagclass._module.ClassA?))
(assert (= (TagFamily Tclass._module.ClassA?) tytagFamily$ClassA))
(assert (= (Tag Tclass._module.ClassB) Tagclass._module.ClassB))
(assert (= (TagFamily Tclass._module.ClassB) tytagFamily$ClassB))
(assert (= (Tag Tclass._module.ClassB?) Tagclass._module.ClassB?))
(assert (= (TagFamily Tclass._module.ClassB?) tytagFamily$ClassB))
(assert (= (Tag Tclass._module.ClassC) Tagclass._module.ClassC))
(assert (= (TagFamily Tclass._module.ClassC) tytagFamily$ClassC))
(assert (= (Tag Tclass._module.ClassC?) Tagclass._module.ClassC?))
(assert (= (TagFamily Tclass._module.ClassC?) tytagFamily$ClassC))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |defass#ca#0| () Bool)
(declare-fun |ca#0| () T@U)
(declare-fun |defass#cb#0| () Bool)
(declare-fun |cb#0| () T@U)
(declare-fun |defass#cc#0| () Bool)
(declare-fun |cc#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.ClassA?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 22)) true) (and (=> (= (ControlFlow 0 2) (- 0 21)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 20)) true) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 18)) true) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= $nw@0 null)) (not true))) (=> (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.ClassB?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= $nw@1 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= ($Unbox refType (_module.Trait.y (Tclass._System.array (TBitvector 8)) $nw@1)) null)) (not true))) (=> (or (not (= ($Unbox refType (_module.Trait.y (Tclass._System.array (TBitvector 8)) $nw@1)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $nw@1 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= ($Unbox refType (_module.Trait.k (Tclass._System.array (TBitvector 8)) $nw@1)) null)) (not true))) (=> (or (not (= ($Unbox refType (_module.Trait.k (Tclass._System.array (TBitvector 8)) $nw@1)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@1 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= ($Unbox refType (_module.Trait.l (Tclass._System.array (TBitvector 8)) $nw@1)) null)) (not true))) (=> (or (not (= ($Unbox refType (_module.Trait.l (Tclass._System.array (TBitvector 8)) $nw@1)) null)) (not true)) (=> (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 Tclass._module.ClassC?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc)))) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $nw@2 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $nw@2 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $nw@2 null)) (not true)))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#ca#0| (and ($Is refType |ca#0| Tclass._module.ClassA) ($IsAlloc refType |ca#0| Tclass._module.ClassA $Heap))) true) (and (=> |defass#cb#0| (and ($Is refType |cb#0| Tclass._module.ClassB) ($IsAlloc refType |cb#0| Tclass._module.ClassB $Heap))) true)) (and (and (=> |defass#cc#0| (and ($Is refType |cc#0| Tclass._module.ClassC) ($IsAlloc refType |cc#0| Tclass._module.ClassC $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 23) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
