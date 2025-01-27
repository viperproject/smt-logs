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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#3._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun |$IsA#_System.Tuple2| (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |_System.Tuple3#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Thirteen (Int) Bool)
(declare-fun |_module.__default.Thirteen#canCall| (Int) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun charType () T@T)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |$let#1$canCall| () Bool)
(declare-fun |$let#1_x| () Int)
(declare-fun |$let#1_y| () Int)
(declare-fun |$let#1_b| () Bool)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |$let#0$canCall| () Bool)
(declare-fun |$let#0_x| () Int)
(declare-fun |$let#0_y| () Int)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSeq alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |##_System._tuple#3._#Make3| Tagclass._System.Tuple3 |tytagFamily$_tuple#2| |tytagFamily$_tuple#3|)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple2| d) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |2799|
 :pattern ( (|$IsA#_System.Tuple2| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#_System.Tuple3| d@@0) (_System.Tuple3.___hMake3_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2835|
 :pattern ( (|$IsA#_System.Tuple3| d@@0))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |##_System._tuple#3._#Make3|)
 :qid |unknown.0:0|
 :skolemid |2811|
 :pattern ( (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |2816|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |2817|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |2818|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (= (_System.Tuple3._0 (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |2829|
 :pattern ( (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) ) (! (= (_System.Tuple3._1 (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |2831|
 :pattern ( (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (_System.Tuple3._2 (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |2833|
 :pattern ( (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@1))
 :qid |unknown.0:0|
 :skolemid |2800|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_System.Tuple2#Equal| a b)  (and (= (_System.Tuple2._0 a) (_System.Tuple2._0 b)) (= (_System.Tuple2._1 a) (_System.Tuple2._1 b))))
 :qid |unknown.0:0|
 :skolemid |2801|
 :pattern ( (|_System.Tuple2#Equal| a b))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |2815|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |2819|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |2788|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_System.Tuple2#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |2802|
 :pattern ( (|_System.Tuple2#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|_System.Tuple3#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |2838|
 :pattern ( (|_System.Tuple3#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2349|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2347|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 4))
(assert (forall ((s T@U) (bx@@0 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@0 t)) ($Is SeqType (|Seq#Build| s bx@@0) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |2590|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@0) (TSeq t)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |2789|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |2781|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple3.___hMake3_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#3._#Make3|))
 :qid |unknown.0:0|
 :skolemid |2812|
 :pattern ( (_System.Tuple3.___hMake3_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2358|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple3.___hMake3_q d@@4) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@4 (|#_System._tuple#3._#Make3| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |unknown.0:0|
 :skolemid |2813|
)))
 :qid |unknown.0:0|
 :skolemid |2814|
 :pattern ( (_System.Tuple3.___hMake3_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@5) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@5 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |2782|
)))
 :qid |unknown.0:0|
 :skolemid |2783|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|_module.__default.Thirteen#canCall| |x#0|) (< 0 $FunctionContextHeight)) (= (_module.__default.Thirteen |x#0|) (= |x#0| (LitInt 13))))
 :qid |Comprehensionsdfy.24:20|
 :skolemid |2910|
 :pattern ( (_module.__default.Thirteen |x#0|))
))))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2556|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((|_System._tuple#3$T0@@4| T@U) (|_System._tuple#3$T1@@4| T@U) (|_System._tuple#3$T2@@4| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@0)  (and (and ($IsAllocBox |a#14#0#0| |_System._tuple#3$T0@@4| $h@@0) ($IsAllocBox |a#14#1#0| |_System._tuple#3$T1@@4| $h@@0)) ($IsAllocBox |a#14#2#0| |_System._tuple#3$T2@@4| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |2821|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@0))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2371|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@1 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) v@@1)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2557|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i))
)))
(assert (forall ((|_System._tuple#3$T0@@5| T@U) (|_System._tuple#3$T1@@5| T@U) (|_System._tuple#3$T2@@5| T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)) (_System.Tuple3.___hMake3_q d@@6))
 :qid |unknown.0:0|
 :skolemid |2836|
 :pattern ( (_System.Tuple3.___hMake3_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|_module.__default.Thirteen#canCall| (LitInt |x#0@@0|)) (< 0 $FunctionContextHeight)) (= (_module.__default.Thirteen (LitInt |x#0@@0|)) (= (LitInt |x#0@@0|) (LitInt 13))))
 :qid |Comprehensionsdfy.24:20|
 :weight 3
 :skolemid |2911|
 :pattern ( (_module.__default.Thirteen (LitInt |x#0@@0|)))
))))
(assert (forall ((|_System._tuple#3$T0@@6| T@U) (|_System._tuple#3$T1@@6| T@U) (|_System._tuple#3$T2@@6| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|))  (and (and ($IsBox |a#14#0#0@@0| |_System._tuple#3$T0@@6|) ($IsBox |a#14#1#0@@0| |_System._tuple#3$T1@@6|)) ($IsBox |a#14#2#0@@0| |_System._tuple#3$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |2820|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2359|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2361|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (= (Ctor charType) 5))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2362|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2370|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2553|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |2780|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |2785|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |2786|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |2795|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |2797|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2405|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2406|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0) h@@0))
)))
(assert (= (Ctor BoxType) 6))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) ) (! (= (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| |a#15#0#0| |a#15#1#0| |a#15#2#0|)))
 :qid |unknown.0:0|
 :skolemid |2828|
 :pattern ( (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2339|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2340|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2357|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|)))
 :qid |unknown.0:0|
 :skolemid |2830|
 :pattern ( (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|)))
 :qid |unknown.0:0|
 :skolemid |2832|
 :pattern ( (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|)))
 :qid |unknown.0:0|
 :skolemid |2834|
 :pattern ( (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
)))
(assert  (=> |$let#1$canCall| (and (and (and (and (<= (LitInt 12) |$let#1_x|) (< |$let#1_x| |$let#1_y|)) (< |$let#1_y| 15)) (_module.__default.Thirteen |$let#1_x|)) |$let#1_b|)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2796|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2798|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |2353|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |2787|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 9)
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
 :skolemid |3336|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2555|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |2784|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2416|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@5 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2367|
 :pattern ( ($IsBox bx@@5 (TSeq t@@4)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |2354|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#3$T0@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple3.___hMake3_q d@@8) (exists ((|_System._tuple#3$T1@@7| T@U) (|_System._tuple#3$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |2822|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple3._0 d@@8) |_System._tuple#3$T0@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |2823|
 :pattern ( ($IsAllocBox (_System.Tuple3._0 d@@8) |_System._tuple#3$T0@@7| $h@@1))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#3$T1@@8| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple3.___hMake3_q d@@9) (exists ((|_System._tuple#3$T0@@8| T@U) (|_System._tuple#3$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |2824|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@2))
)))) ($IsAllocBox (_System.Tuple3._1 d@@9) |_System._tuple#3$T1@@8| $h@@2))
 :qid |unknown.0:0|
 :skolemid |2825|
 :pattern ( ($IsAllocBox (_System.Tuple3._1 d@@9) |_System._tuple#3$T1@@8| $h@@2))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#3$T2@@9| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple3.___hMake3_q d@@10) (exists ((|_System._tuple#3$T0@@9| T@U) (|_System._tuple#3$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |2826|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@3))
)))) ($IsAllocBox (_System.Tuple3._2 d@@10) |_System._tuple#3$T2@@9| $h@@3))
 :qid |unknown.0:0|
 :skolemid |2827|
 :pattern ( ($IsAllocBox (_System.Tuple3._2 d@@10) |_System._tuple#3$T2@@9| $h@@3))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|_System.Tuple3#Equal| a@@2 b@@2)  (and (and (= (_System.Tuple3._0 a@@2) (_System.Tuple3._0 b@@2)) (= (_System.Tuple3._1 a@@2) (_System.Tuple3._1 b@@2))) (= (_System.Tuple3._2 a@@2) (_System.Tuple3._2 b@@2))))
 :qid |unknown.0:0|
 :skolemid |2837|
 :pattern ( (|_System.Tuple3#Equal| a@@2 b@@2))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |2790|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |2791|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |2792|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |2793|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert  (=> |$let#0$canCall| (and (and (and (<= (LitInt 12) |$let#0_x|) (< |$let#0_x| |$let#0_y|)) (< |$let#0_y| 15)) (_module.__default.Thirteen |$let#0_x|))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2794|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2350|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2348|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2554|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2393|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2395|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@6 T@U) ) (! ($IsAlloc charType v@@6 TChar h@@3)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2396|
 :pattern ( ($IsAlloc charType v@@6 TChar h@@3))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2385|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2386|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |2599|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2372|
 :pattern ( ($Is intType v@@8 TInt))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is boolType v@@9 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2374|
 :pattern ( ($Is boolType v@@9 TBool))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is charType v@@10 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2375|
 :pattern ( ($Is charType v@@10 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#5@0| () Int)
(declare-fun |y#5@0| () Int)
(declare-fun |b#2@0| () Bool)
(declare-fun |x#4@0| () Int)
(declare-fun |y#4@0| () Int)
(declare-fun |b#1@0| () Bool)
(declare-fun |q#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#1@0| () Int)
(declare-fun |y#1@0| () Int)
(declare-fun |x#2@0| () Int)
(declare-fun |y#2@0| () Int)
(declare-fun |p#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |##x#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |p#0| () T@U)
(declare-fun |q#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.LetSuchThat)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon19_correct  (=> (=> (<= (LitInt 12) |x#5@0|) (=> (< |x#5@0| |y#5@0|) (=> (< |y#5@0| 15) (|_module.__default.Thirteen#canCall| |x#5@0|)))) (=> (and (and (and (and (<= (LitInt 12) |x#5@0|) (< |x#5@0| |y#5@0|)) (< |y#5@0| 15)) (_module.__default.Thirteen |x#5@0|)) |b#2@0|) (and (=> (= (ControlFlow 0 4) (- 0 5)) (|_System.Tuple3#Equal| (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#4@0|)) ($Box intType (int_2_U |y#4@0|)) ($Box SeqType (ite |b#1@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 111)))))) (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#5@0|)) ($Box intType (int_2_U |y#5@0|)) ($Box SeqType (ite |b#2@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 111)))))))) (=> (|_System.Tuple3#Equal| (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#4@0|)) ($Box intType (int_2_U |y#4@0|)) ($Box SeqType (ite |b#1@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 111)))))) (|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#5@0|)) ($Box intType (int_2_U |y#5@0|)) ($Box SeqType (ite |b#2@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 111))))))) (=> |$let#1$canCall| (=> (and (and |$let#1$canCall| (= |q#0@0| (let ((|y#3| |$let#1_y|))
(let ((|b#0| |$let#1_b|))
(let ((|x#3| |$let#1_x|))
(|#_System._tuple#3._#Make3| ($Box intType (int_2_U |x#3|)) ($Box intType (int_2_U |y#3|)) ($Box SeqType (ite |b#0| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 111))))))))))) (and (|$IsA#_System.Tuple3| |q#0@0|) (= (ControlFlow 0 4) (- 0 3)))) (|_System.Tuple3#Equal| |q#0@0| (|#_System._tuple#3._#Make3| ($Box intType (int_2_U (LitInt 13))) ($Box intType (int_2_U (LitInt 14))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115)))))))))))))))
(let ((anon29_Else_correct  (=> (and (not |b#1@0|) (= (ControlFlow 0 7) 4)) anon19_correct)))
(let ((anon29_Then_correct  (=> (and |b#1@0| (= (ControlFlow 0 6) 4)) anon19_correct)))
(let ((anon16_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (and (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 12))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 0))) true)) (or (exists ((|x#3@@0| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@0|) (< |x#3@@0| (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen |x#3@@0|)) true))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2991|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 12))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 0))) false)) (or (exists ((|x#3@@1| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@1|) (< |x#3@@1| (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen |x#3@@1|)) false))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2990|
)) (or (exists ((|b#0@@0| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) |b#0@@0|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2989|
)) (or (exists ((|b#0@@1| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 12))) |b#0@@1|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2988|
)) (or (exists ((|b#0@@2| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 0))) |b#0@@2|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2987|
)) (or (exists ((|x#3@@2| Int) (|b#0@@3| Bool) ) (!  (and ($Is intType (int_2_U (LitInt (- 15 1))) TInt) (and (and (and (and (<= (LitInt 12) |x#3@@2|) (< |x#3@@2| (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen |x#3@@2|)) |b#0@@3|))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2986|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (+ (- (- 15 1) 1) 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (+ (- (- 15 1) 1) 1))) (< (+ (- (- 15 1) 1) 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (+ 12 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (+ 12 1))) (< (+ 12 1) 15)) (_module.__default.Thirteen (LitInt 12))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (+ 0 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (+ 0 1))) (< (+ 0 1) 15)) (_module.__default.Thirteen (LitInt 0))) true)) (or (exists ((|x#3@@3| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) ($Is intType (int_2_U (+ |x#3@@3| 1)) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@3|) (< |x#3@@3| (+ |x#3@@3| 1))) (< (+ |x#3@@3| 1) 15)) (_module.__default.Thirteen |x#3@@3|)) true))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2985|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (+ (- (- 15 1) 1) 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (+ (- (- 15 1) 1) 1))) (< (+ (- (- 15 1) 1) 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (+ 12 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (+ 12 1))) (< (+ 12 1) 15)) (_module.__default.Thirteen (LitInt 12))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (+ 0 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (+ 0 1))) (< (+ 0 1) 15)) (_module.__default.Thirteen (LitInt 0))) false)) (or (exists ((|x#3@@4| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) ($Is intType (int_2_U (+ |x#3@@4| 1)) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@4|) (< |x#3@@4| (+ |x#3@@4| 1))) (< (+ |x#3@@4| 1) 15)) (_module.__default.Thirteen |x#3@@4|)) false))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2984|
)) (or (exists ((|b#0@@4| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is intType (int_2_U (LitInt (+ (- (- 15 1) 1) 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (+ (- (- 15 1) 1) 1))) (< (+ (- (- 15 1) 1) 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) |b#0@@4|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2983|
)) (or (exists ((|b#0@@5| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt (+ 12 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (+ 12 1))) (< (+ 12 1) 15)) (_module.__default.Thirteen (LitInt 12))) |b#0@@5|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2982|
)) (or (exists ((|b#0@@6| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt (+ 0 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (+ 0 1))) (< (+ 0 1) 15)) (_module.__default.Thirteen (LitInt 0))) |b#0@@6|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2981|
)) (or (exists ((|x#3@@5| Int) (|b#0@@7| Bool) ) (!  (and ($Is intType (int_2_U (+ |x#3@@5| 1)) TInt) (and (and (and (and (<= (LitInt 12) |x#3@@5|) (< |x#3@@5| (+ |x#3@@5| 1))) (< (+ |x#3@@5| 1) 15)) (_module.__default.Thirteen |x#3@@5|)) |b#0@@7|))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2980|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- 0 1))) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- 0 1))) (< (- 0 1) 0)) (< 0 15)) (_module.__default.Thirteen (LitInt (- 0 1)))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 12))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 0))) true)) (or (exists ((|x#3@@6| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@6|) (< |x#3@@6| 0)) (< 0 15)) (_module.__default.Thirteen |x#3@@6|)) true))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2979|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- 0 1))) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- 0 1))) (< (- 0 1) 0)) (< 0 15)) (_module.__default.Thirteen (LitInt (- 0 1)))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 12))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 0))) false)) (or (exists ((|x#3@@7| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@7|) (< |x#3@@7| 0)) (< 0 15)) (_module.__default.Thirteen |x#3@@7|)) false))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2978|
)) (or (exists ((|b#0@@8| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt (- 0 1))) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- 0 1))) (< (- 0 1) 0)) (< 0 15)) (_module.__default.Thirteen (LitInt (- 0 1)))) |b#0@@8|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2977|
)) (or (exists ((|b#0@@9| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 12))) |b#0@@9|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2976|
)) (or (exists ((|b#0@@10| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 0))) |b#0@@10|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2975|
)) (or (exists ((|x#3@@8| Int) (|b#0@@11| Bool) ) (!  (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (and (and (<= (LitInt 12) |x#3@@8|) (< |x#3@@8| 0)) (< 0 15)) (_module.__default.Thirteen |x#3@@8|)) |b#0@@11|))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2974|
)) (or (exists ((|y#3@@0| Int) ) (!  (and (and ($Is intType (int_2_U (- |y#3@@0| 1)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) (and (and (and (and (<= (LitInt 12) (- |y#3@@0| 1)) (< (- |y#3@@0| 1) |y#3@@0|)) (< |y#3@@0| 15)) (_module.__default.Thirteen (- |y#3@@0| 1))) true))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2973|
)) (or (exists ((|y#3@@1| Int) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 |y#3@@1|)) (< |y#3@@1| 15)) (_module.__default.Thirteen (LitInt 12))) true))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2972|
)) (or (exists ((|y#3@@2| Int) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 |y#3@@2|)) (< |y#3@@2| 15)) (_module.__default.Thirteen (LitInt 0))) true))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2971|
)) (or (exists ((|x#3@@9| Int) (|y#3@@3| Int) ) (!  (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) (and (and (and (and (<= (LitInt 12) |x#3@@9|) (< |x#3@@9| |y#3@@3|)) (< |y#3@@3| 15)) (_module.__default.Thirteen |x#3@@9|)) true))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2970|
)) (or (exists ((|y#3@@4| Int) ) (!  (and (and ($Is intType (int_2_U (- |y#3@@4| 1)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) (and (and (and (and (<= (LitInt 12) (- |y#3@@4| 1)) (< (- |y#3@@4| 1) |y#3@@4|)) (< |y#3@@4| 15)) (_module.__default.Thirteen (- |y#3@@4| 1))) false))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2969|
)) (or (exists ((|y#3@@5| Int) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 |y#3@@5|)) (< |y#3@@5| 15)) (_module.__default.Thirteen (LitInt 12))) false))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2968|
)) (or (exists ((|y#3@@6| Int) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 |y#3@@6|)) (< |y#3@@6| 15)) (_module.__default.Thirteen (LitInt 0))) false))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2967|
)) (or (exists ((|x#3@@10| Int) (|y#3@@7| Int) ) (!  (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) (and (and (and (and (<= (LitInt 12) |x#3@@10|) (< |x#3@@10| |y#3@@7|)) (< |y#3@@7| 15)) (_module.__default.Thirteen |x#3@@10|)) false))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2966|
)) (or (exists ((|b#0@@12| Bool) (|y#3@@8| Int) ) (!  (and ($Is intType (int_2_U (- |y#3@@8| 1)) TInt) (and (and (and (and (<= (LitInt 12) (- |y#3@@8| 1)) (< (- |y#3@@8| 1) |y#3@@8|)) (< |y#3@@8| 15)) (_module.__default.Thirteen (- |y#3@@8| 1))) |b#0@@12|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2965|
)) (or (exists ((|b#0@@13| Bool) (|y#3@@9| Int) ) (!  (and ($Is intType (int_2_U (LitInt 12)) TInt) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 |y#3@@9|)) (< |y#3@@9| 15)) (_module.__default.Thirteen (LitInt 12))) |b#0@@13|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2964|
)) (or (exists ((|b#0@@14| Bool) (|y#3@@10| Int) ) (!  (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 |y#3@@10|)) (< |y#3@@10| 15)) (_module.__default.Thirteen (LitInt 0))) |b#0@@14|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2963|
)) (exists ((|x#3@@11| Int) (|b#0@@15| Bool) (|y#3@@11| Int) ) (!  (and (and (and (and (<= (LitInt 12) |x#3@@11|) (< |x#3@@11| |y#3@@11|)) (< |y#3@@11| 15)) (_module.__default.Thirteen |x#3@@11|)) |b#0@@15|)
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2962|
)))))))))))))))))))))))))))))))))))))))))))))))))) (=> (or (and (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 12))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 0))) true)) (or (exists ((|x#3@@12| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@12|) (< |x#3@@12| (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen |x#3@@12|)) true))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2991|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 12))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 0))) false)) (or (exists ((|x#3@@13| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@13|) (< |x#3@@13| (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen |x#3@@13|)) false))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2990|
)) (or (exists ((|b#0@@16| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) |b#0@@16|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2989|
)) (or (exists ((|b#0@@17| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 12))) |b#0@@17|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2988|
)) (or (exists ((|b#0@@18| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 0))) |b#0@@18|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2987|
)) (or (exists ((|x#3@@14| Int) (|b#0@@19| Bool) ) (!  (and ($Is intType (int_2_U (LitInt (- 15 1))) TInt) (and (and (and (and (<= (LitInt 12) |x#3@@14|) (< |x#3@@14| (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen |x#3@@14|)) |b#0@@19|))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2986|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (+ (- (- 15 1) 1) 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (+ (- (- 15 1) 1) 1))) (< (+ (- (- 15 1) 1) 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (+ 12 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (+ 12 1))) (< (+ 12 1) 15)) (_module.__default.Thirteen (LitInt 12))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt (+ 0 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (+ 0 1))) (< (+ 0 1) 15)) (_module.__default.Thirteen (LitInt 0))) true)) (or (exists ((|x#3@@15| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) ($Is intType (int_2_U (+ |x#3@@15| 1)) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@15|) (< |x#3@@15| (+ |x#3@@15| 1))) (< (+ |x#3@@15| 1) 15)) (_module.__default.Thirteen |x#3@@15|)) true))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2985|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (+ (- (- 15 1) 1) 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (+ (- (- 15 1) 1) 1))) (< (+ (- (- 15 1) 1) 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (+ 12 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (+ 12 1))) (< (+ 12 1) 15)) (_module.__default.Thirteen (LitInt 12))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt (+ 0 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (+ 0 1))) (< (+ 0 1) 15)) (_module.__default.Thirteen (LitInt 0))) false)) (or (exists ((|x#3@@16| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) ($Is intType (int_2_U (+ |x#3@@16| 1)) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@16|) (< |x#3@@16| (+ |x#3@@16| 1))) (< (+ |x#3@@16| 1) 15)) (_module.__default.Thirteen |x#3@@16|)) false))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2984|
)) (or (exists ((|b#0@@20| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is intType (int_2_U (LitInt (+ (- (- 15 1) 1) 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (+ (- (- 15 1) 1) 1))) (< (+ (- (- 15 1) 1) 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1)))) |b#0@@20|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2983|
)) (or (exists ((|b#0@@21| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt (+ 12 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (+ 12 1))) (< (+ 12 1) 15)) (_module.__default.Thirteen (LitInt 12))) |b#0@@21|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2982|
)) (or (exists ((|b#0@@22| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt (+ 0 1))) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (+ 0 1))) (< (+ 0 1) 15)) (_module.__default.Thirteen (LitInt 0))) |b#0@@22|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2981|
)) (or (exists ((|x#3@@17| Int) (|b#0@@23| Bool) ) (!  (and ($Is intType (int_2_U (+ |x#3@@17| 1)) TInt) (and (and (and (and (<= (LitInt 12) |x#3@@17|) (< |x#3@@17| (+ |x#3@@17| 1))) (< (+ |x#3@@17| 1) 15)) (_module.__default.Thirteen |x#3@@17|)) |b#0@@23|))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2980|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- 0 1))) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- 0 1))) (< (- 0 1) 0)) (< 0 15)) (_module.__default.Thirteen (LitInt (- 0 1)))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 12))) true)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 0))) true)) (or (exists ((|x#3@@18| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@18|) (< |x#3@@18| 0)) (< 0 15)) (_module.__default.Thirteen |x#3@@18|)) true))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2979|
)) (or (and (and (and ($Is intType (int_2_U (LitInt (- 0 1))) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- 0 1))) (< (- 0 1) 0)) (< 0 15)) (_module.__default.Thirteen (LitInt (- 0 1)))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 12))) false)) (or (and (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 0))) false)) (or (exists ((|x#3@@19| Int) ) (!  (and (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) |x#3@@19|) (< |x#3@@19| 0)) (< 0 15)) (_module.__default.Thirteen |x#3@@19|)) false))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2978|
)) (or (exists ((|b#0@@24| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt (- 0 1))) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt (- 0 1))) (< (- 0 1) 0)) (< 0 15)) (_module.__default.Thirteen (LitInt (- 0 1)))) |b#0@@24|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2977|
)) (or (exists ((|b#0@@25| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 12))) |b#0@@25|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2976|
)) (or (exists ((|b#0@@26| Bool) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 0))) |b#0@@26|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2975|
)) (or (exists ((|x#3@@20| Int) (|b#0@@27| Bool) ) (!  (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (and (and (<= (LitInt 12) |x#3@@20|) (< |x#3@@20| 0)) (< 0 15)) (_module.__default.Thirteen |x#3@@20|)) |b#0@@27|))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2974|
)) (or (exists ((|y#3@@12| Int) ) (!  (and (and ($Is intType (int_2_U (- |y#3@@12| 1)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) (and (and (and (and (<= (LitInt 12) (- |y#3@@12| 1)) (< (- |y#3@@12| 1) |y#3@@12|)) (< |y#3@@12| 15)) (_module.__default.Thirteen (- |y#3@@12| 1))) true))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2973|
)) (or (exists ((|y#3@@13| Int) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 |y#3@@13|)) (< |y#3@@13| 15)) (_module.__default.Thirteen (LitInt 12))) true))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2972|
)) (or (exists ((|y#3@@14| Int) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U true)) TBool)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 |y#3@@14|)) (< |y#3@@14| 15)) (_module.__default.Thirteen (LitInt 0))) true))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2971|
)) (or (exists ((|x#3@@21| Int) (|y#3@@15| Int) ) (!  (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) (and (and (and (and (<= (LitInt 12) |x#3@@21|) (< |x#3@@21| |y#3@@15|)) (< |y#3@@15| 15)) (_module.__default.Thirteen |x#3@@21|)) true))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2970|
)) (or (exists ((|y#3@@16| Int) ) (!  (and (and ($Is intType (int_2_U (- |y#3@@16| 1)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) (and (and (and (and (<= (LitInt 12) (- |y#3@@16| 1)) (< (- |y#3@@16| 1) |y#3@@16|)) (< |y#3@@16| 15)) (_module.__default.Thirteen (- |y#3@@16| 1))) false))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2969|
)) (or (exists ((|y#3@@17| Int) ) (!  (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 |y#3@@17|)) (< |y#3@@17| 15)) (_module.__default.Thirteen (LitInt 12))) false))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2968|
)) (or (exists ((|y#3@@18| Int) ) (!  (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is boolType (Lit boolType (bool_2_U false)) TBool)) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 |y#3@@18|)) (< |y#3@@18| 15)) (_module.__default.Thirteen (LitInt 0))) false))
 :qid |Comprehensionsdfy.42:22|
 :skolemid |2967|
)) (or (exists ((|x#3@@22| Int) (|y#3@@19| Int) ) (!  (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) (and (and (and (and (<= (LitInt 12) |x#3@@22|) (< |x#3@@22| |y#3@@19|)) (< |y#3@@19| 15)) (_module.__default.Thirteen |x#3@@22|)) false))
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2966|
)) (or (exists ((|b#0@@28| Bool) (|y#3@@20| Int) ) (!  (and ($Is intType (int_2_U (- |y#3@@20| 1)) TInt) (and (and (and (and (<= (LitInt 12) (- |y#3@@20| 1)) (< (- |y#3@@20| 1) |y#3@@20|)) (< |y#3@@20| 15)) (_module.__default.Thirteen (- |y#3@@20| 1))) |b#0@@28|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2965|
)) (or (exists ((|b#0@@29| Bool) (|y#3@@21| Int) ) (!  (and ($Is intType (int_2_U (LitInt 12)) TInt) (and (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 |y#3@@21|)) (< |y#3@@21| 15)) (_module.__default.Thirteen (LitInt 12))) |b#0@@29|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2964|
)) (or (exists ((|b#0@@30| Bool) (|y#3@@22| Int) ) (!  (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 |y#3@@22|)) (< |y#3@@22| 15)) (_module.__default.Thirteen (LitInt 0))) |b#0@@30|))
 :qid |Comprehensionsdfy.42:19|
 :skolemid |2963|
)) (exists ((|x#3@@23| Int) (|b#0@@31| Bool) (|y#3@@23| Int) ) (!  (and (and (and (and (<= (LitInt 12) |x#3@@23|) (< |x#3@@23| |y#3@@23|)) (< |y#3@@23| 15)) (_module.__default.Thirteen |x#3@@23|)) |b#0@@31|)
 :qid |Comprehensionsdfy.42:16|
 :skolemid |2962|
))))))))))))))))))))))))))))))))))))))))))))))))) (=> (and (and (and (and (<= (LitInt 12) |x#4@0|) (< |x#4@0| |y#4@0|)) (< |y#4@0| 15)) (_module.__default.Thirteen |x#4@0|)) |b#1@0|) (and (=> (= (ControlFlow 0 8) 6) anon29_Then_correct) (=> (= (ControlFlow 0 8) 7) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (and (not (and (and (and (<= (LitInt 12) |x#4@0|) (< |x#4@0| |y#4@0|)) (< |y#4@0| 15)) (_module.__default.Thirteen |x#4@0|))) (= (ControlFlow 0 11) 8)) anon16_correct)))
(let ((anon28_Then_correct  (=> (and (and (and (and (<= (LitInt 12) |x#4@0|) (< |x#4@0| |y#4@0|)) (< |y#4@0| 15)) (_module.__default.Thirteen |x#4@0|)) (= (ControlFlow 0 10) 8)) anon16_correct)))
(let ((anon27_Else_correct  (=> (not (and (and (<= (LitInt 12) |x#4@0|) (< |x#4@0| |y#4@0|)) (< |y#4@0| 15))) (and (=> (= (ControlFlow 0 13) 10) anon28_Then_correct) (=> (= (ControlFlow 0 13) 11) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (and (and (and (<= (LitInt 12) |x#4@0|) (< |x#4@0| |y#4@0|)) (< |y#4@0| 15)) (and ($IsAlloc intType (int_2_U |x#4@0|) TInt $Heap) (|_module.__default.Thirteen#canCall| |x#4@0|))) (and (=> (= (ControlFlow 0 12) 10) anon28_Then_correct) (=> (= (ControlFlow 0 12) 11) anon28_Else_correct)))))
(let ((anon26_Else_correct  (=> (not (and (<= (LitInt 12) |x#4@0|) (< |x#4@0| |y#4@0|))) (and (=> (= (ControlFlow 0 15) 12) anon27_Then_correct) (=> (= (ControlFlow 0 15) 13) anon27_Else_correct)))))
(let ((anon26_Then_correct  (=> (and (<= (LitInt 12) |x#4@0|) (< |x#4@0| |y#4@0|)) (and (=> (= (ControlFlow 0 14) 12) anon27_Then_correct) (=> (= (ControlFlow 0 14) 13) anon27_Else_correct)))))
(let ((anon25_Else_correct  (=> (< |x#4@0| (LitInt 12)) (and (=> (= (ControlFlow 0 17) 14) anon26_Then_correct) (=> (= (ControlFlow 0 17) 15) anon26_Else_correct)))))
(let ((anon25_Then_correct  (=> (<= (LitInt 12) |x#4@0|) (and (=> (= (ControlFlow 0 16) 14) anon26_Then_correct) (=> (= (ControlFlow 0 16) 15) anon26_Else_correct)))))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 18) 16) anon25_Then_correct) (=> (= (ControlFlow 0 18) 17) anon25_Else_correct))))
(let ((anon24_Else_correct true))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 19) (- 0 22)) (or (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1))))) (or (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 12)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 0)))) (or (exists ((|x#0@@1| Int) ) (!  (and ($Is intType (int_2_U (LitInt (- 15 1))) TInt) (and (and (and (<= (LitInt 12) |x#0@@1|) (< |x#0@@1| (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen |x#0@@1|)))
 :qid |Comprehensionsdfy.40:16|
 :skolemid |2961|
)) (or (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is intType (int_2_U (LitInt (+ (- (- 15 1) 1) 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (+ (- (- 15 1) 1) 1))) (< (+ (- (- 15 1) 1) 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1))))) (or (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt (+ 12 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (+ 12 1))) (< (+ 12 1) 15)) (_module.__default.Thirteen (LitInt 12)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt (+ 0 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (+ 0 1))) (< (+ 0 1) 15)) (_module.__default.Thirteen (LitInt 0)))) (or (exists ((|x#0@@2| Int) ) (!  (and ($Is intType (int_2_U (+ |x#0@@2| 1)) TInt) (and (and (and (<= (LitInt 12) |x#0@@2|) (< |x#0@@2| (+ |x#0@@2| 1))) (< (+ |x#0@@2| 1) 15)) (_module.__default.Thirteen |x#0@@2|)))
 :qid |Comprehensionsdfy.40:16|
 :skolemid |2960|
)) (or (and (and ($Is intType (int_2_U (LitInt (- 0 1))) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (<= (LitInt 12) (LitInt (- 0 1))) (< (- 0 1) 0)) (< 0 15)) (_module.__default.Thirteen (LitInt (- 0 1))))) (or (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 12)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 0)))) (or (exists ((|x#0@@3| Int) ) (!  (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (and (<= (LitInt 12) |x#0@@3|) (< |x#0@@3| 0)) (< 0 15)) (_module.__default.Thirteen |x#0@@3|)))
 :qid |Comprehensionsdfy.40:16|
 :skolemid |2959|
)) (or (exists ((|y#0| Int) ) (!  (and ($Is intType (int_2_U (- |y#0| 1)) TInt) (and (and (and (<= (LitInt 12) (- |y#0| 1)) (< (- |y#0| 1) |y#0|)) (< |y#0| 15)) (_module.__default.Thirteen (- |y#0| 1))))
 :qid |Comprehensionsdfy.40:19|
 :skolemid |2958|
)) (or (exists ((|y#0@@0| Int) ) (!  (and ($Is intType (int_2_U (LitInt 12)) TInt) (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 |y#0@@0|)) (< |y#0@@0| 15)) (_module.__default.Thirteen (LitInt 12))))
 :qid |Comprehensionsdfy.40:19|
 :skolemid |2957|
)) (or (exists ((|y#0@@1| Int) ) (!  (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 |y#0@@1|)) (< |y#0@@1| 15)) (_module.__default.Thirteen (LitInt 0))))
 :qid |Comprehensionsdfy.40:19|
 :skolemid |2956|
)) (exists ((|x#0@@4| Int) (|y#0@@2| Int) ) (!  (and (and (and (<= (LitInt 12) |x#0@@4|) (< |x#0@@4| |y#0@@2|)) (< |y#0@@2| 15)) (_module.__default.Thirteen |x#0@@4|))
 :qid |Comprehensionsdfy.40:16|
 :skolemid |2955|
)))))))))))))))))) (=> (or (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1))))) (or (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 12)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt (- 15 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen (LitInt 0)))) (or (exists ((|x#0@@5| Int) ) (!  (and ($Is intType (int_2_U (LitInt (- 15 1))) TInt) (and (and (and (<= (LitInt 12) |x#0@@5|) (< |x#0@@5| (- 15 1))) (< (- 15 1) 15)) (_module.__default.Thirteen |x#0@@5|)))
 :qid |Comprehensionsdfy.40:16|
 :skolemid |2961|
)) (or (and (and ($Is intType (int_2_U (LitInt (- (- 15 1) 1))) TInt) ($Is intType (int_2_U (LitInt (+ (- (- 15 1) 1) 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt (- (- 15 1) 1))) (< (- (- 15 1) 1) (+ (- (- 15 1) 1) 1))) (< (+ (- (- 15 1) 1) 1) 15)) (_module.__default.Thirteen (LitInt (- (- 15 1) 1))))) (or (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt (+ 12 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 (+ 12 1))) (< (+ 12 1) 15)) (_module.__default.Thirteen (LitInt 12)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt (+ 0 1))) TInt)) (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 (+ 0 1))) (< (+ 0 1) 15)) (_module.__default.Thirteen (LitInt 0)))) (or (exists ((|x#0@@6| Int) ) (!  (and ($Is intType (int_2_U (+ |x#0@@6| 1)) TInt) (and (and (and (<= (LitInt 12) |x#0@@6|) (< |x#0@@6| (+ |x#0@@6| 1))) (< (+ |x#0@@6| 1) 15)) (_module.__default.Thirteen |x#0@@6|)))
 :qid |Comprehensionsdfy.40:16|
 :skolemid |2960|
)) (or (and (and ($Is intType (int_2_U (LitInt (- 0 1))) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (<= (LitInt 12) (LitInt (- 0 1))) (< (- 0 1) 0)) (< 0 15)) (_module.__default.Thirteen (LitInt (- 0 1))))) (or (and (and ($Is intType (int_2_U (LitInt 12)) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 12)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) TInt) ($Is intType (int_2_U (LitInt 0)) TInt)) (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 0)) (< 0 15)) (_module.__default.Thirteen (LitInt 0)))) (or (exists ((|x#0@@7| Int) ) (!  (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (and (<= (LitInt 12) |x#0@@7|) (< |x#0@@7| 0)) (< 0 15)) (_module.__default.Thirteen |x#0@@7|)))
 :qid |Comprehensionsdfy.40:16|
 :skolemid |2959|
)) (or (exists ((|y#0@@3| Int) ) (!  (and ($Is intType (int_2_U (- |y#0@@3| 1)) TInt) (and (and (and (<= (LitInt 12) (- |y#0@@3| 1)) (< (- |y#0@@3| 1) |y#0@@3|)) (< |y#0@@3| 15)) (_module.__default.Thirteen (- |y#0@@3| 1))))
 :qid |Comprehensionsdfy.40:19|
 :skolemid |2958|
)) (or (exists ((|y#0@@4| Int) ) (!  (and ($Is intType (int_2_U (LitInt 12)) TInt) (and (and (and (<= (LitInt 12) (LitInt 12)) (< 12 |y#0@@4|)) (< |y#0@@4| 15)) (_module.__default.Thirteen (LitInt 12))))
 :qid |Comprehensionsdfy.40:19|
 :skolemid |2957|
)) (or (exists ((|y#0@@5| Int) ) (!  (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (and (<= (LitInt 12) (LitInt 0)) (< 0 |y#0@@5|)) (< |y#0@@5| 15)) (_module.__default.Thirteen (LitInt 0))))
 :qid |Comprehensionsdfy.40:19|
 :skolemid |2956|
)) (exists ((|x#0@@8| Int) (|y#0@@6| Int) ) (!  (and (and (and (<= (LitInt 12) |x#0@@8|) (< |x#0@@8| |y#0@@6|)) (< |y#0@@6| 15)) (_module.__default.Thirteen |x#0@@8|))
 :qid |Comprehensionsdfy.40:16|
 :skolemid |2955|
))))))))))))))))) (=> (and (and (and (and (and (<= (LitInt 12) |x#1@0|) (< |x#1@0| |y#1@0|)) (< |y#1@0| 15)) (_module.__default.Thirteen |x#1@0|)) (=> (<= (LitInt 12) |x#2@0|) (=> (< |x#2@0| |y#2@0|) (=> (< |y#2@0| 15) (|_module.__default.Thirteen#canCall| |x#2@0|))))) (and (and (and (<= (LitInt 12) |x#2@0|) (< |x#2@0| |y#2@0|)) (< |y#2@0| 15)) (_module.__default.Thirteen |x#2@0|))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |x#1@0|)) ($Box intType (int_2_U |y#1@0|))) (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |x#2@0|)) ($Box intType (int_2_U |y#2@0|))))) (=> (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |x#1@0|)) ($Box intType (int_2_U |y#1@0|))) (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |x#2@0|)) ($Box intType (int_2_U |y#2@0|)))) (=> (and (and |$let#0$canCall| |$let#0$canCall|) (and (= |p#0@0| (let ((|y#0@@7| |$let#0_y|))
(let ((|x#0@@9| |$let#0_x|))
(|#_System._tuple#2._#Make2| ($Box intType (int_2_U |x#0@@9|)) ($Box intType (int_2_U |y#0@@7|)))))) (|$IsA#_System.Tuple2| |p#0@0|))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (|_System.Tuple2#Equal| |p#0@0| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 13))) ($Box intType (int_2_U (LitInt 14)))))) (=> (|_System.Tuple2#Equal| |p#0@0| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 13))) ($Box intType (int_2_U (LitInt 14))))) (and (=> (= (ControlFlow 0 19) 18) anon24_Then_correct) (=> (= (ControlFlow 0 19) 2) anon24_Else_correct))))))))))))
(let ((anon23_Else_correct  (=> (and (not (and (and (<= (LitInt 12) |x#1@0|) (< |x#1@0| |y#1@0|)) (< |y#1@0| 15))) (= (ControlFlow 0 24) 19)) anon7_correct)))
(let ((anon23_Then_correct  (=> (and (and (and (and (<= (LitInt 12) |x#1@0|) (< |x#1@0| |y#1@0|)) (< |y#1@0| 15)) ($IsAlloc intType (int_2_U |x#1@0|) TInt $Heap)) (and (|_module.__default.Thirteen#canCall| |x#1@0|) (= (ControlFlow 0 23) 19))) anon7_correct)))
(let ((anon22_Else_correct  (=> (not (and (<= (LitInt 12) |x#1@0|) (< |x#1@0| |y#1@0|))) (and (=> (= (ControlFlow 0 26) 23) anon23_Then_correct) (=> (= (ControlFlow 0 26) 24) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (<= (LitInt 12) |x#1@0|) (< |x#1@0| |y#1@0|)) (and (=> (= (ControlFlow 0 25) 23) anon23_Then_correct) (=> (= (ControlFlow 0 25) 24) anon23_Else_correct)))))
(let ((anon21_Else_correct  (=> (< |x#1@0| (LitInt 12)) (and (=> (= (ControlFlow 0 28) 25) anon22_Then_correct) (=> (= (ControlFlow 0 28) 26) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (<= (LitInt 12) |x#1@0|) (and (=> (= (ControlFlow 0 27) 25) anon22_Then_correct) (=> (= (ControlFlow 0 27) 26) anon22_Else_correct)))))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 29) 27) anon21_Then_correct) (=> (= (ControlFlow 0 29) 28) anon21_Else_correct))))
(let ((anon20_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |##x#0@0| (LitInt 13)) ($IsAlloc intType (int_2_U |##x#0@0|) TInt $Heap)) (and (|_module.__default.Thirteen#canCall| (LitInt 13)) (|_module.__default.Thirteen#canCall| (LitInt 13)))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (=> (|_module.__default.Thirteen#canCall| (LitInt 13)) (or (U_2_bool (Lit boolType (bool_2_U (_module.__default.Thirteen (LitInt 13))))) (= (LitInt 13) (LitInt 13))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.__default.Thirteen (LitInt 13))))) (and (=> (= (ControlFlow 0 30) 29) anon20_Then_correct) (=> (= (ControlFlow 0 30) 1) anon20_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |p#0| (Tclass._System.Tuple2 TInt TInt)) ($IsAlloc DatatypeTypeType |p#0| (Tclass._System.Tuple2 TInt TInt) $Heap)) true) (=> (and (and (and ($Is DatatypeTypeType |q#0| (Tclass._System.Tuple3 TInt TInt (TSeq TChar))) ($IsAlloc DatatypeTypeType |q#0| (Tclass._System.Tuple3 TInt TInt (TSeq TChar)) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 32) 30))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
