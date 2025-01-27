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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.Generic () T@U)
(declare-fun Tagclass._module.Generic? () T@U)
(declare-fun Tagclass._module.NoRHS () T@U)
(declare-fun Tagclass._module.NoRHS? () T@U)
(declare-fun Tagclass._module.Class () T@U)
(declare-fun Tagclass._module.Class? () T@U)
(declare-fun Tagclass._module.InstanceInit () T@U)
(declare-fun Tagclass._module.Trait? () T@U)
(declare-fun Tagclass._module.Trait () T@U)
(declare-fun Tagclass._module.InstanceInit? () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$Generic () T@U)
(declare-fun tytagFamily$NoRHS () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun tytagFamily$InstanceInit () T@U)
(declare-fun tytagFamily$Trait () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun _module.__default.three () Int)
(declare-fun _module.__default.one () Int)
(declare-fun _module.__default.two () Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Generic (T@U) T@U)
(declare-fun Tclass._module.Generic? (T@U) T@U)
(declare-fun implements$_module.Trait (T@U) Bool)
(declare-fun Tclass._module.Class? () T@U)
(declare-fun Tclass._module.InstanceInit? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.NoRHS? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Trait? () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun Tclass._module.NoRHS () T@U)
(declare-fun Tclass._module.Trait () T@U)
(declare-fun Tclass._module.Class () T@U)
(declare-fun Tclass._module.InstanceInit () T@U)
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
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Generic.y (T@U T@U) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.Pi () Real)
(declare-fun _module.Calendar.weeks () Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.Generic_0 (T@U) T@U)
(declare-fun Tclass._module.Generic?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TReal TagInt TagReal alloc Tagclass._module.C Tagclass._module.C? Tagclass._module.Generic Tagclass._module.Generic? Tagclass._module.NoRHS Tagclass._module.NoRHS? Tagclass._module.Class Tagclass._module.Class? Tagclass._module.InstanceInit Tagclass._module.Trait? Tagclass._module.Trait Tagclass._module.InstanceInit? tytagFamily$C tytagFamily$Generic tytagFamily$NoRHS tytagFamily$Class tytagFamily$InstanceInit tytagFamily$Trait)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= _module.__default.three (+ _module.__default.one _module.__default.two)))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.Generic$G T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Generic _module.Generic$G) $h) ($IsAlloc refType |c#0| (Tclass._module.Generic? _module.Generic$G) $h))
 :qid |unknown.0:0|
 :skolemid |2039|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Generic _module.Generic$G) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Generic? _module.Generic$G) $h))
)))
(assert (implements$_module.Trait Tclass._module.Class?))
(assert (implements$_module.Trait Tclass._module.InstanceInit?))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |2005|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.NoRHS?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.NoRHS?)))
 :qid |unknown.0:0|
 :skolemid |2042|
 :pattern ( ($Is refType $o@@0 Tclass._module.NoRHS?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Class?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Class?)))
 :qid |unknown.0:0|
 :skolemid |2058|
 :pattern ( ($Is refType $o@@1 Tclass._module.Class?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.InstanceInit?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.InstanceInit?)))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is refType $o@@2 Tclass._module.InstanceInit?))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Class? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Trait? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2193|
 :pattern ( ($IsAllocBox bx Tclass._module.Class? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.InstanceInit? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Trait? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2197|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.InstanceInit? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2030|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.NoRHS $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.NoRHS? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2047|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NoRHS $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NoRHS? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Trait $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.Trait? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2057|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Trait $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Trait? $h@@4))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Class $h@@5) ($IsAlloc refType |c#0@@3| Tclass._module.Class? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Class $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Class? $h@@5))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.InstanceInit $h@@6) ($IsAlloc refType |c#0@@4| Tclass._module.InstanceInit? $h@@6))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.InstanceInit $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.InstanceInit? $h@@6))
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
(assert (forall ((_module.Generic$G@@0 T@U) ($o@@3 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.Generic? _module.Generic$G@@0) $h@@7)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2032|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.Generic? _module.Generic$G@@0) $h@@7))
)))
(assert (forall (($o@@4 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.C? $h@@8)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2006|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.C? $h@@8))
)))
(assert (forall (($o@@5 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.NoRHS? $h@@9)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2043|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.NoRHS? $h@@9))
)))
(assert (forall (($o@@6 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Trait? $h@@10)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2049|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Trait? $h@@10))
)))
(assert (forall (($o@@7 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Class? $h@@11)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2059|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Class? $h@@11))
)))
(assert (forall (($o@@8 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.InstanceInit? $h@@12)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.InstanceInit? $h@@12))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1603|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1604|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1502|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |1504|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1500|
 :pattern ( (Lit T x@@4))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Generic$G@@1 T@U) ($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.Generic? _module.Generic$G@@1))) ($Is intType (int_2_U (_module.Generic.y _module.Generic$G@@1 $o@@9)) TInt))
 :qid |unknown.0:0|
 :skolemid |2033|
 :pattern ( (_module.Generic.y _module.Generic$G@@1 $o@@9))
))))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1511|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((_module.Generic$G@@2 T@U) (this T@U) ) (! (= (_module.Generic.y _module.Generic$G@@2 this) (LitInt 63))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( (_module.Generic.y _module.Generic$G@@2 this))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) ($IsAlloc intType (int_2_U _module.__default.one) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1964|
 :pattern ( ($IsAlloc intType (int_2_U _module.__default.one) TInt $h@@13))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) ($IsAlloc realType (real_2_U _module.__default.Pi) TReal $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1967|
 :pattern ( ($IsAlloc realType (real_2_U _module.__default.Pi) TReal $h@@14))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@15 T@U) ) (!  (=> ($IsGoodHeap $h@@15) ($IsAlloc intType (int_2_U _module.Calendar.weeks) TInt $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2001|
 :pattern ( ($IsAlloc intType (int_2_U _module.Calendar.weeks) TInt $h@@15))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@16 T@U) ) (!  (=> ($IsGoodHeap $h@@16) ($IsAlloc intType (int_2_U _module.__default.two) TInt $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1965|
 :pattern ( ($IsAlloc intType (int_2_U _module.__default.two) TInt $h@@16))
))))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h@@17 T@U) ) (!  (=> ($IsGoodHeap $h@@17) ($IsAlloc intType (int_2_U _module.__default.three) TInt $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1966|
 :pattern ( ($IsAlloc intType (int_2_U _module.__default.three) TInt $h@@17))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.Generic$G@@3 T@U) ($h@@18 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.Generic? _module.Generic$G@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@10) alloc)))) ($IsAlloc intType (int_2_U (_module.Generic.y _module.Generic$G@@3 $o@@10)) TInt $h@@18))
 :qid |unknown.0:0|
 :skolemid |2034|
 :pattern ( (_module.Generic.y _module.Generic$G@@3 $o@@10) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@10) alloc)))
))))
(assert (forall ((_module.Generic$G@@4 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._module.Generic _module.Generic$G@@4))  (and ($Is refType |c#0@@5| (Tclass._module.Generic? _module.Generic$G@@4)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2038|
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.Generic _module.Generic$G@@4)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.Generic? _module.Generic$G@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1524|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1596|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1595|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.Generic$G@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Generic _module.Generic$G@@5)) Tagclass._module.Generic) (= (TagFamily (Tclass._module.Generic _module.Generic$G@@5)) tytagFamily$Generic))
 :qid |unknown.0:0|
 :skolemid |1974|
 :pattern ( (Tclass._module.Generic _module.Generic$G@@5))
)))
(assert (forall ((_module.Generic$G@@6 T@U) ) (!  (and (= (Tag (Tclass._module.Generic? _module.Generic$G@@6)) Tagclass._module.Generic?) (= (TagFamily (Tclass._module.Generic? _module.Generic$G@@6)) tytagFamily$Generic))
 :qid |unknown.0:0|
 :skolemid |1977|
 :pattern ( (Tclass._module.Generic? _module.Generic$G@@6))
)))
(assert (forall ((_module.Generic$G@@7 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._module.Generic? _module.Generic$G@@7))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._module.Generic? _module.Generic$G@@7))))
 :qid |unknown.0:0|
 :skolemid |2031|
 :pattern ( ($Is refType $o@@11 (Tclass._module.Generic? _module.Generic$G@@7)))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.C)  (and ($Is refType |c#0@@6| Tclass._module.C?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2029|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.C?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.NoRHS)  (and ($Is refType |c#0@@7| Tclass._module.NoRHS?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2046|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.NoRHS))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.NoRHS?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Trait)  (and ($Is refType |c#0@@8| Tclass._module.Trait?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2056|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Trait))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Trait?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Class)  (and ($Is refType |c#0@@9| Tclass._module.Class?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Class))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Class?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.InstanceInit)  (and ($Is refType |c#0@@10| Tclass._module.InstanceInit?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.InstanceInit))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.InstanceInit?))
)))
(assert (forall (($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.Class? $heap) ($IsAlloc refType $o@@12 Tclass._module.Trait? $heap))
 :qid |unknown.0:0|
 :skolemid |2195|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Class? $heap))
)))
(assert (forall (($o@@13 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.InstanceInit? $heap@@0) ($IsAlloc refType $o@@13 Tclass._module.Trait? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2199|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.InstanceInit? $heap@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1602|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U _module.__default.one) TInt)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is realType (real_2_U _module.__default.Pi) TReal)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is intType (int_2_U _module.Calendar.weeks) TInt)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U _module.__default.two) TInt)))
(assert  (=> (< 2 $FunctionContextHeight) ($Is intType (int_2_U _module.__default.three) TInt)))
(assert (forall ((_module.Generic$G@@8 T@U) ) (! (= (Tclass._module.Generic_0 (Tclass._module.Generic _module.Generic$G@@8)) _module.Generic$G@@8)
 :qid |unknown.0:0|
 :skolemid |1975|
 :pattern ( (Tclass._module.Generic _module.Generic$G@@8))
)))
(assert (forall ((_module.Generic$G@@9 T@U) ) (! (= (Tclass._module.Generic?_0 (Tclass._module.Generic? _module.Generic$G@@9)) _module.Generic$G@@9)
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( (Tclass._module.Generic? _module.Generic$G@@9))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1510|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (= _module.__default.one (LitInt 1)))
(assert (= _module.Calendar.weeks (LitInt 52)))
(assert (= _module.__default.Pi (LitReal 3.14)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@14 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f))  (=> (and (or (not (= $o@@14 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@14) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f))
)))
(assert (forall ((x@@7 Int) (y Int) ) (! (= (Mul x@@7 y) (* x@@7 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |1823|
 :pattern ( (Mul x@@7 y))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> ($Is refType $o@@15 Tclass._module.Class?) ($Is refType $o@@15 Tclass._module.Trait?))
 :qid |unknown.0:0|
 :skolemid |2194|
 :pattern ( ($Is refType $o@@15 Tclass._module.Class?))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> ($Is refType $o@@16 Tclass._module.InstanceInit?) ($Is refType $o@@16 Tclass._module.Trait?))
 :qid |unknown.0:0|
 :skolemid |2198|
 :pattern ( ($Is refType $o@@16 Tclass._module.InstanceInit?))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1601|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@8)))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (= (Tag Tclass._module.NoRHS) Tagclass._module.NoRHS))
