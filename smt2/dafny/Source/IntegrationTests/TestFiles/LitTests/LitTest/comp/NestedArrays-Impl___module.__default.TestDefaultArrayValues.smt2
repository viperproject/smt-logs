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
(declare-fun Tagclass._module.SingletonRecord () T@U)
(declare-fun Tagclass._module.GenericSingletonRecord () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun tytagFamily$SingletonRecord () T@U)
(declare-fun tytagFamily$GenericSingletonRecord () T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.GenericSingletonRecord (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.MLen (T@U T@U) Int)
(declare-fun |_module.__default.MLen#canCall| (T@U T@U) Bool)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun Tclass._module.GenericSingletonRecord_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tclass._module.SingletonRecord () T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 Tagclass._module.SingletonRecord Tagclass._module.GenericSingletonRecord tytagFamily$array tytagFamily$array2 tytagFamily$SingletonRecord tytagFamily$GenericSingletonRecord)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |496|
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
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@3 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@2)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@2))
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
(assert (forall ((_System.array$arg@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@2))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@2)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@3)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@4)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@4))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@4)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@4)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@5)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@5))
)))
(assert (forall ((_module.GenericSingletonRecord$X T@U) ) (!  (and (= (Tag (Tclass._module.GenericSingletonRecord _module.GenericSingletonRecord$X)) Tagclass._module.GenericSingletonRecord) (= (TagFamily (Tclass._module.GenericSingletonRecord _module.GenericSingletonRecord$X)) tytagFamily$GenericSingletonRecord))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( (Tclass._module.GenericSingletonRecord _module.GenericSingletonRecord$X))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@5))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._System.array2? _System.array2$arg@@6))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is refType $o@@5 (Tclass._System.array2? _System.array2$arg@@6)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.MLen$_T0 T@U) (|m#0| T@U) ) (!  (=> (or (|_module.__default.MLen#canCall| _module._default.MLen$_T0 |m#0|) (and (< 0 $FunctionContextHeight) ($Is refType |m#0| (Tclass._System.array2 _module._default.MLen$_T0)))) (= (_module.__default.MLen _module._default.MLen$_T0 |m#0|) (+ (_System.array2.Length0 |m#0|) (_System.array2.Length1 |m#0|))))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (_module.__default.MLen _module._default.MLen$_T0 |m#0|))
))))
(assert (forall ((o T@U) ) (! (<= 0 (_System.array.Length o))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o))
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
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@7))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@7)) _System.array2$arg@@7)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@7))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@8)) _System.array2$arg@@8)
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@8))
)))
(assert (forall ((_module.GenericSingletonRecord$X@@0 T@U) ) (! (= (Tclass._module.GenericSingletonRecord_0 (Tclass._module.GenericSingletonRecord _module.GenericSingletonRecord$X@@0)) _module.GenericSingletonRecord$X@@0)
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (Tclass._module.GenericSingletonRecord _module.GenericSingletonRecord$X@@0))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((_System.array$arg@@8 T@U) ($h@@3 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@6)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) alloc)) (Tclass._System.array? _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ($h@@4 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@7)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_System.array2.Length0 $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) alloc)) (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ($h@@5 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array2? _System.array2$arg@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@8)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_System.array2.Length1 $o@@8) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) alloc)) (Tclass._System.array2? _System.array2$arg@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |607|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f))
)))
(assert (= (Tag Tclass._module.SingletonRecord) Tagclass._module.SingletonRecord))
(assert (= (TagFamily Tclass._module.SingletonRecord) tytagFamily$SingletonRecord))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.MLen$_T0@@0 T@U) (|m#0@@0| T@U) ) (!  (=> (or (|_module.__default.MLen#canCall| _module._default.MLen$_T0@@0 |m#0@@0|) (and (< 0 $FunctionContextHeight) ($Is refType |m#0@@0| (Tclass._System.array2 _module._default.MLen$_T0@@0)))) (<= (LitInt 0) (_module.__default.MLen _module._default.MLen$_T0@@0 |m#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (_module.__default.MLen _module._default.MLen$_T0@@0 |m#0@@0|))
))))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.MLen$_T0@@1 T@U) (|m#0@@1| T@U) ) (!  (=> (or (|_module.__default.MLen#canCall| _module._default.MLen$_T0@@1 (Lit refType |m#0@@1|)) (and (< 0 $FunctionContextHeight) ($Is refType |m#0@@1| (Tclass._System.array2 _module._default.MLen$_T0@@1)))) (= (_module.__default.MLen _module._default.MLen$_T0@@1 (Lit refType |m#0@@1|)) (LitInt (+ (_System.array2.Length0 (Lit refType |m#0@@1|)) (_System.array2.Length1 (Lit refType |m#0@@1|))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |561|
 :pattern ( (_module.__default.MLen _module._default.MLen$_T0@@1 (Lit refType |m#0@@1|)))
))))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |arr#0@0| () T@U)
(declare-fun |srr#0@0| () T@U)
(declare-fun |grr#0@0| () T@U)
(declare-fun |xrr#0@0| () T@U)
(declare-fun _module._default.TestDefaultArrayValues$X () T@U)
(declare-fun |arr2#0@0| () T@U)
(declare-fun |srr2#0@0| () T@U)
(declare-fun |grr2#0@0| () T@U)
(declare-fun |xrr2#0@0| () T@U)
(declare-fun |arr22#0@0| () T@U)
(declare-fun |xrr22#0@0| () T@U)
(declare-fun |arr12#0@0| () T@U)
(declare-fun |xrr12#0@0| () T@U)
(declare-fun |xrr1111#0@0| () T@U)
(declare-fun |xrr1112#0@0| () T@U)
(declare-fun |xrr1121#0@0| () T@U)
(declare-fun |xrr1212#0@0| () T@U)
(declare-fun |xrr1221#0@0| () T@U)
(declare-fun |xrr2212#0@0| () T@U)
(declare-fun |xrr2221#0@0| () T@U)
(declare-fun |xrr2112#0@0| () T@U)
(declare-fun |xrr2111#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |arr#0| () T@U)
(declare-fun |srr#0| () T@U)
(declare-fun |grr#0| () T@U)
(declare-fun |xrr#0| () T@U)
(declare-fun |arr2#0| () T@U)
(declare-fun |srr2#0| () T@U)
(declare-fun |grr2#0| () T@U)
(declare-fun |xrr2#0| () T@U)
(declare-fun |arr22#0| () T@U)
(declare-fun |xrr22#0| () T@U)
(declare-fun |arr12#0| () T@U)
(declare-fun |xrr12#0| () T@U)
(declare-fun |xrr1111#0| () T@U)
(declare-fun |xrr1112#0| () T@U)
(declare-fun |xrr1121#0| () T@U)
(declare-fun |xrr1212#0| () T@U)
(declare-fun |xrr1221#0| () T@U)
(declare-fun |xrr2212#0| () T@U)
(declare-fun |xrr2221#0| () T@U)
(declare-fun |xrr2112#0| () T@U)
(declare-fun |xrr2111#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.TestDefaultArrayValues)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($Is refType |arr#0@0| (Tclass._System.array (Tclass._System.array TInt))) ($IsAlloc refType |arr#0@0| (Tclass._System.array (Tclass._System.array TInt)) $Heap)) (=> (and (and (and ($Is refType |srr#0@0| (Tclass._System.array Tclass._module.SingletonRecord)) ($IsAlloc refType |srr#0@0| (Tclass._System.array Tclass._module.SingletonRecord) $Heap)) (and ($Is refType |grr#0@0| (Tclass._System.array (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt)))) ($IsAlloc refType |grr#0@0| (Tclass._System.array (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt))) $Heap))) (and (and ($Is refType |xrr#0@0| (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X))) ($IsAlloc refType |xrr#0@0| (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X)) $Heap)) (and ($Is refType |arr2#0@0| (Tclass._System.array2 (Tclass._System.array TInt))) ($IsAlloc refType |arr2#0@0| (Tclass._System.array2 (Tclass._System.array TInt)) $Heap)))) (=> (and (and (and (and (and ($Is refType |srr2#0@0| (Tclass._System.array2 Tclass._module.SingletonRecord)) ($IsAlloc refType |srr2#0@0| (Tclass._System.array2 Tclass._module.SingletonRecord) $Heap)) (and ($Is refType |grr2#0@0| (Tclass._System.array2 (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt)))) ($IsAlloc refType |grr2#0@0| (Tclass._System.array2 (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt))) $Heap))) (and (and ($Is refType |xrr2#0@0| (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X))) ($IsAlloc refType |xrr2#0@0| (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)) $Heap)) (and ($Is refType |arr22#0@0| (Tclass._System.array2 (Tclass._System.array2 TInt))) ($IsAlloc refType |arr22#0@0| (Tclass._System.array2 (Tclass._System.array2 TInt)) $Heap)))) (and (and (and ($Is refType |xrr22#0@0| (Tclass._System.array2 (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))) ($IsAlloc refType |xrr22#0@0| (Tclass._System.array2 (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)) $Heap)) (and ($Is refType |arr12#0@0| (Tclass._System.array (Tclass._System.array2 TInt))) ($IsAlloc refType |arr12#0@0| (Tclass._System.array (Tclass._System.array2 TInt)) $Heap))) (and (and ($Is refType |xrr12#0@0| (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))) ($IsAlloc refType |xrr12#0@0| (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)) $Heap)) (and ($Is refType |xrr1111#0@0| (Tclass._System.array (Tclass._System.array (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1111#0@0| (Tclass._System.array (Tclass._System.array (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap))))) (and (and (and (and ($Is refType |xrr1112#0@0| (Tclass._System.array (Tclass._System.array (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1112#0@0| (Tclass._System.array (Tclass._System.array (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)))) $Heap)) (and ($Is refType |xrr1121#0@0| (Tclass._System.array (Tclass._System.array (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1121#0@0| (Tclass._System.array (Tclass._System.array (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap))) (and (and ($Is refType |xrr1212#0@0| (Tclass._System.array (Tclass._System.array2 (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1212#0@0| (Tclass._System.array (Tclass._System.array2 (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)))) $Heap)) (and ($Is refType |xrr1221#0@0| (Tclass._System.array (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1221#0@0| (Tclass._System.array (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap)))) (and (and (and ($Is refType |xrr2212#0@0| (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr2212#0@0| (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)))) $Heap)) (and ($Is refType |xrr2221#0@0| (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr2221#0@0| (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap))) (and (and ($Is refType |xrr2112#0@0| (Tclass._System.array2 (Tclass._System.array (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr2112#0@0| (Tclass._System.array2 (Tclass._System.array (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)))) $Heap)) (and ($Is refType |xrr2111#0@0| (Tclass._System.array2 (Tclass._System.array (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr2111#0@0| (Tclass._System.array2 (Tclass._System.array (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap)))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= |arr#0@0| null)) (not true))) (=> (or (not (= |arr#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= |srr#0@0| null)) (not true))) (=> (or (not (= |srr#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= |grr#0@0| null)) (not true))) (=> (or (not (= |grr#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= |xrr#0@0| null)) (not true))) (=> (or (not (= |xrr#0@0| null)) (not true)) (=> (and (and ($IsAlloc refType |arr2#0@0| (Tclass._System.array2 (Tclass._System.array TInt)) $Heap) (|_module.__default.MLen#canCall| (Tclass._System.array TInt) |arr2#0@0|)) (and ($IsAlloc refType |srr2#0@0| (Tclass._System.array2 Tclass._module.SingletonRecord) $Heap) (|_module.__default.MLen#canCall| Tclass._module.SingletonRecord |srr2#0@0|))) (=> (and (and (and ($IsAlloc refType |grr2#0@0| (Tclass._System.array2 (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt))) $Heap) (|_module.__default.MLen#canCall| (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt)) |grr2#0@0|)) (and ($IsAlloc refType |xrr2#0@0| (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)) $Heap) (|_module.__default.MLen#canCall| (Tclass._System.array _module._default.TestDefaultArrayValues$X) |xrr2#0@0|))) (and (and ($IsAlloc refType |arr22#0@0| (Tclass._System.array2 (Tclass._System.array2 TInt)) $Heap) (|_module.__default.MLen#canCall| (Tclass._System.array2 TInt) |arr22#0@0|)) (and ($IsAlloc refType |xrr22#0@0| (Tclass._System.array2 (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)) $Heap) (|_module.__default.MLen#canCall| (Tclass._System.array2 _module._default.TestDefaultArrayValues$X) |xrr22#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= |arr12#0@0| null)) (not true))) (=> (or (not (= |arr12#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |xrr12#0@0| null)) (not true))) (=> (or (not (= |xrr12#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |xrr1111#0@0| null)) (not true))) (=> (or (not (= |xrr1111#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |xrr1112#0@0| null)) (not true))) (=> (or (not (= |xrr1112#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |xrr1121#0@0| null)) (not true))) (=> (or (not (= |xrr1121#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |xrr1212#0@0| null)) (not true))) (=> (or (not (= |xrr1212#0@0| null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= |xrr1221#0@0| null)) (not true)))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |arr#0| (Tclass._System.array (Tclass._System.array TInt))) ($IsAlloc refType |arr#0| (Tclass._System.array (Tclass._System.array TInt)) $Heap)) true) (and (and ($Is refType |srr#0| (Tclass._System.array Tclass._module.SingletonRecord)) ($IsAlloc refType |srr#0| (Tclass._System.array Tclass._module.SingletonRecord) $Heap)) true)) (=> (and (and (and (and ($Is refType |grr#0| (Tclass._System.array (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt)))) ($IsAlloc refType |grr#0| (Tclass._System.array (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt))) $Heap)) true) (and (and ($Is refType |xrr#0| (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X))) ($IsAlloc refType |xrr#0| (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X)) $Heap)) true)) (and (and (and ($Is refType |arr2#0| (Tclass._System.array2 (Tclass._System.array TInt))) ($IsAlloc refType |arr2#0| (Tclass._System.array2 (Tclass._System.array TInt)) $Heap)) true) (and (and ($Is refType |srr2#0| (Tclass._System.array2 Tclass._module.SingletonRecord)) ($IsAlloc refType |srr2#0| (Tclass._System.array2 Tclass._module.SingletonRecord) $Heap)) true))) (=> (and (and (and (and (and (and ($Is refType |grr2#0| (Tclass._System.array2 (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt)))) ($IsAlloc refType |grr2#0| (Tclass._System.array2 (Tclass._module.GenericSingletonRecord (Tclass._System.array TInt))) $Heap)) true) (and (and ($Is refType |xrr2#0| (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X))) ($IsAlloc refType |xrr2#0| (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)) $Heap)) true)) (and (and (and ($Is refType |arr22#0| (Tclass._System.array2 (Tclass._System.array2 TInt))) ($IsAlloc refType |arr22#0| (Tclass._System.array2 (Tclass._System.array2 TInt)) $Heap)) true) (and (and ($Is refType |xrr22#0| (Tclass._System.array2 (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))) ($IsAlloc refType |xrr22#0| (Tclass._System.array2 (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)) $Heap)) true))) (and (and (and (and ($Is refType |arr12#0| (Tclass._System.array (Tclass._System.array2 TInt))) ($IsAlloc refType |arr12#0| (Tclass._System.array (Tclass._System.array2 TInt)) $Heap)) true) (and (and ($Is refType |xrr12#0| (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))) ($IsAlloc refType |xrr12#0| (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)) $Heap)) true)) (and (and (and ($Is refType |xrr1111#0| (Tclass._System.array (Tclass._System.array (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1111#0| (Tclass._System.array (Tclass._System.array (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap)) true) (and (and ($Is refType |xrr1112#0| (Tclass._System.array (Tclass._System.array (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1112#0| (Tclass._System.array (Tclass._System.array (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)))) $Heap)) true)))) (and (and (and (and (and ($Is refType |xrr1121#0| (Tclass._System.array (Tclass._System.array (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1121#0| (Tclass._System.array (Tclass._System.array (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap)) true) (and (and ($Is refType |xrr1212#0| (Tclass._System.array (Tclass._System.array2 (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1212#0| (Tclass._System.array (Tclass._System.array2 (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)))) $Heap)) true)) (and (and (and ($Is refType |xrr1221#0| (Tclass._System.array (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr1221#0| (Tclass._System.array (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap)) true) (and (and ($Is refType |xrr2212#0| (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr2212#0| (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)))) $Heap)) true))) (and (and (and (and ($Is refType |xrr2221#0| (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr2221#0| (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array2 (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap)) true) (and (and ($Is refType |xrr2112#0| (Tclass._System.array2 (Tclass._System.array (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr2112#0| (Tclass._System.array2 (Tclass._System.array (Tclass._System.array (Tclass._System.array2 _module._default.TestDefaultArrayValues$X)))) $Heap)) true)) (and (and (and ($Is refType |xrr2111#0| (Tclass._System.array2 (Tclass._System.array (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X))))) ($IsAlloc refType |xrr2111#0| (Tclass._System.array2 (Tclass._System.array (Tclass._System.array (Tclass._System.array _module._default.TestDefaultArrayValues$X)))) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 13) 2)))))) anon0_correct))))))
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
