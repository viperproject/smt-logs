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
(declare-fun Tagclass._module.Many () T@U)
(declare-fun |##_module.Many.Ma0| () T@U)
(declare-fun |##_module.Many.Ma1| () T@U)
(declare-fun |##_module.Many.Ma2| () T@U)
(declare-fun |##_module.Many.Ma3| () T@U)
(declare-fun |##_module.Many.Ma4| () T@U)
(declare-fun |##_module.Many.Ma5| () T@U)
(declare-fun tytagFamily$Many () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.Many.Ma1| (Int Int) T@U)
(declare-fun Tclass._module.Many () T@U)
(declare-fun |#_module.Many.Ma2| (Int Int) T@U)
(declare-fun |#_module.Many.Ma3| (Int Int) T@U)
(declare-fun |#_module.Many.Ma4| (Int Int) T@U)
(declare-fun |#_module.Many.Ma5| (Int Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Many.Ma0_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Many.Ma1_q (T@U) Bool)
(declare-fun _module.Many.Ma2_q (T@U) Bool)
(declare-fun _module.Many.Ma3_q (T@U) Bool)
(declare-fun _module.Many.Ma4_q (T@U) Bool)
(declare-fun _module.Many.Ma5_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Many.Ma0| (Int) T@U)
(declare-fun _module.Many.u (T@U) Int)
(declare-fun _module.Many.fj (T@U) Int)
(declare-fun _module.Many.x (T@U) Int)
(declare-fun _module.Many.y (T@U) Int)
(declare-fun _module.Many.z (T@U) Int)
(declare-fun |$IsA#_module.Many| (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Many |##_module.Many.Ma0| |##_module.Many.Ma1| |##_module.Many.Ma2| |##_module.Many.Ma3| |##_module.Many.Ma4| |##_module.Many.Ma5| tytagFamily$Many)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#100#0#0| Int) (|a#100#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Many.Ma1| |a#100#0#0| |a#100#1#0|) Tclass._module.Many)  (and ($Is intType (int_2_U |a#100#0#0|) TInt) ($Is intType (int_2_U |a#100#1#0|) TInt)))
 :qid |SharedDestructorsdfy.129:9|
 :skolemid |713|
 :pattern ( ($Is DatatypeTypeType (|#_module.Many.Ma1| |a#100#0#0| |a#100#1#0|) Tclass._module.Many))
)))
(assert (forall ((|a#106#0#0| Int) (|a#106#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Many.Ma2| |a#106#0#0| |a#106#1#0|) Tclass._module.Many)  (and ($Is intType (int_2_U |a#106#0#0|) TInt) ($Is intType (int_2_U |a#106#1#0|) TInt)))
 :qid |SharedDestructorsdfy.130:9|
 :skolemid |723|
 :pattern ( ($Is DatatypeTypeType (|#_module.Many.Ma2| |a#106#0#0| |a#106#1#0|) Tclass._module.Many))
)))
(assert (forall ((|a#112#0#0| Int) (|a#112#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Many.Ma3| |a#112#0#0| |a#112#1#0|) Tclass._module.Many)  (and ($Is intType (int_2_U |a#112#0#0|) TInt) ($Is intType (int_2_U |a#112#1#0|) TInt)))
 :qid |SharedDestructorsdfy.131:9|
 :skolemid |733|
 :pattern ( ($Is DatatypeTypeType (|#_module.Many.Ma3| |a#112#0#0| |a#112#1#0|) Tclass._module.Many))
)))
(assert (forall ((|a#118#0#0| Int) (|a#118#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Many.Ma4| |a#118#0#0| |a#118#1#0|) Tclass._module.Many)  (and ($Is intType (int_2_U |a#118#0#0|) TInt) ($Is intType (int_2_U |a#118#1#0|) TInt)))
 :qid |SharedDestructorsdfy.132:9|
 :skolemid |743|
 :pattern ( ($Is DatatypeTypeType (|#_module.Many.Ma4| |a#118#0#0| |a#118#1#0|) Tclass._module.Many))
)))
(assert (forall ((|a#124#0#0| Int) (|a#124#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Many.Ma5| |a#124#0#0| |a#124#1#0|) Tclass._module.Many)  (and ($Is intType (int_2_U |a#124#0#0|) TInt) ($Is intType (int_2_U |a#124#1#0|) TInt)))
 :qid |SharedDestructorsdfy.133:9|
 :skolemid |753|
 :pattern ( ($Is DatatypeTypeType (|#_module.Many.Ma5| |a#124#0#0| |a#124#1#0|) Tclass._module.Many))
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
(assert (forall ((d T@U) ) (! (= (_module.Many.Ma0_q d) (= (DatatypeCtorId d) |##_module.Many.Ma0|))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( (_module.Many.Ma0_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Many.Ma1_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Many.Ma1|))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( (_module.Many.Ma1_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Many.Ma2_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Many.Ma2|))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (_module.Many.Ma2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Many.Ma3_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Many.Ma3|))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (_module.Many.Ma3_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Many.Ma4_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Many.Ma4|))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (_module.Many.Ma4_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Many.Ma5_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Many.Ma5|))
 :qid |unknown.0:0|
 :skolemid |750|
 :pattern ( (_module.Many.Ma5_q d@@4))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Many.Ma1_q d@@5) (exists ((|a#99#0#0| Int) (|a#99#1#0| Int) ) (! (= d@@5 (|#_module.Many.Ma1| |a#99#0#0| |a#99#1#0|))
 :qid |SharedDestructorsdfy.129:9|
 :skolemid |711|
)))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.Many.Ma1_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Many.Ma2_q d@@6) (exists ((|a#105#0#0| Int) (|a#105#1#0| Int) ) (! (= d@@6 (|#_module.Many.Ma2| |a#105#0#0| |a#105#1#0|))
 :qid |SharedDestructorsdfy.130:9|
 :skolemid |721|
)))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (_module.Many.Ma2_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Many.Ma3_q d@@7) (exists ((|a#111#0#0| Int) (|a#111#1#0| Int) ) (! (= d@@7 (|#_module.Many.Ma3| |a#111#0#0| |a#111#1#0|))
 :qid |SharedDestructorsdfy.131:9|
 :skolemid |731|
)))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (_module.Many.Ma3_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Many.Ma4_q d@@8) (exists ((|a#117#0#0| Int) (|a#117#1#0| Int) ) (! (= d@@8 (|#_module.Many.Ma4| |a#117#0#0| |a#117#1#0|))
 :qid |SharedDestructorsdfy.132:9|
 :skolemid |741|
)))
 :qid |unknown.0:0|
 :skolemid |742|
 :pattern ( (_module.Many.Ma4_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Many.Ma5_q d@@9) (exists ((|a#123#0#0| Int) (|a#123#1#0| Int) ) (! (= d@@9 (|#_module.Many.Ma5| |a#123#0#0| |a#123#1#0|))
 :qid |SharedDestructorsdfy.133:9|
 :skolemid |751|
)))
 :qid |unknown.0:0|
 :skolemid |752|
 :pattern ( (_module.Many.Ma5_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.Many.Ma0_q d@@10) (exists ((|a#94#0#0| Int) ) (! (= d@@10 (|#_module.Many.Ma0| |a#94#0#0|))
 :qid |SharedDestructorsdfy.128:9|
 :skolemid |703|
)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (_module.Many.Ma0_q d@@10))
)))
(assert (forall ((|a#98#0#0| Int) (|a#98#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Many.Ma1| |a#98#0#0| |a#98#1#0|)) |##_module.Many.Ma1|)
 :qid |SharedDestructorsdfy.129:9|
 :skolemid |709|
 :pattern ( (|#_module.Many.Ma1| |a#98#0#0| |a#98#1#0|))
)))
(assert (forall ((|a#102#0#0| Int) (|a#102#1#0| Int) ) (! (= (_module.Many.u (|#_module.Many.Ma1| |a#102#0#0| |a#102#1#0|)) |a#102#0#0|)
 :qid |SharedDestructorsdfy.129:9|
 :skolemid |717|
 :pattern ( (|#_module.Many.Ma1| |a#102#0#0| |a#102#1#0|))
)))
(assert (forall ((|a#103#0#0| Int) (|a#103#1#0| Int) ) (! (= (_module.Many.fj (|#_module.Many.Ma1| |a#103#0#0| |a#103#1#0|)) |a#103#1#0|)
 :qid |SharedDestructorsdfy.129:9|
 :skolemid |718|
 :pattern ( (|#_module.Many.Ma1| |a#103#0#0| |a#103#1#0|))
)))
(assert (forall ((|a#104#0#0| Int) (|a#104#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Many.Ma2| |a#104#0#0| |a#104#1#0|)) |##_module.Many.Ma2|)
 :qid |SharedDestructorsdfy.130:9|
 :skolemid |719|
 :pattern ( (|#_module.Many.Ma2| |a#104#0#0| |a#104#1#0|))
)))
(assert (forall ((|a#108#0#0| Int) (|a#108#1#0| Int) ) (! (= (_module.Many.x (|#_module.Many.Ma2| |a#108#0#0| |a#108#1#0|)) |a#108#0#0|)
 :qid |SharedDestructorsdfy.130:9|
 :skolemid |727|
 :pattern ( (|#_module.Many.Ma2| |a#108#0#0| |a#108#1#0|))
)))
(assert (forall ((|a#109#0#0| Int) (|a#109#1#0| Int) ) (! (= (_module.Many.y (|#_module.Many.Ma2| |a#109#0#0| |a#109#1#0|)) |a#109#1#0|)
 :qid |SharedDestructorsdfy.130:9|
 :skolemid |728|
 :pattern ( (|#_module.Many.Ma2| |a#109#0#0| |a#109#1#0|))
)))
(assert (forall ((|a#110#0#0| Int) (|a#110#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Many.Ma3| |a#110#0#0| |a#110#1#0|)) |##_module.Many.Ma3|)
 :qid |SharedDestructorsdfy.131:9|
 :skolemid |729|
 :pattern ( (|#_module.Many.Ma3| |a#110#0#0| |a#110#1#0|))
)))
(assert (forall ((|a#114#0#0| Int) (|a#114#1#0| Int) ) (! (= (_module.Many.x (|#_module.Many.Ma3| |a#114#0#0| |a#114#1#0|)) |a#114#0#0|)
 :qid |SharedDestructorsdfy.131:9|
 :skolemid |737|
 :pattern ( (|#_module.Many.Ma3| |a#114#0#0| |a#114#1#0|))
)))
(assert (forall ((|a#115#0#0| Int) (|a#115#1#0| Int) ) (! (= (_module.Many.z (|#_module.Many.Ma3| |a#115#0#0| |a#115#1#0|)) |a#115#1#0|)
 :qid |SharedDestructorsdfy.131:9|
 :skolemid |738|
 :pattern ( (|#_module.Many.Ma3| |a#115#0#0| |a#115#1#0|))
)))
(assert (forall ((|a#116#0#0| Int) (|a#116#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Many.Ma4| |a#116#0#0| |a#116#1#0|)) |##_module.Many.Ma4|)
 :qid |SharedDestructorsdfy.132:9|
 :skolemid |739|
 :pattern ( (|#_module.Many.Ma4| |a#116#0#0| |a#116#1#0|))
)))
(assert (forall ((|a#120#0#0| Int) (|a#120#1#0| Int) ) (! (= (_module.Many.x (|#_module.Many.Ma4| |a#120#0#0| |a#120#1#0|)) |a#120#0#0|)
 :qid |SharedDestructorsdfy.132:9|
 :skolemid |747|
 :pattern ( (|#_module.Many.Ma4| |a#120#0#0| |a#120#1#0|))
)))
(assert (forall ((|a#121#0#0| Int) (|a#121#1#0| Int) ) (! (= (_module.Many.u (|#_module.Many.Ma4| |a#121#0#0| |a#121#1#0|)) |a#121#1#0|)
 :qid |SharedDestructorsdfy.132:9|
 :skolemid |748|
 :pattern ( (|#_module.Many.Ma4| |a#121#0#0| |a#121#1#0|))
)))
(assert (forall ((|a#122#0#0| Int) (|a#122#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Many.Ma5| |a#122#0#0| |a#122#1#0|)) |##_module.Many.Ma5|)
 :qid |SharedDestructorsdfy.133:9|
 :skolemid |749|
 :pattern ( (|#_module.Many.Ma5| |a#122#0#0| |a#122#1#0|))
)))
(assert (forall ((|a#126#0#0| Int) (|a#126#1#0| Int) ) (! (= (_module.Many.x (|#_module.Many.Ma5| |a#126#0#0| |a#126#1#0|)) |a#126#0#0|)
 :qid |SharedDestructorsdfy.133:9|
 :skolemid |757|
 :pattern ( (|#_module.Many.Ma5| |a#126#0#0| |a#126#1#0|))
)))
(assert (forall ((|a#127#0#0| Int) (|a#127#1#0| Int) ) (! (= (_module.Many.y (|#_module.Many.Ma5| |a#127#0#0| |a#127#1#0|)) |a#127#1#0|)
 :qid |SharedDestructorsdfy.133:9|
 :skolemid |758|
 :pattern ( (|#_module.Many.Ma5| |a#127#0#0| |a#127#1#0|))
)))
(assert (forall ((|a#93#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Many.Ma0| |a#93#0#0|)) |##_module.Many.Ma0|)
 :qid |SharedDestructorsdfy.128:9|
 :skolemid |701|
 :pattern ( (|#_module.Many.Ma0| |a#93#0#0|))
)))
(assert (forall ((|a#97#0#0| Int) ) (! (= (_module.Many.x (|#_module.Many.Ma0| |a#97#0#0|)) |a#97#0#0|)
 :qid |SharedDestructorsdfy.128:9|
 :skolemid |708|
 :pattern ( (|#_module.Many.Ma0| |a#97#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|a#95#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Many.Ma0| |a#95#0#0|) Tclass._module.Many) ($Is intType (int_2_U |a#95#0#0|) TInt))
 :qid |SharedDestructorsdfy.128:9|
 :skolemid |705|
 :pattern ( ($Is DatatypeTypeType (|#_module.Many.Ma0| |a#95#0#0|) Tclass._module.Many))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (|$IsA#_module.Many| d@@11) (or (or (or (or (or (_module.Many.Ma0_q d@@11) (_module.Many.Ma1_q d@@11)) (_module.Many.Ma2_q d@@11)) (_module.Many.Ma3_q d@@11)) (_module.Many.Ma4_q d@@11)) (_module.Many.Ma5_q d@@11)))
 :qid |unknown.0:0|
 :skolemid |760|
 :pattern ( (|$IsA#_module.Many| d@@11))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |769|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@12 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Many.Ma0_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Many $h))) ($IsAlloc intType (int_2_U (_module.Many.x d@@12)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.x d@@12)) TInt $h))
)))
(assert (forall ((d@@13 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Many.Ma1_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Many $h@@0))) ($IsAlloc intType (int_2_U (_module.Many.u d@@13)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.u d@@13)) TInt $h@@0))
)))
(assert (forall ((d@@14 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Many.Ma1_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Many $h@@1))) ($IsAlloc intType (int_2_U (_module.Many.fj d@@14)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.fj d@@14)) TInt $h@@1))
)))
(assert (forall ((d@@15 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Many.Ma2_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Many $h@@2))) ($IsAlloc intType (int_2_U (_module.Many.x d@@15)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.x d@@15)) TInt $h@@2))
)))
(assert (forall ((d@@16 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Many.Ma2_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Many $h@@3))) ($IsAlloc intType (int_2_U (_module.Many.y d@@16)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.y d@@16)) TInt $h@@3))
)))
(assert (forall ((d@@17 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Many.Ma3_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Many $h@@4))) ($IsAlloc intType (int_2_U (_module.Many.x d@@17)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.x d@@17)) TInt $h@@4))
)))
(assert (forall ((d@@18 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Many.Ma3_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Many $h@@5))) ($IsAlloc intType (int_2_U (_module.Many.z d@@18)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.z d@@18)) TInt $h@@5))
)))
(assert (forall ((d@@19 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Many.Ma4_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Many $h@@6))) ($IsAlloc intType (int_2_U (_module.Many.x d@@19)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.x d@@19)) TInt $h@@6))
)))
(assert (forall ((d@@20 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Many.Ma4_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.Many $h@@7))) ($IsAlloc intType (int_2_U (_module.Many.u d@@20)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |745|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.u d@@20)) TInt $h@@7))
)))
(assert (forall ((d@@21 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.Many.Ma5_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Many $h@@8))) ($IsAlloc intType (int_2_U (_module.Many.x d@@21)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.x d@@21)) TInt $h@@8))
)))
(assert (forall ((d@@22 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.Many.Ma5_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.Many $h@@9))) ($IsAlloc intType (int_2_U (_module.Many.y d@@22)) TInt $h@@9))
 :qid |unknown.0:0|
 :skolemid |755|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Many.y d@@22)) TInt $h@@9))
)))
(assert (forall ((d@@23 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) ($Is DatatypeTypeType d@@23 Tclass._module.Many)) ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Many $h@@10))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Many $h@@10))
)))
(assert (= (Tag Tclass._module.Many) Tagclass._module.Many))
(assert (= (TagFamily Tclass._module.Many) tytagFamily$Many))
(assert (forall ((d@@24 T@U) ) (!  (=> ($Is DatatypeTypeType d@@24 Tclass._module.Many) (or (or (or (or (or (_module.Many.Ma0_q d@@24) (_module.Many.Ma1_q d@@24)) (_module.Many.Ma2_q d@@24)) (_module.Many.Ma3_q d@@24)) (_module.Many.Ma4_q d@@24)) (_module.Many.Ma5_q d@@24)))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (_module.Many.Ma5_q d@@24) ($Is DatatypeTypeType d@@24 Tclass._module.Many))
 :pattern ( (_module.Many.Ma4_q d@@24) ($Is DatatypeTypeType d@@24 Tclass._module.Many))
 :pattern ( (_module.Many.Ma3_q d@@24) ($Is DatatypeTypeType d@@24 Tclass._module.Many))
 :pattern ( (_module.Many.Ma2_q d@@24) ($Is DatatypeTypeType d@@24 Tclass._module.Many))
 :pattern ( (_module.Many.Ma1_q d@@24) ($Is DatatypeTypeType d@@24 Tclass._module.Many))
 :pattern ( (_module.Many.Ma0_q d@@24) ($Is DatatypeTypeType d@@24 Tclass._module.Many))
)))
(assert (forall ((|a#101#0#0| Int) (|a#101#1#0| Int) ) (! (= (|#_module.Many.Ma1| (LitInt |a#101#0#0|) (LitInt |a#101#1#0|)) (Lit DatatypeTypeType (|#_module.Many.Ma1| |a#101#0#0| |a#101#1#0|)))
 :qid |SharedDestructorsdfy.129:9|
 :skolemid |716|
 :pattern ( (|#_module.Many.Ma1| (LitInt |a#101#0#0|) (LitInt |a#101#1#0|)))
)))
(assert (forall ((|a#107#0#0| Int) (|a#107#1#0| Int) ) (! (= (|#_module.Many.Ma2| (LitInt |a#107#0#0|) (LitInt |a#107#1#0|)) (Lit DatatypeTypeType (|#_module.Many.Ma2| |a#107#0#0| |a#107#1#0|)))
 :qid |SharedDestructorsdfy.130:9|
 :skolemid |726|
 :pattern ( (|#_module.Many.Ma2| (LitInt |a#107#0#0|) (LitInt |a#107#1#0|)))
)))
(assert (forall ((|a#113#0#0| Int) (|a#113#1#0| Int) ) (! (= (|#_module.Many.Ma3| (LitInt |a#113#0#0|) (LitInt |a#113#1#0|)) (Lit DatatypeTypeType (|#_module.Many.Ma3| |a#113#0#0| |a#113#1#0|)))
 :qid |SharedDestructorsdfy.131:9|
 :skolemid |736|
 :pattern ( (|#_module.Many.Ma3| (LitInt |a#113#0#0|) (LitInt |a#113#1#0|)))
)))
(assert (forall ((|a#119#0#0| Int) (|a#119#1#0| Int) ) (! (= (|#_module.Many.Ma4| (LitInt |a#119#0#0|) (LitInt |a#119#1#0|)) (Lit DatatypeTypeType (|#_module.Many.Ma4| |a#119#0#0| |a#119#1#0|)))
 :qid |SharedDestructorsdfy.132:9|
 :skolemid |746|
 :pattern ( (|#_module.Many.Ma4| (LitInt |a#119#0#0|) (LitInt |a#119#1#0|)))
)))
(assert (forall ((|a#125#0#0| Int) (|a#125#1#0| Int) ) (! (= (|#_module.Many.Ma5| (LitInt |a#125#0#0|) (LitInt |a#125#1#0|)) (Lit DatatypeTypeType (|#_module.Many.Ma5| |a#125#0#0| |a#125#1#0|)))
 :qid |SharedDestructorsdfy.133:9|
 :skolemid |756|
 :pattern ( (|#_module.Many.Ma5| (LitInt |a#125#0#0|) (LitInt |a#125#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#96#0#0| Int) ) (! (= (|#_module.Many.Ma0| (LitInt |a#96#0#0|)) (Lit DatatypeTypeType (|#_module.Many.Ma0| |a#96#0#0|)))
 :qid |SharedDestructorsdfy.128:9|
 :skolemid |707|
 :pattern ( (|#_module.Many.Ma0| (LitInt |a#96#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |dt_update_tmp#0#Z#3_0@0| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |let#3_0#0#0| () T@U)
(declare-fun |let#3_1#0#0| () Int)
(declare-fun |dt_update#y#0#Z#3_0@0| () Int)
(declare-fun |let#3_2#0#0| () Int)
(declare-fun |dt_update#x#0#Z#3_0@0| () Int)
(declare-fun |r#0@1| () T@U)
(declare-fun |dt_update_tmp#2#Z#1_0@0| () T@U)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |let#1_1#0#0| () Int)
(declare-fun |dt_update#u#0#Z#1_0@0| () Int)
(declare-fun |r#0@0| () T@U)
(declare-fun |dt_update_tmp#3#Z#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun |dt_update#x#2#Z#0_0@0| () Int)
(declare-fun |r#0@2| () T@U)
(declare-fun |dt_update_tmp#1#Z#2_0@0| () T@U)
(declare-fun |let#2_0#0#0| () T@U)
(declare-fun |let#2_1#0#0| () Int)
(declare-fun |dt_update#y#1#Z#2_0@0| () Int)
(declare-fun |let#2_2#0#0| () Int)
(declare-fun |dt_update#x#1#Z#2_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestMany)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon4_correct true))
(let ((anon31_Else_correct  (=> (and (not (_module.Many.Ma2_q |dt_update_tmp#0#Z#3_0@0|)) (= (ControlFlow 0 52) 50)) anon4_correct)))
(let ((anon31_Then_correct  (=> (and (_module.Many.Ma2_q |dt_update_tmp#0#Z#3_0@0|) (= (ControlFlow 0 51) 50)) anon4_correct)))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 53) (- 0 54)) (or (_module.Many.Ma5_q |m#0|) (_module.Many.Ma2_q |m#0|))) (=> (or (_module.Many.Ma5_q |m#0|) (_module.Many.Ma2_q |m#0|)) (=> (= |let#3_0#0#0| |m#0|) (=> (and (and (and ($Is DatatypeTypeType |let#3_0#0#0| Tclass._module.Many) (= |dt_update_tmp#0#Z#3_0@0| |let#3_0#0#0|)) (and (= |let#3_1#0#0| (LitInt 4)) ($Is intType (int_2_U |let#3_1#0#0|) TInt))) (and (and (= |dt_update#y#0#Z#3_0@0| |let#3_1#0#0|) (= |let#3_2#0#0| (LitInt 3))) (and ($Is intType (int_2_U |let#3_2#0#0|) TInt) (= |dt_update#x#0#Z#3_0@0| |let#3_2#0#0|)))) (and (=> (= (ControlFlow 0 53) 51) anon31_Then_correct) (=> (= (ControlFlow 0 53) 52) anon31_Else_correct))))))))
(let ((anon16_correct  (=> (= |r#0@1| (let ((|dt_update_tmp#2#1_0| |m#0|))
(let ((|dt_update#u#0#1_0| (LitInt 8)))
(ite (_module.Many.Ma1_q |dt_update_tmp#2#1_0|) (|#_module.Many.Ma1| |dt_update#u#0#1_0| (_module.Many.fj |dt_update_tmp#2#1_0|)) (|#_module.Many.Ma4| (_module.Many.x |dt_update_tmp#2#1_0|) |dt_update#u#0#1_0|))))) (and (=> (= (ControlFlow 0 40) (- 0 43)) (_module.Many.Ma4_q |m#0|)) (=> (_module.Many.Ma4_q |m#0|) (and (=> (= (ControlFlow 0 40) (- 0 42)) (or (or (or (or (_module.Many.Ma0_q |r#0@1|) (_module.Many.Ma2_q |r#0@1|)) (_module.Many.Ma3_q |r#0@1|)) (_module.Many.Ma4_q |r#0@1|)) (_module.Many.Ma5_q |r#0@1|))) (=> (or (or (or (or (_module.Many.Ma0_q |r#0@1|) (_module.Many.Ma2_q |r#0@1|)) (_module.Many.Ma3_q |r#0@1|)) (_module.Many.Ma4_q |r#0@1|)) (_module.Many.Ma5_q |r#0@1|)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (or (or (or (or (_module.Many.Ma0_q |m#0|) (_module.Many.Ma2_q |m#0|)) (_module.Many.Ma3_q |m#0|)) (_module.Many.Ma4_q |m#0|)) (_module.Many.Ma5_q |m#0|))) (=> (or (or (or (or (_module.Many.Ma0_q |m#0|) (_module.Many.Ma2_q |m#0|)) (_module.Many.Ma3_q |m#0|)) (_module.Many.Ma4_q |m#0|)) (_module.Many.Ma5_q |m#0|)) (=> (= (ControlFlow 0 40) (- 0 39)) (= (_module.Many.x |r#0@1|) (_module.Many.x |m#0|))))))))))))
(let ((anon37_Else_correct  (=> (not (_module.Many.Ma1_q |dt_update_tmp#2#Z#1_0@0|)) (and (=> (= (ControlFlow 0 46) (- 0 47)) (or (or (or (or (_module.Many.Ma0_q |dt_update_tmp#2#Z#1_0@0|) (_module.Many.Ma2_q |dt_update_tmp#2#Z#1_0@0|)) (_module.Many.Ma3_q |dt_update_tmp#2#Z#1_0@0|)) (_module.Many.Ma4_q |dt_update_tmp#2#Z#1_0@0|)) (_module.Many.Ma5_q |dt_update_tmp#2#Z#1_0@0|))) (=> (or (or (or (or (_module.Many.Ma0_q |dt_update_tmp#2#Z#1_0@0|) (_module.Many.Ma2_q |dt_update_tmp#2#Z#1_0@0|)) (_module.Many.Ma3_q |dt_update_tmp#2#Z#1_0@0|)) (_module.Many.Ma4_q |dt_update_tmp#2#Z#1_0@0|)) (_module.Many.Ma5_q |dt_update_tmp#2#Z#1_0@0|)) (=> (= (ControlFlow 0 46) 40) anon16_correct))))))
(let ((anon37_Then_correct  (=> (_module.Many.Ma1_q |dt_update_tmp#2#Z#1_0@0|) (and (=> (= (ControlFlow 0 44) (- 0 45)) (_module.Many.Ma1_q |dt_update_tmp#2#Z#1_0@0|)) (=> (_module.Many.Ma1_q |dt_update_tmp#2#Z#1_0@0|) (=> (= (ControlFlow 0 44) 40) anon16_correct))))))
(let ((anon36_Then_correct  (=> (_module.Many.Ma4_q |m#0|) (and (=> (= (ControlFlow 0 48) (- 0 49)) (or (_module.Many.Ma4_q |m#0|) (_module.Many.Ma1_q |m#0|))) (=> (or (_module.Many.Ma4_q |m#0|) (_module.Many.Ma1_q |m#0|)) (=> (and (= |let#1_0#0#0| |m#0|) ($Is DatatypeTypeType |let#1_0#0#0| Tclass._module.Many)) (=> (and (and (= |dt_update_tmp#2#Z#1_0@0| |let#1_0#0#0|) (= |let#1_1#0#0| (LitInt 8))) (and ($Is intType (int_2_U |let#1_1#0#0|) TInt) (= |dt_update#u#0#Z#1_0@0| |let#1_1#0#0|))) (and (=> (= (ControlFlow 0 48) 44) anon37_Then_correct) (=> (= (ControlFlow 0 48) 46) anon37_Else_correct)))))))))
(let ((anon28_correct  (=> (= (ControlFlow 0 20) (- 0 19)) (=> (_module.Many.Ma4_q |m#0|) (_module.Many.Ma4_q |r#0@0|)))))
(let ((anon43_Else_correct  (=> (and (not (_module.Many.Ma4_q |m#0|)) (= (ControlFlow 0 22) 20)) anon28_correct)))
(let ((anon43_Then_correct  (=> (and (_module.Many.Ma4_q |m#0|) (= (ControlFlow 0 21) 20)) anon28_correct)))
(let ((anon26_correct  (=> (= |r#0@0| (let ((|dt_update_tmp#3#0_0| |m#0|))
(let ((|dt_update#x#2#0_0| (LitInt 5)))
(ite (_module.Many.Ma0_q |dt_update_tmp#3#0_0|) (|#_module.Many.Ma0| |dt_update#x#2#0_0|) (ite (_module.Many.Ma2_q |dt_update_tmp#3#0_0|) (|#_module.Many.Ma2| |dt_update#x#2#0_0| (_module.Many.y |dt_update_tmp#3#0_0|)) (ite (_module.Many.Ma3_q |dt_update_tmp#3#0_0|) (|#_module.Many.Ma3| |dt_update#x#2#0_0| (_module.Many.z |dt_update_tmp#3#0_0|)) (ite (_module.Many.Ma4_q |dt_update_tmp#3#0_0|) (|#_module.Many.Ma4| |dt_update#x#2#0_0| (_module.Many.u |dt_update_tmp#3#0_0|)) (|#_module.Many.Ma5| |dt_update#x#2#0_0| (_module.Many.y |dt_update_tmp#3#0_0|))))))))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (not (_module.Many.Ma1_q |r#0@0|))) (=> (not (_module.Many.Ma1_q |r#0@0|)) (and (=> (= (ControlFlow 0 23) 21) anon43_Then_correct) (=> (= (ControlFlow 0 23) 22) anon43_Else_correct)))))))
(let ((anon42_Else_correct  (=> (not (_module.Many.Ma4_q |dt_update_tmp#3#Z#0_0@0|)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (or (_module.Many.Ma2_q |dt_update_tmp#3#Z#0_0@0|) (_module.Many.Ma5_q |dt_update_tmp#3#Z#0_0@0|))) (=> (or (_module.Many.Ma2_q |dt_update_tmp#3#Z#0_0@0|) (_module.Many.Ma5_q |dt_update_tmp#3#Z#0_0@0|)) (=> (= (ControlFlow 0 32) 23) anon26_correct))))))
(let ((anon42_Then_correct  (=> (_module.Many.Ma4_q |dt_update_tmp#3#Z#0_0@0|) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (_module.Many.Ma1_q |dt_update_tmp#3#Z#0_0@0|) (_module.Many.Ma4_q |dt_update_tmp#3#Z#0_0@0|))) (=> (or (_module.Many.Ma1_q |dt_update_tmp#3#Z#0_0@0|) (_module.Many.Ma4_q |dt_update_tmp#3#Z#0_0@0|)) (=> (= (ControlFlow 0 30) 23) anon26_correct))))))
(let ((anon41_Else_correct  (=> (not (_module.Many.Ma3_q |dt_update_tmp#3#Z#0_0@0|)) (and (=> (= (ControlFlow 0 34) 30) anon42_Then_correct) (=> (= (ControlFlow 0 34) 32) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (_module.Many.Ma3_q |dt_update_tmp#3#Z#0_0@0|) (and (=> (= (ControlFlow 0 28) (- 0 29)) (_module.Many.Ma3_q |dt_update_tmp#3#Z#0_0@0|)) (=> (_module.Many.Ma3_q |dt_update_tmp#3#Z#0_0@0|) (=> (= (ControlFlow 0 28) 23) anon26_correct))))))
(let ((anon40_Else_correct  (=> (not (_module.Many.Ma2_q |dt_update_tmp#3#Z#0_0@0|)) (and (=> (= (ControlFlow 0 35) 28) anon41_Then_correct) (=> (= (ControlFlow 0 35) 34) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (_module.Many.Ma2_q |dt_update_tmp#3#Z#0_0@0|) (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (_module.Many.Ma2_q |dt_update_tmp#3#Z#0_0@0|) (_module.Many.Ma5_q |dt_update_tmp#3#Z#0_0@0|))) (=> (or (_module.Many.Ma2_q |dt_update_tmp#3#Z#0_0@0|) (_module.Many.Ma5_q |dt_update_tmp#3#Z#0_0@0|)) (=> (= (ControlFlow 0 26) 23) anon26_correct))))))
(let ((anon39_Else_correct  (=> (not (_module.Many.Ma0_q |dt_update_tmp#3#Z#0_0@0|)) (and (=> (= (ControlFlow 0 36) 26) anon40_Then_correct) (=> (= (ControlFlow 0 36) 35) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (_module.Many.Ma0_q |dt_update_tmp#3#Z#0_0@0|) (= (ControlFlow 0 25) 23)) anon26_correct)))
(let ((anon38_Then_correct  (=> (not (_module.Many.Ma1_q |m#0|)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (or (or (or (or (_module.Many.Ma5_q |m#0|) (_module.Many.Ma4_q |m#0|)) (_module.Many.Ma3_q |m#0|)) (_module.Many.Ma2_q |m#0|)) (_module.Many.Ma0_q |m#0|))) (=> (or (or (or (or (_module.Many.Ma5_q |m#0|) (_module.Many.Ma4_q |m#0|)) (_module.Many.Ma3_q |m#0|)) (_module.Many.Ma2_q |m#0|)) (_module.Many.Ma0_q |m#0|)) (=> (and (= |let#0_0#0#0| |m#0|) ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.Many)) (=> (and (and (= |dt_update_tmp#3#Z#0_0@0| |let#0_0#0#0|) (= |let#0_1#0#0| (LitInt 5))) (and ($Is intType (int_2_U |let#0_1#0#0|) TInt) (= |dt_update#x#2#Z#0_0@0| |let#0_1#0#0|))) (and (=> (= (ControlFlow 0 37) 25) anon39_Then_correct) (=> (= (ControlFlow 0 37) 36) anon39_Else_correct)))))))))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (_module.Many.Ma2_q |r#0@2|) (_module.Many.Ma5_q |r#0@2|))) (=> (or (_module.Many.Ma2_q |r#0@2|) (_module.Many.Ma5_q |r#0@2|)) (=> (= (ControlFlow 0 4) (- 0 3)) (_module.Many.Ma2_q |r#0@2|))))))
(let ((anon35_Else_correct  (=> (and (_module.Many.Ma2_q |r#0@2|) (= (ControlFlow 0 7) 4)) anon12_correct)))
(let ((anon35_Then_correct  (=> (and (not (_module.Many.Ma2_q |r#0@2|)) (= (ControlFlow 0 6) 4)) anon12_correct)))
(let ((anon10_correct  (=> (= |r#0@2| (let ((|dt_update_tmp#1#2_0| |m#0|))
(let ((|dt_update#y#1#2_0| (LitInt 4)))
(let ((|dt_update#x#1#2_0| (LitInt 3)))
(ite (_module.Many.Ma2_q |dt_update_tmp#1#2_0|) (|#_module.Many.Ma2| |dt_update#x#1#2_0| |dt_update#y#1#2_0|) (|#_module.Many.Ma5| |dt_update#x#1#2_0| |dt_update#y#1#2_0|)))))) (and (=> (= (ControlFlow 0 8) (- 0 12)) (or (or (or (or (_module.Many.Ma0_q |r#0@2|) (_module.Many.Ma2_q |r#0@2|)) (_module.Many.Ma3_q |r#0@2|)) (_module.Many.Ma4_q |r#0@2|)) (_module.Many.Ma5_q |r#0@2|))) (=> (or (or (or (or (_module.Many.Ma0_q |r#0@2|) (_module.Many.Ma2_q |r#0@2|)) (_module.Many.Ma3_q |r#0@2|)) (_module.Many.Ma4_q |r#0@2|)) (_module.Many.Ma5_q |r#0@2|)) (and (=> (= (ControlFlow 0 8) (- 0 11)) (= (_module.Many.x |r#0@2|) (LitInt 3))) (=> (= (_module.Many.x |r#0@2|) (LitInt 3)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (_module.Many.Ma2_q |r#0@2|) (_module.Many.Ma5_q |r#0@2|))) (=> (or (_module.Many.Ma2_q |r#0@2|) (_module.Many.Ma5_q |r#0@2|)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (= (_module.Many.y |r#0@2|) (LitInt 4))) (=> (= (_module.Many.y |r#0@2|) (LitInt 4)) (and (=> (= (ControlFlow 0 8) 6) anon35_Then_correct) (=> (= (ControlFlow 0 8) 7) anon35_Else_correct)))))))))))))
(let ((anon34_Else_correct  (=> (and (not (_module.Many.Ma2_q |dt_update_tmp#1#Z#2_0@0|)) (= (ControlFlow 0 14) 8)) anon10_correct)))
(let ((anon34_Then_correct  (=> (and (_module.Many.Ma2_q |dt_update_tmp#1#Z#2_0@0|) (= (ControlFlow 0 13) 8)) anon10_correct)))
(let ((anon7_correct  (=> (or (_module.Many.Ma2_q |m#0|) (_module.Many.Ma5_q |m#0|)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (_module.Many.Ma5_q |m#0|) (_module.Many.Ma2_q |m#0|))) (=> (or (_module.Many.Ma5_q |m#0|) (_module.Many.Ma2_q |m#0|)) (=> (= |let#2_0#0#0| |m#0|) (=> (and (and (and ($Is DatatypeTypeType |let#2_0#0#0| Tclass._module.Many) (= |dt_update_tmp#1#Z#2_0@0| |let#2_0#0#0|)) (and (= |let#2_1#0#0| (LitInt 4)) ($Is intType (int_2_U |let#2_1#0#0|) TInt))) (and (and (= |dt_update#y#1#Z#2_0@0| |let#2_1#0#0|) (= |let#2_2#0#0| (LitInt 3))) (and ($Is intType (int_2_U |let#2_2#0#0|) TInt) (= |dt_update#x#1#Z#2_0@0| |let#2_2#0#0|)))) (and (=> (= (ControlFlow 0 15) 13) anon34_Then_correct) (=> (= (ControlFlow 0 15) 14) anon34_Else_correct)))))))))
(let ((anon33_Else_correct  (=> (and (_module.Many.Ma2_q |m#0|) (= (ControlFlow 0 18) 15)) anon7_correct)))
(let ((anon33_Then_correct  (=> (and (not (_module.Many.Ma2_q |m#0|)) (= (ControlFlow 0 17) 15)) anon7_correct)))
(let ((anon38_Else_correct  (=> (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (or (_module.Many.Ma2_q |m#0|) (_module.Many.Ma5_q |m#0|)))) (not (_module.Many.Ma4_q |m#0|))) (_module.Many.Ma1_q |m#0|)) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (=> (= (ControlFlow 0 55) 53) anon30_Then_correct) (=> (= (ControlFlow 0 55) 48) anon36_Then_correct)) (=> (= (ControlFlow 0 55) 37) anon38_Then_correct)) (=> (= (ControlFlow 0 55) 2) anon38_Else_correct)) (=> (= (ControlFlow 0 55) 17) anon33_Then_correct)) (=> (= (ControlFlow 0 55) 18) anon33_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |m#0| Tclass._module.Many) ($IsAlloc DatatypeTypeType |m#0| Tclass._module.Many $Heap)) (|$IsA#_module.Many| |m#0|)) (and (and ($Is DatatypeTypeType |r#0| Tclass._module.Many) ($IsAlloc DatatypeTypeType |r#0| Tclass._module.Many $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 56) 55)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 53) (- 54))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
