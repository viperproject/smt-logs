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
(declare-fun Tagclass.M.MyClass () T@U)
(declare-fun Tagclass.M.MyClass? () T@U)
(declare-fun Tagclass.M.AnotherClass () T@U)
(declare-fun Tagclass.M.AnotherClass? () T@U)
(declare-fun Tagclass.M.MyTrait () T@U)
(declare-fun Tagclass.M.MyTrait? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$MyClass () T@U)
(declare-fun tytagFamily$AnotherClass () T@U)
(declare-fun tytagFamily$MyTrait () T@U)
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
(declare-fun |lambda#1| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun implements$M.MyTrait (T@U) Bool)
(declare-fun Tclass.M.MyClass? () T@U)
(declare-fun Tclass.M.AnotherClass? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.M.MyTrait? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass.M.MyTrait () T@U)
(declare-fun Tclass.M.MyClass () T@U)
(declare-fun Tclass.M.AnotherClass () T@U)
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
(declare-fun |Set#Equal| (T@U T@U) Bool)
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
(assert (distinct TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass.M.MyClass Tagclass.M.MyClass? Tagclass.M.AnotherClass Tagclass.M.AnotherClass? Tagclass.M.MyTrait Tagclass.M.MyTrait? tytagFamily$object tytagFamily$MyClass tytagFamily$AnotherClass tytagFamily$MyTrait)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |gitissue697kdfy.10:9|
 :skolemid |1586|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))
)))
(assert (implements$M.MyTrait Tclass.M.MyClass?))
(assert (implements$M.MyTrait Tclass.M.AnotherClass?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M.MyClass?)  (or (= $o null) (= (dtype $o) Tclass.M.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($Is refType $o Tclass.M.MyClass?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.M.AnotherClass?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.M.AnotherClass?)))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($Is refType $o@@0 Tclass.M.AnotherClass?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.M.MyTrait? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsAllocBox bx Tclass.M.MyTrait? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass.M.MyClass? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass.M.MyTrait? $h@@0))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAllocBox bx@@0 Tclass.M.MyClass? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass.M.AnotherClass? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass.M.MyTrait? $h@@1))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsAllocBox bx@@1 Tclass.M.AnotherClass? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@2) ($IsAlloc refType |c#0| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M.MyTrait $h@@3) ($IsAlloc refType |c#0@@0| Tclass.M.MyTrait? $h@@3))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M.MyTrait $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M.MyTrait? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M.MyClass $h@@4) ($IsAlloc refType |c#0@@1| Tclass.M.MyClass? $h@@4))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M.MyClass $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M.MyClass? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.M.AnotherClass $h@@5) ($IsAlloc refType |c#0@@2| Tclass.M.AnotherClass? $h@@5))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.M.AnotherClass $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.M.AnotherClass? $h@@5))
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
(assert (forall (($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@6))
)))
(assert (forall (($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M.MyTrait? $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M.MyTrait? $h@@7))
)))
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.M.MyClass? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M.MyClass? $h@@8))
)))
(assert (forall (($o@@4 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.M.AnotherClass? $h@@9)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.M.AnotherClass? $h@@9))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((m@@1 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@2) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@2)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@2))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@4 t@@0 h@@1) ($IsAllocBox bx@@4 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@4 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.M.MyClass) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.M.MyClass)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@7 Tclass.M.MyClass))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.M.MyClass?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.M.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@8 Tclass.M.MyClass?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.M.AnotherClass) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.M.AnotherClass)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@9 Tclass.M.AnotherClass))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.M.AnotherClass?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass.M.AnotherClass?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@10 Tclass.M.AnotherClass?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.M.MyTrait) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass.M.MyTrait)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@11 Tclass.M.MyTrait))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.M.MyTrait?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass.M.MyTrait?)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@12 Tclass.M.MyTrait?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.M.MyTrait)  (and ($Is refType |c#0@@4| Tclass.M.MyTrait?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($Is refType |c#0@@4| Tclass.M.MyTrait))
 :pattern ( ($Is refType |c#0@@4| Tclass.M.MyTrait?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.M.MyClass)  (and ($Is refType |c#0@@5| Tclass.M.MyClass?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($Is refType |c#0@@5| Tclass.M.MyClass))
 :pattern ( ($Is refType |c#0@@5| Tclass.M.MyClass?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.M.AnotherClass)  (and ($Is refType |c#0@@6| Tclass.M.AnotherClass?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($Is refType |c#0@@6| Tclass.M.AnotherClass))
 :pattern ( ($Is refType |c#0@@6| Tclass.M.AnotherClass?))
)))
(assert (forall (($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass.M.MyTrait? $heap) ($IsAlloc refType $o@@5 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.M.MyTrait? $heap))
)))
(assert (forall (($o@@6 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@6 Tclass.M.MyClass? $heap@@0) ($IsAlloc refType $o@@6 Tclass.M.MyTrait? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.M.MyClass? $heap@@0))
)))
(assert (forall (($o@@7 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass.M.AnotherClass? $heap@@1) ($IsAlloc refType $o@@7 Tclass.M.MyTrait? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.M.AnotherClass? $heap@@1))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@13) ($IsAllocBox bx@@13 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1585|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@9 $f))
)))
(assert (forall ((bx@@14 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@5)))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass.M.MyTrait?) ($Is refType $o@@10 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($Is refType $o@@10 Tclass.M.MyTrait?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass.M.MyTrait?) ($IsBox bx@@15 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@15 Tclass.M.MyTrait?))
)))
(assert (forall (($o@@11 T@U) ) (!  (=> ($Is refType $o@@11 Tclass.M.MyClass?) ($Is refType $o@@11 Tclass.M.MyTrait?))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($Is refType $o@@11 Tclass.M.MyClass?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass.M.MyClass?) ($IsBox bx@@16 Tclass.M.MyTrait?))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsBox bx@@16 Tclass.M.MyClass?))
)))
(assert (forall (($o@@12 T@U) ) (!  (=> ($Is refType $o@@12 Tclass.M.AnotherClass?) ($Is refType $o@@12 Tclass.M.MyTrait?))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($Is refType $o@@12 Tclass.M.AnotherClass?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass.M.AnotherClass?) ($IsBox bx@@17 Tclass.M.MyTrait?))
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( ($IsBox bx@@17 Tclass.M.AnotherClass?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.M.MyClass) Tagclass.M.MyClass))
(assert (= (TagFamily Tclass.M.MyClass) tytagFamily$MyClass))
(assert (= (Tag Tclass.M.MyClass?) Tagclass.M.MyClass?))
(assert (= (TagFamily Tclass.M.MyClass?) tytagFamily$MyClass))
(assert (= (Tag Tclass.M.AnotherClass) Tagclass.M.AnotherClass))
(assert (= (TagFamily Tclass.M.AnotherClass) tytagFamily$AnotherClass))
(assert (= (Tag Tclass.M.AnotherClass?) Tagclass.M.AnotherClass?))
(assert (= (TagFamily Tclass.M.AnotherClass?) tytagFamily$AnotherClass))
(assert (= (Tag Tclass.M.MyTrait) Tagclass.M.MyTrait))
(assert (= (TagFamily Tclass.M.MyTrait) tytagFamily$MyTrait))
(assert (= (Tag Tclass.M.MyTrait?) Tagclass.M.MyTrait?))
(assert (= (TagFamily Tclass.M.MyTrait?) tytagFamily$MyTrait))
(assert (forall (($o@@13 T@U) ) (! (= ($Is refType $o@@13 Tclass.M.MyTrait?)  (or (= $o@@13 null) (implements$M.MyTrait (dtype $o@@13))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is refType $o@@13 Tclass.M.MyTrait?))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |v''#0@0| () T@U)
(declare-fun |u''#0@0| () T@U)
(declare-fun |y#4@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |t''#0@0| () T@U)
(declare-fun |s''#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun |x#4@0| () T@U)
(declare-fun |v'#0@0| () T@U)
(declare-fun |u'#0@0| () T@U)
(declare-fun |y#2@0| () T@U)
(declare-fun |t'#0@0| () T@U)
(declare-fun |s'#0@0| () T@U)
(declare-fun |x#2@0| () T@U)
(declare-fun |v#0@0| () T@U)
(declare-fun |u#0@0| () T@U)
(declare-fun |y#0@0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#c0#0| () Bool)
(declare-fun |c0#0| () T@U)
(declare-fun |defass#c1#0| () Bool)
(declare-fun |c1#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |v#0| () T@U)
(declare-fun |s'#0| () T@U)
(declare-fun |t'#0| () T@U)
(declare-fun |u'#0| () T@U)
(declare-fun |v'#0| () T@U)
(declare-fun |s''#0| () T@U)
(declare-fun |t''#0| () T@U)
(declare-fun |u''#0| () T@U)
(declare-fun |v''#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$M.__default.TestTraits)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon47_Else_correct true))
(let ((anon47_Then_correct true))
(let ((anon28_correct  (=> (= |v''#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.M.MyClass? |u''#0@0|))) (and (=> (= (ControlFlow 0 8) (- 0 9)) true) (and (=> (= (ControlFlow 0 8) 6) anon47_Then_correct) (=> (= (ControlFlow 0 8) 7) anon47_Else_correct))))))
(let ((anon46_Else_correct  (=> (and (not (|Set#IsMember| |u''#0@0| ($Box refType |y#4@0|))) (= (ControlFlow 0 12) 8)) anon28_correct)))
(let ((anon46_Then_correct  (=> (and (|Set#IsMember| |u''#0@0| ($Box refType |y#4@0|)) (= (ControlFlow 0 11) 8)) anon28_correct)))
(let ((anon45_Then_correct  (=> (and ($Is refType |y#4@0| Tclass.M.MyClass?) ($IsAlloc refType |y#4@0| Tclass.M.MyClass? $Heap@1)) (and (=> (= (ControlFlow 0 13) 11) anon46_Then_correct) (=> (= (ControlFlow 0 13) 12) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (not (and ($Is refType |y#4@0| Tclass.M.MyClass?) ($IsAlloc refType |y#4@0| Tclass.M.MyClass? $Heap@1))) (= (ControlFlow 0 10) 8)) anon28_correct)))
(let ((anon44_Else_correct  (=> (|Set#Equal| |t''#0@0| |s''#0@0|) (and (=> (= (ControlFlow 0 14) (- 0 17)) true) (and (=> (= (ControlFlow 0 14) (- 0 16)) true) (and (=> (= (ControlFlow 0 14) (- 0 15)) ($Is SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) ($Box refType null)) (TSet Tclass.M.MyTrait?))) (=> ($Is SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) ($Box refType null)) (TSet Tclass.M.MyTrait?)) (=> (= |u''#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) ($Box refType null))) (and (=> (= (ControlFlow 0 14) 13) anon45_Then_correct) (=> (= (ControlFlow 0 14) 10) anon45_Else_correct))))))))))
(let ((anon44_Then_correct true))
(let ((anon23_correct  (=> (= |t''#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.M.MyTrait? |s''#0@0|))) (and (=> (= (ControlFlow 0 18) 5) anon44_Then_correct) (=> (= (ControlFlow 0 18) 14) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (not (|Set#IsMember| |s''#0@0| ($Box refType |x#4@0|))) (= (ControlFlow 0 21) 18)) anon23_correct)))
(let ((anon43_Then_correct  (=> (and (|Set#IsMember| |s''#0@0| ($Box refType |x#4@0|)) (= (ControlFlow 0 20) 18)) anon23_correct)))
(let ((anon42_Then_correct  (=> (and ($Is refType |x#4@0| Tclass.M.MyTrait?) ($IsAlloc refType |x#4@0| Tclass.M.MyTrait? $Heap@1)) (and (=> (= (ControlFlow 0 22) 20) anon43_Then_correct) (=> (= (ControlFlow 0 22) 21) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (and (not (and ($Is refType |x#4@0| Tclass.M.MyTrait?) ($IsAlloc refType |x#4@0| Tclass.M.MyTrait? $Heap@1))) (= (ControlFlow 0 19) 18)) anon23_correct)))
(let ((anon41_Else_correct  (=> (|Set#Equal| |v'#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (and (=> (= (ControlFlow 0 23) (- 0 24)) true) (=> (= |s''#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType null))) (and (=> (= (ControlFlow 0 23) 22) anon42_Then_correct) (=> (= (ControlFlow 0 23) 19) anon42_Else_correct)))))))
(let ((anon41_Then_correct true))
(let ((anon18_correct  (=> (= |v'#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.M.MyClass |u'#0@0|))) (and (=> (= (ControlFlow 0 25) (- 0 26)) true) (and (=> (= (ControlFlow 0 25) 4) anon41_Then_correct) (=> (= (ControlFlow 0 25) 23) anon41_Else_correct))))))
(let ((anon40_Else_correct  (=> (and (not (|Set#IsMember| |u'#0@0| ($Box refType |y#2@0|))) (= (ControlFlow 0 29) 25)) anon18_correct)))
(let ((anon40_Then_correct  (=> (and (|Set#IsMember| |u'#0@0| ($Box refType |y#2@0|)) (= (ControlFlow 0 28) 25)) anon18_correct)))
(let ((anon39_Then_correct  (=> (and ($Is refType |y#2@0| Tclass.M.MyClass) ($IsAlloc refType |y#2@0| Tclass.M.MyClass $Heap@1)) (and (=> (= (ControlFlow 0 30) 28) anon40_Then_correct) (=> (= (ControlFlow 0 30) 29) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (not (and ($Is refType |y#2@0| Tclass.M.MyClass) ($IsAlloc refType |y#2@0| Tclass.M.MyClass $Heap@1))) (= (ControlFlow 0 27) 25)) anon18_correct)))
(let ((anon38_Else_correct  (=> (|Set#Equal| |t'#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (and (=> (= (ControlFlow 0 31) (- 0 34)) true) (and (=> (= (ControlFlow 0 31) (- 0 33)) true) (and (=> (= (ControlFlow 0 31) (- 0 32)) ($Is SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) ($Box refType null)) (TSet Tclass.M.MyTrait?))) (=> ($Is SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) ($Box refType null)) (TSet Tclass.M.MyTrait?)) (=> (= |u'#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) ($Box refType null))) (and (=> (= (ControlFlow 0 31) 30) anon39_Then_correct) (=> (= (ControlFlow 0 31) 27) anon39_Else_correct))))))))))
(let ((anon38_Then_correct true))
(let ((anon13_correct  (=> (= |t'#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.M.MyTrait |s'#0@0|))) (and (=> (= (ControlFlow 0 35) (- 0 36)) true) (and (=> (= (ControlFlow 0 35) 3) anon38_Then_correct) (=> (= (ControlFlow 0 35) 31) anon38_Else_correct))))))
(let ((anon37_Else_correct  (=> (and (not (|Set#IsMember| |s'#0@0| ($Box refType |x#2@0|))) (= (ControlFlow 0 39) 35)) anon13_correct)))
(let ((anon37_Then_correct  (=> (and (|Set#IsMember| |s'#0@0| ($Box refType |x#2@0|)) (= (ControlFlow 0 38) 35)) anon13_correct)))
(let ((anon36_Then_correct  (=> (and ($Is refType |x#2@0| Tclass.M.MyTrait) ($IsAlloc refType |x#2@0| Tclass.M.MyTrait $Heap@1)) (and (=> (= (ControlFlow 0 40) 38) anon37_Then_correct) (=> (= (ControlFlow 0 40) 39) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (not (and ($Is refType |x#2@0| Tclass.M.MyTrait) ($IsAlloc refType |x#2@0| Tclass.M.MyTrait $Heap@1))) (= (ControlFlow 0 37) 35)) anon13_correct)))
(let ((anon35_Else_correct  (=> (|Set#Equal| |v#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (and (=> (= (ControlFlow 0 41) (- 0 42)) true) (=> (= |s'#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType null))) (and (=> (= (ControlFlow 0 41) 40) anon36_Then_correct) (=> (= (ControlFlow 0 41) 37) anon36_Else_correct)))))))
(let ((anon35_Then_correct true))
(let ((anon8_correct  (=> (= |v#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.M.MyClass |u#0@0|))) (and (=> (= (ControlFlow 0 43) (- 0 44)) true) (and (=> (= (ControlFlow 0 43) 2) anon35_Then_correct) (=> (= (ControlFlow 0 43) 41) anon35_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (not (|Set#IsMember| |u#0@0| ($Box refType |y#0@0|))) (= (ControlFlow 0 47) 43)) anon8_correct)))
(let ((anon34_Then_correct  (=> (and (|Set#IsMember| |u#0@0| ($Box refType |y#0@0|)) (= (ControlFlow 0 46) 43)) anon8_correct)))
(let ((anon33_Then_correct  (=> (and ($Is refType |y#0@0| Tclass.M.MyClass) ($IsAlloc refType |y#0@0| Tclass.M.MyClass $Heap@1)) (and (=> (= (ControlFlow 0 48) 46) anon34_Then_correct) (=> (= (ControlFlow 0 48) 47) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (not (and ($Is refType |y#0@0| Tclass.M.MyClass) ($IsAlloc refType |y#0@0| Tclass.M.MyClass $Heap@1))) (= (ControlFlow 0 45) 43)) anon8_correct)))
(let ((anon32_Else_correct  (=> (|Set#Equal| |t#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (and (=> (= (ControlFlow 0 49) (- 0 52)) true) (and (=> (= (ControlFlow 0 49) (- 0 51)) true) (and (=> (= (ControlFlow 0 49) (- 0 50)) ($Is SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) (TSet Tclass.M.MyTrait))) (=> ($Is SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1)) (TSet Tclass.M.MyTrait)) (=> (= |u#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType $nw@1))) (and (=> (= (ControlFlow 0 49) 48) anon33_Then_correct) (=> (= (ControlFlow 0 49) 45) anon33_Else_correct))))))))))
(let ((anon32_Then_correct true))
(let ((anon3_correct  (=> (= |t#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.M.MyTrait |s#0@0|))) (and (=> (= (ControlFlow 0 53) (- 0 54)) true) (and (=> (= (ControlFlow 0 53) 1) anon32_Then_correct) (=> (= (ControlFlow 0 53) 49) anon32_Else_correct))))))
(let ((anon31_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box refType |x#0@0|))) (= (ControlFlow 0 57) 53)) anon3_correct)))
(let ((anon31_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box refType |x#0@0|)) (= (ControlFlow 0 56) 53)) anon3_correct)))
(let ((anon30_Then_correct  (=> (and ($Is refType |x#0@0| Tclass.M.MyTrait) ($IsAlloc refType |x#0@0| Tclass.M.MyTrait $Heap@1)) (and (=> (= (ControlFlow 0 58) 56) anon31_Then_correct) (=> (= (ControlFlow 0 58) 57) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not (and ($Is refType |x#0@0| Tclass.M.MyTrait) ($IsAlloc refType |x#0@0| Tclass.M.MyTrait $Heap@1))) (= (ControlFlow 0 55) 53)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.M.MyClass?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass.M.AnotherClass?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 59) (- 0 60)) true) (=> (= |s#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (and (=> (= (ControlFlow 0 59) 58) anon30_Then_correct) (=> (= (ControlFlow 0 59) 55) anon30_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#c0#0| (and ($Is refType |c0#0| Tclass.M.MyClass) ($IsAlloc refType |c0#0| Tclass.M.MyClass $Heap))) true) (and (=> |defass#c1#0| (and ($Is refType |c1#0| Tclass.M.AnotherClass) ($IsAlloc refType |c1#0| Tclass.M.AnotherClass $Heap))) true)) (and (and ($Is SetType |s#0| (TSet Tclass.M.MyClass)) ($IsAlloc SetType |s#0| (TSet Tclass.M.MyClass) $Heap)) true)) (=> (and (and (and (and ($Is SetType |t#0| (TSet Tclass.M.MyTrait)) ($IsAlloc SetType |t#0| (TSet Tclass.M.MyTrait) $Heap)) true) (and (and ($Is SetType |u#0| (TSet Tclass.M.MyTrait)) ($IsAlloc SetType |u#0| (TSet Tclass.M.MyTrait) $Heap)) true)) (and (and (and ($Is SetType |v#0| (TSet Tclass.M.MyClass)) ($IsAlloc SetType |v#0| (TSet Tclass.M.MyClass) $Heap)) true) (and (and ($Is SetType |s'#0| (TSet Tclass.M.MyClass?)) ($IsAlloc SetType |s'#0| (TSet Tclass.M.MyClass?) $Heap)) true))) (=> (and (and (and (and (and ($Is SetType |t'#0| (TSet Tclass.M.MyTrait)) ($IsAlloc SetType |t'#0| (TSet Tclass.M.MyTrait) $Heap)) true) (and (and ($Is SetType |u'#0| (TSet Tclass.M.MyTrait?)) ($IsAlloc SetType |u'#0| (TSet Tclass.M.MyTrait?) $Heap)) true)) (and (and (and ($Is SetType |v'#0| (TSet Tclass.M.MyClass)) ($IsAlloc SetType |v'#0| (TSet Tclass.M.MyClass) $Heap)) true) (and (and ($Is SetType |s''#0| (TSet Tclass.M.MyClass?)) ($IsAlloc SetType |s''#0| (TSet Tclass.M.MyClass?) $Heap)) true))) (and (and (and (and ($Is SetType |t''#0| (TSet Tclass.M.MyTrait?)) ($IsAlloc SetType |t''#0| (TSet Tclass.M.MyTrait?) $Heap)) true) (and (and ($Is SetType |u''#0| (TSet Tclass.M.MyTrait?)) ($IsAlloc SetType |u''#0| (TSet Tclass.M.MyTrait?) $Heap)) true)) (and (and (and ($Is SetType |v''#0| (TSet Tclass.M.MyClass?)) ($IsAlloc SetType |v''#0| (TSet Tclass.M.MyClass?) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 61) 59))))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
