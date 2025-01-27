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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Dt () T@U)
(declare-fun Tagclass._module.MyClass () T@U)
(declare-fun |##_module.Dt.A| () T@U)
(declare-fun |##_module.Dt.B| () T@U)
(declare-fun |##_module.Dt.C| () T@U)
(declare-fun |##_module.Dt.D| () T@U)
(declare-fun Tagclass._module.MyClass? () T@U)
(declare-fun tytagFamily$Dt () T@U)
(declare-fun tytagFamily$MyClass () T@U)
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
(declare-fun |#_module.Dt.D| (Int Real Bool) T@U)
(declare-fun _module.Dt.v (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Dt.u (T@U) Int)
(declare-fun _module.Dt.y (T@U) Real)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Dt () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.MyClass? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.MyClass () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |#_module.Dt.A| (Int Real) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Dt.A_q (T@U) Bool)
(declare-fun _module.Dt.B_q (T@U) Bool)
(declare-fun _module.Dt.C_q (T@U) Bool)
(declare-fun _module.Dt.D_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Dt.B| (T@U Int) T@U)
(declare-fun |#_module.Dt.C| (Real) T@U)
(declare-fun _module.Dt.x (T@U) Int)
(declare-fun _module.Dt.h (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.Dt| (T@U) Bool)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal alloc Tagclass._module.Dt Tagclass._module.MyClass |##_module.Dt.A| |##_module.Dt.B| |##_module.Dt.C| |##_module.Dt.D| Tagclass._module.MyClass? tytagFamily$Dt tytagFamily$MyClass)
)
(assert (forall ((|a#23#0#0| Int) (|a#23#1#0| Real) (|a#23#2#0| Bool) ) (! (= (_module.Dt.v (|#_module.Dt.D| |a#23#0#0| |a#23#1#0| |a#23#2#0|)) |a#23#2#0|)
 :qid |SharedDestructorsdfy.8:7|
 :skolemid |544|
 :pattern ( (|#_module.Dt.D| |a#23#0#0| |a#23#1#0| |a#23#2#0|))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((|a#17#0#0| Int) (|a#17#1#0| Real) (|a#17#2#0| Bool) ) (! (= (DatatypeCtorId (|#_module.Dt.D| |a#17#0#0| |a#17#1#0| |a#17#2#0|)) |##_module.Dt.D|)
 :qid |SharedDestructorsdfy.8:7|
 :skolemid |532|
 :pattern ( (|#_module.Dt.D| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#21#0#0| Int) (|a#21#1#0| Real) (|a#21#2#0| Bool) ) (! (= (_module.Dt.u (|#_module.Dt.D| |a#21#0#0| |a#21#1#0| |a#21#2#0|)) |a#21#0#0|)
 :qid |SharedDestructorsdfy.8:7|
 :skolemid |542|
 :pattern ( (|#_module.Dt.D| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
)))
(assert (forall ((|a#22#0#0| Int) (|a#22#1#0| Real) (|a#22#2#0| Bool) ) (! (= (_module.Dt.y (|#_module.Dt.D| |a#22#0#0| |a#22#1#0| |a#22#2#0|)) |a#22#1#0|)
 :qid |SharedDestructorsdfy.8:7|
 :skolemid |543|
 :pattern ( (|#_module.Dt.D| |a#22#0#0| |a#22#1#0| |a#22#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#19#0#0| Int) (|a#19#1#0| Real) (|a#19#2#0| Bool) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Dt.D| |a#19#0#0| |a#19#1#0| |a#19#2#0|) Tclass._module.Dt $h)  (and (and ($IsAlloc intType (int_2_U |a#19#0#0|) TInt $h) ($IsAlloc realType (real_2_U |a#19#1#0|) TReal $h)) ($IsAlloc boolType (bool_2_U |a#19#2#0|) TBool $h))))
 :qid |SharedDestructorsdfy.8:7|
 :skolemid |537|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Dt.D| |a#19#0#0| |a#19#1#0| |a#19#2#0|) Tclass._module.Dt $h))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.MyClass?)  (or (= $o null) (= (dtype $o) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($Is refType $o Tclass._module.MyClass?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.MyClass $h@@0) ($IsAlloc refType |c#0| Tclass._module.MyClass? $h@@0))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.MyClass $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.MyClass? $h@@0))
)))
(assert (forall ((|a#19#0#0@@0| Int) (|a#19#1#0@@0| Real) (|a#19#2#0@@0| Bool) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.D| |a#19#0#0@@0| |a#19#1#0@@0| |a#19#2#0@@0|) Tclass._module.Dt)  (and (and ($Is intType (int_2_U |a#19#0#0@@0|) TInt) ($Is realType (real_2_U |a#19#1#0@@0|) TReal)) ($Is boolType (bool_2_U |a#19#2#0@@0|) TBool)))
 :qid |SharedDestructorsdfy.8:7|
 :skolemid |536|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.D| |a#19#0#0@@0| |a#19#1#0@@0| |a#19#2#0@@0|) Tclass._module.Dt))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.MyClass? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.MyClass? $h@@1))
)))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| Real) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.A| |a#2#0#0| |a#2#1#0|) Tclass._module.Dt)  (and ($Is intType (int_2_U |a#2#0#0|) TInt) ($Is realType (real_2_U |a#2#1#0|) TReal)))
 :qid |SharedDestructorsdfy.5:7|
 :skolemid |505|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.A| |a#2#0#0| |a#2#1#0|) Tclass._module.Dt))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((d T@U) ) (! (= (_module.Dt.A_q d) (= (DatatypeCtorId d) |##_module.Dt.A|))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (_module.Dt.A_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Dt.B_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Dt.B|))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (_module.Dt.B_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Dt.C_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Dt.C|))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( (_module.Dt.C_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Dt.D_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Dt.D|))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.Dt.D_q d@@2))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.B| |a#8#0#0| |a#8#1#0|) Tclass._module.Dt)  (and ($Is refType |a#8#0#0| Tclass._module.MyClass) ($Is intType (int_2_U |a#8#1#0|) TInt)))
 :qid |SharedDestructorsdfy.6:7|
 :skolemid |516|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.B| |a#8#0#0| |a#8#1#0|) Tclass._module.Dt))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Dt.D_q d@@3) (exists ((|a#18#0#0| Int) (|a#18#1#0| Real) (|a#18#2#0| Bool) ) (! (= d@@3 (|#_module.Dt.D| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
 :qid |SharedDestructorsdfy.8:7|
 :skolemid |534|
)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (_module.Dt.D_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Dt.A_q d@@4) (exists ((|a#1#0#0| Int) (|a#1#1#0| Real) ) (! (= d@@4 (|#_module.Dt.A| |a#1#0#0| |a#1#1#0|))
 :qid |SharedDestructorsdfy.5:7|
 :skolemid |503|
)))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (_module.Dt.A_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Dt.B_q d@@5) (exists ((|a#7#0#0| T@U) (|a#7#1#0| Int) ) (! (= d@@5 (|#_module.Dt.B| |a#7#0#0| |a#7#1#0|))
 :qid |SharedDestructorsdfy.6:7|
 :skolemid |514|
)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (_module.Dt.B_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Dt.C_q d@@6) (exists ((|a#13#0#0| Real) ) (! (= d@@6 (|#_module.Dt.C| |a#13#0#0|))
 :qid |SharedDestructorsdfy.7:7|
 :skolemid |525|
)))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Dt.C_q d@@6))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.MyClass)  (and ($Is refType |c#0@@0| Tclass._module.MyClass?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.MyClass))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.MyClass?))
)))
(assert (forall ((|a#14#0#0| Real) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Dt.C| |a#14#0#0|) Tclass._module.Dt $h@@2) ($IsAlloc realType (real_2_U |a#14#0#0|) TReal $h@@2)))
 :qid |SharedDestructorsdfy.7:7|
 :skolemid |528|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Dt.C| |a#14#0#0|) Tclass._module.Dt $h@@2))
)))
(assert (forall ((|a#0#0#0| Int) (|a#0#1#0| Real) ) (! (= (DatatypeCtorId (|#_module.Dt.A| |a#0#0#0| |a#0#1#0|)) |##_module.Dt.A|)
 :qid |SharedDestructorsdfy.5:7|
 :skolemid |501|
 :pattern ( (|#_module.Dt.A| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Real) ) (! (= (_module.Dt.x (|#_module.Dt.A| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |SharedDestructorsdfy.5:7|
 :skolemid |510|
 :pattern ( (|#_module.Dt.A| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Real) ) (! (= (_module.Dt.y (|#_module.Dt.A| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |SharedDestructorsdfy.5:7|
 :skolemid |511|
 :pattern ( (|#_module.Dt.A| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Dt.B| |a#6#0#0| |a#6#1#0|)) |##_module.Dt.B|)
 :qid |SharedDestructorsdfy.6:7|
 :skolemid |512|
 :pattern ( (|#_module.Dt.B| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| Int) ) (! (= (_module.Dt.h (|#_module.Dt.B| |a#10#0#0| |a#10#1#0|)) |a#10#0#0|)
 :qid |SharedDestructorsdfy.6:7|
 :skolemid |521|
 :pattern ( (|#_module.Dt.B| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| Int) ) (! (= (_module.Dt.x (|#_module.Dt.B| |a#11#0#0| |a#11#1#0|)) |a#11#1#0|)
 :qid |SharedDestructorsdfy.6:7|
 :skolemid |522|
 :pattern ( (|#_module.Dt.B| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#20#0#0| Int) (|a#20#1#0| Real) (|a#20#2#0| T@U) ) (! (= (|#_module.Dt.D| (LitInt |a#20#0#0|) (LitReal |a#20#1#0|) (U_2_bool (Lit boolType |a#20#2#0|))) (Lit DatatypeTypeType (|#_module.Dt.D| |a#20#0#0| |a#20#1#0| (U_2_bool |a#20#2#0|))))
 :qid |SharedDestructorsdfy.8:7|
 :skolemid |541|
 :pattern ( (|#_module.Dt.D| (LitInt |a#20#0#0|) (LitReal |a#20#1#0|) (U_2_bool (Lit boolType |a#20#2#0|))))
)))
(assert (forall ((|a#12#0#0| Real) ) (! (= (DatatypeCtorId (|#_module.Dt.C| |a#12#0#0|)) |##_module.Dt.C|)
 :qid |SharedDestructorsdfy.7:7|
 :skolemid |523|
 :pattern ( (|#_module.Dt.C| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| Real) ) (! (= (_module.Dt.y (|#_module.Dt.C| |a#16#0#0|)) |a#16#0#0|)
 :qid |SharedDestructorsdfy.7:7|
 :skolemid |531|
 :pattern ( (|#_module.Dt.C| |a#16#0#0|))
)))
(assert (forall ((x@@6 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@6))
)))
(assert (forall ((|a#14#0#0@@0| Real) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.C| |a#14#0#0@@0|) Tclass._module.Dt) ($Is realType (real_2_U |a#14#0#0@@0|) TReal))
 :qid |SharedDestructorsdfy.7:7|
 :skolemid |527|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.C| |a#14#0#0@@0|) Tclass._module.Dt))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |769|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((d@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Dt.A_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Dt $h@@3))) ($IsAlloc intType (int_2_U (_module.Dt.x d@@7)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Dt.x d@@7)) TInt $h@@3))
)))
(assert (forall ((d@@8 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Dt.A_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Dt $h@@4))) ($IsAlloc realType (real_2_U (_module.Dt.y d@@8)) TReal $h@@4))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc realType (real_2_U (_module.Dt.y d@@8)) TReal $h@@4))
)))
(assert (forall ((d@@9 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Dt.B_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Dt $h@@5))) ($IsAlloc intType (int_2_U (_module.Dt.x d@@9)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Dt.x d@@9)) TInt $h@@5))
)))
(assert (forall ((d@@10 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Dt.C_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Dt $h@@6))) ($IsAlloc realType (real_2_U (_module.Dt.y d@@10)) TReal $h@@6))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($IsAlloc realType (real_2_U (_module.Dt.y d@@10)) TReal $h@@6))
)))
(assert (forall ((d@@11 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Dt.D_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Dt $h@@7))) ($IsAlloc intType (int_2_U (_module.Dt.u d@@11)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Dt.u d@@11)) TInt $h@@7))
)))
(assert (forall ((d@@12 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Dt.D_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Dt $h@@8))) ($IsAlloc realType (real_2_U (_module.Dt.y d@@12)) TReal $h@@8))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($IsAlloc realType (real_2_U (_module.Dt.y d@@12)) TReal $h@@8))
)))
(assert (forall ((d@@13 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Dt.D_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Dt $h@@9))) ($IsAlloc boolType (bool_2_U (_module.Dt.v d@@13)) TBool $h@@9))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Dt.v d@@13)) TBool $h@@9))
)))
(assert (= (Tag Tclass._module.Dt) Tagclass._module.Dt))
(assert (= (TagFamily Tclass._module.Dt) tytagFamily$Dt))
(assert (= (Tag Tclass._module.MyClass) Tagclass._module.MyClass))
(assert (= (TagFamily Tclass._module.MyClass) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.MyClass?) Tagclass._module.MyClass?))
(assert (= (TagFamily Tclass._module.MyClass?) tytagFamily$MyClass))
(assert (forall ((d@@14 T@U) ) (!  (=> (|$IsA#_module.Dt| d@@14) (or (or (or (_module.Dt.A_q d@@14) (_module.Dt.B_q d@@14)) (_module.Dt.C_q d@@14)) (_module.Dt.D_q d@@14)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (|$IsA#_module.Dt| d@@14))
)))
(assert (forall ((d@@15 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.Dt.B_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Dt $h@@10))) ($IsAlloc refType (_module.Dt.h d@@15) Tclass._module.MyClass $h@@10))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc refType (_module.Dt.h d@@15) Tclass._module.MyClass $h@@10))
)))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| Real) ) (! (= (|#_module.Dt.A| (LitInt |a#3#0#0|) (LitReal |a#3#1#0|)) (Lit DatatypeTypeType (|#_module.Dt.A| |a#3#0#0| |a#3#1#0|)))
 :qid |SharedDestructorsdfy.5:7|
 :skolemid |509|
 :pattern ( (|#_module.Dt.A| (LitInt |a#3#0#0|) (LitReal |a#3#1#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| Int) ) (! (= (|#_module.Dt.B| (Lit refType |a#9#0#0|) (LitInt |a#9#1#0|)) (Lit DatatypeTypeType (|#_module.Dt.B| |a#9#0#0| |a#9#1#0|)))
 :qid |SharedDestructorsdfy.6:7|
 :skolemid |520|
 :pattern ( (|#_module.Dt.B| (Lit refType |a#9#0#0|) (LitInt |a#9#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@8))) (Lit BoxType ($Box realType (real_2_U x@@8))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@8))))
)))
(assert (forall ((|a#15#0#0| Real) ) (! (= (|#_module.Dt.C| (LitReal |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.Dt.C| |a#15#0#0|)))
 :qid |SharedDestructorsdfy.7:7|
 :skolemid |530|
 :pattern ( (|#_module.Dt.C| (LitReal |a#15#0#0|)))
)))
(assert (forall ((x@@9 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@9)) (Lit BoxType ($Box T@@2 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@9)))
)))
(assert (forall ((|a#2#0#0@@0| Int) (|a#2#1#0@@0| Real) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#_module.Dt.A| |a#2#0#0@@0| |a#2#1#0@@0|) Tclass._module.Dt $h@@11)  (and ($IsAlloc intType (int_2_U |a#2#0#0@@0|) TInt $h@@11) ($IsAlloc realType (real_2_U |a#2#1#0@@0|) TReal $h@@11))))
 :qid |SharedDestructorsdfy.5:7|
 :skolemid |506|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Dt.A| |a#2#0#0@@0| |a#2#1#0@@0|) Tclass._module.Dt $h@@11))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> ($Is DatatypeTypeType d@@16 Tclass._module.Dt) (or (or (or (_module.Dt.A_q d@@16) (_module.Dt.B_q d@@16)) (_module.Dt.C_q d@@16)) (_module.Dt.D_q d@@16)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (_module.Dt.D_q d@@16) ($Is DatatypeTypeType d@@16 Tclass._module.Dt))
 :pattern ( (_module.Dt.C_q d@@16) ($Is DatatypeTypeType d@@16 Tclass._module.Dt))
 :pattern ( (_module.Dt.B_q d@@16) ($Is DatatypeTypeType d@@16 Tclass._module.Dt))
 :pattern ( (_module.Dt.A_q d@@16) ($Is DatatypeTypeType d@@16 Tclass._module.Dt))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc realType v@@0 TReal h@@0)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@0 TReal h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@1))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is realType v@@3 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@3 TReal))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(assert (forall ((|a#8#0#0@@0| T@U) (|a#8#1#0@@0| Int) ($h@@12 T@U) ) (!  (=> ($IsGoodHeap $h@@12) (= ($IsAlloc DatatypeTypeType (|#_module.Dt.B| |a#8#0#0@@0| |a#8#1#0@@0|) Tclass._module.Dt $h@@12)  (and ($IsAlloc refType |a#8#0#0@@0| Tclass._module.MyClass $h@@12) ($IsAlloc intType (int_2_U |a#8#1#0@@0|) TInt $h@@12))))
 :qid |SharedDestructorsdfy.6:7|
 :skolemid |517|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Dt.B| |a#8#0#0@@0| |a#8#1#0@@0|) Tclass._module.Dt $h@@12))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |d#0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |dt_update_tmp#0#Z#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun |dt_update#x#0#Z#0_0@0| () Int)
(declare-fun |let#0_2#0#0| () Real)
(declare-fun |dt_update#y#0#Z#0_0@0| () Real)
(declare-fun |n#0_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |n#0_0| () T@U)
(declare-fun |defass#h#1_0| () Bool)
(declare-fun |h#1_0| () T@U)
(declare-fun |defass#h#2_0| () Bool)
(declare-fun |h#2_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.M)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon9_correct  (=> (and (or (_module.Dt.D_q |d#0|) (_module.Dt.C_q |d#0|)) (= (ControlFlow 0 23) (- 0 22))) (or (or (_module.Dt.A_q |d#0|) (_module.Dt.C_q |d#0|)) (_module.Dt.D_q |d#0|)))))
(let ((anon21_Else_correct  (=> (and (_module.Dt.D_q |d#0|) (= (ControlFlow 0 25) 23)) anon9_correct)))
(let ((anon21_Then_correct  (=> (and (not (_module.Dt.D_q |d#0|)) (= (ControlFlow 0 24) 23)) anon9_correct)))
(let ((anon24_Else_correct  (=> (and (and (and (and (and (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (_module.Dt.A_q |d#0|))) (not (_module.Dt.B_q |d#0|))) (not (_module.Dt.C_q |d#0|))) (not (_module.Dt.B_q |d#0|))) (_module.Dt.B_q |d#0|)) (not (or (_module.Dt.D_q |d#0|) (_module.Dt.C_q |d#0|)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (_module.Dt.B_q |d#0|))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 21) (- 0 20))) false)))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (_module.Dt.A_q |d#0|)) (=> (_module.Dt.A_q |d#0|) (=> (= |let#0_0#0#0| |d#0|) (=> (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.Dt) (= |dt_update_tmp#0#Z#0_0@0| |let#0_0#0#0|)) (=> (and (and (and (= |let#0_1#0#0| (LitInt 3)) ($Is intType (int_2_U |let#0_1#0#0|) TInt)) (and (= |dt_update#x#0#Z#0_0@0| |let#0_1#0#0|) (= |let#0_2#0#0| (LitReal 2.7)))) (and (and ($Is realType (real_2_U |let#0_2#0#0|) TReal) (= |dt_update#y#0#Z#0_0@0| |let#0_2#0#0|)) (and (= |n#0_0@0| (let ((|dt_update#x#0#0_0| (LitInt 3)))
(let ((|dt_update#y#0#0_0| (LitReal 2.7)))
(Lit DatatypeTypeType (|#_module.Dt.A| |dt_update#x#0#0_0| |dt_update#y#0#0_0|))))) (= (ControlFlow 0 18) (- 0 17))))) (_module.Dt.A_q |n#0_0@0|))))))))
(let ((anon23_Then_correct  (=> (and (_module.Dt.B_q |d#0|) (= (ControlFlow 0 16) (- 0 15))) (_module.Dt.B_q |d#0|))))
(let ((anon22_Then_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (_module.Dt.B_q |d#0|))))
(let ((anon19_Then_correct  (=> (and (not (_module.Dt.B_q |d#0|)) (= (ControlFlow 0 12) (- 0 11))) (or (or (_module.Dt.A_q |d#0|) (_module.Dt.C_q |d#0|)) (_module.Dt.D_q |d#0|)))))
(let ((anon18_Then_correct  (=> (and (_module.Dt.B_q |d#0|) (= (ControlFlow 0 10) (- 0 9))) (or (or (_module.Dt.A_q |d#0|) (_module.Dt.C_q |d#0|)) (_module.Dt.D_q |d#0|)))))
(let ((anon17_Then_correct  (=> (and (_module.Dt.C_q |d#0|) (= (ControlFlow 0 8) (- 0 7))) (or (_module.Dt.A_q |d#0|) (_module.Dt.B_q |d#0|)))))
(let ((anon16_Then_correct  (=> (and (_module.Dt.B_q |d#0|) (= (ControlFlow 0 6) (- 0 5))) (or (_module.Dt.A_q |d#0|) (_module.Dt.B_q |d#0|)))))
(let ((anon15_Then_correct  (=> (and (_module.Dt.A_q |d#0|) (= (ControlFlow 0 4) (- 0 3))) (or (_module.Dt.A_q |d#0|) (_module.Dt.B_q |d#0|)))))
(let ((anon14_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or (_module.Dt.A_q |d#0|) (_module.Dt.B_q |d#0|)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 26) 2) anon14_Then_correct) (=> (= (ControlFlow 0 26) 4) anon15_Then_correct)) (=> (= (ControlFlow 0 26) 6) anon16_Then_correct)) (=> (= (ControlFlow 0 26) 8) anon17_Then_correct)) (=> (= (ControlFlow 0 26) 10) anon18_Then_correct)) (=> (= (ControlFlow 0 26) 12) anon19_Then_correct)) (=> (= (ControlFlow 0 26) 14) anon22_Then_correct)) (=> (= (ControlFlow 0 26) 16) anon23_Then_correct)) (=> (= (ControlFlow 0 26) 18) anon24_Then_correct)) (=> (= (ControlFlow 0 26) 21) anon24_Else_correct)) (=> (= (ControlFlow 0 26) 24) anon21_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon21_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |d#0| Tclass._module.Dt) ($IsAlloc DatatypeTypeType |d#0| Tclass._module.Dt $Heap)) (|$IsA#_module.Dt| |d#0|)) (=> (and (and (and (and ($Is DatatypeTypeType |n#0_0| Tclass._module.Dt) ($IsAlloc DatatypeTypeType |n#0_0| Tclass._module.Dt $Heap)) true) (and (=> |defass#h#1_0| (and ($Is refType |h#1_0| Tclass._module.MyClass) ($IsAlloc refType |h#1_0| Tclass._module.MyClass $Heap))) true)) (and (and (=> |defass#h#2_0| (and ($Is refType |h#2_0| Tclass._module.MyClass) ($IsAlloc refType |h#2_0| Tclass._module.MyClass $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 27) 26)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 18) (- 19))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
