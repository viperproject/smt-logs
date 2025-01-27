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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.MyClass () T@U)
(declare-fun Tagclass._module.MyTrait () T@U)
(declare-fun Tagclass._module.MyTraitInstance () T@U)
(declare-fun Tagclass._module.MyClass? () T@U)
(declare-fun Tagclass._module.MyTrait? () T@U)
(declare-fun Tagclass._module.MyTraitInstance? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$MyClass () T@U)
(declare-fun tytagFamily$MyTrait () T@U)
(declare-fun tytagFamily$MyTraitInstance () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun implements$_module.MyTrait (T@U) Bool)
(declare-fun Tclass._module.MyTraitInstance? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.MyClass? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.MyClass () T@U)
(declare-fun Tclass._module.MyTrait () T@U)
(declare-fun Tclass._module.MyTrait? () T@U)
(declare-fun Tclass._module.MyTraitInstance () T@U)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._module.MyClass Tagclass._module.MyTrait Tagclass._module.MyTraitInstance Tagclass._module.MyClass? Tagclass._module.MyTrait? Tagclass._module.MyTraitInstance? tytagFamily$nat tytagFamily$object tytagFamily$MyClass tytagFamily$MyTrait tytagFamily$MyTraitInstance)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1815|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (implements$_module.MyTrait Tclass._module.MyTraitInstance?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.MyClass?)  (or (= $o null) (= (dtype $o) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |2006|
 :pattern ( ($Is refType $o Tclass._module.MyClass?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.MyTraitInstance?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.MyTraitInstance?)))
 :qid |unknown.0:0|
 :skolemid |2056|
 :pattern ( ($Is refType $o@@0 Tclass._module.MyTraitInstance?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1821|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.MyClass $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.MyClass? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2031|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.MyClass $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.MyClass? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.MyTrait $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.MyTrait? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2054|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.MyTrait $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.MyTrait? $h@@2))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.MyTraitInstance $h@@3) ($IsAlloc refType |c#0@@2| Tclass._module.MyTraitInstance? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.MyTraitInstance $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.MyTraitInstance? $h@@3))
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
 :skolemid |1818|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.MyClass? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2007|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.MyClass? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.MyTrait? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2033|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.MyTrait? $h@@6))
)))
(assert (forall (($o@@4 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.MyTraitInstance? $h@@7)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2057|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.MyTraitInstance? $h@@7))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1588|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1589|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1487|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1485|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1496|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1814|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1580|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1820|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.MyClass)  (and ($Is refType |c#0@@4| Tclass._module.MyClass?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2030|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.MyClass))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.MyClass?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.MyTrait)  (and ($Is refType |c#0@@5| Tclass._module.MyTrait?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2053|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.MyTrait))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.MyTrait?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.MyTraitInstance)  (and ($Is refType |c#0@@6| Tclass._module.MyTraitInstance?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.MyTraitInstance))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.MyTraitInstance?))
)))
(assert (forall (($o@@5 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.MyTrait? $heap) ($IsAlloc refType $o@@5 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |2137|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.MyTrait? $heap))
)))
(assert (forall (($o@@6 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@6 Tclass._module.MyTraitInstance? $heap@@0) ($IsAlloc refType $o@@6 Tclass._module.MyTrait? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2141|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.MyTraitInstance? $heap@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1587|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall (($o@@7 T@U) ) (! ($Is refType $o@@7 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1817|
 :pattern ( ($Is refType $o@@7 Tclass._System.object?))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1495|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@8 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2144|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass._module.MyTrait?) ($Is refType $o@@9 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |2136|
 :pattern ( ($Is refType $o@@9 Tclass._module.MyTrait?))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass._module.MyTraitInstance?) ($Is refType $o@@10 Tclass._module.MyTrait?))
 :qid |unknown.0:0|
 :skolemid |2140|
 :pattern ( ($Is refType $o@@10 Tclass._module.MyTraitInstance?))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.MyClass) Tagclass._module.MyClass))
(assert (= (TagFamily Tclass._module.MyClass) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.MyTrait) Tagclass._module.MyTrait))
(assert (= (TagFamily Tclass._module.MyTrait) tytagFamily$MyTrait))
(assert (= (Tag Tclass._module.MyTraitInstance) Tagclass._module.MyTraitInstance))
(assert (= (TagFamily Tclass._module.MyTraitInstance) tytagFamily$MyTraitInstance))
(assert (= (Tag Tclass._module.MyClass?) Tagclass._module.MyClass?))
(assert (= (TagFamily Tclass._module.MyClass?) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.MyTrait?) Tagclass._module.MyTrait?))
(assert (= (TagFamily Tclass._module.MyTrait?) tytagFamily$MyTrait))
(assert (= (Tag Tclass._module.MyTraitInstance?) Tagclass._module.MyTraitInstance?))
(assert (= (TagFamily Tclass._module.MyTraitInstance?) tytagFamily$MyTraitInstance))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass._module.MyTrait?)  (or (= $o@@11 null) (implements$_module.MyTrait (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |2032|
 :pattern ( ($Is refType $o@@11 Tclass._module.MyTrait?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1488|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1486|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |x##1@0| () Int)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun |x##2@0| () Int)
(declare-fun call2formal@this@@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call2formal@this@0@@1 () T@U)
(declare-fun |defass#t3#0| () Bool)
(declare-fun |t3#0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@7| () T@U)
(declare-fun |defass#t#0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |defass#i#0| () Bool)
(declare-fun |i#0| () T@U)
(declare-fun |defass#t2#0| () Bool)
(declare-fun |t2#0| () T@U)
(declare-fun |t3#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc false)) (= |x##0@0| (LitInt 3))) (=> (and (and (and (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.MyClass) ($IsAlloc refType call2formal@this Tclass._module.MyClass $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.MyClass) ($IsAlloc refType call2formal@this@0 Tclass._module.MyClass $Heap@0))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc)))) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@12)))
 :qid |Classdfy.9:3|
 :skolemid |2018|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12))
))))) (and (and (and ($HeapSucc $Heap $Heap@0) (= |x##1@0| (LitInt 2))) (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass._module.MyTraitInstance) ($IsAlloc refType call2formal@this@@0 Tclass._module.MyTraitInstance $Heap)))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass._module.MyTraitInstance) ($IsAlloc refType call2formal@this@0@@0 Tclass._module.MyTraitInstance $Heap@1)))))) (and (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0@@0) alloc)))) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13)))
 :qid |Classdfy.34:3|
 :skolemid |2059|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |x##2@0| (LitInt 2)))) (and (and (or (not (= call2formal@this@@1 null)) (not true)) (and ($Is refType call2formal@this@@1 Tclass._module.MyTraitInstance) ($IsAlloc refType call2formal@this@@1 Tclass._module.MyTraitInstance $Heap))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (and (and (or (not (= call2formal@this@0@@1 null)) (not true)) (and ($Is refType call2formal@this@0@@1 Tclass._module.MyTraitInstance) ($IsAlloc refType call2formal@this@0@@1 Tclass._module.MyTraitInstance $Heap@2))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0@@1) alloc))))) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14)))
 :qid |Classdfy.34:3|
 :skolemid |2059|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@14))
)) ($HeapSucc $Heap@1 $Heap@2))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) true) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (=> (=> |defass#t3#0| (and ($Is refType |t3#0@0| Tclass._module.MyTrait) ($IsAlloc refType |t3#0@0| Tclass._module.MyTrait $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@15 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@15) alloc)))) (or (or (= $o@@15 call2formal@this@0) (= $o@@15 call2formal@this@0@@0)) (= $o@@15 call2formal@this@0@@1))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@0)))
 :qid |Classdfy.125:9|
 :skolemid |1973|
))) (=> (forall (($o@@16 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@16) alloc)))) (or (or (= $o@@16 call2formal@this@0) (= $o@@16 call2formal@this@0@@0)) (= $o@@16 call2formal@this@0@@1))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@16 $f@@1)))
 :qid |Classdfy.125:9|
 :skolemid |1973|
)) (=> (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@17) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@17)) (or (or (= $o@@17 call2formal@this@0) (= $o@@17 call2formal@this@0@@0)) (= $o@@17 call2formal@this@0@@1))))
 :qid |Classdfy.42:8|
 :skolemid |1953|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@17))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@18)))
 :qid |Classdfy.152:10|
 :skolemid |2127|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@18))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@19)))
 :qid |Classdfy.168:17|
 :skolemid |2078|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= (ControlFlow 0 2) (- 0 1))))) ($Is intType (int_2_U (LitInt 70)) Tclass._System.nat))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#c#0| (and ($Is refType |c#0@@7| Tclass._module.MyClass) ($IsAlloc refType |c#0@@7| Tclass._module.MyClass $Heap))) true) (and (=> |defass#t#0| (and ($Is refType |t#0| Tclass._module.MyTraitInstance) ($IsAlloc refType |t#0| Tclass._module.MyTraitInstance $Heap))) true)) (=> (and (and (and (=> |defass#i#0| (and ($Is refType |i#0| Tclass._module.MyTraitInstance) ($IsAlloc refType |i#0| Tclass._module.MyTraitInstance $Heap))) true) (and (=> |defass#t2#0| (and ($Is refType |t2#0| Tclass._module.MyTrait) ($IsAlloc refType |t2#0| Tclass._module.MyTrait $Heap))) true)) (and (and (=> |defass#t3#0| (and ($Is refType |t3#0| Tclass._module.MyTrait) ($IsAlloc refType |t3#0| Tclass._module.MyTrait $Heap))) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 15) 2)))) anon0_correct)))))
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