(assert (= (TagFamily Tclass._module.NoRHS) tytagFamily$NoRHS))
(assert (= (Tag Tclass._module.NoRHS?) Tagclass._module.NoRHS?))
(assert (= (TagFamily Tclass._module.NoRHS?) tytagFamily$NoRHS))
(assert (= (Tag Tclass._module.Class) Tagclass._module.Class))
(assert (= (TagFamily Tclass._module.Class) tytagFamily$Class))
(assert (= (Tag Tclass._module.Class?) Tagclass._module.Class?))
(assert (= (TagFamily Tclass._module.Class?) tytagFamily$Class))
(assert (= (Tag Tclass._module.InstanceInit) Tagclass._module.InstanceInit))
(assert (= (TagFamily Tclass._module.InstanceInit) tytagFamily$InstanceInit))
(assert (= (Tag Tclass._module.Trait?) Tagclass._module.Trait?))
(assert (= (TagFamily Tclass._module.Trait?) tytagFamily$Trait))
(assert (= (Tag Tclass._module.Trait) Tagclass._module.Trait))
(assert (= (TagFamily Tclass._module.Trait) tytagFamily$Trait))
(assert (= (Tag Tclass._module.InstanceInit?) Tagclass._module.InstanceInit?))
(assert (= (TagFamily Tclass._module.InstanceInit?) tytagFamily$InstanceInit))
(assert (forall (($o@@17 T@U) ) (! (= ($Is refType $o@@17 Tclass._module.Trait?)  (or (= $o@@17 null) (implements$_module.Trait (dtype $o@@17))))
 :qid |unknown.0:0|
 :skolemid |2048|
 :pattern ( ($Is refType $o@@17 Tclass._module.Trait?))
)))
(assert (= _module.__default.two (Mul _module.__default.one (LitInt 2))))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1503|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@10))) (Lit BoxType ($Box realType (real_2_U x@@10))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |1505|
 :pattern ( ($Box realType (real_2_U (LitReal x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1501|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
)))
(assert (forall ((h@@4 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1546|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@2 T@U) ) (! ($IsAlloc realType v@@2 TReal h@@5)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |1547|
 :pattern ( ($IsAlloc realType v@@2 TReal h@@5))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1525|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is realType v@@4 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |1526|
 :pattern ( ($Is realType v@@4 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |weeks#0@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun |call2formal@r#0@0| () Int)
(declare-fun |_module.C.G#canCall| (T@U) Bool)
(declare-fun |_module.C.H#canCall| (T@U T@U) Bool)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |putItHere#0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |call3formal@q#0@0| () Int)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |u##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@11| () T@U)
(declare-fun |defass#g#0| () Bool)
(declare-fun |g#0| () T@U)
(declare-fun |defass#noRhs#0| () Bool)
(declare-fun |noRhs#0| () T@U)
(declare-fun |defass#cl#0| () Bool)
(declare-fun |cl#0| () T@U)
(declare-fun |defass#ii#0| () Bool)
(declare-fun |ii#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 31)) (= _module.__default.three (LitInt 3))) (=> (= _module.__default.three (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 30)) (= _module.__default.Pi (LitReal 3.14))) (=> (= _module.__default.Pi (LitReal 3.14)) (=> (= |weeks#0@0| _module.Calendar.weeks) (and (=> (= (ControlFlow 0 2) (- 0 29)) (= |weeks#0@0| (LitInt 52))) (=> (= |weeks#0@0| (LitInt 52)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.C?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 28)) true) (and (=> (= (ControlFlow 0 2) (- 0 27)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= |call2formal@r#0@0| (LitInt 11))) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@18)))
 :qid |Constantdfy.68:10|
 :skolemid |2027|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 26)) true) (and (=> (= (ControlFlow 0 2) (- 0 25)) true) (=> ($IsAlloc refType $nw@0 Tclass._module.C $Heap@1) (=> (and (|_module.C.G#canCall| $nw@0) (|_module.C.G#canCall| $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 24)) true) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= $nw@0 null)) (not true))) (=> ($IsAllocBox ($Box refType $nw@0) Tclass._module.C? $Heap@1) (and (=> (= (ControlFlow 0 2) (- 0 22)) true) (=> ($IsAlloc refType $nw@0 Tclass._module.C $Heap@1) (=> (and (and (and (|_module.C.H#canCall| $nw@0 $nw@0) (|_module.C.H#canCall| $nw@0 $nw@0)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._module.Generic? TReal)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) alloc)))) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 21)) true) (and (=> (= (ControlFlow 0 2) (- 0 20)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (=> (= |putItHere#0@0| (_module.Generic.y TReal $nw@1)) (and (=> (= (ControlFlow 0 2) (- 0 19)) true) (and (=> (= (ControlFlow 0 2) (- 0 18)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (= |call3formal@q#0@0| (LitInt 63))) (=> (and (and (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@19)))
 :qid |Constantdfy.77:10|
 :skolemid |2036|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@19))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 Tclass._module.NoRHS?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) alloc)))) (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) true) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (not (= $nw@2 null)) (not true))) (=> (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 Tclass._module.Class?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@3) alloc)))) (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@3) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= $nw@3 null)) (not true))) (=> (or (not (= $nw@3 null)) (not true)) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@20)))
 :qid |Constantdfy.100:10|
 :skolemid |2061|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@20))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |newtype$check#0@0| (LitInt 13)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (<= (LitInt 6) |newtype$check#0@0|)) (=> (<= (LitInt 6) |newtype$check#0@0|) (=> (= |u##0@0| (LitInt 13)) (=> (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.InstanceInit) ($IsAlloc refType call2formal@this Tclass._module.InstanceInit $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (<= (LitInt 10) |u##0@0|)) (=> (<= (LitInt 10) |u##0@0|) (=> (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (=> (and (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.InstanceInit) ($IsAlloc refType call2formal@this@0 Tclass._module.InstanceInit $Heap@7))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) alloc))))) (and (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@21)))
 :qid |Constantdfy.121:3|
 :skolemid |2079|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@21))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= call2formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= call2formal@this@0 null)) (not true)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#c#0| (and ($Is refType |c#0@@11| Tclass._module.C) ($IsAlloc refType |c#0@@11| Tclass._module.C $Heap))) true) (and (=> |defass#g#0| (and ($Is refType |g#0| (Tclass._module.Generic TReal)) ($IsAlloc refType |g#0| (Tclass._module.Generic TReal) $Heap))) true)) (=> (and (and (and (=> |defass#noRhs#0| (and ($Is refType |noRhs#0| Tclass._module.NoRHS) ($IsAlloc refType |noRhs#0| Tclass._module.NoRHS $Heap))) true) (and (=> |defass#cl#0| (and ($Is refType |cl#0| Tclass._module.Class) ($IsAlloc refType |cl#0| Tclass._module.Class $Heap))) true)) (and (and (=> |defass#ii#0| (and ($Is refType |ii#0| Tclass._module.InstanceInit) ($IsAlloc refType |ii#0| Tclass._module.InstanceInit $Heap))) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 32) 2)))) anon0_correct)))))
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
