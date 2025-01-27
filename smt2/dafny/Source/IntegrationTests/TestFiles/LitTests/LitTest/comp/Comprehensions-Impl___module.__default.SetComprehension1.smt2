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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.ClassA () T@U)
(declare-fun Tagclass._module.ClassB () T@U)
(declare-fun Tagclass._module.ClassA? () T@U)
(declare-fun Tagclass._module.ClassB? () T@U)
(declare-fun Tagclass._module.NothingInParticular () T@U)
(declare-fun Tagclass._module.NothingInParticular? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$ClassA () T@U)
(declare-fun tytagFamily$ClassB () T@U)
(declare-fun tytagFamily$NothingInParticular () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#56| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun implements$_module.NothingInParticular (T@U) Bool)
(declare-fun Tclass._module.ClassB? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.ClassA? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.NothingInParticular? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.NothingInParticular () T@U)
(declare-fun Tclass._module.ClassA () T@U)
(declare-fun Tclass._module.ClassB () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.ClassA Tagclass._module.ClassB Tagclass._module.ClassA? Tagclass._module.ClassB? Tagclass._module.NothingInParticular Tagclass._module.NothingInParticular? tytagFamily$object tytagFamily$ClassA tytagFamily$ClassB tytagFamily$NothingInParticular)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2461|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2462|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2460|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#56| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |unknown.0:0|
 :skolemid |3348|
 :pattern ( (MapType0Select BoxType boolType (|lambda#56| |l#0| |l#1|) |$y#0|))
)))
(assert (implements$_module.NothingInParticular Tclass._module.ClassB?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2457|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.ClassA?)  (or (= $o null) (= (dtype $o) Tclass._module.ClassA?)))
 :qid |unknown.0:0|
 :skolemid |3194|
 :pattern ( ($Is refType $o Tclass._module.ClassA?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.ClassB?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.ClassB?)))
 :qid |unknown.0:0|
 :skolemid |3198|
 :pattern ( ($Is refType $o@@0 Tclass._module.ClassB?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.ClassB? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.NothingInParticular? $h))
 :qid |unknown.0:0|
 :skolemid |3310|
 :pattern ( ($IsAllocBox bx Tclass._module.ClassB? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2683|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.NothingInParticular $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.NothingInParticular? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3193|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NothingInParticular $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NothingInParticular? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.ClassA $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.ClassA? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.ClassA $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.ClassA? $h@@2))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.ClassB $h@@3) ($IsAlloc refType |c#0@@2| Tclass._module.ClassB? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3201|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ClassB $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ClassB? $h@@3))
)))
(assert  (and (and (and (= (Ctor FieldType) 5) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
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
 :skolemid |2680|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.NothingInParticular? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3191|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.NothingInParticular? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.ClassA? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3195|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.ClassA? $h@@6))
)))
(assert (forall (($o@@4 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.ClassB? $h@@7)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3199|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.ClassB? $h@@7))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2450|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2451|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2358|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |2485|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2378|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2379|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2371|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2443|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2442|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2678|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2681|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.ClassA) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.ClassA)))
 :qid |unknown.0:0|
 :skolemid |3134|
 :pattern ( ($IsBox bx@@5 Tclass._module.ClassA))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.ClassB) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.ClassB)))
 :qid |unknown.0:0|
 :skolemid |3135|
 :pattern ( ($IsBox bx@@6 Tclass._module.ClassB))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.ClassA?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.ClassA?)))
 :qid |unknown.0:0|
 :skolemid |3136|
 :pattern ( ($IsBox bx@@7 Tclass._module.ClassA?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.ClassB?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.ClassB?)))
 :qid |unknown.0:0|
 :skolemid |3137|
 :pattern ( ($IsBox bx@@8 Tclass._module.ClassB?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.NothingInParticular) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.NothingInParticular)))
 :qid |unknown.0:0|
 :skolemid |3138|
 :pattern ( ($IsBox bx@@9 Tclass._module.NothingInParticular))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.NothingInParticular?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.NothingInParticular?)))
 :qid |unknown.0:0|
 :skolemid |3145|
 :pattern ( ($IsBox bx@@10 Tclass._module.NothingInParticular?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2682|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.NothingInParticular)  (and ($Is refType |c#0@@4| Tclass._module.NothingInParticular?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3192|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.NothingInParticular))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.NothingInParticular?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.ClassA)  (and ($Is refType |c#0@@5| Tclass._module.ClassA?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3196|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.ClassA))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.ClassA?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.ClassB)  (and ($Is refType |c#0@@6| Tclass._module.ClassB?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ClassB))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ClassB?))
)))
(assert (forall (($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.ClassB? $heap) ($IsAlloc refType $o@@5 Tclass._module.NothingInParticular? $heap))
 :qid |unknown.0:0|
 :skolemid |3312|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.ClassB? $heap))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2449|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2370|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@11) ($IsAllocBox bx@@11 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2399|
 :pattern ( (|Set#IsMember| v@@3 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2400|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2679|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2333|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2334|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2357|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3336|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((bx@@12 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2364|
 :pattern ( ($IsBox bx@@12 (TSet t@@5)))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass._module.ClassB?) ($Is refType $o@@8 Tclass._module.NothingInParticular?))
 :qid |unknown.0:0|
 :skolemid |3311|
 :pattern ( ($Is refType $o@@8 Tclass._module.ClassB?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.ClassB?) ($IsBox bx@@13 Tclass._module.NothingInParticular?))
 :qid |unknown.0:0|
 :skolemid |3309|
 :pattern ( ($IsBox bx@@13 Tclass._module.ClassB?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2448|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.ClassA) Tagclass._module.ClassA))
