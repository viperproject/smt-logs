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
(declare-fun Tagclass._module.Friend () T@U)
(declare-fun |##_module.Friend.Agnes| () T@U)
(declare-fun |##_module.Friend.Agatha| () T@U)
(declare-fun |##_module.Friend.Jermaine| () T@U)
(declare-fun |##_module.Friend.Jack| () T@U)
(declare-fun tytagFamily$Friend () T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Friend.Agnes_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Friend.Agatha_q (T@U) Bool)
(declare-fun _module.Friend.Jermaine_q (T@U) Bool)
(declare-fun _module.Friend.Jack_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Friend.Agnes| (Int) T@U)
(declare-fun |#_module.Friend.Agatha| (Int) T@U)
(declare-fun |#_module.Friend.Jermaine| (Int) T@U)
(declare-fun |#_module.Friend.Jack| (Int) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Fr (Int) T@U)
(declare-fun |_module.__default.Fr#canCall| (Int) Bool)
(declare-fun _module.Friend._h0 (T@U) Int)
(declare-fun _module.Friend._h1 (T@U) Int)
(declare-fun _module.Friend._h2 (T@U) Int)
(declare-fun _module.Friend._h3 (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Friend () T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Friend |##_module.Friend.Agnes| |##_module.Friend.Agatha| |##_module.Friend.Jermaine| |##_module.Friend.Jack| tytagFamily$Friend)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1720|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1718|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (_module.Friend.Agnes_q d) (= (DatatypeCtorId d) |##_module.Friend.Agnes|))
 :qid |unknown.0:0|
 :skolemid |2494|
 :pattern ( (_module.Friend.Agnes_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Friend.Agatha_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Friend.Agatha|))
 :qid |unknown.0:0|
 :skolemid |2502|
 :pattern ( (_module.Friend.Agatha_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Friend.Jermaine_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Friend.Jermaine|))
 :qid |unknown.0:0|
 :skolemid |2510|
 :pattern ( (_module.Friend.Jermaine_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Friend.Jack_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Friend.Jack|))
 :qid |unknown.0:0|
 :skolemid |2518|
 :pattern ( (_module.Friend.Jack_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1729|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Friend.Agnes_q d@@3) (exists ((|a#21#0#0| Int) ) (! (= d@@3 (|#_module.Friend.Agnes| |a#21#0#0|))
 :qid |LetExprdfy.281:25|
 :skolemid |2495|
)))
 :qid |unknown.0:0|
 :skolemid |2496|
 :pattern ( (_module.Friend.Agnes_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Friend.Agatha_q d@@4) (exists ((|a#26#0#0| Int) ) (! (= d@@4 (|#_module.Friend.Agatha| |a#26#0#0|))
 :qid |LetExprdfy.281:39|
 :skolemid |2503|
)))
 :qid |unknown.0:0|
 :skolemid |2504|
 :pattern ( (_module.Friend.Agatha_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Friend.Jermaine_q d@@5) (exists ((|a#31#0#0| Int) ) (! (= d@@5 (|#_module.Friend.Jermaine| |a#31#0#0|))
 :qid |LetExprdfy.281:55|
 :skolemid |2511|
)))
 :qid |unknown.0:0|
 :skolemid |2512|
 :pattern ( (_module.Friend.Jermaine_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Friend.Jack_q d@@6) (exists ((|a#36#0#0| Int) ) (! (= d@@6 (|#_module.Friend.Jack| |a#36#0#0|))
 :qid |LetExprdfy.281:67|
 :skolemid |2519|
)))
 :qid |unknown.0:0|
 :skolemid |2520|
 :pattern ( (_module.Friend.Jack_q d@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|_module.__default.Fr#canCall| |x#0|) (< 1 $FunctionContextHeight)) (= (_module.__default.Fr |x#0|) (ite (< |x#0| 10) (|#_module.Friend.Jermaine| |x#0|) (|#_module.Friend.Agnes| |x#0|))))
 :qid |LetExprdfy.283:19|
 :skolemid |2312|
 :pattern ( (_module.__default.Fr |x#0|))
))))
(assert (forall ((|a#20#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Friend.Agnes| |a#20#0#0|)) |##_module.Friend.Agnes|)
 :qid |LetExprdfy.281:25|
 :skolemid |2493|
 :pattern ( (|#_module.Friend.Agnes| |a#20#0#0|))
)))
(assert (forall ((|a#24#0#0| Int) ) (! (= (_module.Friend._h0 (|#_module.Friend.Agnes| |a#24#0#0|)) |a#24#0#0|)
 :qid |LetExprdfy.281:25|
 :skolemid |2500|
 :pattern ( (|#_module.Friend.Agnes| |a#24#0#0|))
)))
(assert (forall ((|a#25#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Friend.Agatha| |a#25#0#0|)) |##_module.Friend.Agatha|)
 :qid |LetExprdfy.281:39|
 :skolemid |2501|
 :pattern ( (|#_module.Friend.Agatha| |a#25#0#0|))
)))
(assert (forall ((|a#29#0#0| Int) ) (! (= (_module.Friend._h1 (|#_module.Friend.Agatha| |a#29#0#0|)) |a#29#0#0|)
 :qid |LetExprdfy.281:39|
 :skolemid |2508|
 :pattern ( (|#_module.Friend.Agatha| |a#29#0#0|))
)))
(assert (forall ((|a#30#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Friend.Jermaine| |a#30#0#0|)) |##_module.Friend.Jermaine|)
 :qid |LetExprdfy.281:55|
 :skolemid |2509|
 :pattern ( (|#_module.Friend.Jermaine| |a#30#0#0|))
)))
(assert (forall ((|a#34#0#0| Int) ) (! (= (_module.Friend._h2 (|#_module.Friend.Jermaine| |a#34#0#0|)) |a#34#0#0|)
 :qid |LetExprdfy.281:55|
 :skolemid |2516|
 :pattern ( (|#_module.Friend.Jermaine| |a#34#0#0|))
)))
(assert (forall ((|a#35#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Friend.Jack| |a#35#0#0|)) |##_module.Friend.Jack|)
 :qid |LetExprdfy.281:67|
 :skolemid |2517|
 :pattern ( (|#_module.Friend.Jack| |a#35#0#0|))
)))
(assert (forall ((|a#39#0#0| Int) ) (! (= (_module.Friend._h3 (|#_module.Friend.Jack| |a#39#0#0|)) |a#39#0#0|)
 :qid |LetExprdfy.281:67|
 :skolemid |2524|
 :pattern ( (|#_module.Friend.Jack| |a#39#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1728|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#22#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Friend.Agnes| |a#22#0#0|) Tclass._module.Friend) ($Is intType (int_2_U |a#22#0#0|) TInt))
 :qid |LetExprdfy.281:25|
 :skolemid |2497|
 :pattern ( ($Is DatatypeTypeType (|#_module.Friend.Agnes| |a#22#0#0|) Tclass._module.Friend))
)))
(assert (forall ((|a#27#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Friend.Agatha| |a#27#0#0|) Tclass._module.Friend) ($Is intType (int_2_U |a#27#0#0|) TInt))
 :qid |LetExprdfy.281:39|
 :skolemid |2505|
 :pattern ( ($Is DatatypeTypeType (|#_module.Friend.Agatha| |a#27#0#0|) Tclass._module.Friend))
)))
(assert (forall ((|a#32#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Friend.Jermaine| |a#32#0#0|) Tclass._module.Friend) ($Is intType (int_2_U |a#32#0#0|) TInt))
 :qid |LetExprdfy.281:55|
 :skolemid |2513|
 :pattern ( ($Is DatatypeTypeType (|#_module.Friend.Jermaine| |a#32#0#0|) Tclass._module.Friend))
)))
(assert (forall ((|a#37#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Friend.Jack| |a#37#0#0|) Tclass._module.Friend) ($Is intType (int_2_U |a#37#0#0|) TInt))
 :qid |LetExprdfy.281:67|
 :skolemid |2521|
 :pattern ( ($Is DatatypeTypeType (|#_module.Friend.Jack| |a#37#0#0|) Tclass._module.Friend))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|_module.__default.Fr#canCall| |x#0@@0|) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.Fr |x#0@@0|) Tclass._module.Friend))
 :qid |LetExprdfy.283:19|
 :skolemid |2310|
 :pattern ( (_module.__default.Fr |x#0@@0|))
))))
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
 :skolemid |2615|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Friend.Agnes_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Friend $h))) ($IsAlloc intType (int_2_U (_module.Friend._h0 d@@7)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |2498|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Friend._h0 d@@7)) TInt $h))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Friend.Agatha_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Friend $h@@0))) ($IsAlloc intType (int_2_U (_module.Friend._h1 d@@8)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |2506|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Friend._h1 d@@8)) TInt $h@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Friend.Jermaine_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Friend $h@@1))) ($IsAlloc intType (int_2_U (_module.Friend._h2 d@@9)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |2514|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Friend._h2 d@@9)) TInt $h@@1))
)))
(assert (forall ((d@@10 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Friend.Jack_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Friend $h@@2))) ($IsAlloc intType (int_2_U (_module.Friend._h3 d@@10)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |2522|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Friend._h3 d@@10)) TInt $h@@2))
)))
(assert (forall ((d@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@11 Tclass._module.Friend)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Friend $h@@3))
 :qid |unknown.0:0|
 :skolemid |2525|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Friend $h@@3))
)))
(assert (= (Tag Tclass._module.Friend) Tagclass._module.Friend))
(assert (= (TagFamily Tclass._module.Friend) tytagFamily$Friend))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1721|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#23#0#0| Int) ) (! (= (|#_module.Friend.Agnes| (LitInt |a#23#0#0|)) (Lit DatatypeTypeType (|#_module.Friend.Agnes| |a#23#0#0|)))
 :qid |LetExprdfy.281:25|
 :skolemid |2499|
 :pattern ( (|#_module.Friend.Agnes| (LitInt |a#23#0#0|)))
)))
(assert (forall ((|a#28#0#0| Int) ) (! (= (|#_module.Friend.Agatha| (LitInt |a#28#0#0|)) (Lit DatatypeTypeType (|#_module.Friend.Agatha| |a#28#0#0|)))
 :qid |LetExprdfy.281:39|
 :skolemid |2507|
 :pattern ( (|#_module.Friend.Agatha| (LitInt |a#28#0#0|)))
)))
(assert (forall ((|a#33#0#0| Int) ) (! (= (|#_module.Friend.Jermaine| (LitInt |a#33#0#0|)) (Lit DatatypeTypeType (|#_module.Friend.Jermaine| |a#33#0#0|)))
 :qid |LetExprdfy.281:55|
 :skolemid |2515|
 :pattern ( (|#_module.Friend.Jermaine| (LitInt |a#33#0#0|)))
)))
(assert (forall ((|a#38#0#0| Int) ) (! (= (|#_module.Friend.Jack| (LitInt |a#38#0#0|)) (Lit DatatypeTypeType (|#_module.Friend.Jack| |a#38#0#0|)))
 :qid |LetExprdfy.281:67|
 :skolemid |2523|
 :pattern ( (|#_module.Friend.Jack| (LitInt |a#38#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1719|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|_module.__default.Fr#canCall| (LitInt |x#0@@1|)) (< 1 $FunctionContextHeight)) (= (_module.__default.Fr (LitInt |x#0@@1|)) (ite (< |x#0@@1| 10) (|#_module.Friend.Jermaine| (LitInt |x#0@@1|)) (|#_module.Friend.Agnes| (LitInt |x#0@@1|)))))
 :qid |LetExprdfy.283:19|
 :weight 3
 :skolemid |2313|
 :pattern ( (_module.__default.Fr (LitInt |x#0@@1|)))
))))
(assert (forall ((d@@12 T@U) ) (!  (=> ($Is DatatypeTypeType d@@12 Tclass._module.Friend) (or (or (or (_module.Friend.Agnes_q d@@12) (_module.Friend.Agatha_q d@@12)) (_module.Friend.Jermaine_q d@@12)) (_module.Friend.Jack_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |2527|
 :pattern ( (_module.Friend.Jack_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Friend))
 :pattern ( (_module.Friend.Jermaine_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Friend))
 :pattern ( (_module.Friend.Agatha_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Friend))
 :pattern ( (_module.Friend.Agnes_q d@@12) ($Is DatatypeTypeType d@@12 Tclass._module.Friend))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1764|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1743|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0@2| () Int)
(declare-fun |n#0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |y#Z#1_0@0| () Int)
(declare-fun |c#0@1| () Int)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |y#Z#0_0@0| () Int)
(declare-fun |c#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.Friendly)
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
 (=> (= (ControlFlow 0 0) 8) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= |c#0@2| |n#0|))))
(let ((anon3_Else_correct  (=> (and (<= 3 |n#0|) ($IsAlloc intType (int_2_U |n#0|) TInt $Heap)) (=> (and (and (|_module.__default.Fr#canCall| |n#0|) (= |let#1_0#0#0| (_module.__default.Fr |n#0|))) (and (|_module.__default.Fr#canCall| |n#0|) ($Is DatatypeTypeType |let#1_0#0#0| Tclass._module.Friend))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (_module.Friend.Agnes_q |let#1_0#0#0|)) (=> (_module.Friend.Agnes_q |let#1_0#0#0|) (=> (= (|#_module.Friend.Agnes| |y#Z#1_0@0|) |let#1_0#0#0|) (=> (and (and (|_module.__default.Fr#canCall| |n#0|) (= |c#0@1| (let ((|y#1_0| (_module.Friend._h0 (_module.__default.Fr |n#0|))))
|y#1_0|))) (and (= |c#0@2| |c#0@1|) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct))))))))
(let ((anon3_Then_correct  (=> (and (< |n#0| 3) ($IsAlloc intType (int_2_U |n#0|) TInt $Heap)) (=> (and (and (|_module.__default.Fr#canCall| |n#0|) (= |let#0_0#0#0| (_module.__default.Fr |n#0|))) (and (|_module.__default.Fr#canCall| |n#0|) ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.Friend))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (_module.Friend.Jermaine_q |let#0_0#0#0|)) (=> (_module.Friend.Jermaine_q |let#0_0#0#0|) (=> (= (|#_module.Friend.Jermaine| |y#Z#0_0@0|) |let#0_0#0#0|) (=> (and (and (|_module.__default.Fr#canCall| |n#0|) (= |c#0@0| (let ((|y#0_0| (_module.Friend._h2 (_module.__default.Fr |n#0|))))
|y#0_0|))) (and (= |c#0@2| |c#0@0|) (= (ControlFlow 0 3) 2))) GeneratedUnifiedExit_correct))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 7) 3) anon3_Then_correct) (=> (= (ControlFlow 0 7) 5) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |n#0|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
