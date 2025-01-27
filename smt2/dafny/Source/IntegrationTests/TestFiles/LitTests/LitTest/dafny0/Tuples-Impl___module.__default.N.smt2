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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun |##_System._tuple#3._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
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
(declare-fun |$IsA#_System.Tuple0| (T@U) Bool)
(declare-fun _System.Tuple0.___hMake0_q (T@U) Bool)
(declare-fun |$IsA#_System.Tuple3| (T@U) Bool)
(declare-fun _System.Tuple3.___hMake3_q (T@U) Bool)
(declare-fun |#_System._tuple#3._#Make3| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun _System.Tuple3._0 (T@U) T@U)
(declare-fun _System.Tuple3._1 (T@U) T@U)
(declare-fun _System.Tuple3._2 (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |_System.Tuple0#Equal| (T@U T@U) Bool)
(declare-fun |_System.Tuple3#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 |##_System._tuple#3._#Make3| Tagclass._System.Tuple3 |tytagFamily$_tuple#2| |tytagFamily$_tuple#0| |tytagFamily$_tuple#3|)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple0| d) (_System.Tuple0.___hMake0_q d))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( (|$IsA#_System.Tuple0| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#_System.Tuple3| d@@0) (_System.Tuple3.___hMake3_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( (|$IsA#_System.Tuple3| d@@0))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |##_System._tuple#3._#Make3|)
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (= (_System.Tuple3._0 (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |1033|
 :pattern ( (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) ) (! (= (_System.Tuple3._1 (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |1035|
 :pattern ( (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (_System.Tuple3._2 (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@1))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass._System.Tuple0) (_System.Tuple0.___hMake0_q d@@2))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( (_System.Tuple0.___hMake0_q d@@2) ($Is DatatypeTypeType d@@2 Tclass._System.Tuple0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_System.Tuple0#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( (|_System.Tuple0#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_System.Tuple3#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (|_System.Tuple3#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |553|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |555|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |551|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_System.Tuple0.___hMake0_q d@@4) (= (DatatypeCtorId d@@4) |##_System._tuple#0._#Make0|))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( (_System.Tuple0.___hMake0_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_System.Tuple3.___hMake3_q d@@5) (= (DatatypeCtorId d@@5) |##_System._tuple#3._#Make3|))
 :qid |unknown.0:0|
 :skolemid |1016|
 :pattern ( (_System.Tuple3.___hMake3_q d@@5))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |562|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_System.Tuple3.___hMake3_q d@@6) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@6 (|#_System._tuple#3._#Make3| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |unknown.0:0|
 :skolemid |1017|
)))
 :qid |unknown.0:0|
 :skolemid |1018|
 :pattern ( (_System.Tuple3.___hMake3_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@7) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@7 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |986|
)))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( (_System.Tuple2.___hMake2_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_System.Tuple0.___hMake0_q d@@8) (= d@@8 |#_System._tuple#0._#Make0|))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( (_System.Tuple0.___hMake0_q d@@8))
)))
(assert (forall ((|_System._tuple#3$T0@@4| T@U) (|_System._tuple#3$T1@@4| T@U) (|_System._tuple#3$T2@@4| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@0)  (and (and ($IsAllocBox |a#14#0#0| |_System._tuple#3$T0@@4| $h@@0) ($IsAllocBox |a#14#1#0| |_System._tuple#3$T1@@4| $h@@0)) ($IsAllocBox |a#14#2#0| |_System._tuple#3$T2@@4| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |1025|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@0))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |575|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |1009|
 :pattern ( ($IsBox bx@@0 Tclass._System.Tuple0))
)))
(assert (forall ((|_System._tuple#3$T0@@5| T@U) (|_System._tuple#3$T1@@5| T@U) (|_System._tuple#3$T2@@5| T@U) (d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)) (_System.Tuple3.___hMake3_q d@@9))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (_System.Tuple3.___hMake3_q d@@9) ($Is DatatypeTypeType d@@9 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)))
)))
(assert (forall ((|_System._tuple#3$T0@@6| T@U) (|_System._tuple#3$T1@@6| T@U) (|_System._tuple#3$T2@@6| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|))  (and (and ($IsBox |a#14#0#0@@0| |_System._tuple#3$T0@@6|) ($IsBox |a#14#1#0@@0| |_System._tuple#3$T1@@6|)) ($IsBox |a#14#2#0@@0| |_System._tuple#3$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|)))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Div x@@6 y) (div x@@6 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |875|
 :pattern ( (Div x@@6 y))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |563|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TReal) (and (= ($Box realType ($Unbox realType bx@@2)) bx@@2) ($Is realType ($Unbox realType bx@@2) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |564|
 :pattern ( ($IsBox bx@@2 TReal))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |565|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |574|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |999|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (= (Ctor BoxType) 4))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) ) (! (= (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| |a#15#0#0| |a#15#1#0| |a#15#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1032|
 :pattern ( (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |561|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|)))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |1069|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |620|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#3$T0@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple3.___hMake3_q d@@11) (exists ((|_System._tuple#3$T1@@7| T@U) (|_System._tuple#3$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple3._0 d@@11) |_System._tuple#3$T0@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( ($IsAllocBox (_System.Tuple3._0 d@@11) |_System._tuple#3$T0@@7| $h@@1))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#3$T1@@8| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple3.___hMake3_q d@@12) (exists ((|_System._tuple#3$T0@@8| T@U) (|_System._tuple#3$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@2))
)))) ($IsAllocBox (_System.Tuple3._1 d@@12) |_System._tuple#3$T1@@8| $h@@2))
 :qid |unknown.0:0|
 :skolemid |1029|
 :pattern ( ($IsAllocBox (_System.Tuple3._1 d@@12) |_System._tuple#3$T1@@8| $h@@2))
)))
(assert (forall ((d@@13 T@U) (|_System._tuple#3$T2@@9| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple3.___hMake3_q d@@13) (exists ((|_System._tuple#3$T0@@9| T@U) (|_System._tuple#3$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@3))
)))) ($IsAllocBox (_System.Tuple3._2 d@@13) |_System._tuple#3$T2@@9| $h@@3))
 :qid |unknown.0:0|
 :skolemid |1031|
 :pattern ( ($IsAllocBox (_System.Tuple3._2 d@@13) |_System._tuple#3$T2@@9| $h@@3))
)))
(assert (forall ((d@@14 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@14 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@14 Tclass._System.Tuple0 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass._System.Tuple0 $h@@4))
)))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|_System.Tuple3#Equal| a@@1 b@@1)  (and (and (= (_System.Tuple3._0 a@@1) (_System.Tuple3._0 b@@1)) (= (_System.Tuple3._1 a@@1) (_System.Tuple3._1 b@@1))) (= (_System.Tuple3._2 a@@1) (_System.Tuple3._2 b@@1))))
 :qid |unknown.0:0|
 :skolemid |1041|
 :pattern ( (|_System.Tuple3#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@15 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@15) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._0 d@@15) |_System._tuple#2$T0@@6| $h@@5))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@15) |_System._tuple#2$T0@@6| $h@@5))
)))
(assert (forall ((d@@16 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@16) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._1 d@@16) |_System._tuple#2$T1@@7| $h@@6))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@16) |_System._tuple#2$T1@@7| $h@@6))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |998|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |554|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@9))) (Lit BoxType ($Box realType (real_2_U x@@9))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |556|
 :pattern ( ($Box realType (real_2_U (LitReal x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |552|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |597|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc realType v@@2 TReal h@@1)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |598|
 :pattern ( ($IsAlloc realType v@@2 TReal h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |599|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@2))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |576|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is realType v@@5 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |577|
 :pattern ( ($Is realType v@@5 TReal))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |578|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (|_System.Tuple0#Equal| a@@2 b@@2)
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( (|_System.Tuple0#Equal| a@@2 b@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k0#0@0| () T@U)
(declare-fun |k1#0@0| () T@U)
(declare-fun |k#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |unit#0@0| () T@U)
(declare-fun |pair#0@0| () T@U)
(declare-fun |x#0| () Int)
(declare-fun |triple#0@0| () T@U)
(declare-fun |y#0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |unit#0| () T@U)
(declare-fun |pair#0| () T@U)
(declare-fun |triple#0| () T@U)
(declare-fun |k#0| () T@U)
(declare-fun |k0#0| () T@U)
(declare-fun |k1#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.N)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon9_Else_correct true))
(let ((anon9_Then_correct  (=> (and (and (< (U_2_int ($Unbox intType (_System.Tuple3._1 ($Unbox DatatypeTypeType (_System.Tuple2._1 |k0#0@0|))))) (U_2_int ($Unbox intType (_System.Tuple3._1 ($Unbox DatatypeTypeType (_System.Tuple3._0 |k1#0@0|)))))) (_System.Tuple3.___hMake3_q |k1#0@0|)) (and (_System.Tuple3.___hMake3_q |k1#0@0|) (= (ControlFlow 0 4) (- 0 3)))) (= (U_2_int ($Unbox intType (_System.Tuple3._2 |k1#0@0|))) (LitInt 120)))))
(let ((anon8_Else_correct  (=> (not (|_System.Tuple3#Equal| ($Unbox DatatypeTypeType (_System.Tuple2._1 |k0#0@0|)) ($Unbox DatatypeTypeType (_System.Tuple3._0 |k1#0@0|)))) (=> (and (and (and (_System.Tuple2.___hMake2_q |k0#0@0|) (_System.Tuple3.___hMake3_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |k0#0@0|)))) (and (_System.Tuple3.___hMake3_q |k1#0@0|) (_System.Tuple3.___hMake3_q ($Unbox DatatypeTypeType (_System.Tuple3._0 |k1#0@0|))))) (and (and (_System.Tuple2.___hMake2_q |k0#0@0|) (_System.Tuple3.___hMake3_q ($Unbox DatatypeTypeType (_System.Tuple2._1 |k0#0@0|)))) (and (_System.Tuple3.___hMake3_q |k1#0@0|) (_System.Tuple3.___hMake3_q ($Unbox DatatypeTypeType (_System.Tuple3._0 |k1#0@0|)))))) (and (=> (= (ControlFlow 0 6) 4) anon9_Then_correct) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct))))))
(let ((anon8_Then_correct  (=> (and (|_System.Tuple3#Equal| ($Unbox DatatypeTypeType (_System.Tuple2._1 |k0#0@0|)) ($Unbox DatatypeTypeType (_System.Tuple3._0 |k1#0@0|))) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon2_correct  (=> (and (_System.Tuple2.___hMake2_q |k#0@0|) (=> (<= (LitInt 2) (U_2_int ($Unbox intType (_System.Tuple2._0 |k#0@0|)))) (_System.Tuple2.___hMake2_q |k#0@0|))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (<= (LitInt 2) (U_2_int ($Unbox intType (_System.Tuple2._0 |k#0@0|))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (< (U_2_int ($Unbox intType (_System.Tuple2._0 |k#0@0|))) 29)) (=> (and (<= (LitInt 2) (U_2_int ($Unbox intType (_System.Tuple2._0 |k#0@0|)))) (< (U_2_int ($Unbox intType (_System.Tuple2._0 |k#0@0|))) 29)) (=> (and (and (and (= |k0#0@0| (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 5))) ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box boolType (Lit boolType (bool_2_U true))) ($Box intType (int_2_U (LitInt 2))) ($Box realType (real_2_U (LitReal 3.14))))))))) (= |k1#0@0| (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box boolType (Lit boolType (bool_2_U false))) ($Box intType (int_2_U (LitInt 10))) ($Box realType (real_2_U (LitReal 2.7)))))) ($Box intType (int_2_U (LitInt 100))) ($Box intType (int_2_U (LitInt 120))))))) (and (_System.Tuple2.___hMake2_q |k0#0@0|) (_System.Tuple3.___hMake3_q |k1#0@0|))) (and (and (|$IsA#_System.Tuple3| ($Unbox DatatypeTypeType (_System.Tuple2._1 |k0#0@0|))) (|$IsA#_System.Tuple3| ($Unbox DatatypeTypeType (_System.Tuple3._0 |k1#0@0|)))) (and (_System.Tuple2.___hMake2_q |k0#0@0|) (_System.Tuple3.___hMake3_q |k1#0@0|)))) (and (=> (= (ControlFlow 0 7) 2) anon8_Then_correct) (=> (= (ControlFlow 0 7) 6) anon8_Else_correct)))))))))
(let ((anon7_Else_correct  (=> (and (< (U_2_int ($Unbox intType (_System.Tuple2._0 |k#0@0|))) (LitInt 2)) (= (ControlFlow 0 11) 7)) anon2_correct)))
(let ((anon7_Then_correct  (=> (<= (LitInt 2) (U_2_int ($Unbox intType (_System.Tuple2._0 |k#0@0|)))) (=> (and (_System.Tuple2.___hMake2_q |k#0@0|) (= (ControlFlow 0 10) 7)) anon2_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |unit#0@0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)) (= |pair#0@0| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |x#0|)) ($Box intType (int_2_U |x#0|))))) (and (= |triple#0@0| (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |y#0|)) ($Box intType (int_2_U |x#0|)) ($Box intType (int_2_U |x#0|)))) (|$IsA#_System.Tuple0| |unit#0@0|))) (and (=> (= (ControlFlow 0 12) (- 0 17)) (|_System.Tuple0#Equal| |unit#0@0| |#_System._tuple#0._#Make0|)) (=> (|_System.Tuple0#Equal| |unit#0@0| |#_System._tuple#0._#Make0|) (=> (and (and (_System.Tuple2.___hMake2_q |pair#0@0|) (_System.Tuple2.___hMake2_q |pair#0@0|)) (and (_System.Tuple2.___hMake2_q |pair#0@0|) (_System.Tuple2.___hMake2_q |pair#0@0|))) (and (=> (= (ControlFlow 0 12) (- 0 16)) (= (U_2_int ($Unbox intType (_System.Tuple2._0 |pair#0@0|))) (U_2_int ($Unbox intType (_System.Tuple2._1 |pair#0@0|))))) (=> (= (U_2_int ($Unbox intType (_System.Tuple2._0 |pair#0@0|))) (U_2_int ($Unbox intType (_System.Tuple2._1 |pair#0@0|)))) (=> (and (_System.Tuple3.___hMake3_q |triple#0@0|) (_System.Tuple3.___hMake3_q |triple#0@0|)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (= (U_2_int ($Unbox intType (_System.Tuple3._2 |triple#0@0|))) |x#0|)) (=> (= (U_2_int ($Unbox intType (_System.Tuple3._2 |triple#0@0|))) |x#0|) (=> (and (and (_System.Tuple3.___hMake3_q |triple#0@0|) (_System.Tuple3.___hMake3_q |triple#0@0|)) (and (_System.Tuple3.___hMake3_q |triple#0@0|) (_System.Tuple3.___hMake3_q |triple#0@0|))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (= (U_2_int ($Unbox intType (_System.Tuple3._0 |triple#0@0|))) (U_2_int ($Unbox intType (_System.Tuple3._1 |triple#0@0|))))) (=> (= (U_2_int ($Unbox intType (_System.Tuple3._0 |triple#0@0|))) (U_2_int ($Unbox intType (_System.Tuple3._1 |triple#0@0|)))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= |y#0| 0)) (not true))) (=> (or (not (= |y#0| 0)) (not true)) (=> (and (= |k#0@0| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 24))) ($Box intType (int_2_U (Div 100 |y#0|))))) (_System.Tuple2.___hMake2_q |k#0@0|)) (and (=> (= (ControlFlow 0 12) 10) anon7_Then_correct) (=> (= (ControlFlow 0 12) 11) anon7_Else_correct))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |unit#0| Tclass._System.Tuple0) ($IsAlloc DatatypeTypeType |unit#0| Tclass._System.Tuple0 $Heap)) true) (=> (and (and (and ($Is DatatypeTypeType |pair#0| (Tclass._System.Tuple2 TInt TInt)) ($IsAlloc DatatypeTypeType |pair#0| (Tclass._System.Tuple2 TInt TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |triple#0| (Tclass._System.Tuple3 TInt TInt TInt)) ($IsAlloc DatatypeTypeType |triple#0| (Tclass._System.Tuple3 TInt TInt TInt) $Heap)) true)) (=> (and (and (and (and ($Is DatatypeTypeType |k#0| (Tclass._System.Tuple2 TInt TInt)) ($IsAlloc DatatypeTypeType |k#0| (Tclass._System.Tuple2 TInt TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |k0#0| (Tclass._System.Tuple2 TInt (Tclass._System.Tuple3 TBool TInt TReal))) ($IsAlloc DatatypeTypeType |k0#0| (Tclass._System.Tuple2 TInt (Tclass._System.Tuple3 TBool TInt TReal)) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |k1#0| (Tclass._System.Tuple3 (Tclass._System.Tuple3 TBool TInt TReal) TInt TInt)) ($IsAlloc DatatypeTypeType |k1#0| (Tclass._System.Tuple3 (Tclass._System.Tuple3 TBool TInt TReal) TInt TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 18) 12)))) anon0_correct))))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 12) (- 14))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 12) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
