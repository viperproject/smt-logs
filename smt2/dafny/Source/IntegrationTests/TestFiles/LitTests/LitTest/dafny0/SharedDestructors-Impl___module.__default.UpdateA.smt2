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
(declare-fun Tagclass._module.Quirky () T@U)
(declare-fun |##_module.Quirky.PP| () T@U)
(declare-fun |##_module.Quirky.QQ| () T@U)
(declare-fun |##_module.Quirky.RR| () T@U)
(declare-fun tytagFamily$Quirky () T@U)
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
(declare-fun |#_module.Quirky.RR| (Int Int Int) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Quirky.id (T@U) Int)
(declare-fun _module.Quirky.c (T@U) Int)
(declare-fun _module.Quirky.d (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Quirky () T@U)
(declare-fun |#_module.Quirky.PP| (Int Int) T@U)
(declare-fun |#_module.Quirky.QQ| (Int Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Quirky.PP_q (T@U) Bool)
(declare-fun _module.Quirky.QQ_q (T@U) Bool)
(declare-fun _module.Quirky.RR_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Quirky.a (T@U) Int)
(declare-fun _module.Quirky.b (T@U) Int)
(declare-fun |$IsA#_module.Quirky| (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Quirky |##_module.Quirky.PP| |##_module.Quirky.QQ| |##_module.Quirky.RR| tytagFamily$Quirky)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|a#54#0#0| Int) (|a#54#1#0| Int) (|a#54#2#0| Int) ) (! (= (DatatypeCtorId (|#_module.Quirky.RR| |a#54#0#0| |a#54#1#0| |a#54#2#0|)) |##_module.Quirky.RR|)
 :qid |SharedDestructorsdfy.61:66|
 :skolemid |618|
 :pattern ( (|#_module.Quirky.RR| |a#54#0#0| |a#54#1#0| |a#54#2#0|))
)))
(assert (forall ((|a#58#0#0| Int) (|a#58#1#0| Int) (|a#58#2#0| Int) ) (! (= (_module.Quirky.id (|#_module.Quirky.RR| |a#58#0#0| |a#58#1#0| |a#58#2#0|)) |a#58#0#0|)
 :qid |SharedDestructorsdfy.61:66|
 :skolemid |627|
 :pattern ( (|#_module.Quirky.RR| |a#58#0#0| |a#58#1#0| |a#58#2#0|))
)))
(assert (forall ((|a#59#0#0| Int) (|a#59#1#0| Int) (|a#59#2#0| Int) ) (! (= (_module.Quirky.c (|#_module.Quirky.RR| |a#59#0#0| |a#59#1#0| |a#59#2#0|)) |a#59#1#0|)
 :qid |SharedDestructorsdfy.61:66|
 :skolemid |628|
 :pattern ( (|#_module.Quirky.RR| |a#59#0#0| |a#59#1#0| |a#59#2#0|))
)))
(assert (forall ((|a#60#0#0| Int) (|a#60#1#0| Int) (|a#60#2#0| Int) ) (! (= (_module.Quirky.d (|#_module.Quirky.RR| |a#60#0#0| |a#60#1#0| |a#60#2#0|)) |a#60#2#0|)
 :qid |SharedDestructorsdfy.61:66|
 :skolemid |629|
 :pattern ( (|#_module.Quirky.RR| |a#60#0#0| |a#60#1#0| |a#60#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#56#0#0| Int) (|a#56#1#0| Int) (|a#56#2#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Quirky.RR| |a#56#0#0| |a#56#1#0| |a#56#2#0|) Tclass._module.Quirky)  (and (and ($Is intType (int_2_U |a#56#0#0|) TInt) ($Is intType (int_2_U |a#56#1#0|) TInt)) ($Is intType (int_2_U |a#56#2#0|) TInt)))
 :qid |SharedDestructorsdfy.61:66|
 :skolemid |622|
 :pattern ( ($Is DatatypeTypeType (|#_module.Quirky.RR| |a#56#0#0| |a#56#1#0| |a#56#2#0|) Tclass._module.Quirky))
)))
(assert (forall ((|a#44#0#0| Int) (|a#44#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Quirky.PP| |a#44#0#0| |a#44#1#0|) Tclass._module.Quirky)  (and ($Is intType (int_2_U |a#44#0#0|) TInt) ($Is intType (int_2_U |a#44#1#0|) TInt)))
 :qid |SharedDestructorsdfy.61:22|
 :skolemid |602|
 :pattern ( ($Is DatatypeTypeType (|#_module.Quirky.PP| |a#44#0#0| |a#44#1#0|) Tclass._module.Quirky))
)))
(assert (forall ((|a#50#0#0| Int) (|a#50#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Quirky.QQ| |a#50#0#0| |a#50#1#0|) Tclass._module.Quirky)  (and ($Is intType (int_2_U |a#50#0#0|) TInt) ($Is intType (int_2_U |a#50#1#0|) TInt)))
 :qid |SharedDestructorsdfy.61:44|
 :skolemid |612|
 :pattern ( ($Is DatatypeTypeType (|#_module.Quirky.QQ| |a#50#0#0| |a#50#1#0|) Tclass._module.Quirky))
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
(assert (forall ((d T@U) ) (! (= (_module.Quirky.PP_q d) (= (DatatypeCtorId d) |##_module.Quirky.PP|))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (_module.Quirky.PP_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Quirky.QQ_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Quirky.QQ|))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( (_module.Quirky.QQ_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Quirky.RR_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Quirky.RR|))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( (_module.Quirky.RR_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Quirky.RR_q d@@2) (exists ((|a#55#0#0| Int) (|a#55#1#0| Int) (|a#55#2#0| Int) ) (! (= d@@2 (|#_module.Quirky.RR| |a#55#0#0| |a#55#1#0| |a#55#2#0|))
 :qid |SharedDestructorsdfy.61:66|
 :skolemid |620|
)))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( (_module.Quirky.RR_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Quirky.PP_q d@@3) (exists ((|a#43#0#0| Int) (|a#43#1#0| Int) ) (! (= d@@3 (|#_module.Quirky.PP| |a#43#0#0| |a#43#1#0|))
 :qid |SharedDestructorsdfy.61:22|
 :skolemid |600|
)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.Quirky.PP_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Quirky.QQ_q d@@4) (exists ((|a#49#0#0| Int) (|a#49#1#0| Int) ) (! (= d@@4 (|#_module.Quirky.QQ| |a#49#0#0| |a#49#1#0|))
 :qid |SharedDestructorsdfy.61:44|
 :skolemid |610|
)))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( (_module.Quirky.QQ_q d@@4))
)))
(assert (forall ((|a#42#0#0| Int) (|a#42#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Quirky.PP| |a#42#0#0| |a#42#1#0|)) |##_module.Quirky.PP|)
 :qid |SharedDestructorsdfy.61:22|
 :skolemid |598|
 :pattern ( (|#_module.Quirky.PP| |a#42#0#0| |a#42#1#0|))
)))
(assert (forall ((|a#46#0#0| Int) (|a#46#1#0| Int) ) (! (= (_module.Quirky.id (|#_module.Quirky.PP| |a#46#0#0| |a#46#1#0|)) |a#46#0#0|)
 :qid |SharedDestructorsdfy.61:22|
 :skolemid |606|
 :pattern ( (|#_module.Quirky.PP| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#47#0#0| Int) (|a#47#1#0| Int) ) (! (= (_module.Quirky.a (|#_module.Quirky.PP| |a#47#0#0| |a#47#1#0|)) |a#47#1#0|)
 :qid |SharedDestructorsdfy.61:22|
 :skolemid |607|
 :pattern ( (|#_module.Quirky.PP| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#48#0#0| Int) (|a#48#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Quirky.QQ| |a#48#0#0| |a#48#1#0|)) |##_module.Quirky.QQ|)
 :qid |SharedDestructorsdfy.61:44|
 :skolemid |608|
 :pattern ( (|#_module.Quirky.QQ| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#52#0#0| Int) (|a#52#1#0| Int) ) (! (= (_module.Quirky.b (|#_module.Quirky.QQ| |a#52#0#0| |a#52#1#0|)) |a#52#0#0|)
 :qid |SharedDestructorsdfy.61:44|
 :skolemid |616|
 :pattern ( (|#_module.Quirky.QQ| |a#52#0#0| |a#52#1#0|))
)))
(assert (forall ((|a#53#0#0| Int) (|a#53#1#0| Int) ) (! (= (_module.Quirky.id (|#_module.Quirky.QQ| |a#53#0#0| |a#53#1#0|)) |a#53#1#0|)
 :qid |SharedDestructorsdfy.61:44|
 :skolemid |617|
 :pattern ( (|#_module.Quirky.QQ| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|a#57#0#0| Int) (|a#57#1#0| Int) (|a#57#2#0| Int) ) (! (= (|#_module.Quirky.RR| (LitInt |a#57#0#0|) (LitInt |a#57#1#0|) (LitInt |a#57#2#0|)) (Lit DatatypeTypeType (|#_module.Quirky.RR| |a#57#0#0| |a#57#1#0| |a#57#2#0|)))
 :qid |SharedDestructorsdfy.61:66|
 :skolemid |626|
 :pattern ( (|#_module.Quirky.RR| (LitInt |a#57#0#0|) (LitInt |a#57#1#0|) (LitInt |a#57#2#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.Quirky| d@@5) (or (or (_module.Quirky.PP_q d@@5) (_module.Quirky.QQ_q d@@5)) (_module.Quirky.RR_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (|$IsA#_module.Quirky| d@@5))
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
(assert (forall ((d@@6 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Quirky.PP_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Quirky $h))) ($IsAlloc intType (int_2_U (_module.Quirky.id d@@6)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Quirky.id d@@6)) TInt $h))
)))
(assert (forall ((d@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Quirky.PP_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Quirky $h@@0))) ($IsAlloc intType (int_2_U (_module.Quirky.a d@@7)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Quirky.a d@@7)) TInt $h@@0))
)))
(assert (forall ((d@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Quirky.QQ_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Quirky $h@@1))) ($IsAlloc intType (int_2_U (_module.Quirky.b d@@8)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Quirky.b d@@8)) TInt $h@@1))
)))
(assert (forall ((d@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Quirky.QQ_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Quirky $h@@2))) ($IsAlloc intType (int_2_U (_module.Quirky.id d@@9)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Quirky.id d@@9)) TInt $h@@2))
)))
(assert (forall ((d@@10 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Quirky.RR_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Quirky $h@@3))) ($IsAlloc intType (int_2_U (_module.Quirky.id d@@10)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Quirky.id d@@10)) TInt $h@@3))
)))
(assert (forall ((d@@11 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Quirky.RR_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Quirky $h@@4))) ($IsAlloc intType (int_2_U (_module.Quirky.c d@@11)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Quirky.c d@@11)) TInt $h@@4))
)))
(assert (forall ((d@@12 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Quirky.RR_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Quirky $h@@5))) ($IsAlloc intType (int_2_U (_module.Quirky.d d@@12)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Quirky.d d@@12)) TInt $h@@5))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> ($Is DatatypeTypeType d@@13 Tclass._module.Quirky) (or (or (_module.Quirky.PP_q d@@13) (_module.Quirky.QQ_q d@@13)) (_module.Quirky.RR_q d@@13)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (_module.Quirky.RR_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Quirky))
 :pattern ( (_module.Quirky.QQ_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Quirky))
 :pattern ( (_module.Quirky.PP_q d@@13) ($Is DatatypeTypeType d@@13 Tclass._module.Quirky))
)))
(assert (forall ((d@@14 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@14 Tclass._module.Quirky)) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Quirky $h@@6))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Quirky $h@@6))
)))
(assert (= (Tag Tclass._module.Quirky) Tagclass._module.Quirky))
(assert (= (TagFamily Tclass._module.Quirky) tytagFamily$Quirky))
(assert (forall ((|a#45#0#0| Int) (|a#45#1#0| Int) ) (! (= (|#_module.Quirky.PP| (LitInt |a#45#0#0|) (LitInt |a#45#1#0|)) (Lit DatatypeTypeType (|#_module.Quirky.PP| |a#45#0#0| |a#45#1#0|)))
 :qid |SharedDestructorsdfy.61:22|
 :skolemid |605|
 :pattern ( (|#_module.Quirky.PP| (LitInt |a#45#0#0|) (LitInt |a#45#1#0|)))
)))
(assert (forall ((|a#51#0#0| Int) (|a#51#1#0| Int) ) (! (= (|#_module.Quirky.QQ| (LitInt |a#51#0#0|) (LitInt |a#51#1#0|)) (Lit DatatypeTypeType (|#_module.Quirky.QQ| |a#51#0#0| |a#51#1#0|)))
 :qid |SharedDestructorsdfy.61:44|
 :skolemid |615|
 :pattern ( (|#_module.Quirky.QQ| (LitInt |a#51#0#0|) (LitInt |a#51#1#0|)))
)))
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
(declare-fun |y#0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |dt_update_tmp#4#Z#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun |dt_update#c#2#Z#0_0@0| () Int)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |dt_update_tmp#3#Z#1_0@0| () T@U)
(declare-fun |let#1_1#0#0| () Int)
(declare-fun |dt_update#c#1#Z#1_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |y'#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.UpdateA)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon11_Else_correct  (=> (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (_module.Quirky.QQ_q |y#0|))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (_module.Quirky.RR_q |y#0|))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 14) (- 0 13))) false)))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (_module.Quirky.RR_q |y#0|)) (=> (_module.Quirky.RR_q |y#0|) (=> (and (and (and (= |let#0_0#0#0| |y#0|) ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.Quirky)) (and (= |dt_update_tmp#4#Z#0_0@0| |let#0_0#0#0|) (= |let#0_1#0#0| (LitInt 10)))) (and (and ($Is intType (int_2_U |let#0_1#0#0|) TInt) (= |dt_update#c#2#Z#0_0@0| |let#0_1#0#0|)) (and (or (or (_module.Quirky.PP_q |dt_update_tmp#4#Z#0_0@0|) (_module.Quirky.QQ_q |dt_update_tmp#4#Z#0_0@0|)) (_module.Quirky.RR_q |dt_update_tmp#4#Z#0_0@0|)) (= (ControlFlow 0 11) (- 0 10))))) (_module.Quirky.RR_q |dt_update_tmp#4#Z#0_0@0|))))))
(let ((anon10_Then_correct  (=> (_module.Quirky.RR_q |y#0|) (and (=> (= (ControlFlow 0 8) (- 0 9)) (_module.Quirky.RR_q |y#0|)) (=> (_module.Quirky.RR_q |y#0|) (=> (and (and (and (= |let#1_0#0#0| |y#0|) ($Is DatatypeTypeType |let#1_0#0#0| Tclass._module.Quirky)) (and (= |dt_update_tmp#3#Z#1_0@0| |let#1_0#0#0|) (= |let#1_1#0#0| (LitInt 10)))) (and (and ($Is intType (int_2_U |let#1_1#0#0|) TInt) (= |dt_update#c#1#Z#1_0@0| |let#1_1#0#0|)) (and (or (or (_module.Quirky.PP_q |dt_update_tmp#3#Z#1_0@0|) (_module.Quirky.QQ_q |dt_update_tmp#3#Z#1_0@0|)) (_module.Quirky.RR_q |dt_update_tmp#3#Z#1_0@0|)) (= (ControlFlow 0 8) (- 0 7))))) (_module.Quirky.RR_q |dt_update_tmp#3#Z#1_0@0|)))))))
(let ((anon9_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (_module.Quirky.RR_q |y#0|))))
(let ((anon8_Then_correct  (=> (and (_module.Quirky.QQ_q |y#0|) (= (ControlFlow 0 4) (- 0 3))) (_module.Quirky.QQ_q |y#0|))))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (_module.Quirky.PP_q |y#0|))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (=> (= (ControlFlow 0 15) 2) anon7_Then_correct) (=> (= (ControlFlow 0 15) 4) anon8_Then_correct)) (=> (= (ControlFlow 0 15) 6) anon9_Then_correct)) (=> (= (ControlFlow 0 15) 8) anon10_Then_correct)) (=> (= (ControlFlow 0 15) 11) anon11_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |y#0| Tclass._module.Quirky) ($IsAlloc DatatypeTypeType |y#0| Tclass._module.Quirky $Heap)) (|$IsA#_module.Quirky| |y#0|)) (and (and ($Is DatatypeTypeType |y'#0| Tclass._module.Quirky) ($IsAlloc DatatypeTypeType |y'#0| Tclass._module.Quirky $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 16) 15)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 11) (- 12))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