(assert (= (TagFamily Tclass._module.ClassA) tytagFamily$ClassA))
(assert (= (Tag Tclass._module.ClassB) Tagclass._module.ClassB))
(assert (= (TagFamily Tclass._module.ClassB) tytagFamily$ClassB))
(assert (= (Tag Tclass._module.ClassA?) Tagclass._module.ClassA?))
(assert (= (TagFamily Tclass._module.ClassA?) tytagFamily$ClassA))
(assert (= (Tag Tclass._module.ClassB?) Tagclass._module.ClassB?))
(assert (= (TagFamily Tclass._module.ClassB?) tytagFamily$ClassB))
(assert (= (Tag Tclass._module.NothingInParticular) Tagclass._module.NothingInParticular))
(assert (= (TagFamily Tclass._module.NothingInParticular) tytagFamily$NothingInParticular))
(assert (= (Tag Tclass._module.NothingInParticular?) Tagclass._module.NothingInParticular?))
(assert (= (TagFamily Tclass._module.NothingInParticular?) tytagFamily$NothingInParticular))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.NothingInParticular?)  (or (= $o@@9 null) (implements$_module.NothingInParticular (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |3190|
 :pattern ( ($Is refType $o@@9 Tclass._module.NothingInParticular?))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |o#6@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |bb#0@0| () T@U)
(declare-fun |o#4@0| () T@U)
(declare-fun |aa#0@0| () T@U)
(declare-fun |o#2@0| () T@U)
(declare-fun |all#0@0| () T@U)
(declare-fun |o#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun |defass#w#0| () Bool)
(declare-fun |w#0| () T@U)
(declare-fun |defass#x#0| () Bool)
(declare-fun |x#0| () T@U)
(declare-fun |defass#y#0| () Bool)
(declare-fun |y#0| () T@U)
(declare-fun |defass#z#0| () Bool)
(declare-fun |z#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |all#0| () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |bb#0| () T@U)
(declare-fun |nn#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.SetComprehension1)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon12_correct true))
(let ((anon20_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box refType |o#6@0|))) (= (ControlFlow 0 4) 1)) anon12_correct)))
(let ((anon20_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box refType |o#6@0|)) (= (ControlFlow 0 3) 1)) anon12_correct)))
(let ((anon19_Then_correct  (=> (and ($Is refType |o#6@0| Tclass._module.NothingInParticular) ($IsAlloc refType |o#6@0| Tclass._module.NothingInParticular $Heap@3)) (and (=> (= (ControlFlow 0 5) 3) anon20_Then_correct) (=> (= (ControlFlow 0 5) 4) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (not (and ($Is refType |o#6@0| Tclass._module.NothingInParticular) ($IsAlloc refType |o#6@0| Tclass._module.NothingInParticular $Heap@3))) (= (ControlFlow 0 2) 1)) anon12_correct)))
(let ((anon9_correct  (=> (= |bb#0@0| (|Set#FromBoogieMap| (|lambda#56| Tclass._module.ClassB |s#0@0|))) (and (=> (= (ControlFlow 0 6) 5) anon19_Then_correct) (=> (= (ControlFlow 0 6) 2) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box refType |o#4@0|))) (= (ControlFlow 0 9) 6)) anon9_correct)))
(let ((anon18_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box refType |o#4@0|)) (= (ControlFlow 0 8) 6)) anon9_correct)))
(let ((anon17_Then_correct  (=> (and ($Is refType |o#4@0| Tclass._module.ClassB) ($IsAlloc refType |o#4@0| Tclass._module.ClassB $Heap@3)) (and (=> (= (ControlFlow 0 10) 8) anon18_Then_correct) (=> (= (ControlFlow 0 10) 9) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not (and ($Is refType |o#4@0| Tclass._module.ClassB) ($IsAlloc refType |o#4@0| Tclass._module.ClassB $Heap@3))) (= (ControlFlow 0 7) 6)) anon9_correct)))
(let ((anon6_correct  (=> (= |aa#0@0| (|Set#FromBoogieMap| (|lambda#56| Tclass._module.ClassA |s#0@0|))) (and (=> (= (ControlFlow 0 11) 10) anon17_Then_correct) (=> (= (ControlFlow 0 11) 7) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box refType |o#2@0|))) (= (ControlFlow 0 14) 11)) anon6_correct)))
(let ((anon16_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box refType |o#2@0|)) (= (ControlFlow 0 13) 11)) anon6_correct)))
(let ((anon15_Then_correct  (=> (and ($Is refType |o#2@0| Tclass._module.ClassA) ($IsAlloc refType |o#2@0| Tclass._module.ClassA $Heap@3)) (and (=> (= (ControlFlow 0 15) 13) anon16_Then_correct) (=> (= (ControlFlow 0 15) 14) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not (and ($Is refType |o#2@0| Tclass._module.ClassA) ($IsAlloc refType |o#2@0| Tclass._module.ClassA $Heap@3))) (= (ControlFlow 0 12) 11)) anon6_correct)))
(let ((anon3_correct  (=> (= |all#0@0| (|Set#FromBoogieMap| (|lambda#56| Tclass._System.object |s#0@0|))) (and (=> (= (ControlFlow 0 16) 15) anon15_Then_correct) (=> (= (ControlFlow 0 16) 12) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box refType |o#0@0|))) (= (ControlFlow 0 19) 16)) anon3_correct)))
(let ((anon14_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box refType |o#0@0|)) (= (ControlFlow 0 18) 16)) anon3_correct)))
(let ((anon13_Then_correct  (=> (and ($Is refType |o#0@0| Tclass._System.object) ($IsAlloc refType |o#0@0| Tclass._System.object $Heap@3)) (and (=> (= (ControlFlow 0 20) 18) anon14_Then_correct) (=> (= (ControlFlow 0 20) 19) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (not (and ($Is refType |o#0@0| Tclass._System.object) ($IsAlloc refType |o#0@0| Tclass._System.object $Heap@3))) (= (ControlFlow 0 17) 16)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.ClassA?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.ClassA?)))) (=> (and (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 Tclass._module.ClassB?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc)))) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc ($Box boolType (bool_2_U true)))))))) (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 Tclass._module.ClassB?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3) alloc)))) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))))) (and (=> (= (ControlFlow 0 21) (- 0 25)) true) (and (=> (= (ControlFlow 0 21) (- 0 24)) true) (and (=> (= (ControlFlow 0 21) (- 0 23)) true) (and (=> (= (ControlFlow 0 21) (- 0 22)) true) (=> (= |s#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) ($Box refType $nw@2)) ($Box refType $nw@3)) ($Box refType null))) (and (=> (= (ControlFlow 0 21) 20) anon13_Then_correct) (=> (= (ControlFlow 0 21) 17) anon13_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and (=> |defass#w#0| (and ($Is refType |w#0| Tclass._module.ClassA) ($IsAlloc refType |w#0| Tclass._module.ClassA $Heap))) true) (and (=> |defass#x#0| (and ($Is refType |x#0| Tclass._module.ClassA) ($IsAlloc refType |x#0| Tclass._module.ClassA $Heap))) true)) (and (and (=> |defass#y#0| (and ($Is refType |y#0| Tclass._module.ClassB) ($IsAlloc refType |y#0| Tclass._module.ClassB $Heap))) true) (and (=> |defass#z#0| (and ($Is refType |z#0| Tclass._module.ClassB) ($IsAlloc refType |z#0| Tclass._module.ClassB $Heap))) true))) (and (and (and ($Is SetType |s#0| (TSet Tclass._System.object?)) ($IsAlloc SetType |s#0| (TSet Tclass._System.object?) $Heap)) true) (and (and ($Is SetType |all#0| (TSet Tclass._System.object)) ($IsAlloc SetType |all#0| (TSet Tclass._System.object) $Heap)) true))) (and (and (and (and ($Is SetType |aa#0| (TSet Tclass._module.ClassA)) ($IsAlloc SetType |aa#0| (TSet Tclass._module.ClassA) $Heap)) true) (and (and ($Is SetType |bb#0| (TSet Tclass._module.ClassB)) ($IsAlloc SetType |bb#0| (TSet Tclass._module.ClassB) $Heap)) true)) (and (and (and ($Is SetType |nn#0| (TSet Tclass._module.NothingInParticular)) ($IsAlloc SetType |nn#0| (TSet Tclass._module.NothingInParticular) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 26) 21))))) anon0_correct))))
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
