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
(declare-fun |##_System._tuple#1G._#Make1| () T@U)
(declare-fun Tagclass._System.Tuple1G () T@U)
(declare-fun |##_System._tuple#2GO._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2GO () T@U)
(declare-fun |##_System._tuple#3OGO._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3OGO () T@U)
(declare-fun |##_System._tuple#3OOG._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3OOG () T@U)
(declare-fun |##_System._tuple#4GOGG._#Make4| () T@U)
(declare-fun Tagclass._System.Tuple4GOGG () T@U)
(declare-fun Tagclass._module.PhantomData () T@U)
(declare-fun |##_module.PhantomData.PhantomData| () T@U)
(declare-fun |tytagFamily$_tuple#1G| () T@U)
(declare-fun |tytagFamily$_tuple#2GO| () T@U)
(declare-fun |tytagFamily$_tuple#3OGO| () T@U)
(declare-fun |tytagFamily$_tuple#3OOG| () T@U)
(declare-fun |tytagFamily$_tuple#4GOGG| () T@U)
(declare-fun tytagFamily$PhantomData () T@U)
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
(declare-fun |#_System._tuple#4GOGG._#Make4| (T@U T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple4GOGG (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple4GOGG_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple4GOGG_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple4GOGG_2 (T@U) T@U)
(declare-fun Tclass._System.Tuple4GOGG_3 (T@U) T@U)
(declare-fun _System.Tuple4GOGG._0 (T@U) T@U)
(declare-fun _System.Tuple4GOGG._1 (T@U) T@U)
(declare-fun _System.Tuple4GOGG._2 (T@U) T@U)
(declare-fun _System.Tuple4GOGG._3 (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _System.Tuple4GOGG.___hMake4_q (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_System._tuple#3OGO._#Make3| (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3OGO (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3OGO_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3OGO_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3OGO_2 (T@U) T@U)
(declare-fun _System.Tuple3OGO._0 (T@U) T@U)
(declare-fun _System.Tuple3OGO._1 (T@U) T@U)
(declare-fun _System.Tuple3OGO._2 (T@U) T@U)
(declare-fun |#_System._tuple#3OOG._#Make3| (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3OOG (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3OOG_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3OOG_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3OOG_2 (T@U) T@U)
(declare-fun _System.Tuple3OOG._0 (T@U) T@U)
(declare-fun _System.Tuple3OOG._1 (T@U) T@U)
(declare-fun _System.Tuple3OOG._2 (T@U) T@U)
(declare-fun _System.Tuple2GO.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2GO (T@U T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun _System.Tuple1G.___hMake1_q (T@U) Bool)
(declare-fun Tclass._System.Tuple1G (T@U) T@U)
(declare-fun _module.PhantomData.PhantomData_q (T@U) Bool)
(declare-fun Tclass._module.PhantomData (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#_System._tuple#2GO._#Make2| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _System.Tuple3OGO.___hMake3_q (T@U) Bool)
(declare-fun _System.Tuple3OOG.___hMake3_q (T@U) Bool)
(declare-fun |#_System._tuple#1G._#Make1| (T@U) T@U)
(declare-fun |#_module.PhantomData.PhantomData| (T@U) T@U)
(declare-fun Tclass._System.Tuple2GO_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2GO_1 (T@U) T@U)
(declare-fun _System.Tuple2GO._0 (T@U) T@U)
(declare-fun _System.Tuple2GO._1 (T@U) T@U)
(declare-fun Tclass._System.Tuple1G_0 (T@U) T@U)
(declare-fun _System.Tuple1G._0 (T@U) T@U)
(declare-fun Tclass._module.PhantomData_0 (T@U) T@U)
(declare-fun _module.PhantomData.value (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TReal TagInt TagReal alloc |##_System._tuple#1G._#Make1| Tagclass._System.Tuple1G |##_System._tuple#2GO._#Make2| Tagclass._System.Tuple2GO |##_System._tuple#3OGO._#Make3| Tagclass._System.Tuple3OGO |##_System._tuple#3OOG._#Make3| Tagclass._System.Tuple3OOG |##_System._tuple#4GOGG._#Make4| Tagclass._System.Tuple4GOGG Tagclass._module.PhantomData |##_module.PhantomData.PhantomData| |tytagFamily$_tuple#1G| |tytagFamily$_tuple#2GO| |tytagFamily$_tuple#3OGO| |tytagFamily$_tuple#3OOG| |tytagFamily$_tuple#4GOGG| tytagFamily$PhantomData)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((|a#96#0#0| T@U) (|a#96#1#0| T@U) (|a#96#2#0| T@U) (|a#96#3#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#4GOGG._#Make4| |a#96#0#0| |a#96#1#0| |a#96#2#0| |a#96#3#0|)) |##_System._tuple#4GOGG._#Make4|)
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#96#0#0| |a#96#1#0| |a#96#2#0| |a#96#3#0|))
)))
(assert (forall ((|_System._tuple#4GOGG$T0| T@U) (|_System._tuple#4GOGG$T1| T@U) (|_System._tuple#4GOGG$T2| T@U) (|_System._tuple#4GOGG$T3| T@U) ) (! (= (Tclass._System.Tuple4GOGG_0 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0| |_System._tuple#4GOGG$T1| |_System._tuple#4GOGG$T2| |_System._tuple#4GOGG$T3|)) |_System._tuple#4GOGG$T0|)
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0| |_System._tuple#4GOGG$T1| |_System._tuple#4GOGG$T2| |_System._tuple#4GOGG$T3|))
)))
(assert (forall ((|_System._tuple#4GOGG$T0@@0| T@U) (|_System._tuple#4GOGG$T1@@0| T@U) (|_System._tuple#4GOGG$T2@@0| T@U) (|_System._tuple#4GOGG$T3@@0| T@U) ) (! (= (Tclass._System.Tuple4GOGG_1 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@0| |_System._tuple#4GOGG$T1@@0| |_System._tuple#4GOGG$T2@@0| |_System._tuple#4GOGG$T3@@0|)) |_System._tuple#4GOGG$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@0| |_System._tuple#4GOGG$T1@@0| |_System._tuple#4GOGG$T2@@0| |_System._tuple#4GOGG$T3@@0|))
)))
(assert (forall ((|_System._tuple#4GOGG$T0@@1| T@U) (|_System._tuple#4GOGG$T1@@1| T@U) (|_System._tuple#4GOGG$T2@@1| T@U) (|_System._tuple#4GOGG$T3@@1| T@U) ) (! (= (Tclass._System.Tuple4GOGG_2 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@1| |_System._tuple#4GOGG$T1@@1| |_System._tuple#4GOGG$T2@@1| |_System._tuple#4GOGG$T3@@1|)) |_System._tuple#4GOGG$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@1| |_System._tuple#4GOGG$T1@@1| |_System._tuple#4GOGG$T2@@1| |_System._tuple#4GOGG$T3@@1|))
)))
(assert (forall ((|_System._tuple#4GOGG$T0@@2| T@U) (|_System._tuple#4GOGG$T1@@2| T@U) (|_System._tuple#4GOGG$T2@@2| T@U) (|_System._tuple#4GOGG$T3@@2| T@U) ) (! (= (Tclass._System.Tuple4GOGG_3 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@2| |_System._tuple#4GOGG$T1@@2| |_System._tuple#4GOGG$T2@@2| |_System._tuple#4GOGG$T3@@2|)) |_System._tuple#4GOGG$T3@@2|)
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@2| |_System._tuple#4GOGG$T1@@2| |_System._tuple#4GOGG$T2@@2| |_System._tuple#4GOGG$T3@@2|))
)))
(assert (forall ((|a#100#0#0| T@U) (|a#100#1#0| T@U) (|a#100#2#0| T@U) (|a#100#3#0| T@U) ) (! (= (_System.Tuple4GOGG._0 (|#_System._tuple#4GOGG._#Make4| |a#100#0#0| |a#100#1#0| |a#100#2#0| |a#100#3#0|)) |a#100#0#0|)
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#100#0#0| |a#100#1#0| |a#100#2#0| |a#100#3#0|))
)))
(assert (forall ((|a#102#0#0| T@U) (|a#102#1#0| T@U) (|a#102#2#0| T@U) (|a#102#3#0| T@U) ) (! (= (_System.Tuple4GOGG._1 (|#_System._tuple#4GOGG._#Make4| |a#102#0#0| |a#102#1#0| |a#102#2#0| |a#102#3#0|)) |a#102#1#0|)
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#102#0#0| |a#102#1#0| |a#102#2#0| |a#102#3#0|))
)))
(assert (forall ((|a#104#0#0| T@U) (|a#104#1#0| T@U) (|a#104#2#0| T@U) (|a#104#3#0| T@U) ) (! (= (_System.Tuple4GOGG._2 (|#_System._tuple#4GOGG._#Make4| |a#104#0#0| |a#104#1#0| |a#104#2#0| |a#104#3#0|)) |a#104#2#0|)
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#104#0#0| |a#104#1#0| |a#104#2#0| |a#104#3#0|))
)))
(assert (forall ((|a#106#0#0| T@U) (|a#106#1#0| T@U) (|a#106#2#0| T@U) (|a#106#3#0| T@U) ) (! (= (_System.Tuple4GOGG._3 (|#_System._tuple#4GOGG._#Make4| |a#106#0#0| |a#106#1#0| |a#106#2#0| |a#106#3#0|)) |a#106#3#0|)
 :qid |unknown.0:0|
 :skolemid |741|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#106#0#0| |a#106#1#0| |a#106#2#0| |a#106#3#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) (|_System._tuple#4GOGG$T0@@3| T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_System.Tuple4GOGG.___hMake4_q d) (exists ((|_System._tuple#4GOGG$T1@@3| T@U) (|_System._tuple#4GOGG$T2@@3| T@U) (|_System._tuple#4GOGG$T3@@3| T@U) ) (! ($IsAlloc DatatypeTypeType d (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@3| |_System._tuple#4GOGG$T1@@3| |_System._tuple#4GOGG$T2@@3| |_System._tuple#4GOGG$T3@@3|) $h)
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( ($IsAlloc DatatypeTypeType d (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@3| |_System._tuple#4GOGG$T1@@3| |_System._tuple#4GOGG$T2@@3| |_System._tuple#4GOGG$T3@@3|) $h))
)))) ($IsAllocBox (_System.Tuple4GOGG._0 d) |_System._tuple#4GOGG$T0@@3| $h))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( ($IsAllocBox (_System.Tuple4GOGG._0 d) |_System._tuple#4GOGG$T0@@3| $h))
)))
(assert (forall ((d@@0 T@U) (|_System._tuple#4GOGG$T1@@4| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple4GOGG.___hMake4_q d@@0) (exists ((|_System._tuple#4GOGG$T0@@4| T@U) (|_System._tuple#4GOGG$T2@@4| T@U) (|_System._tuple#4GOGG$T3@@4| T@U) ) (! ($IsAlloc DatatypeTypeType d@@0 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@4| |_System._tuple#4GOGG$T1@@4| |_System._tuple#4GOGG$T2@@4| |_System._tuple#4GOGG$T3@@4|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($IsAlloc DatatypeTypeType d@@0 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@4| |_System._tuple#4GOGG$T1@@4| |_System._tuple#4GOGG$T2@@4| |_System._tuple#4GOGG$T3@@4|) $h@@0))
)))) ($IsAllocBox (_System.Tuple4GOGG._1 d@@0) |_System._tuple#4GOGG$T1@@4| $h@@0))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( ($IsAllocBox (_System.Tuple4GOGG._1 d@@0) |_System._tuple#4GOGG$T1@@4| $h@@0))
)))
(assert (forall ((d@@1 T@U) (|_System._tuple#4GOGG$T2@@5| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple4GOGG.___hMake4_q d@@1) (exists ((|_System._tuple#4GOGG$T0@@5| T@U) (|_System._tuple#4GOGG$T1@@5| T@U) (|_System._tuple#4GOGG$T3@@5| T@U) ) (! ($IsAlloc DatatypeTypeType d@@1 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@5| |_System._tuple#4GOGG$T1@@5| |_System._tuple#4GOGG$T2@@5| |_System._tuple#4GOGG$T3@@5|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($IsAlloc DatatypeTypeType d@@1 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@5| |_System._tuple#4GOGG$T1@@5| |_System._tuple#4GOGG$T2@@5| |_System._tuple#4GOGG$T3@@5|) $h@@1))
)))) ($IsAllocBox (_System.Tuple4GOGG._2 d@@1) |_System._tuple#4GOGG$T2@@5| $h@@1))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($IsAllocBox (_System.Tuple4GOGG._2 d@@1) |_System._tuple#4GOGG$T2@@5| $h@@1))
)))
(assert (forall ((d@@2 T@U) (|_System._tuple#4GOGG$T3@@6| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple4GOGG.___hMake4_q d@@2) (exists ((|_System._tuple#4GOGG$T0@@6| T@U) (|_System._tuple#4GOGG$T1@@6| T@U) (|_System._tuple#4GOGG$T2@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@6| |_System._tuple#4GOGG$T1@@6| |_System._tuple#4GOGG$T2@@6| |_System._tuple#4GOGG$T3@@6|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@6| |_System._tuple#4GOGG$T1@@6| |_System._tuple#4GOGG$T2@@6| |_System._tuple#4GOGG$T3@@6|) $h@@2))
)))) ($IsAllocBox (_System.Tuple4GOGG._3 d@@2) |_System._tuple#4GOGG$T3@@6| $h@@2))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( ($IsAllocBox (_System.Tuple4GOGG._3 d@@2) |_System._tuple#4GOGG$T3@@6| $h@@2))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3OGO._#Make3| |a#26#0#0| |a#26#1#0| |a#26#2#0|)) |##_System._tuple#3OGO._#Make3|)
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( (|#_System._tuple#3OGO._#Make3| |a#26#0#0| |a#26#1#0| |a#26#2#0|))
)))
(assert (forall ((|_System._tuple#3OGO$T0| T@U) (|_System._tuple#3OGO$T1| T@U) (|_System._tuple#3OGO$T2| T@U) ) (! (= (Tclass._System.Tuple3OGO_0 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0| |_System._tuple#3OGO$T1| |_System._tuple#3OGO$T2|)) |_System._tuple#3OGO$T0|)
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0| |_System._tuple#3OGO$T1| |_System._tuple#3OGO$T2|))
)))
(assert (forall ((|_System._tuple#3OGO$T0@@0| T@U) (|_System._tuple#3OGO$T1@@0| T@U) (|_System._tuple#3OGO$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3OGO_1 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@0| |_System._tuple#3OGO$T1@@0| |_System._tuple#3OGO$T2@@0|)) |_System._tuple#3OGO$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@0| |_System._tuple#3OGO$T1@@0| |_System._tuple#3OGO$T2@@0|))
)))
(assert (forall ((|_System._tuple#3OGO$T0@@1| T@U) (|_System._tuple#3OGO$T1@@1| T@U) (|_System._tuple#3OGO$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3OGO_2 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@1| |_System._tuple#3OGO$T1@@1| |_System._tuple#3OGO$T2@@1|)) |_System._tuple#3OGO$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@1| |_System._tuple#3OGO$T1@@1| |_System._tuple#3OGO$T2@@1|))
)))
(assert (forall ((|a#30#0#0| T@U) (|a#30#1#0| T@U) (|a#30#2#0| T@U) ) (! (= (_System.Tuple3OGO._0 (|#_System._tuple#3OGO._#Make3| |a#30#0#0| |a#30#1#0| |a#30#2#0|)) |a#30#0#0|)
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (|#_System._tuple#3OGO._#Make3| |a#30#0#0| |a#30#1#0| |a#30#2#0|))
)))
(assert (forall ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= (_System.Tuple3OGO._1 (|#_System._tuple#3OGO._#Make3| |a#32#0#0| |a#32#1#0| |a#32#2#0|)) |a#32#1#0|)
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (|#_System._tuple#3OGO._#Make3| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (_System.Tuple3OGO._2 (|#_System._tuple#3OGO._#Make3| |a#34#0#0| |a#34#1#0| |a#34#2#0|)) |a#34#2#0|)
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( (|#_System._tuple#3OGO._#Make3| |a#34#0#0| |a#34#1#0| |a#34#2#0|))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3OOG._#Make3| |a#36#0#0| |a#36#1#0| |a#36#2#0|)) |##_System._tuple#3OOG._#Make3|)
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (|#_System._tuple#3OOG._#Make3| |a#36#0#0| |a#36#1#0| |a#36#2#0|))
)))
(assert (forall ((|_System._tuple#3OOG$T0| T@U) (|_System._tuple#3OOG$T1| T@U) (|_System._tuple#3OOG$T2| T@U) ) (! (= (Tclass._System.Tuple3OOG_0 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0| |_System._tuple#3OOG$T1| |_System._tuple#3OOG$T2|)) |_System._tuple#3OOG$T0|)
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0| |_System._tuple#3OOG$T1| |_System._tuple#3OOG$T2|))
)))
(assert (forall ((|_System._tuple#3OOG$T0@@0| T@U) (|_System._tuple#3OOG$T1@@0| T@U) (|_System._tuple#3OOG$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3OOG_1 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@0| |_System._tuple#3OOG$T1@@0| |_System._tuple#3OOG$T2@@0|)) |_System._tuple#3OOG$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@0| |_System._tuple#3OOG$T1@@0| |_System._tuple#3OOG$T2@@0|))
)))
(assert (forall ((|_System._tuple#3OOG$T0@@1| T@U) (|_System._tuple#3OOG$T1@@1| T@U) (|_System._tuple#3OOG$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3OOG_2 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@1| |_System._tuple#3OOG$T1@@1| |_System._tuple#3OOG$T2@@1|)) |_System._tuple#3OOG$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@1| |_System._tuple#3OOG$T1@@1| |_System._tuple#3OOG$T2@@1|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (= (_System.Tuple3OOG._0 (|#_System._tuple#3OOG._#Make3| |a#40#0#0| |a#40#1#0| |a#40#2#0|)) |a#40#0#0|)
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (|#_System._tuple#3OOG._#Make3| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) ) (! (= (_System.Tuple3OOG._1 (|#_System._tuple#3OOG._#Make3| |a#42#0#0| |a#42#1#0| |a#42#2#0|)) |a#42#1#0|)
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (|#_System._tuple#3OOG._#Make3| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) ) (! (= (_System.Tuple3OOG._2 (|#_System._tuple#3OOG._#Make3| |a#44#0#0| |a#44#1#0| |a#44#2#0|)) |a#44#2#0|)
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (|#_System._tuple#3OOG._#Make3| |a#44#0#0| |a#44#1#0| |a#44#2#0|))
)))
(assert (forall ((|_System._tuple#2GO$T0| T@U) (|_System._tuple#2GO$T1| T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0| |_System._tuple#2GO$T1|)) (_System.Tuple2GO.___hMake2_q d@@3))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (_System.Tuple2GO.___hMake2_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0| |_System._tuple#2GO$T1|)))
)))
(assert (forall ((|a#101#0#0| T@U) (|a#101#1#0| T@U) (|a#101#2#0| T@U) (|a#101#3#0| T@U) ) (! (< (BoxRank |a#101#0#0|) (DtRank (|#_System._tuple#4GOGG._#Make4| |a#101#0#0| |a#101#1#0| |a#101#2#0| |a#101#3#0|)))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#101#0#0| |a#101#1#0| |a#101#2#0| |a#101#3#0|))
)))
(assert (forall ((|a#103#0#0| T@U) (|a#103#1#0| T@U) (|a#103#2#0| T@U) (|a#103#3#0| T@U) ) (! (< (BoxRank |a#103#1#0|) (DtRank (|#_System._tuple#4GOGG._#Make4| |a#103#0#0| |a#103#1#0| |a#103#2#0| |a#103#3#0|)))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#103#0#0| |a#103#1#0| |a#103#2#0| |a#103#3#0|))
)))
(assert (forall ((|a#105#0#0| T@U) (|a#105#1#0| T@U) (|a#105#2#0| T@U) (|a#105#3#0| T@U) ) (! (< (BoxRank |a#105#2#0|) (DtRank (|#_System._tuple#4GOGG._#Make4| |a#105#0#0| |a#105#1#0| |a#105#2#0| |a#105#3#0|)))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#105#0#0| |a#105#1#0| |a#105#2#0| |a#105#3#0|))
)))
(assert (forall ((|a#107#0#0| T@U) (|a#107#1#0| T@U) (|a#107#2#0| T@U) (|a#107#3#0| T@U) ) (! (< (BoxRank |a#107#3#0|) (DtRank (|#_System._tuple#4GOGG._#Make4| |a#107#0#0| |a#107#1#0| |a#107#2#0| |a#107#3#0|)))
 :qid |unknown.0:0|
 :skolemid |742|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| |a#107#0#0| |a#107#1#0| |a#107#2#0| |a#107#3#0|))
)))
(assert (forall ((|_System._tuple#1G$T0| T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._System.Tuple1G |_System._tuple#1G$T0|)) (_System.Tuple1G.___hMake1_q d@@4))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (_System.Tuple1G.___hMake1_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._System.Tuple1G |_System._tuple#1G$T0|)))
)))
(assert (forall ((_module.PhantomData$T T@U) (d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 (Tclass._module.PhantomData _module.PhantomData$T)) (_module.PhantomData.PhantomData_q d@@5))
 :qid |unknown.0:0|
 :skolemid |900|
 :pattern ( (_module.PhantomData.PhantomData_q d@@5) ($Is DatatypeTypeType d@@5 (Tclass._module.PhantomData _module.PhantomData$T)))
)))
(assert (forall ((|_System._tuple#3OGO$T0@@2| T@U) (|_System._tuple#3OGO$T1@@2| T@U) (|_System._tuple#3OGO$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@2| |_System._tuple#3OGO$T1@@2| |_System._tuple#3OGO$T2@@2|)) Tagclass._System.Tuple3OGO) (= (TagFamily (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@2| |_System._tuple#3OGO$T1@@2| |_System._tuple#3OGO$T2@@2|)) |tytagFamily$_tuple#3OGO|))
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@2| |_System._tuple#3OGO$T1@@2| |_System._tuple#3OGO$T2@@2|))
)))
(assert (forall ((|_System._tuple#3OOG$T0@@2| T@U) (|_System._tuple#3OOG$T1@@2| T@U) (|_System._tuple#3OOG$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@2| |_System._tuple#3OOG$T1@@2| |_System._tuple#3OOG$T2@@2|)) Tagclass._System.Tuple3OOG) (= (TagFamily (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@2| |_System._tuple#3OOG$T1@@2| |_System._tuple#3OOG$T2@@2|)) |tytagFamily$_tuple#3OOG|))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@2| |_System._tuple#3OOG$T1@@2| |_System._tuple#3OOG$T2@@2|))
)))
(assert (forall ((|_System._tuple#3OGO$T0@@3| T@U) (|_System._tuple#3OGO$T1@@3| T@U) (|_System._tuple#3OGO$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@3| |_System._tuple#3OGO$T1@@3| |_System._tuple#3OGO$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@3| |_System._tuple#3OGO$T1@@3| |_System._tuple#3OGO$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@3| |_System._tuple#3OGO$T1@@3| |_System._tuple#3OGO$T2@@3|)))
)))
(assert (forall ((|_System._tuple#3OOG$T0@@3| T@U) (|_System._tuple#3OOG$T1@@3| T@U) (|_System._tuple#3OOG$T2@@3| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@3| |_System._tuple#3OOG$T1@@3| |_System._tuple#3OOG$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@3| |_System._tuple#3OOG$T1@@3| |_System._tuple#3OOG$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsBox bx@@0 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@3| |_System._tuple#3OOG$T1@@3| |_System._tuple#3OOG$T2@@3|)))
)))
(assert (forall ((|_System._tuple#2GO$T0@@0| T@U) (|_System._tuple#2GO$T1@@0| T@U) (|a#20#0#0| T@U) (|a#20#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#20#0#0| |a#20#1#0|) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@0| |_System._tuple#2GO$T1@@0|))  (and ($IsBox |a#20#0#0| |_System._tuple#2GO$T0@@0|) ($IsBox |a#20#1#0| |_System._tuple#2GO$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#20#0#0| |a#20#1#0|) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@0| |_System._tuple#2GO$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((|_System._tuple#4GOGG$T0@@7| T@U) (|_System._tuple#4GOGG$T1@@7| T@U) (|_System._tuple#4GOGG$T2@@7| T@U) (|_System._tuple#4GOGG$T3@@7| T@U) (|a#98#0#0| T@U) (|a#98#1#0| T@U) (|a#98#2#0| T@U) (|a#98#3#0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#4GOGG._#Make4| |a#98#0#0| |a#98#1#0| |a#98#2#0| |a#98#3#0|) (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@7| |_System._tuple#4GOGG$T1@@7| |_System._tuple#4GOGG$T2@@7| |_System._tuple#4GOGG$T3@@7|) $h@@3)  (and (and (and ($IsAllocBox |a#98#0#0| |_System._tuple#4GOGG$T0@@7| $h@@3) ($IsAllocBox |a#98#1#0| |_System._tuple#4GOGG$T1@@7| $h@@3)) ($IsAllocBox |a#98#2#0| |_System._tuple#4GOGG$T2@@7| $h@@3)) ($IsAllocBox |a#98#3#0| |_System._tuple#4GOGG$T3@@7| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#4GOGG._#Make4| |a#98#0#0| |a#98#1#0| |a#98#2#0| |a#98#3#0|) (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@7| |_System._tuple#4GOGG$T1@@7| |_System._tuple#4GOGG$T2@@7| |_System._tuple#4GOGG$T3@@7|) $h@@3))
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
(assert (forall ((|_System._tuple#4GOGG$T0@@8| T@U) (|_System._tuple#4GOGG$T1@@8| T@U) (|_System._tuple#4GOGG$T2@@8| T@U) (|_System._tuple#4GOGG$T3@@8| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@8| |_System._tuple#4GOGG$T1@@8| |_System._tuple#4GOGG$T2@@8| |_System._tuple#4GOGG$T3@@8|)) Tagclass._System.Tuple4GOGG) (= (TagFamily (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@8| |_System._tuple#4GOGG$T1@@8| |_System._tuple#4GOGG$T2@@8| |_System._tuple#4GOGG$T3@@8|)) |tytagFamily$_tuple#4GOGG|))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@8| |_System._tuple#4GOGG$T1@@8| |_System._tuple#4GOGG$T2@@8| |_System._tuple#4GOGG$T3@@8|))
)))
(assert (forall ((|_System._tuple#2GO$T0@@1| T@U) (|_System._tuple#2GO$T1@@1| T@U) (|a#20#0#0@@0| T@U) (|a#20#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#20#0#0@@0| |a#20#1#0@@0|) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@1| |_System._tuple#2GO$T1@@1|) $h@@4)  (and ($IsAllocBox |a#20#0#0@@0| |_System._tuple#2GO$T0@@1| $h@@4) ($IsAllocBox |a#20#1#0@@0| |_System._tuple#2GO$T1@@1| $h@@4))))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#20#0#0@@0| |a#20#1#0@@0|) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@1| |_System._tuple#2GO$T1@@1|) $h@@4))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_System.Tuple1G.___hMake1_q d@@6) (= (DatatypeCtorId d@@6) |##_System._tuple#1G._#Make1|))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (_System.Tuple1G.___hMake1_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_System.Tuple2GO.___hMake2_q d@@7) (= (DatatypeCtorId d@@7) |##_System._tuple#2GO._#Make2|))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (_System.Tuple2GO.___hMake2_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (_System.Tuple3OGO.___hMake3_q d@@8) (= (DatatypeCtorId d@@8) |##_System._tuple#3OGO._#Make3|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (_System.Tuple3OGO.___hMake3_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_System.Tuple3OOG.___hMake3_q d@@9) (= (DatatypeCtorId d@@9) |##_System._tuple#3OOG._#Make3|))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_System.Tuple3OOG.___hMake3_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (_System.Tuple4GOGG.___hMake4_q d@@10) (= (DatatypeCtorId d@@10) |##_System._tuple#4GOGG._#Make4|))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( (_System.Tuple4GOGG.___hMake4_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (_module.PhantomData.PhantomData_q d@@11) (= (DatatypeCtorId d@@11) |##_module.PhantomData.PhantomData|))
 :qid |unknown.0:0|
 :skolemid |890|
 :pattern ( (_module.PhantomData.PhantomData_q d@@11))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_System.Tuple3OGO.___hMake3_q d@@12) (exists ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) ) (! (= d@@12 (|#_System._tuple#3OGO._#Make3| |a#27#0#0| |a#27#1#0| |a#27#2#0|))
 :qid |unknown.0:0|
 :skolemid |521|
)))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (_System.Tuple3OGO.___hMake3_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_System.Tuple3OOG.___hMake3_q d@@13) (exists ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= d@@13 (|#_System._tuple#3OOG._#Make3| |a#37#0#0| |a#37#1#0| |a#37#2#0|))
 :qid |unknown.0:0|
 :skolemid |549|
)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (_System.Tuple3OOG.___hMake3_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (_System.Tuple2GO.___hMake2_q d@@14) (exists ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (= d@@14 (|#_System._tuple#2GO._#Make2| |a#19#0#0| |a#19#1#0|))
 :qid |unknown.0:0|
 :skolemid |498|
)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (_System.Tuple2GO.___hMake2_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (_System.Tuple1G.___hMake1_q d@@15) (exists ((|a#13#0#0| T@U) ) (! (= d@@15 (|#_System._tuple#1G._#Make1| |a#13#0#0|))
 :qid |unknown.0:0|
 :skolemid |481|
)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_System.Tuple1G.___hMake1_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (_module.PhantomData.PhantomData_q d@@16) (exists ((|a#1#0#0| T@U) ) (! (= d@@16 (|#_module.PhantomData.PhantomData| |a#1#0#0|))
 :qid |Compdfy.3:45|
 :skolemid |891|
)))
 :qid |unknown.0:0|
 :skolemid |892|
 :pattern ( (_module.PhantomData.PhantomData_q d@@16))
)))
(assert (forall ((|a#99#0#0| T@U) (|a#99#1#0| T@U) (|a#99#2#0| T@U) (|a#99#3#0| T@U) ) (! (= (|#_System._tuple#4GOGG._#Make4| (Lit BoxType |a#99#0#0|) (Lit BoxType |a#99#1#0|) (Lit BoxType |a#99#2#0|) (Lit BoxType |a#99#3#0|)) (Lit DatatypeTypeType (|#_System._tuple#4GOGG._#Make4| |a#99#0#0| |a#99#1#0| |a#99#2#0| |a#99#3#0|)))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( (|#_System._tuple#4GOGG._#Make4| (Lit BoxType |a#99#0#0|) (Lit BoxType |a#99#1#0|) (Lit BoxType |a#99#2#0|) (Lit BoxType |a#99#3#0|)))
)))
(assert (forall ((|_System._tuple#3OGO$T0@@4| T@U) (|_System._tuple#3OGO$T1@@4| T@U) (|_System._tuple#3OGO$T2@@4| T@U) (|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3OGO._#Make3| |a#28#0#0| |a#28#1#0| |a#28#2#0|) (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@4| |_System._tuple#3OGO$T1@@4| |_System._tuple#3OGO$T2@@4|) $h@@5)  (and (and ($IsAllocBox |a#28#0#0| |_System._tuple#3OGO$T0@@4| $h@@5) ($IsAllocBox |a#28#1#0| |_System._tuple#3OGO$T1@@4| $h@@5)) ($IsAllocBox |a#28#2#0| |_System._tuple#3OGO$T2@@4| $h@@5))))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3OGO._#Make3| |a#28#0#0| |a#28#1#0| |a#28#2#0|) (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@4| |_System._tuple#3OGO$T1@@4| |_System._tuple#3OGO$T2@@4|) $h@@5))
)))
(assert (forall ((|_System._tuple#3OOG$T0@@4| T@U) (|_System._tuple#3OOG$T1@@4| T@U) (|_System._tuple#3OOG$T2@@4| T@U) (|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3OOG._#Make3| |a#38#0#0| |a#38#1#0| |a#38#2#0|) (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@4| |_System._tuple#3OOG$T1@@4| |_System._tuple#3OOG$T2@@4|) $h@@6)  (and (and ($IsAllocBox |a#38#0#0| |_System._tuple#3OOG$T0@@4| $h@@6) ($IsAllocBox |a#38#1#0| |_System._tuple#3OOG$T1@@4| $h@@6)) ($IsAllocBox |a#38#2#0| |_System._tuple#3OOG$T2@@4| $h@@6))))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3OOG._#Make3| |a#38#0#0| |a#38#1#0| |a#38#2#0|) (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@4| |_System._tuple#3OOG$T1@@4| |_System._tuple#3OOG$T2@@4|) $h@@6))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((|_System._tuple#4GOGG$T0@@9| T@U) (|_System._tuple#4GOGG$T1@@9| T@U) (|_System._tuple#4GOGG$T2@@9| T@U) (|_System._tuple#4GOGG$T3@@9| T@U) (d@@17 T@U) ) (!  (=> ($Is DatatypeTypeType d@@17 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@9| |_System._tuple#4GOGG$T1@@9| |_System._tuple#4GOGG$T2@@9| |_System._tuple#4GOGG$T3@@9|)) (_System.Tuple4GOGG.___hMake4_q d@@17))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (_System.Tuple4GOGG.___hMake4_q d@@17) ($Is DatatypeTypeType d@@17 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@9| |_System._tuple#4GOGG$T1@@9| |_System._tuple#4GOGG$T2@@9| |_System._tuple#4GOGG$T3@@9|)))
)))
(assert (forall ((|_System._tuple#1G$T0@@0| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple1G |_System._tuple#1G$T0@@0|)) Tagclass._System.Tuple1G) (= (TagFamily (Tclass._System.Tuple1G |_System._tuple#1G$T0@@0|)) |tytagFamily$_tuple#1G|))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._System.Tuple1G |_System._tuple#1G$T0@@0|))
)))
(assert (forall ((_module.PhantomData$T@@0 T@U) ) (!  (and (= (Tag (Tclass._module.PhantomData _module.PhantomData$T@@0)) Tagclass._module.PhantomData) (= (TagFamily (Tclass._module.PhantomData _module.PhantomData$T@@0)) tytagFamily$PhantomData))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( (Tclass._module.PhantomData _module.PhantomData$T@@0))
)))
(assert (forall ((|_System._tuple#4GOGG$T0@@10| T@U) (|_System._tuple#4GOGG$T1@@10| T@U) (|_System._tuple#4GOGG$T2@@10| T@U) (|_System._tuple#4GOGG$T3@@10| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@10| |_System._tuple#4GOGG$T1@@10| |_System._tuple#4GOGG$T2@@10| |_System._tuple#4GOGG$T3@@10|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@10| |_System._tuple#4GOGG$T1@@10| |_System._tuple#4GOGG$T2@@10| |_System._tuple#4GOGG$T3@@10|))))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($IsBox bx@@2 (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@10| |_System._tuple#4GOGG$T1@@10| |_System._tuple#4GOGG$T2@@10| |_System._tuple#4GOGG$T3@@10|)))
)))
(assert (forall ((|_System._tuple#3OGO$T0@@5| T@U) (|_System._tuple#3OGO$T1@@5| T@U) (|_System._tuple#3OGO$T2@@5| T@U) (d@@18 T@U) ) (!  (=> ($Is DatatypeTypeType d@@18 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@5| |_System._tuple#3OGO$T1@@5| |_System._tuple#3OGO$T2@@5|)) (_System.Tuple3OGO.___hMake3_q d@@18))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (_System.Tuple3OGO.___hMake3_q d@@18) ($Is DatatypeTypeType d@@18 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@5| |_System._tuple#3OGO$T1@@5| |_System._tuple#3OGO$T2@@5|)))
)))
(assert (forall ((|_System._tuple#3OOG$T0@@5| T@U) (|_System._tuple#3OOG$T1@@5| T@U) (|_System._tuple#3OOG$T2@@5| T@U) (d@@19 T@U) ) (!  (=> ($Is DatatypeTypeType d@@19 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@5| |_System._tuple#3OOG$T1@@5| |_System._tuple#3OOG$T2@@5|)) (_System.Tuple3OOG.___hMake3_q d@@19))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (_System.Tuple3OOG.___hMake3_q d@@19) ($Is DatatypeTypeType d@@19 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@5| |_System._tuple#3OOG$T1@@5| |_System._tuple#3OOG$T2@@5|)))
)))
(assert (forall ((|_System._tuple#1G$T0@@1| T@U) (|a#14#0#0| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#1G._#Make1| |a#14#0#0|) (Tclass._System.Tuple1G |_System._tuple#1G$T0@@1|) $h@@7) ($IsAllocBox |a#14#0#0| |_System._tuple#1G$T0@@1| $h@@7)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#1G._#Make1| |a#14#0#0|) (Tclass._System.Tuple1G |_System._tuple#1G$T0@@1|) $h@@7))
)))
(assert (forall ((_module.PhantomData$T@@1 T@U) (|a#2#0#0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.PhantomData.PhantomData| |a#2#0#0|) (Tclass._module.PhantomData _module.PhantomData$T@@1) $h@@8) ($IsAllocBox |a#2#0#0| _module.PhantomData$T@@1 $h@@8)))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.PhantomData.PhantomData| |a#2#0#0|) (Tclass._module.PhantomData _module.PhantomData$T@@1) $h@@8))
)))
(assert (forall ((|_System._tuple#3OGO$T0@@6| T@U) (|_System._tuple#3OGO$T1@@6| T@U) (|_System._tuple#3OGO$T2@@6| T@U) (|a#28#0#0@@0| T@U) (|a#28#1#0@@0| T@U) (|a#28#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3OGO._#Make3| |a#28#0#0@@0| |a#28#1#0@@0| |a#28#2#0@@0|) (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@6| |_System._tuple#3OGO$T1@@6| |_System._tuple#3OGO$T2@@6|))  (and (and ($IsBox |a#28#0#0@@0| |_System._tuple#3OGO$T0@@6|) ($IsBox |a#28#1#0@@0| |_System._tuple#3OGO$T1@@6|)) ($IsBox |a#28#2#0@@0| |_System._tuple#3OGO$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3OGO._#Make3| |a#28#0#0@@0| |a#28#1#0@@0| |a#28#2#0@@0|) (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@6| |_System._tuple#3OGO$T1@@6| |_System._tuple#3OGO$T2@@6|)))
)))
(assert (forall ((|_System._tuple#3OOG$T0@@6| T@U) (|_System._tuple#3OOG$T1@@6| T@U) (|_System._tuple#3OOG$T2@@6| T@U) (|a#38#0#0@@0| T@U) (|a#38#1#0@@0| T@U) (|a#38#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3OOG._#Make3| |a#38#0#0@@0| |a#38#1#0@@0| |a#38#2#0@@0|) (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@6| |_System._tuple#3OOG$T1@@6| |_System._tuple#3OOG$T2@@6|))  (and (and ($IsBox |a#38#0#0@@0| |_System._tuple#3OOG$T0@@6|) ($IsBox |a#38#1#0@@0| |_System._tuple#3OOG$T1@@6|)) ($IsBox |a#38#2#0@@0| |_System._tuple#3OOG$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3OOG._#Make3| |a#38#0#0@@0| |a#38#1#0@@0| |a#38#2#0@@0|) (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@6| |_System._tuple#3OOG$T1@@6| |_System._tuple#3OOG$T2@@6|)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TReal) (and (= ($Box realType ($Unbox realType bx@@4)) bx@@4) ($Is realType ($Unbox realType bx@@4) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@4 TReal))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2GO._#Make2| |a#18#0#0| |a#18#1#0|)) |##_System._tuple#2GO._#Make2|)
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#18#0#0| |a#18#1#0|))
)))
(assert (forall ((|_System._tuple#2GO$T0@@2| T@U) (|_System._tuple#2GO$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2GO_0 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@2| |_System._tuple#2GO$T1@@2|)) |_System._tuple#2GO$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@2| |_System._tuple#2GO$T1@@2|))
)))
(assert (forall ((|_System._tuple#2GO$T0@@3| T@U) (|_System._tuple#2GO$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2GO_1 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@3| |_System._tuple#2GO$T1@@3|)) |_System._tuple#2GO$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@3| |_System._tuple#2GO$T1@@3|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) ) (! (= (_System.Tuple2GO._0 (|#_System._tuple#2GO._#Make2| |a#22#0#0| |a#22#1#0|)) |a#22#0#0|)
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= (_System.Tuple2GO._1 (|#_System._tuple#2GO._#Make2| |a#24#0#0| |a#24#1#0|)) |a#24#1#0|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#24#0#0| |a#24#1#0|))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (_System.Tuple4GOGG.___hMake4_q d@@20) (exists ((|a#97#0#0| T@U) (|a#97#1#0| T@U) (|a#97#2#0| T@U) (|a#97#3#0| T@U) ) (! (= d@@20 (|#_System._tuple#4GOGG._#Make4| |a#97#0#0| |a#97#1#0| |a#97#2#0| |a#97#3#0|))
 :qid |unknown.0:0|
 :skolemid |716|
)))
 :qid |unknown.0:0|
 :skolemid |717|
 :pattern ( (_System.Tuple4GOGG.___hMake4_q d@@20))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) ) (! (= (|#_System._tuple#3OGO._#Make3| (Lit BoxType |a#29#0#0|) (Lit BoxType |a#29#1#0|) (Lit BoxType |a#29#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3OGO._#Make3| |a#29#0#0| |a#29#1#0| |a#29#2#0|)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (|#_System._tuple#3OGO._#Make3| (Lit BoxType |a#29#0#0|) (Lit BoxType |a#29#1#0|) (Lit BoxType |a#29#2#0|)))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) ) (! (= (|#_System._tuple#3OOG._#Make3| (Lit BoxType |a#39#0#0|) (Lit BoxType |a#39#1#0|) (Lit BoxType |a#39#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3OOG._#Make3| |a#39#0#0| |a#39#1#0| |a#39#2#0|)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (|#_System._tuple#3OOG._#Make3| (Lit BoxType |a#39#0#0|) (Lit BoxType |a#39#1#0|) (Lit BoxType |a#39#2#0|)))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#1G._#Make1| |a#12#0#0|)) |##_System._tuple#1G._#Make1|)
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (|#_System._tuple#1G._#Make1| |a#12#0#0|))
)))
(assert (forall ((|_System._tuple#1G$T0@@2| T@U) ) (! (= (Tclass._System.Tuple1G_0 (Tclass._System.Tuple1G |_System._tuple#1G$T0@@2|)) |_System._tuple#1G$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._System.Tuple1G |_System._tuple#1G$T0@@2|))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (_System.Tuple1G._0 (|#_System._tuple#1G._#Make1| |a#16#0#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (|#_System._tuple#1G._#Make1| |a#16#0#0|))
)))
(assert (forall ((_module.PhantomData$T@@2 T@U) ) (! (= (Tclass._module.PhantomData_0 (Tclass._module.PhantomData _module.PhantomData$T@@2)) _module.PhantomData$T@@2)
 :qid |unknown.0:0|
 :skolemid |847|
 :pattern ( (Tclass._module.PhantomData _module.PhantomData$T@@2))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.PhantomData.PhantomData| |a#0#0#0|)) |##_module.PhantomData.PhantomData|)
 :qid |Compdfy.3:45|
 :skolemid |889|
 :pattern ( (|#_module.PhantomData.PhantomData| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.PhantomData.value (|#_module.PhantomData.PhantomData| |a#4#0#0|)) |a#4#0#0|)
 :qid |Compdfy.3:45|
 :skolemid |897|
 :pattern ( (|#_module.PhantomData.PhantomData| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) (|a#31#2#0| T@U) ) (! (< (BoxRank |a#31#0#0|) (DtRank (|#_System._tuple#3OGO._#Make3| |a#31#0#0| |a#31#1#0| |a#31#2#0|)))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (|#_System._tuple#3OGO._#Make3| |a#31#0#0| |a#31#1#0| |a#31#2#0|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) ) (! (< (BoxRank |a#33#1#0|) (DtRank (|#_System._tuple#3OGO._#Make3| |a#33#0#0| |a#33#1#0| |a#33#2#0|)))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (|#_System._tuple#3OGO._#Make3| |a#33#0#0| |a#33#1#0| |a#33#2#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (< (BoxRank |a#35#2#0|) (DtRank (|#_System._tuple#3OGO._#Make3| |a#35#0#0| |a#35#1#0| |a#35#2#0|)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (|#_System._tuple#3OGO._#Make3| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) ) (! (< (BoxRank |a#41#0#0|) (DtRank (|#_System._tuple#3OOG._#Make3| |a#41#0#0| |a#41#1#0| |a#41#2#0|)))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (|#_System._tuple#3OOG._#Make3| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) ) (! (< (BoxRank |a#43#1#0|) (DtRank (|#_System._tuple#3OOG._#Make3| |a#43#0#0| |a#43#1#0| |a#43#2#0|)))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (|#_System._tuple#3OOG._#Make3| |a#43#0#0| |a#43#1#0| |a#43#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (< (BoxRank |a#45#2#0|) (DtRank (|#_System._tuple#3OOG._#Make3| |a#45#0#0| |a#45#1#0| |a#45#2#0|)))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (|#_System._tuple#3OOG._#Make3| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|_System._tuple#1G$T0@@3| T@U) (|a#14#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#1G._#Make1| |a#14#0#0@@0|) (Tclass._System.Tuple1G |_System._tuple#1G$T0@@3|)) ($IsBox |a#14#0#0@@0| |_System._tuple#1G$T0@@3|))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#1G._#Make1| |a#14#0#0@@0|) (Tclass._System.Tuple1G |_System._tuple#1G$T0@@3|)))
)))
(assert (forall ((_module.PhantomData$T@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.PhantomData.PhantomData| |a#2#0#0@@0|) (Tclass._module.PhantomData _module.PhantomData$T@@3)) ($IsBox |a#2#0#0@@0| _module.PhantomData$T@@3))
 :qid |unknown.0:0|
 :skolemid |893|
 :pattern ( ($Is DatatypeTypeType (|#_module.PhantomData.PhantomData| |a#2#0#0@@0|) (Tclass._module.PhantomData _module.PhantomData$T@@3)))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (< (BoxRank |a#23#0#0|) (DtRank (|#_System._tuple#2GO._#Make2| |a#23#0#0| |a#23#1#0|)))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#23#0#0| |a#23#1#0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (< (BoxRank |a#25#1#0|) (DtRank (|#_System._tuple#2GO._#Make2| |a#25#0#0| |a#25#1#0|)))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (|#_System._tuple#2GO._#Make2| |a#25#0#0| |a#25#1#0|))
)))
(assert (forall ((|_System._tuple#2GO$T0@@4| T@U) (|_System._tuple#2GO$T1@@4| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@4| |_System._tuple#2GO$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@4| |_System._tuple#2GO$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@5 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@4| |_System._tuple#2GO$T1@@4|)))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#1G._#Make1| |a#17#0#0|)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (|#_System._tuple#1G._#Make1| |a#17#0#0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.PhantomData.PhantomData| |a#5#0#0|)))
 :qid |Compdfy.3:45|
 :skolemid |898|
 :pattern ( (|#_module.PhantomData.PhantomData| |a#5#0#0|))
)))
(assert (forall ((d@@21 T@U) (|_System._tuple#1G$T0@@4| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple1G.___hMake1_q d@@21) ($IsAlloc DatatypeTypeType d@@21 (Tclass._System.Tuple1G |_System._tuple#1G$T0@@4|) $h@@9))) ($IsAllocBox (_System.Tuple1G._0 d@@21) |_System._tuple#1G$T0@@4| $h@@9))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsAllocBox (_System.Tuple1G._0 d@@21) |_System._tuple#1G$T0@@4| $h@@9))
)))
(assert (forall ((d@@22 T@U) (_module.PhantomData$T@@4 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.PhantomData.PhantomData_q d@@22) ($IsAlloc DatatypeTypeType d@@22 (Tclass._module.PhantomData _module.PhantomData$T@@4) $h@@10))) ($IsAllocBox (_module.PhantomData.value d@@22) _module.PhantomData$T@@4 $h@@10))
 :qid |unknown.0:0|
 :skolemid |895|
 :pattern ( ($IsAllocBox (_module.PhantomData.value d@@22) _module.PhantomData$T@@4 $h@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |919|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#4GOGG$T0@@11| T@U) (|_System._tuple#4GOGG$T1@@11| T@U) (|_System._tuple#4GOGG$T2@@11| T@U) (|_System._tuple#4GOGG$T3@@11| T@U) (|a#98#0#0@@0| T@U) (|a#98#1#0@@0| T@U) (|a#98#2#0@@0| T@U) (|a#98#3#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#4GOGG._#Make4| |a#98#0#0@@0| |a#98#1#0@@0| |a#98#2#0@@0| |a#98#3#0@@0|) (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@11| |_System._tuple#4GOGG$T1@@11| |_System._tuple#4GOGG$T2@@11| |_System._tuple#4GOGG$T3@@11|))  (and (and (and ($IsBox |a#98#0#0@@0| |_System._tuple#4GOGG$T0@@11|) ($IsBox |a#98#1#0@@0| |_System._tuple#4GOGG$T1@@11|)) ($IsBox |a#98#2#0@@0| |_System._tuple#4GOGG$T2@@11|)) ($IsBox |a#98#3#0@@0| |_System._tuple#4GOGG$T3@@11|)))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#4GOGG._#Make4| |a#98#0#0@@0| |a#98#1#0@@0| |a#98#2#0@@0| |a#98#3#0@@0|) (Tclass._System.Tuple4GOGG |_System._tuple#4GOGG$T0@@11| |_System._tuple#4GOGG$T1@@11| |_System._tuple#4GOGG$T2@@11| |_System._tuple#4GOGG$T3@@11|)))
)))
(assert (forall ((|_System._tuple#2GO$T0@@5| T@U) (|_System._tuple#2GO$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@5| |_System._tuple#2GO$T1@@5|)) Tagclass._System.Tuple2GO) (= (TagFamily (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@5| |_System._tuple#2GO$T1@@5|)) |tytagFamily$_tuple#2GO|))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@5| |_System._tuple#2GO$T1@@5|))
)))
(assert (forall ((d@@23 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@23)) (DtRank d@@23))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@23)))
)))
(assert (forall ((|_System._tuple#1G$T0@@5| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple1G |_System._tuple#1G$T0@@5|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple1G |_System._tuple#1G$T0@@5|))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple1G |_System._tuple#1G$T0@@5|)))
)))
(assert (forall ((_module.PhantomData$T@@5 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.PhantomData _module.PhantomData$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._module.PhantomData _module.PhantomData$T@@5))))
 :qid |unknown.0:0|
 :skolemid |848|
 :pattern ( ($IsBox bx@@7 (Tclass._module.PhantomData _module.PhantomData$T@@5)))
)))
(assert (forall ((d@@24 T@U) (|_System._tuple#3OGO$T0@@7| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple3OGO.___hMake3_q d@@24) (exists ((|_System._tuple#3OGO$T1@@7| T@U) (|_System._tuple#3OGO$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@24 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@7| |_System._tuple#3OGO$T1@@7| |_System._tuple#3OGO$T2@@7|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc DatatypeTypeType d@@24 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@7| |_System._tuple#3OGO$T1@@7| |_System._tuple#3OGO$T2@@7|) $h@@11))
)))) ($IsAllocBox (_System.Tuple3OGO._0 d@@24) |_System._tuple#3OGO$T0@@7| $h@@11))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsAllocBox (_System.Tuple3OGO._0 d@@24) |_System._tuple#3OGO$T0@@7| $h@@11))
)))
(assert (forall ((d@@25 T@U) (|_System._tuple#3OGO$T1@@8| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple3OGO.___hMake3_q d@@25) (exists ((|_System._tuple#3OGO$T0@@8| T@U) (|_System._tuple#3OGO$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@25 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@8| |_System._tuple#3OGO$T1@@8| |_System._tuple#3OGO$T2@@8|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsAlloc DatatypeTypeType d@@25 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@8| |_System._tuple#3OGO$T1@@8| |_System._tuple#3OGO$T2@@8|) $h@@12))
)))) ($IsAllocBox (_System.Tuple3OGO._1 d@@25) |_System._tuple#3OGO$T1@@8| $h@@12))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsAllocBox (_System.Tuple3OGO._1 d@@25) |_System._tuple#3OGO$T1@@8| $h@@12))
)))
(assert (forall ((d@@26 T@U) (|_System._tuple#3OGO$T2@@9| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple3OGO.___hMake3_q d@@26) (exists ((|_System._tuple#3OGO$T0@@9| T@U) (|_System._tuple#3OGO$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@26 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@9| |_System._tuple#3OGO$T1@@9| |_System._tuple#3OGO$T2@@9|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 (Tclass._System.Tuple3OGO |_System._tuple#3OGO$T0@@9| |_System._tuple#3OGO$T1@@9| |_System._tuple#3OGO$T2@@9|) $h@@13))
)))) ($IsAllocBox (_System.Tuple3OGO._2 d@@26) |_System._tuple#3OGO$T2@@9| $h@@13))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsAllocBox (_System.Tuple3OGO._2 d@@26) |_System._tuple#3OGO$T2@@9| $h@@13))
)))
(assert (forall ((d@@27 T@U) (|_System._tuple#3OOG$T0@@7| T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_System.Tuple3OOG.___hMake3_q d@@27) (exists ((|_System._tuple#3OOG$T1@@7| T@U) (|_System._tuple#3OOG$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@27 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@7| |_System._tuple#3OOG$T1@@7| |_System._tuple#3OOG$T2@@7|) $h@@14)
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@7| |_System._tuple#3OOG$T1@@7| |_System._tuple#3OOG$T2@@7|) $h@@14))
)))) ($IsAllocBox (_System.Tuple3OOG._0 d@@27) |_System._tuple#3OOG$T0@@7| $h@@14))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsAllocBox (_System.Tuple3OOG._0 d@@27) |_System._tuple#3OOG$T0@@7| $h@@14))
)))
(assert (forall ((d@@28 T@U) (|_System._tuple#3OOG$T1@@8| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple3OOG.___hMake3_q d@@28) (exists ((|_System._tuple#3OOG$T0@@8| T@U) (|_System._tuple#3OOG$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@28 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@8| |_System._tuple#3OOG$T1@@8| |_System._tuple#3OOG$T2@@8|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@8| |_System._tuple#3OOG$T1@@8| |_System._tuple#3OOG$T2@@8|) $h@@15))
)))) ($IsAllocBox (_System.Tuple3OOG._1 d@@28) |_System._tuple#3OOG$T1@@8| $h@@15))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsAllocBox (_System.Tuple3OOG._1 d@@28) |_System._tuple#3OOG$T1@@8| $h@@15))
)))
(assert (forall ((d@@29 T@U) (|_System._tuple#3OOG$T2@@9| T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_System.Tuple3OOG.___hMake3_q d@@29) (exists ((|_System._tuple#3OOG$T0@@9| T@U) (|_System._tuple#3OOG$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@29 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@9| |_System._tuple#3OOG$T1@@9| |_System._tuple#3OOG$T2@@9|) $h@@16)
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsAlloc DatatypeTypeType d@@29 (Tclass._System.Tuple3OOG |_System._tuple#3OOG$T0@@9| |_System._tuple#3OOG$T1@@9| |_System._tuple#3OOG$T2@@9|) $h@@16))
)))) ($IsAllocBox (_System.Tuple3OOG._2 d@@29) |_System._tuple#3OOG$T2@@9| $h@@16))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($IsAllocBox (_System.Tuple3OOG._2 d@@29) |_System._tuple#3OOG$T2@@9| $h@@16))
)))
(assert (forall ((d@@30 T@U) (|_System._tuple#2GO$T0@@6| T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_System.Tuple2GO.___hMake2_q d@@30) (exists ((|_System._tuple#2GO$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@30 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@6| |_System._tuple#2GO$T1@@6|) $h@@17)
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsAlloc DatatypeTypeType d@@30 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@6| |_System._tuple#2GO$T1@@6|) $h@@17))
)))) ($IsAllocBox (_System.Tuple2GO._0 d@@30) |_System._tuple#2GO$T0@@6| $h@@17))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAllocBox (_System.Tuple2GO._0 d@@30) |_System._tuple#2GO$T0@@6| $h@@17))
)))
(assert (forall ((d@@31 T@U) (|_System._tuple#2GO$T1@@7| T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_System.Tuple2GO.___hMake2_q d@@31) (exists ((|_System._tuple#2GO$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@31 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@7| |_System._tuple#2GO$T1@@7|) $h@@18)
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc DatatypeTypeType d@@31 (Tclass._System.Tuple2GO |_System._tuple#2GO$T0@@7| |_System._tuple#2GO$T1@@7|) $h@@18))
)))) ($IsAllocBox (_System.Tuple2GO._1 d@@31) |_System._tuple#2GO$T1@@7| $h@@18))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAllocBox (_System.Tuple2GO._1 d@@31) |_System._tuple#2GO$T1@@7| $h@@18))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) ) (! (= (|#_System._tuple#2GO._#Make2| (Lit BoxType |a#21#0#0|) (Lit BoxType |a#21#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2GO._#Make2| |a#21#0#0| |a#21#1#0|)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (|#_System._tuple#2GO._#Make2| (Lit BoxType |a#21#0#0|) (Lit BoxType |a#21#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= (|#_System._tuple#1G._#Make1| (Lit BoxType |a#15#0#0|)) (Lit DatatypeTypeType (|#_System._tuple#1G._#Make1| |a#15#0#0|)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (|#_System._tuple#1G._#Make1| (Lit BoxType |a#15#0#0|)))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.PhantomData.PhantomData| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.PhantomData.PhantomData| |a#3#0#0|)))
 :qid |Compdfy.3:45|
 :skolemid |896|
 :pattern ( (|#_module.PhantomData.PhantomData| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc realType v@@3 TReal h@@4)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@3 TReal h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is realType v@@5 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@5 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
