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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun |##_System._tuple#20._#Make20| () T@U)
(declare-fun Tagclass._System.Tuple20 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun |tytagFamily$_tuple#20| () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun _System.Tuple20.___hMake20_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple20 (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.SumAgain (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.SumAgain#canCall| (T@U) Bool)
(declare-fun Tclass._module.List () T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.List.head (T@U) Int)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |#_System._tuple#20._#Make20| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun BoxType () T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _System.Tuple20._0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _System.Tuple20._1 (T@U) T@U)
(declare-fun _System.Tuple20._2 (T@U) T@U)
(declare-fun _System.Tuple20._3 (T@U) T@U)
(declare-fun _System.Tuple20._4 (T@U) T@U)
(declare-fun _System.Tuple20._5 (T@U) T@U)
(declare-fun _System.Tuple20._6 (T@U) T@U)
(declare-fun _System.Tuple20._7 (T@U) T@U)
(declare-fun _System.Tuple20._8 (T@U) T@U)
(declare-fun _System.Tuple20._9 (T@U) T@U)
(declare-fun _System.Tuple20._10 (T@U) T@U)
(declare-fun _System.Tuple20._11 (T@U) T@U)
(declare-fun _System.Tuple20._12 (T@U) T@U)
(declare-fun _System.Tuple20._13 (T@U) T@U)
(declare-fun _System.Tuple20._14 (T@U) T@U)
(declare-fun _System.Tuple20._15 (T@U) T@U)
(declare-fun _System.Tuple20._16 (T@U) T@U)
(declare-fun _System.Tuple20._17 (T@U) T@U)
(declare-fun _System.Tuple20._18 (T@U) T@U)
(declare-fun _System.Tuple20._19 (T@U) T@U)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (Int T@U) T@U)
(declare-fun _module.__default.Up (T@U Int Int) T@U)
(declare-fun |_module.__default.Up#canCall| (Int Int) Bool)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun Tclass._System.Tuple20_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_2 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_3 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_4 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_5 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_6 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_7 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_8 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_9 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_10 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_11 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_12 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_13 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_14 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_15 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_16 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_17 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_18 (T@U) T@U)
(declare-fun Tclass._System.Tuple20_19 (T@U) T@U)
(declare-fun _module.__default.Sum (T@U T@U) Int)
(declare-fun |_module.__default.Sum#canCall| (T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 |##_System._tuple#20._#Make20| Tagclass._System.Tuple20 Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$nat |tytagFamily$_tuple#2| |tytagFamily$_tuple#0| |tytagFamily$_tuple#20| tytagFamily$List)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#20$T0| T@U) (|_System._tuple#20$T1| T@U) (|_System._tuple#20$T2| T@U) (|_System._tuple#20$T3| T@U) (|_System._tuple#20$T4| T@U) (|_System._tuple#20$T5| T@U) (|_System._tuple#20$T6| T@U) (|_System._tuple#20$T7| T@U) (|_System._tuple#20$T8| T@U) (|_System._tuple#20$T9| T@U) (|_System._tuple#20$T10| T@U) (|_System._tuple#20$T11| T@U) (|_System._tuple#20$T12| T@U) (|_System._tuple#20$T13| T@U) (|_System._tuple#20$T14| T@U) (|_System._tuple#20$T15| T@U) (|_System._tuple#20$T16| T@U) (|_System._tuple#20$T17| T@U) (|_System._tuple#20$T18| T@U) (|_System._tuple#20$T19| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple20 |_System._tuple#20$T0| |_System._tuple#20$T1| |_System._tuple#20$T2| |_System._tuple#20$T3| |_System._tuple#20$T4| |_System._tuple#20$T5| |_System._tuple#20$T6| |_System._tuple#20$T7| |_System._tuple#20$T8| |_System._tuple#20$T9| |_System._tuple#20$T10| |_System._tuple#20$T11| |_System._tuple#20$T12| |_System._tuple#20$T13| |_System._tuple#20$T14| |_System._tuple#20$T15| |_System._tuple#20$T16| |_System._tuple#20$T17| |_System._tuple#20$T18| |_System._tuple#20$T19|)) (_System.Tuple20.___hMake20_q d))
 :qid |unknown.0:0|
 :skolemid |1910|
 :pattern ( (_System.Tuple20.___hMake20_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple20 |_System._tuple#20$T0| |_System._tuple#20$T1| |_System._tuple#20$T2| |_System._tuple#20$T3| |_System._tuple#20$T4| |_System._tuple#20$T5| |_System._tuple#20$T6| |_System._tuple#20$T7| |_System._tuple#20$T8| |_System._tuple#20$T9| |_System._tuple#20$T10| |_System._tuple#20$T11| |_System._tuple#20$T12| |_System._tuple#20$T13| |_System._tuple#20$T14| |_System._tuple#20$T15| |_System._tuple#20$T16| |_System._tuple#20$T17| |_System._tuple#20$T18| |_System._tuple#20$T19|)))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1666|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.SumAgain#canCall| (Lit DatatypeTypeType |xs#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0| Tclass._module.List))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|tail#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.SumAgain#canCall| |tail#4|))) (= (_module.__default.SumAgain ($LS $ly) (Lit DatatypeTypeType |xs#0|)) (let ((|r#1| (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) 0 (let ((|tail#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#3| (LitInt (_module.List.head (Lit DatatypeTypeType |xs#0|)))))
(LitInt (+ |x#3| (_module.__default.SumAgain ($LS $ly) |tail#3|))))))))
|r#1|))))
 :qid |Datatypedfy.56:10|
 :weight 3
 :skolemid |1994|
 :pattern ( (_module.__default.SumAgain ($LS $ly) (Lit DatatypeTypeType |xs#0|)))
))))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1789|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((|_System._tuple#20$T0@@0| T@U) (|_System._tuple#20$T1@@0| T@U) (|_System._tuple#20$T2@@0| T@U) (|_System._tuple#20$T3@@0| T@U) (|_System._tuple#20$T4@@0| T@U) (|_System._tuple#20$T5@@0| T@U) (|_System._tuple#20$T6@@0| T@U) (|_System._tuple#20$T7@@0| T@U) (|_System._tuple#20$T8@@0| T@U) (|_System._tuple#20$T9@@0| T@U) (|_System._tuple#20$T10@@0| T@U) (|_System._tuple#20$T11@@0| T@U) (|_System._tuple#20$T12@@0| T@U) (|_System._tuple#20$T13@@0| T@U) (|_System._tuple#20$T14@@0| T@U) (|_System._tuple#20$T15@@0| T@U) (|_System._tuple#20$T16@@0| T@U) (|_System._tuple#20$T17@@0| T@U) (|_System._tuple#20$T18@@0| T@U) (|_System._tuple#20$T19@@0| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple20 |_System._tuple#20$T0@@0| |_System._tuple#20$T1@@0| |_System._tuple#20$T2@@0| |_System._tuple#20$T3@@0| |_System._tuple#20$T4@@0| |_System._tuple#20$T5@@0| |_System._tuple#20$T6@@0| |_System._tuple#20$T7@@0| |_System._tuple#20$T8@@0| |_System._tuple#20$T9@@0| |_System._tuple#20$T10@@0| |_System._tuple#20$T11@@0| |_System._tuple#20$T12@@0| |_System._tuple#20$T13@@0| |_System._tuple#20$T14@@0| |_System._tuple#20$T15@@0| |_System._tuple#20$T16@@0| |_System._tuple#20$T17@@0| |_System._tuple#20$T18@@0| |_System._tuple#20$T19@@0|)) Tagclass._System.Tuple20) (= (TagFamily (Tclass._System.Tuple20 |_System._tuple#20$T0@@0| |_System._tuple#20$T1@@0| |_System._tuple#20$T2@@0| |_System._tuple#20$T3@@0| |_System._tuple#20$T4@@0| |_System._tuple#20$T5@@0| |_System._tuple#20$T6@@0| |_System._tuple#20$T7@@0| |_System._tuple#20$T8@@0| |_System._tuple#20$T9@@0| |_System._tuple#20$T10@@0| |_System._tuple#20$T11@@0| |_System._tuple#20$T12@@0| |_System._tuple#20$T13@@0| |_System._tuple#20$T14@@0| |_System._tuple#20$T15@@0| |_System._tuple#20$T16@@0| |_System._tuple#20$T17@@0| |_System._tuple#20$T18@@0| |_System._tuple#20$T19@@0|)) |tytagFamily$_tuple#20|))
 :qid |unknown.0:0|
 :skolemid |1804|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@0| |_System._tuple#20$T1@@0| |_System._tuple#20$T2@@0| |_System._tuple#20$T3@@0| |_System._tuple#20$T4@@0| |_System._tuple#20$T5@@0| |_System._tuple#20$T6@@0| |_System._tuple#20$T7@@0| |_System._tuple#20$T8@@0| |_System._tuple#20$T9@@0| |_System._tuple#20$T10@@0| |_System._tuple#20$T11@@0| |_System._tuple#20$T12@@0| |_System._tuple#20$T13@@0| |_System._tuple#20$T14@@0| |_System._tuple#20$T15@@0| |_System._tuple#20$T16@@0| |_System._tuple#20$T17@@0| |_System._tuple#20$T18@@0| |_System._tuple#20$T19@@0|))
)))
(assert (forall ((|_System._tuple#20$T0@@1| T@U) (|_System._tuple#20$T1@@1| T@U) (|_System._tuple#20$T2@@1| T@U) (|_System._tuple#20$T3@@1| T@U) (|_System._tuple#20$T4@@1| T@U) (|_System._tuple#20$T5@@1| T@U) (|_System._tuple#20$T6@@1| T@U) (|_System._tuple#20$T7@@1| T@U) (|_System._tuple#20$T8@@1| T@U) (|_System._tuple#20$T9@@1| T@U) (|_System._tuple#20$T10@@1| T@U) (|_System._tuple#20$T11@@1| T@U) (|_System._tuple#20$T12@@1| T@U) (|_System._tuple#20$T13@@1| T@U) (|_System._tuple#20$T14@@1| T@U) (|_System._tuple#20$T15@@1| T@U) (|_System._tuple#20$T16@@1| T@U) (|_System._tuple#20$T17@@1| T@U) (|_System._tuple#20$T18@@1| T@U) (|_System._tuple#20$T19@@1| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) (|a#14#3#0| T@U) (|a#14#4#0| T@U) (|a#14#5#0| T@U) (|a#14#6#0| T@U) (|a#14#7#0| T@U) (|a#14#8#0| T@U) (|a#14#9#0| T@U) (|a#14#10#0| T@U) (|a#14#11#0| T@U) (|a#14#12#0| T@U) (|a#14#13#0| T@U) (|a#14#14#0| T@U) (|a#14#15#0| T@U) (|a#14#16#0| T@U) (|a#14#17#0| T@U) (|a#14#18#0| T@U) (|a#14#19#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#20._#Make20| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0| |a#14#6#0| |a#14#7#0| |a#14#8#0| |a#14#9#0| |a#14#10#0| |a#14#11#0| |a#14#12#0| |a#14#13#0| |a#14#14#0| |a#14#15#0| |a#14#16#0| |a#14#17#0| |a#14#18#0| |a#14#19#0|) (Tclass._System.Tuple20 |_System._tuple#20$T0@@1| |_System._tuple#20$T1@@1| |_System._tuple#20$T2@@1| |_System._tuple#20$T3@@1| |_System._tuple#20$T4@@1| |_System._tuple#20$T5@@1| |_System._tuple#20$T6@@1| |_System._tuple#20$T7@@1| |_System._tuple#20$T8@@1| |_System._tuple#20$T9@@1| |_System._tuple#20$T10@@1| |_System._tuple#20$T11@@1| |_System._tuple#20$T12@@1| |_System._tuple#20$T13@@1| |_System._tuple#20$T14@@1| |_System._tuple#20$T15@@1| |_System._tuple#20$T16@@1| |_System._tuple#20$T17@@1| |_System._tuple#20$T18@@1| |_System._tuple#20$T19@@1|))  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsBox |a#14#0#0| |_System._tuple#20$T0@@1|) ($IsBox |a#14#1#0| |_System._tuple#20$T1@@1|)) ($IsBox |a#14#2#0| |_System._tuple#20$T2@@1|)) ($IsBox |a#14#3#0| |_System._tuple#20$T3@@1|)) ($IsBox |a#14#4#0| |_System._tuple#20$T4@@1|)) ($IsBox |a#14#5#0| |_System._tuple#20$T5@@1|)) ($IsBox |a#14#6#0| |_System._tuple#20$T6@@1|)) ($IsBox |a#14#7#0| |_System._tuple#20$T7@@1|)) ($IsBox |a#14#8#0| |_System._tuple#20$T8@@1|)) ($IsBox |a#14#9#0| |_System._tuple#20$T9@@1|)) ($IsBox |a#14#10#0| |_System._tuple#20$T10@@1|)) ($IsBox |a#14#11#0| |_System._tuple#20$T11@@1|)) ($IsBox |a#14#12#0| |_System._tuple#20$T12@@1|)) ($IsBox |a#14#13#0| |_System._tuple#20$T13@@1|)) ($IsBox |a#14#14#0| |_System._tuple#20$T14@@1|)) ($IsBox |a#14#15#0| |_System._tuple#20$T15@@1|)) ($IsBox |a#14#16#0| |_System._tuple#20$T16@@1|)) ($IsBox |a#14#17#0| |_System._tuple#20$T17@@1|)) ($IsBox |a#14#18#0| |_System._tuple#20$T18@@1|)) ($IsBox |a#14#19#0| |_System._tuple#20$T19@@1|)))
 :qid |unknown.0:0|
 :skolemid |1826|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#20._#Make20| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0| |a#14#6#0| |a#14#7#0| |a#14#8#0| |a#14#9#0| |a#14#10#0| |a#14#11#0| |a#14#12#0| |a#14#13#0| |a#14#14#0| |a#14#15#0| |a#14#16#0| |a#14#17#0| |a#14#18#0| |a#14#19#0|) (Tclass._System.Tuple20 |_System._tuple#20$T0@@1| |_System._tuple#20$T1@@1| |_System._tuple#20$T2@@1| |_System._tuple#20$T3@@1| |_System._tuple#20$T4@@1| |_System._tuple#20$T5@@1| |_System._tuple#20$T6@@1| |_System._tuple#20$T7@@1| |_System._tuple#20$T8@@1| |_System._tuple#20$T9@@1| |_System._tuple#20$T10@@1| |_System._tuple#20$T11@@1| |_System._tuple#20$T12@@1| |_System._tuple#20$T13@@1| |_System._tuple#20$T14@@1| |_System._tuple#20$T15@@1| |_System._tuple#20$T16@@1| |_System._tuple#20$T17@@1| |_System._tuple#20$T18@@1| |_System._tuple#20$T19@@1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1777|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert (= (Ctor BoxType) 4))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) (|a#15#3#0| T@U) (|a#15#4#0| T@U) (|a#15#5#0| T@U) (|a#15#6#0| T@U) (|a#15#7#0| T@U) (|a#15#8#0| T@U) (|a#15#9#0| T@U) (|a#15#10#0| T@U) (|a#15#11#0| T@U) (|a#15#12#0| T@U) (|a#15#13#0| T@U) (|a#15#14#0| T@U) (|a#15#15#0| T@U) (|a#15#16#0| T@U) (|a#15#17#0| T@U) (|a#15#18#0| T@U) (|a#15#19#0| T@U) ) (! (= (|#_System._tuple#20._#Make20| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|) (Lit BoxType |a#15#3#0|) (Lit BoxType |a#15#4#0|) (Lit BoxType |a#15#5#0|) (Lit BoxType |a#15#6#0|) (Lit BoxType |a#15#7#0|) (Lit BoxType |a#15#8#0|) (Lit BoxType |a#15#9#0|) (Lit BoxType |a#15#10#0|) (Lit BoxType |a#15#11#0|) (Lit BoxType |a#15#12#0|) (Lit BoxType |a#15#13#0|) (Lit BoxType |a#15#14#0|) (Lit BoxType |a#15#15#0|) (Lit BoxType |a#15#16#0|) (Lit BoxType |a#15#17#0|) (Lit BoxType |a#15#18#0|) (Lit BoxType |a#15#19#0|)) (Lit DatatypeTypeType (|#_System._tuple#20._#Make20| |a#15#0#0| |a#15#1#0| |a#15#2#0| |a#15#3#0| |a#15#4#0| |a#15#5#0| |a#15#6#0| |a#15#7#0| |a#15#8#0| |a#15#9#0| |a#15#10#0| |a#15#11#0| |a#15#12#0| |a#15#13#0| |a#15#14#0| |a#15#15#0| |a#15#16#0| |a#15#17#0| |a#15#18#0| |a#15#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1868|
 :pattern ( (|#_System._tuple#20._#Make20| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|) (Lit BoxType |a#15#3#0|) (Lit BoxType |a#15#4#0|) (Lit BoxType |a#15#5#0|) (Lit BoxType |a#15#6#0|) (Lit BoxType |a#15#7#0|) (Lit BoxType |a#15#8#0|) (Lit BoxType |a#15#9#0|) (Lit BoxType |a#15#10#0|) (Lit BoxType |a#15#11#0|) (Lit BoxType |a#15#12#0|) (Lit BoxType |a#15#13#0|) (Lit BoxType |a#15#14#0|) (Lit BoxType |a#15#15#0|) (Lit BoxType |a#15#16#0|) (Lit BoxType |a#15#17#0|) (Lit BoxType |a#15#18#0|) (Lit BoxType |a#15#19#0|)))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple20.___hMake20_q d@@1) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) (|a#13#3#0| T@U) (|a#13#4#0| T@U) (|a#13#5#0| T@U) (|a#13#6#0| T@U) (|a#13#7#0| T@U) (|a#13#8#0| T@U) (|a#13#9#0| T@U) (|a#13#10#0| T@U) (|a#13#11#0| T@U) (|a#13#12#0| T@U) (|a#13#13#0| T@U) (|a#13#14#0| T@U) (|a#13#15#0| T@U) (|a#13#16#0| T@U) (|a#13#17#0| T@U) (|a#13#18#0| T@U) (|a#13#19#0| T@U) ) (! (= d@@1 (|#_System._tuple#20._#Make20| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0| |a#13#6#0| |a#13#7#0| |a#13#8#0| |a#13#9#0| |a#13#10#0| |a#13#11#0| |a#13#12#0| |a#13#13#0| |a#13#14#0| |a#13#15#0| |a#13#16#0| |a#13#17#0| |a#13#18#0| |a#13#19#0|))
 :qid |unknown.0:0|
 :skolemid |1802|
)))
 :qid |unknown.0:0|
 :skolemid |1803|
 :pattern ( (_System.Tuple20.___hMake20_q d@@1))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
 :skolemid |1439|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1440|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1338|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1336|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@2 T@U) (|_System._tuple#20$T0@@2| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple20.___hMake20_q d@@2) (exists ((|_System._tuple#20$T1@@2| T@U) (|_System._tuple#20$T2@@2| T@U) (|_System._tuple#20$T3@@2| T@U) (|_System._tuple#20$T4@@2| T@U) (|_System._tuple#20$T5@@2| T@U) (|_System._tuple#20$T6@@2| T@U) (|_System._tuple#20$T7@@2| T@U) (|_System._tuple#20$T8@@2| T@U) (|_System._tuple#20$T9@@2| T@U) (|_System._tuple#20$T10@@2| T@U) (|_System._tuple#20$T11@@2| T@U) (|_System._tuple#20$T12@@2| T@U) (|_System._tuple#20$T13@@2| T@U) (|_System._tuple#20$T14@@2| T@U) (|_System._tuple#20$T15@@2| T@U) (|_System._tuple#20$T16@@2| T@U) (|_System._tuple#20$T17@@2| T@U) (|_System._tuple#20$T18@@2| T@U) (|_System._tuple#20$T19@@2| T@U) ) (! ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple20 |_System._tuple#20$T0@@2| |_System._tuple#20$T1@@2| |_System._tuple#20$T2@@2| |_System._tuple#20$T3@@2| |_System._tuple#20$T4@@2| |_System._tuple#20$T5@@2| |_System._tuple#20$T6@@2| |_System._tuple#20$T7@@2| |_System._tuple#20$T8@@2| |_System._tuple#20$T9@@2| |_System._tuple#20$T10@@2| |_System._tuple#20$T11@@2| |_System._tuple#20$T12@@2| |_System._tuple#20$T13@@2| |_System._tuple#20$T14@@2| |_System._tuple#20$T15@@2| |_System._tuple#20$T16@@2| |_System._tuple#20$T17@@2| |_System._tuple#20$T18@@2| |_System._tuple#20$T19@@2|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |1828|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple20 |_System._tuple#20$T0@@2| |_System._tuple#20$T1@@2| |_System._tuple#20$T2@@2| |_System._tuple#20$T3@@2| |_System._tuple#20$T4@@2| |_System._tuple#20$T5@@2| |_System._tuple#20$T6@@2| |_System._tuple#20$T7@@2| |_System._tuple#20$T8@@2| |_System._tuple#20$T9@@2| |_System._tuple#20$T10@@2| |_System._tuple#20$T11@@2| |_System._tuple#20$T12@@2| |_System._tuple#20$T13@@2| |_System._tuple#20$T14@@2| |_System._tuple#20$T15@@2| |_System._tuple#20$T16@@2| |_System._tuple#20$T17@@2| |_System._tuple#20$T18@@2| |_System._tuple#20$T19@@2|) $h@@0))
)))) ($IsAllocBox (_System.Tuple20._0 d@@2) |_System._tuple#20$T0@@2| $h@@0))
 :qid |unknown.0:0|
 :skolemid |1829|
 :pattern ( ($IsAllocBox (_System.Tuple20._0 d@@2) |_System._tuple#20$T0@@2| $h@@0))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#20$T1@@3| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple20.___hMake20_q d@@3) (exists ((|_System._tuple#20$T0@@3| T@U) (|_System._tuple#20$T2@@3| T@U) (|_System._tuple#20$T3@@3| T@U) (|_System._tuple#20$T4@@3| T@U) (|_System._tuple#20$T5@@3| T@U) (|_System._tuple#20$T6@@3| T@U) (|_System._tuple#20$T7@@3| T@U) (|_System._tuple#20$T8@@3| T@U) (|_System._tuple#20$T9@@3| T@U) (|_System._tuple#20$T10@@3| T@U) (|_System._tuple#20$T11@@3| T@U) (|_System._tuple#20$T12@@3| T@U) (|_System._tuple#20$T13@@3| T@U) (|_System._tuple#20$T14@@3| T@U) (|_System._tuple#20$T15@@3| T@U) (|_System._tuple#20$T16@@3| T@U) (|_System._tuple#20$T17@@3| T@U) (|_System._tuple#20$T18@@3| T@U) (|_System._tuple#20$T19@@3| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple20 |_System._tuple#20$T0@@3| |_System._tuple#20$T1@@3| |_System._tuple#20$T2@@3| |_System._tuple#20$T3@@3| |_System._tuple#20$T4@@3| |_System._tuple#20$T5@@3| |_System._tuple#20$T6@@3| |_System._tuple#20$T7@@3| |_System._tuple#20$T8@@3| |_System._tuple#20$T9@@3| |_System._tuple#20$T10@@3| |_System._tuple#20$T11@@3| |_System._tuple#20$T12@@3| |_System._tuple#20$T13@@3| |_System._tuple#20$T14@@3| |_System._tuple#20$T15@@3| |_System._tuple#20$T16@@3| |_System._tuple#20$T17@@3| |_System._tuple#20$T18@@3| |_System._tuple#20$T19@@3|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |1830|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple20 |_System._tuple#20$T0@@3| |_System._tuple#20$T1@@3| |_System._tuple#20$T2@@3| |_System._tuple#20$T3@@3| |_System._tuple#20$T4@@3| |_System._tuple#20$T5@@3| |_System._tuple#20$T6@@3| |_System._tuple#20$T7@@3| |_System._tuple#20$T8@@3| |_System._tuple#20$T9@@3| |_System._tuple#20$T10@@3| |_System._tuple#20$T11@@3| |_System._tuple#20$T12@@3| |_System._tuple#20$T13@@3| |_System._tuple#20$T14@@3| |_System._tuple#20$T15@@3| |_System._tuple#20$T16@@3| |_System._tuple#20$T17@@3| |_System._tuple#20$T18@@3| |_System._tuple#20$T19@@3|) $h@@1))
)))) ($IsAllocBox (_System.Tuple20._1 d@@3) |_System._tuple#20$T1@@3| $h@@1))
 :qid |unknown.0:0|
 :skolemid |1831|
 :pattern ( ($IsAllocBox (_System.Tuple20._1 d@@3) |_System._tuple#20$T1@@3| $h@@1))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#20$T2@@4| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple20.___hMake20_q d@@4) (exists ((|_System._tuple#20$T0@@4| T@U) (|_System._tuple#20$T1@@4| T@U) (|_System._tuple#20$T3@@4| T@U) (|_System._tuple#20$T4@@4| T@U) (|_System._tuple#20$T5@@4| T@U) (|_System._tuple#20$T6@@4| T@U) (|_System._tuple#20$T7@@4| T@U) (|_System._tuple#20$T8@@4| T@U) (|_System._tuple#20$T9@@4| T@U) (|_System._tuple#20$T10@@4| T@U) (|_System._tuple#20$T11@@4| T@U) (|_System._tuple#20$T12@@4| T@U) (|_System._tuple#20$T13@@4| T@U) (|_System._tuple#20$T14@@4| T@U) (|_System._tuple#20$T15@@4| T@U) (|_System._tuple#20$T16@@4| T@U) (|_System._tuple#20$T17@@4| T@U) (|_System._tuple#20$T18@@4| T@U) (|_System._tuple#20$T19@@4| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple20 |_System._tuple#20$T0@@4| |_System._tuple#20$T1@@4| |_System._tuple#20$T2@@4| |_System._tuple#20$T3@@4| |_System._tuple#20$T4@@4| |_System._tuple#20$T5@@4| |_System._tuple#20$T6@@4| |_System._tuple#20$T7@@4| |_System._tuple#20$T8@@4| |_System._tuple#20$T9@@4| |_System._tuple#20$T10@@4| |_System._tuple#20$T11@@4| |_System._tuple#20$T12@@4| |_System._tuple#20$T13@@4| |_System._tuple#20$T14@@4| |_System._tuple#20$T15@@4| |_System._tuple#20$T16@@4| |_System._tuple#20$T17@@4| |_System._tuple#20$T18@@4| |_System._tuple#20$T19@@4|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1832|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple20 |_System._tuple#20$T0@@4| |_System._tuple#20$T1@@4| |_System._tuple#20$T2@@4| |_System._tuple#20$T3@@4| |_System._tuple#20$T4@@4| |_System._tuple#20$T5@@4| |_System._tuple#20$T6@@4| |_System._tuple#20$T7@@4| |_System._tuple#20$T8@@4| |_System._tuple#20$T9@@4| |_System._tuple#20$T10@@4| |_System._tuple#20$T11@@4| |_System._tuple#20$T12@@4| |_System._tuple#20$T13@@4| |_System._tuple#20$T14@@4| |_System._tuple#20$T15@@4| |_System._tuple#20$T16@@4| |_System._tuple#20$T17@@4| |_System._tuple#20$T18@@4| |_System._tuple#20$T19@@4|) $h@@2))
)))) ($IsAllocBox (_System.Tuple20._2 d@@4) |_System._tuple#20$T2@@4| $h@@2))
 :qid |unknown.0:0|
 :skolemid |1833|
 :pattern ( ($IsAllocBox (_System.Tuple20._2 d@@4) |_System._tuple#20$T2@@4| $h@@2))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#20$T3@@5| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple20.___hMake20_q d@@5) (exists ((|_System._tuple#20$T0@@5| T@U) (|_System._tuple#20$T1@@5| T@U) (|_System._tuple#20$T2@@5| T@U) (|_System._tuple#20$T4@@5| T@U) (|_System._tuple#20$T5@@5| T@U) (|_System._tuple#20$T6@@5| T@U) (|_System._tuple#20$T7@@5| T@U) (|_System._tuple#20$T8@@5| T@U) (|_System._tuple#20$T9@@5| T@U) (|_System._tuple#20$T10@@5| T@U) (|_System._tuple#20$T11@@5| T@U) (|_System._tuple#20$T12@@5| T@U) (|_System._tuple#20$T13@@5| T@U) (|_System._tuple#20$T14@@5| T@U) (|_System._tuple#20$T15@@5| T@U) (|_System._tuple#20$T16@@5| T@U) (|_System._tuple#20$T17@@5| T@U) (|_System._tuple#20$T18@@5| T@U) (|_System._tuple#20$T19@@5| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple20 |_System._tuple#20$T0@@5| |_System._tuple#20$T1@@5| |_System._tuple#20$T2@@5| |_System._tuple#20$T3@@5| |_System._tuple#20$T4@@5| |_System._tuple#20$T5@@5| |_System._tuple#20$T6@@5| |_System._tuple#20$T7@@5| |_System._tuple#20$T8@@5| |_System._tuple#20$T9@@5| |_System._tuple#20$T10@@5| |_System._tuple#20$T11@@5| |_System._tuple#20$T12@@5| |_System._tuple#20$T13@@5| |_System._tuple#20$T14@@5| |_System._tuple#20$T15@@5| |_System._tuple#20$T16@@5| |_System._tuple#20$T17@@5| |_System._tuple#20$T18@@5| |_System._tuple#20$T19@@5|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |1834|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple20 |_System._tuple#20$T0@@5| |_System._tuple#20$T1@@5| |_System._tuple#20$T2@@5| |_System._tuple#20$T3@@5| |_System._tuple#20$T4@@5| |_System._tuple#20$T5@@5| |_System._tuple#20$T6@@5| |_System._tuple#20$T7@@5| |_System._tuple#20$T8@@5| |_System._tuple#20$T9@@5| |_System._tuple#20$T10@@5| |_System._tuple#20$T11@@5| |_System._tuple#20$T12@@5| |_System._tuple#20$T13@@5| |_System._tuple#20$T14@@5| |_System._tuple#20$T15@@5| |_System._tuple#20$T16@@5| |_System._tuple#20$T17@@5| |_System._tuple#20$T18@@5| |_System._tuple#20$T19@@5|) $h@@3))
)))) ($IsAllocBox (_System.Tuple20._3 d@@5) |_System._tuple#20$T3@@5| $h@@3))
 :qid |unknown.0:0|
 :skolemid |1835|
 :pattern ( ($IsAllocBox (_System.Tuple20._3 d@@5) |_System._tuple#20$T3@@5| $h@@3))
)))
(assert (forall ((d@@6 T@U) (|_System._tuple#20$T4@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple20.___hMake20_q d@@6) (exists ((|_System._tuple#20$T0@@6| T@U) (|_System._tuple#20$T1@@6| T@U) (|_System._tuple#20$T2@@6| T@U) (|_System._tuple#20$T3@@6| T@U) (|_System._tuple#20$T5@@6| T@U) (|_System._tuple#20$T6@@6| T@U) (|_System._tuple#20$T7@@6| T@U) (|_System._tuple#20$T8@@6| T@U) (|_System._tuple#20$T9@@6| T@U) (|_System._tuple#20$T10@@6| T@U) (|_System._tuple#20$T11@@6| T@U) (|_System._tuple#20$T12@@6| T@U) (|_System._tuple#20$T13@@6| T@U) (|_System._tuple#20$T14@@6| T@U) (|_System._tuple#20$T15@@6| T@U) (|_System._tuple#20$T16@@6| T@U) (|_System._tuple#20$T17@@6| T@U) (|_System._tuple#20$T18@@6| T@U) (|_System._tuple#20$T19@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple20 |_System._tuple#20$T0@@6| |_System._tuple#20$T1@@6| |_System._tuple#20$T2@@6| |_System._tuple#20$T3@@6| |_System._tuple#20$T4@@6| |_System._tuple#20$T5@@6| |_System._tuple#20$T6@@6| |_System._tuple#20$T7@@6| |_System._tuple#20$T8@@6| |_System._tuple#20$T9@@6| |_System._tuple#20$T10@@6| |_System._tuple#20$T11@@6| |_System._tuple#20$T12@@6| |_System._tuple#20$T13@@6| |_System._tuple#20$T14@@6| |_System._tuple#20$T15@@6| |_System._tuple#20$T16@@6| |_System._tuple#20$T17@@6| |_System._tuple#20$T18@@6| |_System._tuple#20$T19@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |1836|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple20 |_System._tuple#20$T0@@6| |_System._tuple#20$T1@@6| |_System._tuple#20$T2@@6| |_System._tuple#20$T3@@6| |_System._tuple#20$T4@@6| |_System._tuple#20$T5@@6| |_System._tuple#20$T6@@6| |_System._tuple#20$T7@@6| |_System._tuple#20$T8@@6| |_System._tuple#20$T9@@6| |_System._tuple#20$T10@@6| |_System._tuple#20$T11@@6| |_System._tuple#20$T12@@6| |_System._tuple#20$T13@@6| |_System._tuple#20$T14@@6| |_System._tuple#20$T15@@6| |_System._tuple#20$T16@@6| |_System._tuple#20$T17@@6| |_System._tuple#20$T18@@6| |_System._tuple#20$T19@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple20._4 d@@6) |_System._tuple#20$T4@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |1837|
 :pattern ( ($IsAllocBox (_System.Tuple20._4 d@@6) |_System._tuple#20$T4@@6| $h@@4))
)))
(assert (forall ((d@@7 T@U) (|_System._tuple#20$T5@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple20.___hMake20_q d@@7) (exists ((|_System._tuple#20$T0@@7| T@U) (|_System._tuple#20$T1@@7| T@U) (|_System._tuple#20$T2@@7| T@U) (|_System._tuple#20$T3@@7| T@U) (|_System._tuple#20$T4@@7| T@U) (|_System._tuple#20$T6@@7| T@U) (|_System._tuple#20$T7@@7| T@U) (|_System._tuple#20$T8@@7| T@U) (|_System._tuple#20$T9@@7| T@U) (|_System._tuple#20$T10@@7| T@U) (|_System._tuple#20$T11@@7| T@U) (|_System._tuple#20$T12@@7| T@U) (|_System._tuple#20$T13@@7| T@U) (|_System._tuple#20$T14@@7| T@U) (|_System._tuple#20$T15@@7| T@U) (|_System._tuple#20$T16@@7| T@U) (|_System._tuple#20$T17@@7| T@U) (|_System._tuple#20$T18@@7| T@U) (|_System._tuple#20$T19@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple20 |_System._tuple#20$T0@@7| |_System._tuple#20$T1@@7| |_System._tuple#20$T2@@7| |_System._tuple#20$T3@@7| |_System._tuple#20$T4@@7| |_System._tuple#20$T5@@7| |_System._tuple#20$T6@@7| |_System._tuple#20$T7@@7| |_System._tuple#20$T8@@7| |_System._tuple#20$T9@@7| |_System._tuple#20$T10@@7| |_System._tuple#20$T11@@7| |_System._tuple#20$T12@@7| |_System._tuple#20$T13@@7| |_System._tuple#20$T14@@7| |_System._tuple#20$T15@@7| |_System._tuple#20$T16@@7| |_System._tuple#20$T17@@7| |_System._tuple#20$T18@@7| |_System._tuple#20$T19@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |1838|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple20 |_System._tuple#20$T0@@7| |_System._tuple#20$T1@@7| |_System._tuple#20$T2@@7| |_System._tuple#20$T3@@7| |_System._tuple#20$T4@@7| |_System._tuple#20$T5@@7| |_System._tuple#20$T6@@7| |_System._tuple#20$T7@@7| |_System._tuple#20$T8@@7| |_System._tuple#20$T9@@7| |_System._tuple#20$T10@@7| |_System._tuple#20$T11@@7| |_System._tuple#20$T12@@7| |_System._tuple#20$T13@@7| |_System._tuple#20$T14@@7| |_System._tuple#20$T15@@7| |_System._tuple#20$T16@@7| |_System._tuple#20$T17@@7| |_System._tuple#20$T18@@7| |_System._tuple#20$T19@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple20._5 d@@7) |_System._tuple#20$T5@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |1839|
 :pattern ( ($IsAllocBox (_System.Tuple20._5 d@@7) |_System._tuple#20$T5@@7| $h@@5))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#20$T6@@8| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple20.___hMake20_q d@@8) (exists ((|_System._tuple#20$T0@@8| T@U) (|_System._tuple#20$T1@@8| T@U) (|_System._tuple#20$T2@@8| T@U) (|_System._tuple#20$T3@@8| T@U) (|_System._tuple#20$T4@@8| T@U) (|_System._tuple#20$T5@@8| T@U) (|_System._tuple#20$T7@@8| T@U) (|_System._tuple#20$T8@@8| T@U) (|_System._tuple#20$T9@@8| T@U) (|_System._tuple#20$T10@@8| T@U) (|_System._tuple#20$T11@@8| T@U) (|_System._tuple#20$T12@@8| T@U) (|_System._tuple#20$T13@@8| T@U) (|_System._tuple#20$T14@@8| T@U) (|_System._tuple#20$T15@@8| T@U) (|_System._tuple#20$T16@@8| T@U) (|_System._tuple#20$T17@@8| T@U) (|_System._tuple#20$T18@@8| T@U) (|_System._tuple#20$T19@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple20 |_System._tuple#20$T0@@8| |_System._tuple#20$T1@@8| |_System._tuple#20$T2@@8| |_System._tuple#20$T3@@8| |_System._tuple#20$T4@@8| |_System._tuple#20$T5@@8| |_System._tuple#20$T6@@8| |_System._tuple#20$T7@@8| |_System._tuple#20$T8@@8| |_System._tuple#20$T9@@8| |_System._tuple#20$T10@@8| |_System._tuple#20$T11@@8| |_System._tuple#20$T12@@8| |_System._tuple#20$T13@@8| |_System._tuple#20$T14@@8| |_System._tuple#20$T15@@8| |_System._tuple#20$T16@@8| |_System._tuple#20$T17@@8| |_System._tuple#20$T18@@8| |_System._tuple#20$T19@@8|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple20 |_System._tuple#20$T0@@8| |_System._tuple#20$T1@@8| |_System._tuple#20$T2@@8| |_System._tuple#20$T3@@8| |_System._tuple#20$T4@@8| |_System._tuple#20$T5@@8| |_System._tuple#20$T6@@8| |_System._tuple#20$T7@@8| |_System._tuple#20$T8@@8| |_System._tuple#20$T9@@8| |_System._tuple#20$T10@@8| |_System._tuple#20$T11@@8| |_System._tuple#20$T12@@8| |_System._tuple#20$T13@@8| |_System._tuple#20$T14@@8| |_System._tuple#20$T15@@8| |_System._tuple#20$T16@@8| |_System._tuple#20$T17@@8| |_System._tuple#20$T18@@8| |_System._tuple#20$T19@@8|) $h@@6))
)))) ($IsAllocBox (_System.Tuple20._6 d@@8) |_System._tuple#20$T6@@8| $h@@6))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAllocBox (_System.Tuple20._6 d@@8) |_System._tuple#20$T6@@8| $h@@6))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#20$T7@@9| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple20.___hMake20_q d@@9) (exists ((|_System._tuple#20$T0@@9| T@U) (|_System._tuple#20$T1@@9| T@U) (|_System._tuple#20$T2@@9| T@U) (|_System._tuple#20$T3@@9| T@U) (|_System._tuple#20$T4@@9| T@U) (|_System._tuple#20$T5@@9| T@U) (|_System._tuple#20$T6@@9| T@U) (|_System._tuple#20$T8@@9| T@U) (|_System._tuple#20$T9@@9| T@U) (|_System._tuple#20$T10@@9| T@U) (|_System._tuple#20$T11@@9| T@U) (|_System._tuple#20$T12@@9| T@U) (|_System._tuple#20$T13@@9| T@U) (|_System._tuple#20$T14@@9| T@U) (|_System._tuple#20$T15@@9| T@U) (|_System._tuple#20$T16@@9| T@U) (|_System._tuple#20$T17@@9| T@U) (|_System._tuple#20$T18@@9| T@U) (|_System._tuple#20$T19@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple20 |_System._tuple#20$T0@@9| |_System._tuple#20$T1@@9| |_System._tuple#20$T2@@9| |_System._tuple#20$T3@@9| |_System._tuple#20$T4@@9| |_System._tuple#20$T5@@9| |_System._tuple#20$T6@@9| |_System._tuple#20$T7@@9| |_System._tuple#20$T8@@9| |_System._tuple#20$T9@@9| |_System._tuple#20$T10@@9| |_System._tuple#20$T11@@9| |_System._tuple#20$T12@@9| |_System._tuple#20$T13@@9| |_System._tuple#20$T14@@9| |_System._tuple#20$T15@@9| |_System._tuple#20$T16@@9| |_System._tuple#20$T17@@9| |_System._tuple#20$T18@@9| |_System._tuple#20$T19@@9|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |1842|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple20 |_System._tuple#20$T0@@9| |_System._tuple#20$T1@@9| |_System._tuple#20$T2@@9| |_System._tuple#20$T3@@9| |_System._tuple#20$T4@@9| |_System._tuple#20$T5@@9| |_System._tuple#20$T6@@9| |_System._tuple#20$T7@@9| |_System._tuple#20$T8@@9| |_System._tuple#20$T9@@9| |_System._tuple#20$T10@@9| |_System._tuple#20$T11@@9| |_System._tuple#20$T12@@9| |_System._tuple#20$T13@@9| |_System._tuple#20$T14@@9| |_System._tuple#20$T15@@9| |_System._tuple#20$T16@@9| |_System._tuple#20$T17@@9| |_System._tuple#20$T18@@9| |_System._tuple#20$T19@@9|) $h@@7))
)))) ($IsAllocBox (_System.Tuple20._7 d@@9) |_System._tuple#20$T7@@9| $h@@7))
 :qid |unknown.0:0|
 :skolemid |1843|
 :pattern ( ($IsAllocBox (_System.Tuple20._7 d@@9) |_System._tuple#20$T7@@9| $h@@7))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#20$T8@@10| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple20.___hMake20_q d@@10) (exists ((|_System._tuple#20$T0@@10| T@U) (|_System._tuple#20$T1@@10| T@U) (|_System._tuple#20$T2@@10| T@U) (|_System._tuple#20$T3@@10| T@U) (|_System._tuple#20$T4@@10| T@U) (|_System._tuple#20$T5@@10| T@U) (|_System._tuple#20$T6@@10| T@U) (|_System._tuple#20$T7@@10| T@U) (|_System._tuple#20$T9@@10| T@U) (|_System._tuple#20$T10@@10| T@U) (|_System._tuple#20$T11@@10| T@U) (|_System._tuple#20$T12@@10| T@U) (|_System._tuple#20$T13@@10| T@U) (|_System._tuple#20$T14@@10| T@U) (|_System._tuple#20$T15@@10| T@U) (|_System._tuple#20$T16@@10| T@U) (|_System._tuple#20$T17@@10| T@U) (|_System._tuple#20$T18@@10| T@U) (|_System._tuple#20$T19@@10| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple20 |_System._tuple#20$T0@@10| |_System._tuple#20$T1@@10| |_System._tuple#20$T2@@10| |_System._tuple#20$T3@@10| |_System._tuple#20$T4@@10| |_System._tuple#20$T5@@10| |_System._tuple#20$T6@@10| |_System._tuple#20$T7@@10| |_System._tuple#20$T8@@10| |_System._tuple#20$T9@@10| |_System._tuple#20$T10@@10| |_System._tuple#20$T11@@10| |_System._tuple#20$T12@@10| |_System._tuple#20$T13@@10| |_System._tuple#20$T14@@10| |_System._tuple#20$T15@@10| |_System._tuple#20$T16@@10| |_System._tuple#20$T17@@10| |_System._tuple#20$T18@@10| |_System._tuple#20$T19@@10|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |1844|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple20 |_System._tuple#20$T0@@10| |_System._tuple#20$T1@@10| |_System._tuple#20$T2@@10| |_System._tuple#20$T3@@10| |_System._tuple#20$T4@@10| |_System._tuple#20$T5@@10| |_System._tuple#20$T6@@10| |_System._tuple#20$T7@@10| |_System._tuple#20$T8@@10| |_System._tuple#20$T9@@10| |_System._tuple#20$T10@@10| |_System._tuple#20$T11@@10| |_System._tuple#20$T12@@10| |_System._tuple#20$T13@@10| |_System._tuple#20$T14@@10| |_System._tuple#20$T15@@10| |_System._tuple#20$T16@@10| |_System._tuple#20$T17@@10| |_System._tuple#20$T18@@10| |_System._tuple#20$T19@@10|) $h@@8))
)))) ($IsAllocBox (_System.Tuple20._8 d@@10) |_System._tuple#20$T8@@10| $h@@8))
 :qid |unknown.0:0|
 :skolemid |1845|
 :pattern ( ($IsAllocBox (_System.Tuple20._8 d@@10) |_System._tuple#20$T8@@10| $h@@8))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#20$T9@@11| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple20.___hMake20_q d@@11) (exists ((|_System._tuple#20$T0@@11| T@U) (|_System._tuple#20$T1@@11| T@U) (|_System._tuple#20$T2@@11| T@U) (|_System._tuple#20$T3@@11| T@U) (|_System._tuple#20$T4@@11| T@U) (|_System._tuple#20$T5@@11| T@U) (|_System._tuple#20$T6@@11| T@U) (|_System._tuple#20$T7@@11| T@U) (|_System._tuple#20$T8@@11| T@U) (|_System._tuple#20$T10@@11| T@U) (|_System._tuple#20$T11@@11| T@U) (|_System._tuple#20$T12@@11| T@U) (|_System._tuple#20$T13@@11| T@U) (|_System._tuple#20$T14@@11| T@U) (|_System._tuple#20$T15@@11| T@U) (|_System._tuple#20$T16@@11| T@U) (|_System._tuple#20$T17@@11| T@U) (|_System._tuple#20$T18@@11| T@U) (|_System._tuple#20$T19@@11| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple20 |_System._tuple#20$T0@@11| |_System._tuple#20$T1@@11| |_System._tuple#20$T2@@11| |_System._tuple#20$T3@@11| |_System._tuple#20$T4@@11| |_System._tuple#20$T5@@11| |_System._tuple#20$T6@@11| |_System._tuple#20$T7@@11| |_System._tuple#20$T8@@11| |_System._tuple#20$T9@@11| |_System._tuple#20$T10@@11| |_System._tuple#20$T11@@11| |_System._tuple#20$T12@@11| |_System._tuple#20$T13@@11| |_System._tuple#20$T14@@11| |_System._tuple#20$T15@@11| |_System._tuple#20$T16@@11| |_System._tuple#20$T17@@11| |_System._tuple#20$T18@@11| |_System._tuple#20$T19@@11|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |1846|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple20 |_System._tuple#20$T0@@11| |_System._tuple#20$T1@@11| |_System._tuple#20$T2@@11| |_System._tuple#20$T3@@11| |_System._tuple#20$T4@@11| |_System._tuple#20$T5@@11| |_System._tuple#20$T6@@11| |_System._tuple#20$T7@@11| |_System._tuple#20$T8@@11| |_System._tuple#20$T9@@11| |_System._tuple#20$T10@@11| |_System._tuple#20$T11@@11| |_System._tuple#20$T12@@11| |_System._tuple#20$T13@@11| |_System._tuple#20$T14@@11| |_System._tuple#20$T15@@11| |_System._tuple#20$T16@@11| |_System._tuple#20$T17@@11| |_System._tuple#20$T18@@11| |_System._tuple#20$T19@@11|) $h@@9))
)))) ($IsAllocBox (_System.Tuple20._9 d@@11) |_System._tuple#20$T9@@11| $h@@9))
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( ($IsAllocBox (_System.Tuple20._9 d@@11) |_System._tuple#20$T9@@11| $h@@9))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#20$T10@@12| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple20.___hMake20_q d@@12) (exists ((|_System._tuple#20$T0@@12| T@U) (|_System._tuple#20$T1@@12| T@U) (|_System._tuple#20$T2@@12| T@U) (|_System._tuple#20$T3@@12| T@U) (|_System._tuple#20$T4@@12| T@U) (|_System._tuple#20$T5@@12| T@U) (|_System._tuple#20$T6@@12| T@U) (|_System._tuple#20$T7@@12| T@U) (|_System._tuple#20$T8@@12| T@U) (|_System._tuple#20$T9@@12| T@U) (|_System._tuple#20$T11@@12| T@U) (|_System._tuple#20$T12@@12| T@U) (|_System._tuple#20$T13@@12| T@U) (|_System._tuple#20$T14@@12| T@U) (|_System._tuple#20$T15@@12| T@U) (|_System._tuple#20$T16@@12| T@U) (|_System._tuple#20$T17@@12| T@U) (|_System._tuple#20$T18@@12| T@U) (|_System._tuple#20$T19@@12| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple20 |_System._tuple#20$T0@@12| |_System._tuple#20$T1@@12| |_System._tuple#20$T2@@12| |_System._tuple#20$T3@@12| |_System._tuple#20$T4@@12| |_System._tuple#20$T5@@12| |_System._tuple#20$T6@@12| |_System._tuple#20$T7@@12| |_System._tuple#20$T8@@12| |_System._tuple#20$T9@@12| |_System._tuple#20$T10@@12| |_System._tuple#20$T11@@12| |_System._tuple#20$T12@@12| |_System._tuple#20$T13@@12| |_System._tuple#20$T14@@12| |_System._tuple#20$T15@@12| |_System._tuple#20$T16@@12| |_System._tuple#20$T17@@12| |_System._tuple#20$T18@@12| |_System._tuple#20$T19@@12|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple20 |_System._tuple#20$T0@@12| |_System._tuple#20$T1@@12| |_System._tuple#20$T2@@12| |_System._tuple#20$T3@@12| |_System._tuple#20$T4@@12| |_System._tuple#20$T5@@12| |_System._tuple#20$T6@@12| |_System._tuple#20$T7@@12| |_System._tuple#20$T8@@12| |_System._tuple#20$T9@@12| |_System._tuple#20$T10@@12| |_System._tuple#20$T11@@12| |_System._tuple#20$T12@@12| |_System._tuple#20$T13@@12| |_System._tuple#20$T14@@12| |_System._tuple#20$T15@@12| |_System._tuple#20$T16@@12| |_System._tuple#20$T17@@12| |_System._tuple#20$T18@@12| |_System._tuple#20$T19@@12|) $h@@10))
)))) ($IsAllocBox (_System.Tuple20._10 d@@12) |_System._tuple#20$T10@@12| $h@@10))
 :qid |unknown.0:0|
 :skolemid |1849|
 :pattern ( ($IsAllocBox (_System.Tuple20._10 d@@12) |_System._tuple#20$T10@@12| $h@@10))
)))
(assert (forall ((d@@13 T@U) (|_System._tuple#20$T11@@13| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple20.___hMake20_q d@@13) (exists ((|_System._tuple#20$T0@@13| T@U) (|_System._tuple#20$T1@@13| T@U) (|_System._tuple#20$T2@@13| T@U) (|_System._tuple#20$T3@@13| T@U) (|_System._tuple#20$T4@@13| T@U) (|_System._tuple#20$T5@@13| T@U) (|_System._tuple#20$T6@@13| T@U) (|_System._tuple#20$T7@@13| T@U) (|_System._tuple#20$T8@@13| T@U) (|_System._tuple#20$T9@@13| T@U) (|_System._tuple#20$T10@@13| T@U) (|_System._tuple#20$T12@@13| T@U) (|_System._tuple#20$T13@@13| T@U) (|_System._tuple#20$T14@@13| T@U) (|_System._tuple#20$T15@@13| T@U) (|_System._tuple#20$T16@@13| T@U) (|_System._tuple#20$T17@@13| T@U) (|_System._tuple#20$T18@@13| T@U) (|_System._tuple#20$T19@@13| T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple20 |_System._tuple#20$T0@@13| |_System._tuple#20$T1@@13| |_System._tuple#20$T2@@13| |_System._tuple#20$T3@@13| |_System._tuple#20$T4@@13| |_System._tuple#20$T5@@13| |_System._tuple#20$T6@@13| |_System._tuple#20$T7@@13| |_System._tuple#20$T8@@13| |_System._tuple#20$T9@@13| |_System._tuple#20$T10@@13| |_System._tuple#20$T11@@13| |_System._tuple#20$T12@@13| |_System._tuple#20$T13@@13| |_System._tuple#20$T14@@13| |_System._tuple#20$T15@@13| |_System._tuple#20$T16@@13| |_System._tuple#20$T17@@13| |_System._tuple#20$T18@@13| |_System._tuple#20$T19@@13|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple20 |_System._tuple#20$T0@@13| |_System._tuple#20$T1@@13| |_System._tuple#20$T2@@13| |_System._tuple#20$T3@@13| |_System._tuple#20$T4@@13| |_System._tuple#20$T5@@13| |_System._tuple#20$T6@@13| |_System._tuple#20$T7@@13| |_System._tuple#20$T8@@13| |_System._tuple#20$T9@@13| |_System._tuple#20$T10@@13| |_System._tuple#20$T11@@13| |_System._tuple#20$T12@@13| |_System._tuple#20$T13@@13| |_System._tuple#20$T14@@13| |_System._tuple#20$T15@@13| |_System._tuple#20$T16@@13| |_System._tuple#20$T17@@13| |_System._tuple#20$T18@@13| |_System._tuple#20$T19@@13|) $h@@11))
)))) ($IsAllocBox (_System.Tuple20._11 d@@13) |_System._tuple#20$T11@@13| $h@@11))
 :qid |unknown.0:0|
 :skolemid |1851|
 :pattern ( ($IsAllocBox (_System.Tuple20._11 d@@13) |_System._tuple#20$T11@@13| $h@@11))
)))
(assert (forall ((d@@14 T@U) (|_System._tuple#20$T12@@14| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple20.___hMake20_q d@@14) (exists ((|_System._tuple#20$T0@@14| T@U) (|_System._tuple#20$T1@@14| T@U) (|_System._tuple#20$T2@@14| T@U) (|_System._tuple#20$T3@@14| T@U) (|_System._tuple#20$T4@@14| T@U) (|_System._tuple#20$T5@@14| T@U) (|_System._tuple#20$T6@@14| T@U) (|_System._tuple#20$T7@@14| T@U) (|_System._tuple#20$T8@@14| T@U) (|_System._tuple#20$T9@@14| T@U) (|_System._tuple#20$T10@@14| T@U) (|_System._tuple#20$T11@@14| T@U) (|_System._tuple#20$T13@@14| T@U) (|_System._tuple#20$T14@@14| T@U) (|_System._tuple#20$T15@@14| T@U) (|_System._tuple#20$T16@@14| T@U) (|_System._tuple#20$T17@@14| T@U) (|_System._tuple#20$T18@@14| T@U) (|_System._tuple#20$T19@@14| T@U) ) (! ($IsAlloc DatatypeTypeType d@@14 (Tclass._System.Tuple20 |_System._tuple#20$T0@@14| |_System._tuple#20$T1@@14| |_System._tuple#20$T2@@14| |_System._tuple#20$T3@@14| |_System._tuple#20$T4@@14| |_System._tuple#20$T5@@14| |_System._tuple#20$T6@@14| |_System._tuple#20$T7@@14| |_System._tuple#20$T8@@14| |_System._tuple#20$T9@@14| |_System._tuple#20$T10@@14| |_System._tuple#20$T11@@14| |_System._tuple#20$T12@@14| |_System._tuple#20$T13@@14| |_System._tuple#20$T14@@14| |_System._tuple#20$T15@@14| |_System._tuple#20$T16@@14| |_System._tuple#20$T17@@14| |_System._tuple#20$T18@@14| |_System._tuple#20$T19@@14|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 (Tclass._System.Tuple20 |_System._tuple#20$T0@@14| |_System._tuple#20$T1@@14| |_System._tuple#20$T2@@14| |_System._tuple#20$T3@@14| |_System._tuple#20$T4@@14| |_System._tuple#20$T5@@14| |_System._tuple#20$T6@@14| |_System._tuple#20$T7@@14| |_System._tuple#20$T8@@14| |_System._tuple#20$T9@@14| |_System._tuple#20$T10@@14| |_System._tuple#20$T11@@14| |_System._tuple#20$T12@@14| |_System._tuple#20$T13@@14| |_System._tuple#20$T14@@14| |_System._tuple#20$T15@@14| |_System._tuple#20$T16@@14| |_System._tuple#20$T17@@14| |_System._tuple#20$T18@@14| |_System._tuple#20$T19@@14|) $h@@12))
)))) ($IsAllocBox (_System.Tuple20._12 d@@14) |_System._tuple#20$T12@@14| $h@@12))
 :qid |unknown.0:0|
 :skolemid |1853|
 :pattern ( ($IsAllocBox (_System.Tuple20._12 d@@14) |_System._tuple#20$T12@@14| $h@@12))
)))
(assert (forall ((d@@15 T@U) (|_System._tuple#20$T13@@15| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple20.___hMake20_q d@@15) (exists ((|_System._tuple#20$T0@@15| T@U) (|_System._tuple#20$T1@@15| T@U) (|_System._tuple#20$T2@@15| T@U) (|_System._tuple#20$T3@@15| T@U) (|_System._tuple#20$T4@@15| T@U) (|_System._tuple#20$T5@@15| T@U) (|_System._tuple#20$T6@@15| T@U) (|_System._tuple#20$T7@@15| T@U) (|_System._tuple#20$T8@@15| T@U) (|_System._tuple#20$T9@@15| T@U) (|_System._tuple#20$T10@@15| T@U) (|_System._tuple#20$T11@@15| T@U) (|_System._tuple#20$T12@@15| T@U) (|_System._tuple#20$T14@@15| T@U) (|_System._tuple#20$T15@@15| T@U) (|_System._tuple#20$T16@@15| T@U) (|_System._tuple#20$T17@@15| T@U) (|_System._tuple#20$T18@@15| T@U) (|_System._tuple#20$T19@@15| T@U) ) (! ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple20 |_System._tuple#20$T0@@15| |_System._tuple#20$T1@@15| |_System._tuple#20$T2@@15| |_System._tuple#20$T3@@15| |_System._tuple#20$T4@@15| |_System._tuple#20$T5@@15| |_System._tuple#20$T6@@15| |_System._tuple#20$T7@@15| |_System._tuple#20$T8@@15| |_System._tuple#20$T9@@15| |_System._tuple#20$T10@@15| |_System._tuple#20$T11@@15| |_System._tuple#20$T12@@15| |_System._tuple#20$T13@@15| |_System._tuple#20$T14@@15| |_System._tuple#20$T15@@15| |_System._tuple#20$T16@@15| |_System._tuple#20$T17@@15| |_System._tuple#20$T18@@15| |_System._tuple#20$T19@@15|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |1854|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple20 |_System._tuple#20$T0@@15| |_System._tuple#20$T1@@15| |_System._tuple#20$T2@@15| |_System._tuple#20$T3@@15| |_System._tuple#20$T4@@15| |_System._tuple#20$T5@@15| |_System._tuple#20$T6@@15| |_System._tuple#20$T7@@15| |_System._tuple#20$T8@@15| |_System._tuple#20$T9@@15| |_System._tuple#20$T10@@15| |_System._tuple#20$T11@@15| |_System._tuple#20$T12@@15| |_System._tuple#20$T13@@15| |_System._tuple#20$T14@@15| |_System._tuple#20$T15@@15| |_System._tuple#20$T16@@15| |_System._tuple#20$T17@@15| |_System._tuple#20$T18@@15| |_System._tuple#20$T19@@15|) $h@@13))
)))) ($IsAllocBox (_System.Tuple20._13 d@@15) |_System._tuple#20$T13@@15| $h@@13))
 :qid |unknown.0:0|
 :skolemid |1855|
 :pattern ( ($IsAllocBox (_System.Tuple20._13 d@@15) |_System._tuple#20$T13@@15| $h@@13))
)))
(assert (forall ((d@@16 T@U) (|_System._tuple#20$T14@@16| T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_System.Tuple20.___hMake20_q d@@16) (exists ((|_System._tuple#20$T0@@16| T@U) (|_System._tuple#20$T1@@16| T@U) (|_System._tuple#20$T2@@16| T@U) (|_System._tuple#20$T3@@16| T@U) (|_System._tuple#20$T4@@16| T@U) (|_System._tuple#20$T5@@16| T@U) (|_System._tuple#20$T6@@16| T@U) (|_System._tuple#20$T7@@16| T@U) (|_System._tuple#20$T8@@16| T@U) (|_System._tuple#20$T9@@16| T@U) (|_System._tuple#20$T10@@16| T@U) (|_System._tuple#20$T11@@16| T@U) (|_System._tuple#20$T12@@16| T@U) (|_System._tuple#20$T13@@16| T@U) (|_System._tuple#20$T15@@16| T@U) (|_System._tuple#20$T16@@16| T@U) (|_System._tuple#20$T17@@16| T@U) (|_System._tuple#20$T18@@16| T@U) (|_System._tuple#20$T19@@16| T@U) ) (! ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple20 |_System._tuple#20$T0@@16| |_System._tuple#20$T1@@16| |_System._tuple#20$T2@@16| |_System._tuple#20$T3@@16| |_System._tuple#20$T4@@16| |_System._tuple#20$T5@@16| |_System._tuple#20$T6@@16| |_System._tuple#20$T7@@16| |_System._tuple#20$T8@@16| |_System._tuple#20$T9@@16| |_System._tuple#20$T10@@16| |_System._tuple#20$T11@@16| |_System._tuple#20$T12@@16| |_System._tuple#20$T13@@16| |_System._tuple#20$T14@@16| |_System._tuple#20$T15@@16| |_System._tuple#20$T16@@16| |_System._tuple#20$T17@@16| |_System._tuple#20$T18@@16| |_System._tuple#20$T19@@16|) $h@@14)
 :qid |unknown.0:0|
 :skolemid |1856|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple20 |_System._tuple#20$T0@@16| |_System._tuple#20$T1@@16| |_System._tuple#20$T2@@16| |_System._tuple#20$T3@@16| |_System._tuple#20$T4@@16| |_System._tuple#20$T5@@16| |_System._tuple#20$T6@@16| |_System._tuple#20$T7@@16| |_System._tuple#20$T8@@16| |_System._tuple#20$T9@@16| |_System._tuple#20$T10@@16| |_System._tuple#20$T11@@16| |_System._tuple#20$T12@@16| |_System._tuple#20$T13@@16| |_System._tuple#20$T14@@16| |_System._tuple#20$T15@@16| |_System._tuple#20$T16@@16| |_System._tuple#20$T17@@16| |_System._tuple#20$T18@@16| |_System._tuple#20$T19@@16|) $h@@14))
)))) ($IsAllocBox (_System.Tuple20._14 d@@16) |_System._tuple#20$T14@@16| $h@@14))
 :qid |unknown.0:0|
 :skolemid |1857|
 :pattern ( ($IsAllocBox (_System.Tuple20._14 d@@16) |_System._tuple#20$T14@@16| $h@@14))
)))
(assert (forall ((d@@17 T@U) (|_System._tuple#20$T15@@17| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple20.___hMake20_q d@@17) (exists ((|_System._tuple#20$T0@@17| T@U) (|_System._tuple#20$T1@@17| T@U) (|_System._tuple#20$T2@@17| T@U) (|_System._tuple#20$T3@@17| T@U) (|_System._tuple#20$T4@@17| T@U) (|_System._tuple#20$T5@@17| T@U) (|_System._tuple#20$T6@@17| T@U) (|_System._tuple#20$T7@@17| T@U) (|_System._tuple#20$T8@@17| T@U) (|_System._tuple#20$T9@@17| T@U) (|_System._tuple#20$T10@@17| T@U) (|_System._tuple#20$T11@@17| T@U) (|_System._tuple#20$T12@@17| T@U) (|_System._tuple#20$T13@@17| T@U) (|_System._tuple#20$T14@@17| T@U) (|_System._tuple#20$T16@@17| T@U) (|_System._tuple#20$T17@@17| T@U) (|_System._tuple#20$T18@@17| T@U) (|_System._tuple#20$T19@@17| T@U) ) (! ($IsAlloc DatatypeTypeType d@@17 (Tclass._System.Tuple20 |_System._tuple#20$T0@@17| |_System._tuple#20$T1@@17| |_System._tuple#20$T2@@17| |_System._tuple#20$T3@@17| |_System._tuple#20$T4@@17| |_System._tuple#20$T5@@17| |_System._tuple#20$T6@@17| |_System._tuple#20$T7@@17| |_System._tuple#20$T8@@17| |_System._tuple#20$T9@@17| |_System._tuple#20$T10@@17| |_System._tuple#20$T11@@17| |_System._tuple#20$T12@@17| |_System._tuple#20$T13@@17| |_System._tuple#20$T14@@17| |_System._tuple#20$T15@@17| |_System._tuple#20$T16@@17| |_System._tuple#20$T17@@17| |_System._tuple#20$T18@@17| |_System._tuple#20$T19@@17|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |1858|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 (Tclass._System.Tuple20 |_System._tuple#20$T0@@17| |_System._tuple#20$T1@@17| |_System._tuple#20$T2@@17| |_System._tuple#20$T3@@17| |_System._tuple#20$T4@@17| |_System._tuple#20$T5@@17| |_System._tuple#20$T6@@17| |_System._tuple#20$T7@@17| |_System._tuple#20$T8@@17| |_System._tuple#20$T9@@17| |_System._tuple#20$T10@@17| |_System._tuple#20$T11@@17| |_System._tuple#20$T12@@17| |_System._tuple#20$T13@@17| |_System._tuple#20$T14@@17| |_System._tuple#20$T15@@17| |_System._tuple#20$T16@@17| |_System._tuple#20$T17@@17| |_System._tuple#20$T18@@17| |_System._tuple#20$T19@@17|) $h@@15))
)))) ($IsAllocBox (_System.Tuple20._15 d@@17) |_System._tuple#20$T15@@17| $h@@15))
 :qid |unknown.0:0|
 :skolemid |1859|
 :pattern ( ($IsAllocBox (_System.Tuple20._15 d@@17) |_System._tuple#20$T15@@17| $h@@15))
)))
(assert (forall ((d@@18 T@U) (|_System._tuple#20$T16@@18| T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_System.Tuple20.___hMake20_q d@@18) (exists ((|_System._tuple#20$T0@@18| T@U) (|_System._tuple#20$T1@@18| T@U) (|_System._tuple#20$T2@@18| T@U) (|_System._tuple#20$T3@@18| T@U) (|_System._tuple#20$T4@@18| T@U) (|_System._tuple#20$T5@@18| T@U) (|_System._tuple#20$T6@@18| T@U) (|_System._tuple#20$T7@@18| T@U) (|_System._tuple#20$T8@@18| T@U) (|_System._tuple#20$T9@@18| T@U) (|_System._tuple#20$T10@@18| T@U) (|_System._tuple#20$T11@@18| T@U) (|_System._tuple#20$T12@@18| T@U) (|_System._tuple#20$T13@@18| T@U) (|_System._tuple#20$T14@@18| T@U) (|_System._tuple#20$T15@@18| T@U) (|_System._tuple#20$T17@@18| T@U) (|_System._tuple#20$T18@@18| T@U) (|_System._tuple#20$T19@@18| T@U) ) (! ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple20 |_System._tuple#20$T0@@18| |_System._tuple#20$T1@@18| |_System._tuple#20$T2@@18| |_System._tuple#20$T3@@18| |_System._tuple#20$T4@@18| |_System._tuple#20$T5@@18| |_System._tuple#20$T6@@18| |_System._tuple#20$T7@@18| |_System._tuple#20$T8@@18| |_System._tuple#20$T9@@18| |_System._tuple#20$T10@@18| |_System._tuple#20$T11@@18| |_System._tuple#20$T12@@18| |_System._tuple#20$T13@@18| |_System._tuple#20$T14@@18| |_System._tuple#20$T15@@18| |_System._tuple#20$T16@@18| |_System._tuple#20$T17@@18| |_System._tuple#20$T18@@18| |_System._tuple#20$T19@@18|) $h@@16)
 :qid |unknown.0:0|
 :skolemid |1860|
 :pattern ( ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple20 |_System._tuple#20$T0@@18| |_System._tuple#20$T1@@18| |_System._tuple#20$T2@@18| |_System._tuple#20$T3@@18| |_System._tuple#20$T4@@18| |_System._tuple#20$T5@@18| |_System._tuple#20$T6@@18| |_System._tuple#20$T7@@18| |_System._tuple#20$T8@@18| |_System._tuple#20$T9@@18| |_System._tuple#20$T10@@18| |_System._tuple#20$T11@@18| |_System._tuple#20$T12@@18| |_System._tuple#20$T13@@18| |_System._tuple#20$T14@@18| |_System._tuple#20$T15@@18| |_System._tuple#20$T16@@18| |_System._tuple#20$T17@@18| |_System._tuple#20$T18@@18| |_System._tuple#20$T19@@18|) $h@@16))
)))) ($IsAllocBox (_System.Tuple20._16 d@@18) |_System._tuple#20$T16@@18| $h@@16))
 :qid |unknown.0:0|
 :skolemid |1861|
 :pattern ( ($IsAllocBox (_System.Tuple20._16 d@@18) |_System._tuple#20$T16@@18| $h@@16))
)))
(assert (forall ((d@@19 T@U) (|_System._tuple#20$T17@@19| T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_System.Tuple20.___hMake20_q d@@19) (exists ((|_System._tuple#20$T0@@19| T@U) (|_System._tuple#20$T1@@19| T@U) (|_System._tuple#20$T2@@19| T@U) (|_System._tuple#20$T3@@19| T@U) (|_System._tuple#20$T4@@19| T@U) (|_System._tuple#20$T5@@19| T@U) (|_System._tuple#20$T6@@19| T@U) (|_System._tuple#20$T7@@19| T@U) (|_System._tuple#20$T8@@19| T@U) (|_System._tuple#20$T9@@19| T@U) (|_System._tuple#20$T10@@19| T@U) (|_System._tuple#20$T11@@19| T@U) (|_System._tuple#20$T12@@19| T@U) (|_System._tuple#20$T13@@19| T@U) (|_System._tuple#20$T14@@19| T@U) (|_System._tuple#20$T15@@19| T@U) (|_System._tuple#20$T16@@19| T@U) (|_System._tuple#20$T18@@19| T@U) (|_System._tuple#20$T19@@19| T@U) ) (! ($IsAlloc DatatypeTypeType d@@19 (Tclass._System.Tuple20 |_System._tuple#20$T0@@19| |_System._tuple#20$T1@@19| |_System._tuple#20$T2@@19| |_System._tuple#20$T3@@19| |_System._tuple#20$T4@@19| |_System._tuple#20$T5@@19| |_System._tuple#20$T6@@19| |_System._tuple#20$T7@@19| |_System._tuple#20$T8@@19| |_System._tuple#20$T9@@19| |_System._tuple#20$T10@@19| |_System._tuple#20$T11@@19| |_System._tuple#20$T12@@19| |_System._tuple#20$T13@@19| |_System._tuple#20$T14@@19| |_System._tuple#20$T15@@19| |_System._tuple#20$T16@@19| |_System._tuple#20$T17@@19| |_System._tuple#20$T18@@19| |_System._tuple#20$T19@@19|) $h@@17)
 :qid |unknown.0:0|
 :skolemid |1862|
 :pattern ( ($IsAlloc DatatypeTypeType d@@19 (Tclass._System.Tuple20 |_System._tuple#20$T0@@19| |_System._tuple#20$T1@@19| |_System._tuple#20$T2@@19| |_System._tuple#20$T3@@19| |_System._tuple#20$T4@@19| |_System._tuple#20$T5@@19| |_System._tuple#20$T6@@19| |_System._tuple#20$T7@@19| |_System._tuple#20$T8@@19| |_System._tuple#20$T9@@19| |_System._tuple#20$T10@@19| |_System._tuple#20$T11@@19| |_System._tuple#20$T12@@19| |_System._tuple#20$T13@@19| |_System._tuple#20$T14@@19| |_System._tuple#20$T15@@19| |_System._tuple#20$T16@@19| |_System._tuple#20$T17@@19| |_System._tuple#20$T18@@19| |_System._tuple#20$T19@@19|) $h@@17))
)))) ($IsAllocBox (_System.Tuple20._17 d@@19) |_System._tuple#20$T17@@19| $h@@17))
 :qid |unknown.0:0|
 :skolemid |1863|
 :pattern ( ($IsAllocBox (_System.Tuple20._17 d@@19) |_System._tuple#20$T17@@19| $h@@17))
)))
(assert (forall ((d@@20 T@U) (|_System._tuple#20$T18@@20| T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_System.Tuple20.___hMake20_q d@@20) (exists ((|_System._tuple#20$T0@@20| T@U) (|_System._tuple#20$T1@@20| T@U) (|_System._tuple#20$T2@@20| T@U) (|_System._tuple#20$T3@@20| T@U) (|_System._tuple#20$T4@@20| T@U) (|_System._tuple#20$T5@@20| T@U) (|_System._tuple#20$T6@@20| T@U) (|_System._tuple#20$T7@@20| T@U) (|_System._tuple#20$T8@@20| T@U) (|_System._tuple#20$T9@@20| T@U) (|_System._tuple#20$T10@@20| T@U) (|_System._tuple#20$T11@@20| T@U) (|_System._tuple#20$T12@@20| T@U) (|_System._tuple#20$T13@@20| T@U) (|_System._tuple#20$T14@@20| T@U) (|_System._tuple#20$T15@@20| T@U) (|_System._tuple#20$T16@@20| T@U) (|_System._tuple#20$T17@@20| T@U) (|_System._tuple#20$T19@@20| T@U) ) (! ($IsAlloc DatatypeTypeType d@@20 (Tclass._System.Tuple20 |_System._tuple#20$T0@@20| |_System._tuple#20$T1@@20| |_System._tuple#20$T2@@20| |_System._tuple#20$T3@@20| |_System._tuple#20$T4@@20| |_System._tuple#20$T5@@20| |_System._tuple#20$T6@@20| |_System._tuple#20$T7@@20| |_System._tuple#20$T8@@20| |_System._tuple#20$T9@@20| |_System._tuple#20$T10@@20| |_System._tuple#20$T11@@20| |_System._tuple#20$T12@@20| |_System._tuple#20$T13@@20| |_System._tuple#20$T14@@20| |_System._tuple#20$T15@@20| |_System._tuple#20$T16@@20| |_System._tuple#20$T17@@20| |_System._tuple#20$T18@@20| |_System._tuple#20$T19@@20|) $h@@18)
 :qid |unknown.0:0|
 :skolemid |1864|
 :pattern ( ($IsAlloc DatatypeTypeType d@@20 (Tclass._System.Tuple20 |_System._tuple#20$T0@@20| |_System._tuple#20$T1@@20| |_System._tuple#20$T2@@20| |_System._tuple#20$T3@@20| |_System._tuple#20$T4@@20| |_System._tuple#20$T5@@20| |_System._tuple#20$T6@@20| |_System._tuple#20$T7@@20| |_System._tuple#20$T8@@20| |_System._tuple#20$T9@@20| |_System._tuple#20$T10@@20| |_System._tuple#20$T11@@20| |_System._tuple#20$T12@@20| |_System._tuple#20$T13@@20| |_System._tuple#20$T14@@20| |_System._tuple#20$T15@@20| |_System._tuple#20$T16@@20| |_System._tuple#20$T17@@20| |_System._tuple#20$T18@@20| |_System._tuple#20$T19@@20|) $h@@18))
)))) ($IsAllocBox (_System.Tuple20._18 d@@20) |_System._tuple#20$T18@@20| $h@@18))
 :qid |unknown.0:0|
 :skolemid |1865|
 :pattern ( ($IsAllocBox (_System.Tuple20._18 d@@20) |_System._tuple#20$T18@@20| $h@@18))
)))
(assert (forall ((d@@21 T@U) (|_System._tuple#20$T19@@21| T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_System.Tuple20.___hMake20_q d@@21) (exists ((|_System._tuple#20$T0@@21| T@U) (|_System._tuple#20$T1@@21| T@U) (|_System._tuple#20$T2@@21| T@U) (|_System._tuple#20$T3@@21| T@U) (|_System._tuple#20$T4@@21| T@U) (|_System._tuple#20$T5@@21| T@U) (|_System._tuple#20$T6@@21| T@U) (|_System._tuple#20$T7@@21| T@U) (|_System._tuple#20$T8@@21| T@U) (|_System._tuple#20$T9@@21| T@U) (|_System._tuple#20$T10@@21| T@U) (|_System._tuple#20$T11@@21| T@U) (|_System._tuple#20$T12@@21| T@U) (|_System._tuple#20$T13@@21| T@U) (|_System._tuple#20$T14@@21| T@U) (|_System._tuple#20$T15@@21| T@U) (|_System._tuple#20$T16@@21| T@U) (|_System._tuple#20$T17@@21| T@U) (|_System._tuple#20$T18@@21| T@U) ) (! ($IsAlloc DatatypeTypeType d@@21 (Tclass._System.Tuple20 |_System._tuple#20$T0@@21| |_System._tuple#20$T1@@21| |_System._tuple#20$T2@@21| |_System._tuple#20$T3@@21| |_System._tuple#20$T4@@21| |_System._tuple#20$T5@@21| |_System._tuple#20$T6@@21| |_System._tuple#20$T7@@21| |_System._tuple#20$T8@@21| |_System._tuple#20$T9@@21| |_System._tuple#20$T10@@21| |_System._tuple#20$T11@@21| |_System._tuple#20$T12@@21| |_System._tuple#20$T13@@21| |_System._tuple#20$T14@@21| |_System._tuple#20$T15@@21| |_System._tuple#20$T16@@21| |_System._tuple#20$T17@@21| |_System._tuple#20$T18@@21| |_System._tuple#20$T19@@21|) $h@@19)
 :qid |unknown.0:0|
 :skolemid |1866|
 :pattern ( ($IsAlloc DatatypeTypeType d@@21 (Tclass._System.Tuple20 |_System._tuple#20$T0@@21| |_System._tuple#20$T1@@21| |_System._tuple#20$T2@@21| |_System._tuple#20$T3@@21| |_System._tuple#20$T4@@21| |_System._tuple#20$T5@@21| |_System._tuple#20$T6@@21| |_System._tuple#20$T7@@21| |_System._tuple#20$T8@@21| |_System._tuple#20$T9@@21| |_System._tuple#20$T10@@21| |_System._tuple#20$T11@@21| |_System._tuple#20$T12@@21| |_System._tuple#20$T13@@21| |_System._tuple#20$T14@@21| |_System._tuple#20$T15@@21| |_System._tuple#20$T16@@21| |_System._tuple#20$T17@@21| |_System._tuple#20$T18@@21| |_System._tuple#20$T19@@21|) $h@@19))
)))) ($IsAllocBox (_System.Tuple20._19 d@@21) |_System._tuple#20$T19@@21| $h@@19))
 :qid |unknown.0:0|
 :skolemid |1867|
 :pattern ( ($IsAllocBox (_System.Tuple20._19 d@@21) |_System._tuple#20$T19@@21| $h@@19))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@20 T@U) ) (!  (=> ($IsGoodHeap $h@@20) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@20)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@20) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@20))))
 :qid |unknown.0:0|
 :skolemid |1778|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@20))
)))
(assert (forall ((d@@22 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@22) (= (DatatypeCtorId d@@22) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1770|
 :pattern ( (_System.Tuple2.___hMake2_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (! (= (_System.Tuple20.___hMake20_q d@@23) (= (DatatypeCtorId d@@23) |##_System._tuple#20._#Make20|))
 :qid |unknown.0:0|
 :skolemid |1801|
 :pattern ( (_System.Tuple20.___hMake20_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (! (= (_module.List.Nil_q d@@24) (= (DatatypeCtorId d@@24) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( (_module.List.Nil_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (! (= (_module.List.Cons_q d@@25) (= (DatatypeCtorId d@@25) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( (_module.List.Cons_q d@@25))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1347|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@26) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@26 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1771|
)))
 :qid |unknown.0:0|
 :skolemid |1772|
 :pattern ( (_System.Tuple2.___hMake2_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (_module.List.Cons_q d@@27) (exists ((|a#5#0#0| Int) (|a#5#1#0| T@U) ) (! (= d@@27 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Datatypedfy.4:28|
 :skolemid |2069|
)))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( (_module.List.Cons_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (_module.List.Nil_q d@@28) (= d@@28 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( (_module.List.Nil_q d@@28))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|m#0| Int) (|n#0| Int) ) (!  (=> (or (|_module.__default.Up#canCall| |m#0| |n#0|) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |m#0|) (<= (LitInt 0) |n#0|)) (<= |m#0| |n#0|)))) (and (=> (or (not (= |m#0| |n#0|)) (not true)) (|_module.__default.Up#canCall| (+ |m#0| 1) |n#0|)) (= (_module.__default.Up ($LS $ly@@0) |m#0| |n#0|) (ite (= |m#0| |n#0|) |#_module.List.Nil| (|#_module.List.Cons| |m#0| (_module.__default.Up $ly@@0 (+ |m#0| 1) |n#0|))))))
 :qid |Datatypedfy.43:10|
 :skolemid |1979|
 :pattern ( (_module.__default.Up ($LS $ly@@0) |m#0| |n#0|))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1665|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1360|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1432|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1431|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1664|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |1794|
 :pattern ( ($IsBox bx@@1 Tclass._System.Tuple0))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.List) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.List)))
 :qid |unknown.0:0|
 :skolemid |1965|
 :pattern ( ($IsBox bx@@2 Tclass._module.List))
)))
(assert (forall (($ly@@1 T@U) (|m#0@@0| Int) (|n#0@@0| Int) ) (! (= (_module.__default.Up ($LS $ly@@1) |m#0@@0| |n#0@@0|) (_module.__default.Up $ly@@1 |m#0@@0| |n#0@@0|))
 :qid |Datatypedfy.43:10|
 :skolemid |1975|
 :pattern ( (_module.__default.Up ($LS $ly@@1) |m#0@@0| |n#0@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|m#0@@1| Int) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Up#canCall| (LitInt |m#0@@1|) (LitInt |n#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |m#0@@1|) (<= (LitInt 0) |n#0@@1|)) (<= (LitInt |m#0@@1|) (LitInt |n#0@@1|))))) (and (=> (or (not (= (LitInt |m#0@@1|) (LitInt |n#0@@1|))) (not true)) (|_module.__default.Up#canCall| (LitInt (+ |m#0@@1| 1)) (LitInt |n#0@@1|))) (= (_module.__default.Up ($LS $ly@@2) (LitInt |m#0@@1|) (LitInt |n#0@@1|)) (ite (= (LitInt |m#0@@1|) (LitInt |n#0@@1|)) |#_module.List.Nil| (|#_module.List.Cons| (LitInt |m#0@@1|) (Lit DatatypeTypeType (_module.__default.Up ($LS $ly@@2) (LitInt (+ |m#0@@1| 1)) (LitInt |n#0@@1|))))))))
 :qid |Datatypedfy.43:10|
 :weight 3
 :skolemid |1980|
 :pattern ( (_module.__default.Up ($LS $ly@@2) (LitInt |m#0@@1|) (LitInt |n#0@@1|)))
))))
(assert (forall ((|_System._tuple#20$T0@@22| T@U) (|_System._tuple#20$T1@@22| T@U) (|_System._tuple#20$T2@@22| T@U) (|_System._tuple#20$T3@@22| T@U) (|_System._tuple#20$T4@@22| T@U) (|_System._tuple#20$T5@@22| T@U) (|_System._tuple#20$T6@@22| T@U) (|_System._tuple#20$T7@@22| T@U) (|_System._tuple#20$T8@@22| T@U) (|_System._tuple#20$T9@@22| T@U) (|_System._tuple#20$T10@@22| T@U) (|_System._tuple#20$T11@@22| T@U) (|_System._tuple#20$T12@@22| T@U) (|_System._tuple#20$T13@@22| T@U) (|_System._tuple#20$T14@@22| T@U) (|_System._tuple#20$T15@@22| T@U) (|_System._tuple#20$T16@@22| T@U) (|_System._tuple#20$T17@@22| T@U) (|_System._tuple#20$T18@@22| T@U) (|_System._tuple#20$T19@@22| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.Tuple20 |_System._tuple#20$T0@@22| |_System._tuple#20$T1@@22| |_System._tuple#20$T2@@22| |_System._tuple#20$T3@@22| |_System._tuple#20$T4@@22| |_System._tuple#20$T5@@22| |_System._tuple#20$T6@@22| |_System._tuple#20$T7@@22| |_System._tuple#20$T8@@22| |_System._tuple#20$T9@@22| |_System._tuple#20$T10@@22| |_System._tuple#20$T11@@22| |_System._tuple#20$T12@@22| |_System._tuple#20$T13@@22| |_System._tuple#20$T14@@22| |_System._tuple#20$T15@@22| |_System._tuple#20$T16@@22| |_System._tuple#20$T17@@22| |_System._tuple#20$T18@@22| |_System._tuple#20$T19@@22|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._System.Tuple20 |_System._tuple#20$T0@@22| |_System._tuple#20$T1@@22| |_System._tuple#20$T2@@22| |_System._tuple#20$T3@@22| |_System._tuple#20$T4@@22| |_System._tuple#20$T5@@22| |_System._tuple#20$T6@@22| |_System._tuple#20$T7@@22| |_System._tuple#20$T8@@22| |_System._tuple#20$T9@@22| |_System._tuple#20$T10@@22| |_System._tuple#20$T11@@22| |_System._tuple#20$T12@@22| |_System._tuple#20$T13@@22| |_System._tuple#20$T14@@22| |_System._tuple#20$T15@@22| |_System._tuple#20$T16@@22| |_System._tuple#20$T17@@22| |_System._tuple#20$T18@@22| |_System._tuple#20$T19@@22|))))
 :qid |unknown.0:0|
 :skolemid |1825|
 :pattern ( ($IsBox bx@@3 (Tclass._System.Tuple20 |_System._tuple#20$T0@@22| |_System._tuple#20$T1@@22| |_System._tuple#20$T2@@22| |_System._tuple#20$T3@@22| |_System._tuple#20$T4@@22| |_System._tuple#20$T5@@22| |_System._tuple#20$T6@@22| |_System._tuple#20$T7@@22| |_System._tuple#20$T8@@22| |_System._tuple#20$T9@@22| |_System._tuple#20$T10@@22| |_System._tuple#20$T11@@22| |_System._tuple#20$T12@@22| |_System._tuple#20$T13@@22| |_System._tuple#20$T14@@22| |_System._tuple#20$T15@@22| |_System._tuple#20$T16@@22| |_System._tuple#20$T17@@22| |_System._tuple#20$T18@@22| |_System._tuple#20$T19@@22|)))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) (|a#17#3#0| T@U) (|a#17#4#0| T@U) (|a#17#5#0| T@U) (|a#17#6#0| T@U) (|a#17#7#0| T@U) (|a#17#8#0| T@U) (|a#17#9#0| T@U) (|a#17#10#0| T@U) (|a#17#11#0| T@U) (|a#17#12#0| T@U) (|a#17#13#0| T@U) (|a#17#14#0| T@U) (|a#17#15#0| T@U) (|a#17#16#0| T@U) (|a#17#17#0| T@U) (|a#17#18#0| T@U) (|a#17#19#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#20._#Make20| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0| |a#17#4#0| |a#17#5#0| |a#17#6#0| |a#17#7#0| |a#17#8#0| |a#17#9#0| |a#17#10#0| |a#17#11#0| |a#17#12#0| |a#17#13#0| |a#17#14#0| |a#17#15#0| |a#17#16#0| |a#17#17#0| |a#17#18#0| |a#17#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1870|
 :pattern ( (|#_System._tuple#20._#Make20| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0| |a#17#4#0| |a#17#5#0| |a#17#6#0| |a#17#7#0| |a#17#8#0| |a#17#9#0| |a#17#10#0| |a#17#11#0| |a#17#12#0| |a#17#13#0| |a#17#14#0| |a#17#15#0| |a#17#16#0| |a#17#17#0| |a#17#18#0| |a#17#19#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) (|a#19#3#0| T@U) (|a#19#4#0| T@U) (|a#19#5#0| T@U) (|a#19#6#0| T@U) (|a#19#7#0| T@U) (|a#19#8#0| T@U) (|a#19#9#0| T@U) (|a#19#10#0| T@U) (|a#19#11#0| T@U) (|a#19#12#0| T@U) (|a#19#13#0| T@U) (|a#19#14#0| T@U) (|a#19#15#0| T@U) (|a#19#16#0| T@U) (|a#19#17#0| T@U) (|a#19#18#0| T@U) (|a#19#19#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#20._#Make20| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0| |a#19#4#0| |a#19#5#0| |a#19#6#0| |a#19#7#0| |a#19#8#0| |a#19#9#0| |a#19#10#0| |a#19#11#0| |a#19#12#0| |a#19#13#0| |a#19#14#0| |a#19#15#0| |a#19#16#0| |a#19#17#0| |a#19#18#0| |a#19#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1872|
 :pattern ( (|#_System._tuple#20._#Make20| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0| |a#19#4#0| |a#19#5#0| |a#19#6#0| |a#19#7#0| |a#19#8#0| |a#19#9#0| |a#19#10#0| |a#19#11#0| |a#19#12#0| |a#19#13#0| |a#19#14#0| |a#19#15#0| |a#19#16#0| |a#19#17#0| |a#19#18#0| |a#19#19#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) (|a#21#3#0| T@U) (|a#21#4#0| T@U) (|a#21#5#0| T@U) (|a#21#6#0| T@U) (|a#21#7#0| T@U) (|a#21#8#0| T@U) (|a#21#9#0| T@U) (|a#21#10#0| T@U) (|a#21#11#0| T@U) (|a#21#12#0| T@U) (|a#21#13#0| T@U) (|a#21#14#0| T@U) (|a#21#15#0| T@U) (|a#21#16#0| T@U) (|a#21#17#0| T@U) (|a#21#18#0| T@U) (|a#21#19#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#20._#Make20| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0| |a#21#4#0| |a#21#5#0| |a#21#6#0| |a#21#7#0| |a#21#8#0| |a#21#9#0| |a#21#10#0| |a#21#11#0| |a#21#12#0| |a#21#13#0| |a#21#14#0| |a#21#15#0| |a#21#16#0| |a#21#17#0| |a#21#18#0| |a#21#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1874|
 :pattern ( (|#_System._tuple#20._#Make20| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0| |a#21#4#0| |a#21#5#0| |a#21#6#0| |a#21#7#0| |a#21#8#0| |a#21#9#0| |a#21#10#0| |a#21#11#0| |a#21#12#0| |a#21#13#0| |a#21#14#0| |a#21#15#0| |a#21#16#0| |a#21#17#0| |a#21#18#0| |a#21#19#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) (|a#23#3#0| T@U) (|a#23#4#0| T@U) (|a#23#5#0| T@U) (|a#23#6#0| T@U) (|a#23#7#0| T@U) (|a#23#8#0| T@U) (|a#23#9#0| T@U) (|a#23#10#0| T@U) (|a#23#11#0| T@U) (|a#23#12#0| T@U) (|a#23#13#0| T@U) (|a#23#14#0| T@U) (|a#23#15#0| T@U) (|a#23#16#0| T@U) (|a#23#17#0| T@U) (|a#23#18#0| T@U) (|a#23#19#0| T@U) ) (! (< (BoxRank |a#23#3#0|) (DtRank (|#_System._tuple#20._#Make20| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0| |a#23#4#0| |a#23#5#0| |a#23#6#0| |a#23#7#0| |a#23#8#0| |a#23#9#0| |a#23#10#0| |a#23#11#0| |a#23#12#0| |a#23#13#0| |a#23#14#0| |a#23#15#0| |a#23#16#0| |a#23#17#0| |a#23#18#0| |a#23#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1876|
 :pattern ( (|#_System._tuple#20._#Make20| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0| |a#23#4#0| |a#23#5#0| |a#23#6#0| |a#23#7#0| |a#23#8#0| |a#23#9#0| |a#23#10#0| |a#23#11#0| |a#23#12#0| |a#23#13#0| |a#23#14#0| |a#23#15#0| |a#23#16#0| |a#23#17#0| |a#23#18#0| |a#23#19#0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) (|a#25#3#0| T@U) (|a#25#4#0| T@U) (|a#25#5#0| T@U) (|a#25#6#0| T@U) (|a#25#7#0| T@U) (|a#25#8#0| T@U) (|a#25#9#0| T@U) (|a#25#10#0| T@U) (|a#25#11#0| T@U) (|a#25#12#0| T@U) (|a#25#13#0| T@U) (|a#25#14#0| T@U) (|a#25#15#0| T@U) (|a#25#16#0| T@U) (|a#25#17#0| T@U) (|a#25#18#0| T@U) (|a#25#19#0| T@U) ) (! (< (BoxRank |a#25#4#0|) (DtRank (|#_System._tuple#20._#Make20| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0| |a#25#4#0| |a#25#5#0| |a#25#6#0| |a#25#7#0| |a#25#8#0| |a#25#9#0| |a#25#10#0| |a#25#11#0| |a#25#12#0| |a#25#13#0| |a#25#14#0| |a#25#15#0| |a#25#16#0| |a#25#17#0| |a#25#18#0| |a#25#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1878|
 :pattern ( (|#_System._tuple#20._#Make20| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0| |a#25#4#0| |a#25#5#0| |a#25#6#0| |a#25#7#0| |a#25#8#0| |a#25#9#0| |a#25#10#0| |a#25#11#0| |a#25#12#0| |a#25#13#0| |a#25#14#0| |a#25#15#0| |a#25#16#0| |a#25#17#0| |a#25#18#0| |a#25#19#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) (|a#27#3#0| T@U) (|a#27#4#0| T@U) (|a#27#5#0| T@U) (|a#27#6#0| T@U) (|a#27#7#0| T@U) (|a#27#8#0| T@U) (|a#27#9#0| T@U) (|a#27#10#0| T@U) (|a#27#11#0| T@U) (|a#27#12#0| T@U) (|a#27#13#0| T@U) (|a#27#14#0| T@U) (|a#27#15#0| T@U) (|a#27#16#0| T@U) (|a#27#17#0| T@U) (|a#27#18#0| T@U) (|a#27#19#0| T@U) ) (! (< (BoxRank |a#27#5#0|) (DtRank (|#_System._tuple#20._#Make20| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0| |a#27#4#0| |a#27#5#0| |a#27#6#0| |a#27#7#0| |a#27#8#0| |a#27#9#0| |a#27#10#0| |a#27#11#0| |a#27#12#0| |a#27#13#0| |a#27#14#0| |a#27#15#0| |a#27#16#0| |a#27#17#0| |a#27#18#0| |a#27#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1880|
 :pattern ( (|#_System._tuple#20._#Make20| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0| |a#27#4#0| |a#27#5#0| |a#27#6#0| |a#27#7#0| |a#27#8#0| |a#27#9#0| |a#27#10#0| |a#27#11#0| |a#27#12#0| |a#27#13#0| |a#27#14#0| |a#27#15#0| |a#27#16#0| |a#27#17#0| |a#27#18#0| |a#27#19#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) (|a#29#3#0| T@U) (|a#29#4#0| T@U) (|a#29#5#0| T@U) (|a#29#6#0| T@U) (|a#29#7#0| T@U) (|a#29#8#0| T@U) (|a#29#9#0| T@U) (|a#29#10#0| T@U) (|a#29#11#0| T@U) (|a#29#12#0| T@U) (|a#29#13#0| T@U) (|a#29#14#0| T@U) (|a#29#15#0| T@U) (|a#29#16#0| T@U) (|a#29#17#0| T@U) (|a#29#18#0| T@U) (|a#29#19#0| T@U) ) (! (< (BoxRank |a#29#6#0|) (DtRank (|#_System._tuple#20._#Make20| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0| |a#29#4#0| |a#29#5#0| |a#29#6#0| |a#29#7#0| |a#29#8#0| |a#29#9#0| |a#29#10#0| |a#29#11#0| |a#29#12#0| |a#29#13#0| |a#29#14#0| |a#29#15#0| |a#29#16#0| |a#29#17#0| |a#29#18#0| |a#29#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1882|
 :pattern ( (|#_System._tuple#20._#Make20| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0| |a#29#4#0| |a#29#5#0| |a#29#6#0| |a#29#7#0| |a#29#8#0| |a#29#9#0| |a#29#10#0| |a#29#11#0| |a#29#12#0| |a#29#13#0| |a#29#14#0| |a#29#15#0| |a#29#16#0| |a#29#17#0| |a#29#18#0| |a#29#19#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) (|a#31#2#0| T@U) (|a#31#3#0| T@U) (|a#31#4#0| T@U) (|a#31#5#0| T@U) (|a#31#6#0| T@U) (|a#31#7#0| T@U) (|a#31#8#0| T@U) (|a#31#9#0| T@U) (|a#31#10#0| T@U) (|a#31#11#0| T@U) (|a#31#12#0| T@U) (|a#31#13#0| T@U) (|a#31#14#0| T@U) (|a#31#15#0| T@U) (|a#31#16#0| T@U) (|a#31#17#0| T@U) (|a#31#18#0| T@U) (|a#31#19#0| T@U) ) (! (< (BoxRank |a#31#7#0|) (DtRank (|#_System._tuple#20._#Make20| |a#31#0#0| |a#31#1#0| |a#31#2#0| |a#31#3#0| |a#31#4#0| |a#31#5#0| |a#31#6#0| |a#31#7#0| |a#31#8#0| |a#31#9#0| |a#31#10#0| |a#31#11#0| |a#31#12#0| |a#31#13#0| |a#31#14#0| |a#31#15#0| |a#31#16#0| |a#31#17#0| |a#31#18#0| |a#31#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( (|#_System._tuple#20._#Make20| |a#31#0#0| |a#31#1#0| |a#31#2#0| |a#31#3#0| |a#31#4#0| |a#31#5#0| |a#31#6#0| |a#31#7#0| |a#31#8#0| |a#31#9#0| |a#31#10#0| |a#31#11#0| |a#31#12#0| |a#31#13#0| |a#31#14#0| |a#31#15#0| |a#31#16#0| |a#31#17#0| |a#31#18#0| |a#31#19#0|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) (|a#33#3#0| T@U) (|a#33#4#0| T@U) (|a#33#5#0| T@U) (|a#33#6#0| T@U) (|a#33#7#0| T@U) (|a#33#8#0| T@U) (|a#33#9#0| T@U) (|a#33#10#0| T@U) (|a#33#11#0| T@U) (|a#33#12#0| T@U) (|a#33#13#0| T@U) (|a#33#14#0| T@U) (|a#33#15#0| T@U) (|a#33#16#0| T@U) (|a#33#17#0| T@U) (|a#33#18#0| T@U) (|a#33#19#0| T@U) ) (! (< (BoxRank |a#33#8#0|) (DtRank (|#_System._tuple#20._#Make20| |a#33#0#0| |a#33#1#0| |a#33#2#0| |a#33#3#0| |a#33#4#0| |a#33#5#0| |a#33#6#0| |a#33#7#0| |a#33#8#0| |a#33#9#0| |a#33#10#0| |a#33#11#0| |a#33#12#0| |a#33#13#0| |a#33#14#0| |a#33#15#0| |a#33#16#0| |a#33#17#0| |a#33#18#0| |a#33#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1886|
 :pattern ( (|#_System._tuple#20._#Make20| |a#33#0#0| |a#33#1#0| |a#33#2#0| |a#33#3#0| |a#33#4#0| |a#33#5#0| |a#33#6#0| |a#33#7#0| |a#33#8#0| |a#33#9#0| |a#33#10#0| |a#33#11#0| |a#33#12#0| |a#33#13#0| |a#33#14#0| |a#33#15#0| |a#33#16#0| |a#33#17#0| |a#33#18#0| |a#33#19#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) (|a#35#3#0| T@U) (|a#35#4#0| T@U) (|a#35#5#0| T@U) (|a#35#6#0| T@U) (|a#35#7#0| T@U) (|a#35#8#0| T@U) (|a#35#9#0| T@U) (|a#35#10#0| T@U) (|a#35#11#0| T@U) (|a#35#12#0| T@U) (|a#35#13#0| T@U) (|a#35#14#0| T@U) (|a#35#15#0| T@U) (|a#35#16#0| T@U) (|a#35#17#0| T@U) (|a#35#18#0| T@U) (|a#35#19#0| T@U) ) (! (< (BoxRank |a#35#9#0|) (DtRank (|#_System._tuple#20._#Make20| |a#35#0#0| |a#35#1#0| |a#35#2#0| |a#35#3#0| |a#35#4#0| |a#35#5#0| |a#35#6#0| |a#35#7#0| |a#35#8#0| |a#35#9#0| |a#35#10#0| |a#35#11#0| |a#35#12#0| |a#35#13#0| |a#35#14#0| |a#35#15#0| |a#35#16#0| |a#35#17#0| |a#35#18#0| |a#35#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1888|
 :pattern ( (|#_System._tuple#20._#Make20| |a#35#0#0| |a#35#1#0| |a#35#2#0| |a#35#3#0| |a#35#4#0| |a#35#5#0| |a#35#6#0| |a#35#7#0| |a#35#8#0| |a#35#9#0| |a#35#10#0| |a#35#11#0| |a#35#12#0| |a#35#13#0| |a#35#14#0| |a#35#15#0| |a#35#16#0| |a#35#17#0| |a#35#18#0| |a#35#19#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) (|a#37#3#0| T@U) (|a#37#4#0| T@U) (|a#37#5#0| T@U) (|a#37#6#0| T@U) (|a#37#7#0| T@U) (|a#37#8#0| T@U) (|a#37#9#0| T@U) (|a#37#10#0| T@U) (|a#37#11#0| T@U) (|a#37#12#0| T@U) (|a#37#13#0| T@U) (|a#37#14#0| T@U) (|a#37#15#0| T@U) (|a#37#16#0| T@U) (|a#37#17#0| T@U) (|a#37#18#0| T@U) (|a#37#19#0| T@U) ) (! (< (BoxRank |a#37#10#0|) (DtRank (|#_System._tuple#20._#Make20| |a#37#0#0| |a#37#1#0| |a#37#2#0| |a#37#3#0| |a#37#4#0| |a#37#5#0| |a#37#6#0| |a#37#7#0| |a#37#8#0| |a#37#9#0| |a#37#10#0| |a#37#11#0| |a#37#12#0| |a#37#13#0| |a#37#14#0| |a#37#15#0| |a#37#16#0| |a#37#17#0| |a#37#18#0| |a#37#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1890|
 :pattern ( (|#_System._tuple#20._#Make20| |a#37#0#0| |a#37#1#0| |a#37#2#0| |a#37#3#0| |a#37#4#0| |a#37#5#0| |a#37#6#0| |a#37#7#0| |a#37#8#0| |a#37#9#0| |a#37#10#0| |a#37#11#0| |a#37#12#0| |a#37#13#0| |a#37#14#0| |a#37#15#0| |a#37#16#0| |a#37#17#0| |a#37#18#0| |a#37#19#0|))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (|a#39#3#0| T@U) (|a#39#4#0| T@U) (|a#39#5#0| T@U) (|a#39#6#0| T@U) (|a#39#7#0| T@U) (|a#39#8#0| T@U) (|a#39#9#0| T@U) (|a#39#10#0| T@U) (|a#39#11#0| T@U) (|a#39#12#0| T@U) (|a#39#13#0| T@U) (|a#39#14#0| T@U) (|a#39#15#0| T@U) (|a#39#16#0| T@U) (|a#39#17#0| T@U) (|a#39#18#0| T@U) (|a#39#19#0| T@U) ) (! (< (BoxRank |a#39#11#0|) (DtRank (|#_System._tuple#20._#Make20| |a#39#0#0| |a#39#1#0| |a#39#2#0| |a#39#3#0| |a#39#4#0| |a#39#5#0| |a#39#6#0| |a#39#7#0| |a#39#8#0| |a#39#9#0| |a#39#10#0| |a#39#11#0| |a#39#12#0| |a#39#13#0| |a#39#14#0| |a#39#15#0| |a#39#16#0| |a#39#17#0| |a#39#18#0| |a#39#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( (|#_System._tuple#20._#Make20| |a#39#0#0| |a#39#1#0| |a#39#2#0| |a#39#3#0| |a#39#4#0| |a#39#5#0| |a#39#6#0| |a#39#7#0| |a#39#8#0| |a#39#9#0| |a#39#10#0| |a#39#11#0| |a#39#12#0| |a#39#13#0| |a#39#14#0| |a#39#15#0| |a#39#16#0| |a#39#17#0| |a#39#18#0| |a#39#19#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) (|a#41#3#0| T@U) (|a#41#4#0| T@U) (|a#41#5#0| T@U) (|a#41#6#0| T@U) (|a#41#7#0| T@U) (|a#41#8#0| T@U) (|a#41#9#0| T@U) (|a#41#10#0| T@U) (|a#41#11#0| T@U) (|a#41#12#0| T@U) (|a#41#13#0| T@U) (|a#41#14#0| T@U) (|a#41#15#0| T@U) (|a#41#16#0| T@U) (|a#41#17#0| T@U) (|a#41#18#0| T@U) (|a#41#19#0| T@U) ) (! (< (BoxRank |a#41#12#0|) (DtRank (|#_System._tuple#20._#Make20| |a#41#0#0| |a#41#1#0| |a#41#2#0| |a#41#3#0| |a#41#4#0| |a#41#5#0| |a#41#6#0| |a#41#7#0| |a#41#8#0| |a#41#9#0| |a#41#10#0| |a#41#11#0| |a#41#12#0| |a#41#13#0| |a#41#14#0| |a#41#15#0| |a#41#16#0| |a#41#17#0| |a#41#18#0| |a#41#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1894|
 :pattern ( (|#_System._tuple#20._#Make20| |a#41#0#0| |a#41#1#0| |a#41#2#0| |a#41#3#0| |a#41#4#0| |a#41#5#0| |a#41#6#0| |a#41#7#0| |a#41#8#0| |a#41#9#0| |a#41#10#0| |a#41#11#0| |a#41#12#0| |a#41#13#0| |a#41#14#0| |a#41#15#0| |a#41#16#0| |a#41#17#0| |a#41#18#0| |a#41#19#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) (|a#43#3#0| T@U) (|a#43#4#0| T@U) (|a#43#5#0| T@U) (|a#43#6#0| T@U) (|a#43#7#0| T@U) (|a#43#8#0| T@U) (|a#43#9#0| T@U) (|a#43#10#0| T@U) (|a#43#11#0| T@U) (|a#43#12#0| T@U) (|a#43#13#0| T@U) (|a#43#14#0| T@U) (|a#43#15#0| T@U) (|a#43#16#0| T@U) (|a#43#17#0| T@U) (|a#43#18#0| T@U) (|a#43#19#0| T@U) ) (! (< (BoxRank |a#43#13#0|) (DtRank (|#_System._tuple#20._#Make20| |a#43#0#0| |a#43#1#0| |a#43#2#0| |a#43#3#0| |a#43#4#0| |a#43#5#0| |a#43#6#0| |a#43#7#0| |a#43#8#0| |a#43#9#0| |a#43#10#0| |a#43#11#0| |a#43#12#0| |a#43#13#0| |a#43#14#0| |a#43#15#0| |a#43#16#0| |a#43#17#0| |a#43#18#0| |a#43#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1896|
 :pattern ( (|#_System._tuple#20._#Make20| |a#43#0#0| |a#43#1#0| |a#43#2#0| |a#43#3#0| |a#43#4#0| |a#43#5#0| |a#43#6#0| |a#43#7#0| |a#43#8#0| |a#43#9#0| |a#43#10#0| |a#43#11#0| |a#43#12#0| |a#43#13#0| |a#43#14#0| |a#43#15#0| |a#43#16#0| |a#43#17#0| |a#43#18#0| |a#43#19#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) (|a#45#3#0| T@U) (|a#45#4#0| T@U) (|a#45#5#0| T@U) (|a#45#6#0| T@U) (|a#45#7#0| T@U) (|a#45#8#0| T@U) (|a#45#9#0| T@U) (|a#45#10#0| T@U) (|a#45#11#0| T@U) (|a#45#12#0| T@U) (|a#45#13#0| T@U) (|a#45#14#0| T@U) (|a#45#15#0| T@U) (|a#45#16#0| T@U) (|a#45#17#0| T@U) (|a#45#18#0| T@U) (|a#45#19#0| T@U) ) (! (< (BoxRank |a#45#14#0|) (DtRank (|#_System._tuple#20._#Make20| |a#45#0#0| |a#45#1#0| |a#45#2#0| |a#45#3#0| |a#45#4#0| |a#45#5#0| |a#45#6#0| |a#45#7#0| |a#45#8#0| |a#45#9#0| |a#45#10#0| |a#45#11#0| |a#45#12#0| |a#45#13#0| |a#45#14#0| |a#45#15#0| |a#45#16#0| |a#45#17#0| |a#45#18#0| |a#45#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1898|
 :pattern ( (|#_System._tuple#20._#Make20| |a#45#0#0| |a#45#1#0| |a#45#2#0| |a#45#3#0| |a#45#4#0| |a#45#5#0| |a#45#6#0| |a#45#7#0| |a#45#8#0| |a#45#9#0| |a#45#10#0| |a#45#11#0| |a#45#12#0| |a#45#13#0| |a#45#14#0| |a#45#15#0| |a#45#16#0| |a#45#17#0| |a#45#18#0| |a#45#19#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) (|a#47#2#0| T@U) (|a#47#3#0| T@U) (|a#47#4#0| T@U) (|a#47#5#0| T@U) (|a#47#6#0| T@U) (|a#47#7#0| T@U) (|a#47#8#0| T@U) (|a#47#9#0| T@U) (|a#47#10#0| T@U) (|a#47#11#0| T@U) (|a#47#12#0| T@U) (|a#47#13#0| T@U) (|a#47#14#0| T@U) (|a#47#15#0| T@U) (|a#47#16#0| T@U) (|a#47#17#0| T@U) (|a#47#18#0| T@U) (|a#47#19#0| T@U) ) (! (< (BoxRank |a#47#15#0|) (DtRank (|#_System._tuple#20._#Make20| |a#47#0#0| |a#47#1#0| |a#47#2#0| |a#47#3#0| |a#47#4#0| |a#47#5#0| |a#47#6#0| |a#47#7#0| |a#47#8#0| |a#47#9#0| |a#47#10#0| |a#47#11#0| |a#47#12#0| |a#47#13#0| |a#47#14#0| |a#47#15#0| |a#47#16#0| |a#47#17#0| |a#47#18#0| |a#47#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1900|
 :pattern ( (|#_System._tuple#20._#Make20| |a#47#0#0| |a#47#1#0| |a#47#2#0| |a#47#3#0| |a#47#4#0| |a#47#5#0| |a#47#6#0| |a#47#7#0| |a#47#8#0| |a#47#9#0| |a#47#10#0| |a#47#11#0| |a#47#12#0| |a#47#13#0| |a#47#14#0| |a#47#15#0| |a#47#16#0| |a#47#17#0| |a#47#18#0| |a#47#19#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) (|a#49#2#0| T@U) (|a#49#3#0| T@U) (|a#49#4#0| T@U) (|a#49#5#0| T@U) (|a#49#6#0| T@U) (|a#49#7#0| T@U) (|a#49#8#0| T@U) (|a#49#9#0| T@U) (|a#49#10#0| T@U) (|a#49#11#0| T@U) (|a#49#12#0| T@U) (|a#49#13#0| T@U) (|a#49#14#0| T@U) (|a#49#15#0| T@U) (|a#49#16#0| T@U) (|a#49#17#0| T@U) (|a#49#18#0| T@U) (|a#49#19#0| T@U) ) (! (< (BoxRank |a#49#16#0|) (DtRank (|#_System._tuple#20._#Make20| |a#49#0#0| |a#49#1#0| |a#49#2#0| |a#49#3#0| |a#49#4#0| |a#49#5#0| |a#49#6#0| |a#49#7#0| |a#49#8#0| |a#49#9#0| |a#49#10#0| |a#49#11#0| |a#49#12#0| |a#49#13#0| |a#49#14#0| |a#49#15#0| |a#49#16#0| |a#49#17#0| |a#49#18#0| |a#49#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( (|#_System._tuple#20._#Make20| |a#49#0#0| |a#49#1#0| |a#49#2#0| |a#49#3#0| |a#49#4#0| |a#49#5#0| |a#49#6#0| |a#49#7#0| |a#49#8#0| |a#49#9#0| |a#49#10#0| |a#49#11#0| |a#49#12#0| |a#49#13#0| |a#49#14#0| |a#49#15#0| |a#49#16#0| |a#49#17#0| |a#49#18#0| |a#49#19#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) (|a#51#2#0| T@U) (|a#51#3#0| T@U) (|a#51#4#0| T@U) (|a#51#5#0| T@U) (|a#51#6#0| T@U) (|a#51#7#0| T@U) (|a#51#8#0| T@U) (|a#51#9#0| T@U) (|a#51#10#0| T@U) (|a#51#11#0| T@U) (|a#51#12#0| T@U) (|a#51#13#0| T@U) (|a#51#14#0| T@U) (|a#51#15#0| T@U) (|a#51#16#0| T@U) (|a#51#17#0| T@U) (|a#51#18#0| T@U) (|a#51#19#0| T@U) ) (! (< (BoxRank |a#51#17#0|) (DtRank (|#_System._tuple#20._#Make20| |a#51#0#0| |a#51#1#0| |a#51#2#0| |a#51#3#0| |a#51#4#0| |a#51#5#0| |a#51#6#0| |a#51#7#0| |a#51#8#0| |a#51#9#0| |a#51#10#0| |a#51#11#0| |a#51#12#0| |a#51#13#0| |a#51#14#0| |a#51#15#0| |a#51#16#0| |a#51#17#0| |a#51#18#0| |a#51#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1904|
 :pattern ( (|#_System._tuple#20._#Make20| |a#51#0#0| |a#51#1#0| |a#51#2#0| |a#51#3#0| |a#51#4#0| |a#51#5#0| |a#51#6#0| |a#51#7#0| |a#51#8#0| |a#51#9#0| |a#51#10#0| |a#51#11#0| |a#51#12#0| |a#51#13#0| |a#51#14#0| |a#51#15#0| |a#51#16#0| |a#51#17#0| |a#51#18#0| |a#51#19#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) (|a#53#2#0| T@U) (|a#53#3#0| T@U) (|a#53#4#0| T@U) (|a#53#5#0| T@U) (|a#53#6#0| T@U) (|a#53#7#0| T@U) (|a#53#8#0| T@U) (|a#53#9#0| T@U) (|a#53#10#0| T@U) (|a#53#11#0| T@U) (|a#53#12#0| T@U) (|a#53#13#0| T@U) (|a#53#14#0| T@U) (|a#53#15#0| T@U) (|a#53#16#0| T@U) (|a#53#17#0| T@U) (|a#53#18#0| T@U) (|a#53#19#0| T@U) ) (! (< (BoxRank |a#53#18#0|) (DtRank (|#_System._tuple#20._#Make20| |a#53#0#0| |a#53#1#0| |a#53#2#0| |a#53#3#0| |a#53#4#0| |a#53#5#0| |a#53#6#0| |a#53#7#0| |a#53#8#0| |a#53#9#0| |a#53#10#0| |a#53#11#0| |a#53#12#0| |a#53#13#0| |a#53#14#0| |a#53#15#0| |a#53#16#0| |a#53#17#0| |a#53#18#0| |a#53#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1906|
 :pattern ( (|#_System._tuple#20._#Make20| |a#53#0#0| |a#53#1#0| |a#53#2#0| |a#53#3#0| |a#53#4#0| |a#53#5#0| |a#53#6#0| |a#53#7#0| |a#53#8#0| |a#53#9#0| |a#53#10#0| |a#53#11#0| |a#53#12#0| |a#53#13#0| |a#53#14#0| |a#53#15#0| |a#53#16#0| |a#53#17#0| |a#53#18#0| |a#53#19#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) (|a#55#2#0| T@U) (|a#55#3#0| T@U) (|a#55#4#0| T@U) (|a#55#5#0| T@U) (|a#55#6#0| T@U) (|a#55#7#0| T@U) (|a#55#8#0| T@U) (|a#55#9#0| T@U) (|a#55#10#0| T@U) (|a#55#11#0| T@U) (|a#55#12#0| T@U) (|a#55#13#0| T@U) (|a#55#14#0| T@U) (|a#55#15#0| T@U) (|a#55#16#0| T@U) (|a#55#17#0| T@U) (|a#55#18#0| T@U) (|a#55#19#0| T@U) ) (! (< (BoxRank |a#55#19#0|) (DtRank (|#_System._tuple#20._#Make20| |a#55#0#0| |a#55#1#0| |a#55#2#0| |a#55#3#0| |a#55#4#0| |a#55#5#0| |a#55#6#0| |a#55#7#0| |a#55#8#0| |a#55#9#0| |a#55#10#0| |a#55#11#0| |a#55#12#0| |a#55#13#0| |a#55#14#0| |a#55#15#0| |a#55#16#0| |a#55#17#0| |a#55#18#0| |a#55#19#0|)))
 :qid |unknown.0:0|
 :skolemid |1908|
 :pattern ( (|#_System._tuple#20._#Make20| |a#55#0#0| |a#55#1#0| |a#55#2#0| |a#55#3#0| |a#55#4#0| |a#55#5#0| |a#55#6#0| |a#55#7#0| |a#55#8#0| |a#55#9#0| |a#55#10#0| |a#55#11#0| |a#55#12#0| |a#55#13#0| |a#55#14#0| |a#55#15#0| |a#55#16#0| |a#55#17#0| |a#55#18#0| |a#55#19#0|))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> ($Is DatatypeTypeType d@@29 Tclass._module.List) (or (_module.List.Nil_q d@@29) (_module.List.Cons_q d@@29)))
 :qid |unknown.0:0|
 :skolemid |2080|
 :pattern ( (_module.List.Cons_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@29) ($Is DatatypeTypeType d@@29 Tclass._module.List))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1438|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) (|a#12#3#0| T@U) (|a#12#4#0| T@U) (|a#12#5#0| T@U) (|a#12#6#0| T@U) (|a#12#7#0| T@U) (|a#12#8#0| T@U) (|a#12#9#0| T@U) (|a#12#10#0| T@U) (|a#12#11#0| T@U) (|a#12#12#0| T@U) (|a#12#13#0| T@U) (|a#12#14#0| T@U) (|a#12#15#0| T@U) (|a#12#16#0| T@U) (|a#12#17#0| T@U) (|a#12#18#0| T@U) (|a#12#19#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#20._#Make20| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0| |a#12#7#0| |a#12#8#0| |a#12#9#0| |a#12#10#0| |a#12#11#0| |a#12#12#0| |a#12#13#0| |a#12#14#0| |a#12#15#0| |a#12#16#0| |a#12#17#0| |a#12#18#0| |a#12#19#0|)) |##_System._tuple#20._#Make20|)
 :qid |unknown.0:0|
 :skolemid |1800|
 :pattern ( (|#_System._tuple#20._#Make20| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0| |a#12#7#0| |a#12#8#0| |a#12#9#0| |a#12#10#0| |a#12#11#0| |a#12#12#0| |a#12#13#0| |a#12#14#0| |a#12#15#0| |a#12#16#0| |a#12#17#0| |a#12#18#0| |a#12#19#0|))
)))
(assert (forall ((|_System._tuple#20$T0@@23| T@U) (|_System._tuple#20$T1@@23| T@U) (|_System._tuple#20$T2@@23| T@U) (|_System._tuple#20$T3@@23| T@U) (|_System._tuple#20$T4@@23| T@U) (|_System._tuple#20$T5@@23| T@U) (|_System._tuple#20$T6@@23| T@U) (|_System._tuple#20$T7@@23| T@U) (|_System._tuple#20$T8@@23| T@U) (|_System._tuple#20$T9@@23| T@U) (|_System._tuple#20$T10@@23| T@U) (|_System._tuple#20$T11@@23| T@U) (|_System._tuple#20$T12@@23| T@U) (|_System._tuple#20$T13@@23| T@U) (|_System._tuple#20$T14@@23| T@U) (|_System._tuple#20$T15@@23| T@U) (|_System._tuple#20$T16@@23| T@U) (|_System._tuple#20$T17@@23| T@U) (|_System._tuple#20$T18@@23| T@U) (|_System._tuple#20$T19@@23| T@U) ) (! (= (Tclass._System.Tuple20_0 (Tclass._System.Tuple20 |_System._tuple#20$T0@@23| |_System._tuple#20$T1@@23| |_System._tuple#20$T2@@23| |_System._tuple#20$T3@@23| |_System._tuple#20$T4@@23| |_System._tuple#20$T5@@23| |_System._tuple#20$T6@@23| |_System._tuple#20$T7@@23| |_System._tuple#20$T8@@23| |_System._tuple#20$T9@@23| |_System._tuple#20$T10@@23| |_System._tuple#20$T11@@23| |_System._tuple#20$T12@@23| |_System._tuple#20$T13@@23| |_System._tuple#20$T14@@23| |_System._tuple#20$T15@@23| |_System._tuple#20$T16@@23| |_System._tuple#20$T17@@23| |_System._tuple#20$T18@@23| |_System._tuple#20$T19@@23|)) |_System._tuple#20$T0@@23|)
 :qid |unknown.0:0|
 :skolemid |1805|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@23| |_System._tuple#20$T1@@23| |_System._tuple#20$T2@@23| |_System._tuple#20$T3@@23| |_System._tuple#20$T4@@23| |_System._tuple#20$T5@@23| |_System._tuple#20$T6@@23| |_System._tuple#20$T7@@23| |_System._tuple#20$T8@@23| |_System._tuple#20$T9@@23| |_System._tuple#20$T10@@23| |_System._tuple#20$T11@@23| |_System._tuple#20$T12@@23| |_System._tuple#20$T13@@23| |_System._tuple#20$T14@@23| |_System._tuple#20$T15@@23| |_System._tuple#20$T16@@23| |_System._tuple#20$T17@@23| |_System._tuple#20$T18@@23| |_System._tuple#20$T19@@23|))
)))
(assert (forall ((|_System._tuple#20$T0@@24| T@U) (|_System._tuple#20$T1@@24| T@U) (|_System._tuple#20$T2@@24| T@U) (|_System._tuple#20$T3@@24| T@U) (|_System._tuple#20$T4@@24| T@U) (|_System._tuple#20$T5@@24| T@U) (|_System._tuple#20$T6@@24| T@U) (|_System._tuple#20$T7@@24| T@U) (|_System._tuple#20$T8@@24| T@U) (|_System._tuple#20$T9@@24| T@U) (|_System._tuple#20$T10@@24| T@U) (|_System._tuple#20$T11@@24| T@U) (|_System._tuple#20$T12@@24| T@U) (|_System._tuple#20$T13@@24| T@U) (|_System._tuple#20$T14@@24| T@U) (|_System._tuple#20$T15@@24| T@U) (|_System._tuple#20$T16@@24| T@U) (|_System._tuple#20$T17@@24| T@U) (|_System._tuple#20$T18@@24| T@U) (|_System._tuple#20$T19@@24| T@U) ) (! (= (Tclass._System.Tuple20_1 (Tclass._System.Tuple20 |_System._tuple#20$T0@@24| |_System._tuple#20$T1@@24| |_System._tuple#20$T2@@24| |_System._tuple#20$T3@@24| |_System._tuple#20$T4@@24| |_System._tuple#20$T5@@24| |_System._tuple#20$T6@@24| |_System._tuple#20$T7@@24| |_System._tuple#20$T8@@24| |_System._tuple#20$T9@@24| |_System._tuple#20$T10@@24| |_System._tuple#20$T11@@24| |_System._tuple#20$T12@@24| |_System._tuple#20$T13@@24| |_System._tuple#20$T14@@24| |_System._tuple#20$T15@@24| |_System._tuple#20$T16@@24| |_System._tuple#20$T17@@24| |_System._tuple#20$T18@@24| |_System._tuple#20$T19@@24|)) |_System._tuple#20$T1@@24|)
 :qid |unknown.0:0|
 :skolemid |1806|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@24| |_System._tuple#20$T1@@24| |_System._tuple#20$T2@@24| |_System._tuple#20$T3@@24| |_System._tuple#20$T4@@24| |_System._tuple#20$T5@@24| |_System._tuple#20$T6@@24| |_System._tuple#20$T7@@24| |_System._tuple#20$T8@@24| |_System._tuple#20$T9@@24| |_System._tuple#20$T10@@24| |_System._tuple#20$T11@@24| |_System._tuple#20$T12@@24| |_System._tuple#20$T13@@24| |_System._tuple#20$T14@@24| |_System._tuple#20$T15@@24| |_System._tuple#20$T16@@24| |_System._tuple#20$T17@@24| |_System._tuple#20$T18@@24| |_System._tuple#20$T19@@24|))
)))
(assert (forall ((|_System._tuple#20$T0@@25| T@U) (|_System._tuple#20$T1@@25| T@U) (|_System._tuple#20$T2@@25| T@U) (|_System._tuple#20$T3@@25| T@U) (|_System._tuple#20$T4@@25| T@U) (|_System._tuple#20$T5@@25| T@U) (|_System._tuple#20$T6@@25| T@U) (|_System._tuple#20$T7@@25| T@U) (|_System._tuple#20$T8@@25| T@U) (|_System._tuple#20$T9@@25| T@U) (|_System._tuple#20$T10@@25| T@U) (|_System._tuple#20$T11@@25| T@U) (|_System._tuple#20$T12@@25| T@U) (|_System._tuple#20$T13@@25| T@U) (|_System._tuple#20$T14@@25| T@U) (|_System._tuple#20$T15@@25| T@U) (|_System._tuple#20$T16@@25| T@U) (|_System._tuple#20$T17@@25| T@U) (|_System._tuple#20$T18@@25| T@U) (|_System._tuple#20$T19@@25| T@U) ) (! (= (Tclass._System.Tuple20_2 (Tclass._System.Tuple20 |_System._tuple#20$T0@@25| |_System._tuple#20$T1@@25| |_System._tuple#20$T2@@25| |_System._tuple#20$T3@@25| |_System._tuple#20$T4@@25| |_System._tuple#20$T5@@25| |_System._tuple#20$T6@@25| |_System._tuple#20$T7@@25| |_System._tuple#20$T8@@25| |_System._tuple#20$T9@@25| |_System._tuple#20$T10@@25| |_System._tuple#20$T11@@25| |_System._tuple#20$T12@@25| |_System._tuple#20$T13@@25| |_System._tuple#20$T14@@25| |_System._tuple#20$T15@@25| |_System._tuple#20$T16@@25| |_System._tuple#20$T17@@25| |_System._tuple#20$T18@@25| |_System._tuple#20$T19@@25|)) |_System._tuple#20$T2@@25|)
 :qid |unknown.0:0|
 :skolemid |1807|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@25| |_System._tuple#20$T1@@25| |_System._tuple#20$T2@@25| |_System._tuple#20$T3@@25| |_System._tuple#20$T4@@25| |_System._tuple#20$T5@@25| |_System._tuple#20$T6@@25| |_System._tuple#20$T7@@25| |_System._tuple#20$T8@@25| |_System._tuple#20$T9@@25| |_System._tuple#20$T10@@25| |_System._tuple#20$T11@@25| |_System._tuple#20$T12@@25| |_System._tuple#20$T13@@25| |_System._tuple#20$T14@@25| |_System._tuple#20$T15@@25| |_System._tuple#20$T16@@25| |_System._tuple#20$T17@@25| |_System._tuple#20$T18@@25| |_System._tuple#20$T19@@25|))
)))
(assert (forall ((|_System._tuple#20$T0@@26| T@U) (|_System._tuple#20$T1@@26| T@U) (|_System._tuple#20$T2@@26| T@U) (|_System._tuple#20$T3@@26| T@U) (|_System._tuple#20$T4@@26| T@U) (|_System._tuple#20$T5@@26| T@U) (|_System._tuple#20$T6@@26| T@U) (|_System._tuple#20$T7@@26| T@U) (|_System._tuple#20$T8@@26| T@U) (|_System._tuple#20$T9@@26| T@U) (|_System._tuple#20$T10@@26| T@U) (|_System._tuple#20$T11@@26| T@U) (|_System._tuple#20$T12@@26| T@U) (|_System._tuple#20$T13@@26| T@U) (|_System._tuple#20$T14@@26| T@U) (|_System._tuple#20$T15@@26| T@U) (|_System._tuple#20$T16@@26| T@U) (|_System._tuple#20$T17@@26| T@U) (|_System._tuple#20$T18@@26| T@U) (|_System._tuple#20$T19@@26| T@U) ) (! (= (Tclass._System.Tuple20_3 (Tclass._System.Tuple20 |_System._tuple#20$T0@@26| |_System._tuple#20$T1@@26| |_System._tuple#20$T2@@26| |_System._tuple#20$T3@@26| |_System._tuple#20$T4@@26| |_System._tuple#20$T5@@26| |_System._tuple#20$T6@@26| |_System._tuple#20$T7@@26| |_System._tuple#20$T8@@26| |_System._tuple#20$T9@@26| |_System._tuple#20$T10@@26| |_System._tuple#20$T11@@26| |_System._tuple#20$T12@@26| |_System._tuple#20$T13@@26| |_System._tuple#20$T14@@26| |_System._tuple#20$T15@@26| |_System._tuple#20$T16@@26| |_System._tuple#20$T17@@26| |_System._tuple#20$T18@@26| |_System._tuple#20$T19@@26|)) |_System._tuple#20$T3@@26|)
 :qid |unknown.0:0|
 :skolemid |1808|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@26| |_System._tuple#20$T1@@26| |_System._tuple#20$T2@@26| |_System._tuple#20$T3@@26| |_System._tuple#20$T4@@26| |_System._tuple#20$T5@@26| |_System._tuple#20$T6@@26| |_System._tuple#20$T7@@26| |_System._tuple#20$T8@@26| |_System._tuple#20$T9@@26| |_System._tuple#20$T10@@26| |_System._tuple#20$T11@@26| |_System._tuple#20$T12@@26| |_System._tuple#20$T13@@26| |_System._tuple#20$T14@@26| |_System._tuple#20$T15@@26| |_System._tuple#20$T16@@26| |_System._tuple#20$T17@@26| |_System._tuple#20$T18@@26| |_System._tuple#20$T19@@26|))
)))
(assert (forall ((|_System._tuple#20$T0@@27| T@U) (|_System._tuple#20$T1@@27| T@U) (|_System._tuple#20$T2@@27| T@U) (|_System._tuple#20$T3@@27| T@U) (|_System._tuple#20$T4@@27| T@U) (|_System._tuple#20$T5@@27| T@U) (|_System._tuple#20$T6@@27| T@U) (|_System._tuple#20$T7@@27| T@U) (|_System._tuple#20$T8@@27| T@U) (|_System._tuple#20$T9@@27| T@U) (|_System._tuple#20$T10@@27| T@U) (|_System._tuple#20$T11@@27| T@U) (|_System._tuple#20$T12@@27| T@U) (|_System._tuple#20$T13@@27| T@U) (|_System._tuple#20$T14@@27| T@U) (|_System._tuple#20$T15@@27| T@U) (|_System._tuple#20$T16@@27| T@U) (|_System._tuple#20$T17@@27| T@U) (|_System._tuple#20$T18@@27| T@U) (|_System._tuple#20$T19@@27| T@U) ) (! (= (Tclass._System.Tuple20_4 (Tclass._System.Tuple20 |_System._tuple#20$T0@@27| |_System._tuple#20$T1@@27| |_System._tuple#20$T2@@27| |_System._tuple#20$T3@@27| |_System._tuple#20$T4@@27| |_System._tuple#20$T5@@27| |_System._tuple#20$T6@@27| |_System._tuple#20$T7@@27| |_System._tuple#20$T8@@27| |_System._tuple#20$T9@@27| |_System._tuple#20$T10@@27| |_System._tuple#20$T11@@27| |_System._tuple#20$T12@@27| |_System._tuple#20$T13@@27| |_System._tuple#20$T14@@27| |_System._tuple#20$T15@@27| |_System._tuple#20$T16@@27| |_System._tuple#20$T17@@27| |_System._tuple#20$T18@@27| |_System._tuple#20$T19@@27|)) |_System._tuple#20$T4@@27|)
 :qid |unknown.0:0|
 :skolemid |1809|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@27| |_System._tuple#20$T1@@27| |_System._tuple#20$T2@@27| |_System._tuple#20$T3@@27| |_System._tuple#20$T4@@27| |_System._tuple#20$T5@@27| |_System._tuple#20$T6@@27| |_System._tuple#20$T7@@27| |_System._tuple#20$T8@@27| |_System._tuple#20$T9@@27| |_System._tuple#20$T10@@27| |_System._tuple#20$T11@@27| |_System._tuple#20$T12@@27| |_System._tuple#20$T13@@27| |_System._tuple#20$T14@@27| |_System._tuple#20$T15@@27| |_System._tuple#20$T16@@27| |_System._tuple#20$T17@@27| |_System._tuple#20$T18@@27| |_System._tuple#20$T19@@27|))
)))
(assert (forall ((|_System._tuple#20$T0@@28| T@U) (|_System._tuple#20$T1@@28| T@U) (|_System._tuple#20$T2@@28| T@U) (|_System._tuple#20$T3@@28| T@U) (|_System._tuple#20$T4@@28| T@U) (|_System._tuple#20$T5@@28| T@U) (|_System._tuple#20$T6@@28| T@U) (|_System._tuple#20$T7@@28| T@U) (|_System._tuple#20$T8@@28| T@U) (|_System._tuple#20$T9@@28| T@U) (|_System._tuple#20$T10@@28| T@U) (|_System._tuple#20$T11@@28| T@U) (|_System._tuple#20$T12@@28| T@U) (|_System._tuple#20$T13@@28| T@U) (|_System._tuple#20$T14@@28| T@U) (|_System._tuple#20$T15@@28| T@U) (|_System._tuple#20$T16@@28| T@U) (|_System._tuple#20$T17@@28| T@U) (|_System._tuple#20$T18@@28| T@U) (|_System._tuple#20$T19@@28| T@U) ) (! (= (Tclass._System.Tuple20_5 (Tclass._System.Tuple20 |_System._tuple#20$T0@@28| |_System._tuple#20$T1@@28| |_System._tuple#20$T2@@28| |_System._tuple#20$T3@@28| |_System._tuple#20$T4@@28| |_System._tuple#20$T5@@28| |_System._tuple#20$T6@@28| |_System._tuple#20$T7@@28| |_System._tuple#20$T8@@28| |_System._tuple#20$T9@@28| |_System._tuple#20$T10@@28| |_System._tuple#20$T11@@28| |_System._tuple#20$T12@@28| |_System._tuple#20$T13@@28| |_System._tuple#20$T14@@28| |_System._tuple#20$T15@@28| |_System._tuple#20$T16@@28| |_System._tuple#20$T17@@28| |_System._tuple#20$T18@@28| |_System._tuple#20$T19@@28|)) |_System._tuple#20$T5@@28|)
 :qid |unknown.0:0|
 :skolemid |1810|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@28| |_System._tuple#20$T1@@28| |_System._tuple#20$T2@@28| |_System._tuple#20$T3@@28| |_System._tuple#20$T4@@28| |_System._tuple#20$T5@@28| |_System._tuple#20$T6@@28| |_System._tuple#20$T7@@28| |_System._tuple#20$T8@@28| |_System._tuple#20$T9@@28| |_System._tuple#20$T10@@28| |_System._tuple#20$T11@@28| |_System._tuple#20$T12@@28| |_System._tuple#20$T13@@28| |_System._tuple#20$T14@@28| |_System._tuple#20$T15@@28| |_System._tuple#20$T16@@28| |_System._tuple#20$T17@@28| |_System._tuple#20$T18@@28| |_System._tuple#20$T19@@28|))
)))
(assert (forall ((|_System._tuple#20$T0@@29| T@U) (|_System._tuple#20$T1@@29| T@U) (|_System._tuple#20$T2@@29| T@U) (|_System._tuple#20$T3@@29| T@U) (|_System._tuple#20$T4@@29| T@U) (|_System._tuple#20$T5@@29| T@U) (|_System._tuple#20$T6@@29| T@U) (|_System._tuple#20$T7@@29| T@U) (|_System._tuple#20$T8@@29| T@U) (|_System._tuple#20$T9@@29| T@U) (|_System._tuple#20$T10@@29| T@U) (|_System._tuple#20$T11@@29| T@U) (|_System._tuple#20$T12@@29| T@U) (|_System._tuple#20$T13@@29| T@U) (|_System._tuple#20$T14@@29| T@U) (|_System._tuple#20$T15@@29| T@U) (|_System._tuple#20$T16@@29| T@U) (|_System._tuple#20$T17@@29| T@U) (|_System._tuple#20$T18@@29| T@U) (|_System._tuple#20$T19@@29| T@U) ) (! (= (Tclass._System.Tuple20_6 (Tclass._System.Tuple20 |_System._tuple#20$T0@@29| |_System._tuple#20$T1@@29| |_System._tuple#20$T2@@29| |_System._tuple#20$T3@@29| |_System._tuple#20$T4@@29| |_System._tuple#20$T5@@29| |_System._tuple#20$T6@@29| |_System._tuple#20$T7@@29| |_System._tuple#20$T8@@29| |_System._tuple#20$T9@@29| |_System._tuple#20$T10@@29| |_System._tuple#20$T11@@29| |_System._tuple#20$T12@@29| |_System._tuple#20$T13@@29| |_System._tuple#20$T14@@29| |_System._tuple#20$T15@@29| |_System._tuple#20$T16@@29| |_System._tuple#20$T17@@29| |_System._tuple#20$T18@@29| |_System._tuple#20$T19@@29|)) |_System._tuple#20$T6@@29|)
 :qid |unknown.0:0|
 :skolemid |1811|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@29| |_System._tuple#20$T1@@29| |_System._tuple#20$T2@@29| |_System._tuple#20$T3@@29| |_System._tuple#20$T4@@29| |_System._tuple#20$T5@@29| |_System._tuple#20$T6@@29| |_System._tuple#20$T7@@29| |_System._tuple#20$T8@@29| |_System._tuple#20$T9@@29| |_System._tuple#20$T10@@29| |_System._tuple#20$T11@@29| |_System._tuple#20$T12@@29| |_System._tuple#20$T13@@29| |_System._tuple#20$T14@@29| |_System._tuple#20$T15@@29| |_System._tuple#20$T16@@29| |_System._tuple#20$T17@@29| |_System._tuple#20$T18@@29| |_System._tuple#20$T19@@29|))
)))
(assert (forall ((|_System._tuple#20$T0@@30| T@U) (|_System._tuple#20$T1@@30| T@U) (|_System._tuple#20$T2@@30| T@U) (|_System._tuple#20$T3@@30| T@U) (|_System._tuple#20$T4@@30| T@U) (|_System._tuple#20$T5@@30| T@U) (|_System._tuple#20$T6@@30| T@U) (|_System._tuple#20$T7@@30| T@U) (|_System._tuple#20$T8@@30| T@U) (|_System._tuple#20$T9@@30| T@U) (|_System._tuple#20$T10@@30| T@U) (|_System._tuple#20$T11@@30| T@U) (|_System._tuple#20$T12@@30| T@U) (|_System._tuple#20$T13@@30| T@U) (|_System._tuple#20$T14@@30| T@U) (|_System._tuple#20$T15@@30| T@U) (|_System._tuple#20$T16@@30| T@U) (|_System._tuple#20$T17@@30| T@U) (|_System._tuple#20$T18@@30| T@U) (|_System._tuple#20$T19@@30| T@U) ) (! (= (Tclass._System.Tuple20_7 (Tclass._System.Tuple20 |_System._tuple#20$T0@@30| |_System._tuple#20$T1@@30| |_System._tuple#20$T2@@30| |_System._tuple#20$T3@@30| |_System._tuple#20$T4@@30| |_System._tuple#20$T5@@30| |_System._tuple#20$T6@@30| |_System._tuple#20$T7@@30| |_System._tuple#20$T8@@30| |_System._tuple#20$T9@@30| |_System._tuple#20$T10@@30| |_System._tuple#20$T11@@30| |_System._tuple#20$T12@@30| |_System._tuple#20$T13@@30| |_System._tuple#20$T14@@30| |_System._tuple#20$T15@@30| |_System._tuple#20$T16@@30| |_System._tuple#20$T17@@30| |_System._tuple#20$T18@@30| |_System._tuple#20$T19@@30|)) |_System._tuple#20$T7@@30|)
 :qid |unknown.0:0|
 :skolemid |1812|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@30| |_System._tuple#20$T1@@30| |_System._tuple#20$T2@@30| |_System._tuple#20$T3@@30| |_System._tuple#20$T4@@30| |_System._tuple#20$T5@@30| |_System._tuple#20$T6@@30| |_System._tuple#20$T7@@30| |_System._tuple#20$T8@@30| |_System._tuple#20$T9@@30| |_System._tuple#20$T10@@30| |_System._tuple#20$T11@@30| |_System._tuple#20$T12@@30| |_System._tuple#20$T13@@30| |_System._tuple#20$T14@@30| |_System._tuple#20$T15@@30| |_System._tuple#20$T16@@30| |_System._tuple#20$T17@@30| |_System._tuple#20$T18@@30| |_System._tuple#20$T19@@30|))
)))
(assert (forall ((|_System._tuple#20$T0@@31| T@U) (|_System._tuple#20$T1@@31| T@U) (|_System._tuple#20$T2@@31| T@U) (|_System._tuple#20$T3@@31| T@U) (|_System._tuple#20$T4@@31| T@U) (|_System._tuple#20$T5@@31| T@U) (|_System._tuple#20$T6@@31| T@U) (|_System._tuple#20$T7@@31| T@U) (|_System._tuple#20$T8@@31| T@U) (|_System._tuple#20$T9@@31| T@U) (|_System._tuple#20$T10@@31| T@U) (|_System._tuple#20$T11@@31| T@U) (|_System._tuple#20$T12@@31| T@U) (|_System._tuple#20$T13@@31| T@U) (|_System._tuple#20$T14@@31| T@U) (|_System._tuple#20$T15@@31| T@U) (|_System._tuple#20$T16@@31| T@U) (|_System._tuple#20$T17@@31| T@U) (|_System._tuple#20$T18@@31| T@U) (|_System._tuple#20$T19@@31| T@U) ) (! (= (Tclass._System.Tuple20_8 (Tclass._System.Tuple20 |_System._tuple#20$T0@@31| |_System._tuple#20$T1@@31| |_System._tuple#20$T2@@31| |_System._tuple#20$T3@@31| |_System._tuple#20$T4@@31| |_System._tuple#20$T5@@31| |_System._tuple#20$T6@@31| |_System._tuple#20$T7@@31| |_System._tuple#20$T8@@31| |_System._tuple#20$T9@@31| |_System._tuple#20$T10@@31| |_System._tuple#20$T11@@31| |_System._tuple#20$T12@@31| |_System._tuple#20$T13@@31| |_System._tuple#20$T14@@31| |_System._tuple#20$T15@@31| |_System._tuple#20$T16@@31| |_System._tuple#20$T17@@31| |_System._tuple#20$T18@@31| |_System._tuple#20$T19@@31|)) |_System._tuple#20$T8@@31|)
 :qid |unknown.0:0|
 :skolemid |1813|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@31| |_System._tuple#20$T1@@31| |_System._tuple#20$T2@@31| |_System._tuple#20$T3@@31| |_System._tuple#20$T4@@31| |_System._tuple#20$T5@@31| |_System._tuple#20$T6@@31| |_System._tuple#20$T7@@31| |_System._tuple#20$T8@@31| |_System._tuple#20$T9@@31| |_System._tuple#20$T10@@31| |_System._tuple#20$T11@@31| |_System._tuple#20$T12@@31| |_System._tuple#20$T13@@31| |_System._tuple#20$T14@@31| |_System._tuple#20$T15@@31| |_System._tuple#20$T16@@31| |_System._tuple#20$T17@@31| |_System._tuple#20$T18@@31| |_System._tuple#20$T19@@31|))
)))
(assert (forall ((|_System._tuple#20$T0@@32| T@U) (|_System._tuple#20$T1@@32| T@U) (|_System._tuple#20$T2@@32| T@U) (|_System._tuple#20$T3@@32| T@U) (|_System._tuple#20$T4@@32| T@U) (|_System._tuple#20$T5@@32| T@U) (|_System._tuple#20$T6@@32| T@U) (|_System._tuple#20$T7@@32| T@U) (|_System._tuple#20$T8@@32| T@U) (|_System._tuple#20$T9@@32| T@U) (|_System._tuple#20$T10@@32| T@U) (|_System._tuple#20$T11@@32| T@U) (|_System._tuple#20$T12@@32| T@U) (|_System._tuple#20$T13@@32| T@U) (|_System._tuple#20$T14@@32| T@U) (|_System._tuple#20$T15@@32| T@U) (|_System._tuple#20$T16@@32| T@U) (|_System._tuple#20$T17@@32| T@U) (|_System._tuple#20$T18@@32| T@U) (|_System._tuple#20$T19@@32| T@U) ) (! (= (Tclass._System.Tuple20_9 (Tclass._System.Tuple20 |_System._tuple#20$T0@@32| |_System._tuple#20$T1@@32| |_System._tuple#20$T2@@32| |_System._tuple#20$T3@@32| |_System._tuple#20$T4@@32| |_System._tuple#20$T5@@32| |_System._tuple#20$T6@@32| |_System._tuple#20$T7@@32| |_System._tuple#20$T8@@32| |_System._tuple#20$T9@@32| |_System._tuple#20$T10@@32| |_System._tuple#20$T11@@32| |_System._tuple#20$T12@@32| |_System._tuple#20$T13@@32| |_System._tuple#20$T14@@32| |_System._tuple#20$T15@@32| |_System._tuple#20$T16@@32| |_System._tuple#20$T17@@32| |_System._tuple#20$T18@@32| |_System._tuple#20$T19@@32|)) |_System._tuple#20$T9@@32|)
 :qid |unknown.0:0|
 :skolemid |1814|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@32| |_System._tuple#20$T1@@32| |_System._tuple#20$T2@@32| |_System._tuple#20$T3@@32| |_System._tuple#20$T4@@32| |_System._tuple#20$T5@@32| |_System._tuple#20$T6@@32| |_System._tuple#20$T7@@32| |_System._tuple#20$T8@@32| |_System._tuple#20$T9@@32| |_System._tuple#20$T10@@32| |_System._tuple#20$T11@@32| |_System._tuple#20$T12@@32| |_System._tuple#20$T13@@32| |_System._tuple#20$T14@@32| |_System._tuple#20$T15@@32| |_System._tuple#20$T16@@32| |_System._tuple#20$T17@@32| |_System._tuple#20$T18@@32| |_System._tuple#20$T19@@32|))
)))
(assert (forall ((|_System._tuple#20$T0@@33| T@U) (|_System._tuple#20$T1@@33| T@U) (|_System._tuple#20$T2@@33| T@U) (|_System._tuple#20$T3@@33| T@U) (|_System._tuple#20$T4@@33| T@U) (|_System._tuple#20$T5@@33| T@U) (|_System._tuple#20$T6@@33| T@U) (|_System._tuple#20$T7@@33| T@U) (|_System._tuple#20$T8@@33| T@U) (|_System._tuple#20$T9@@33| T@U) (|_System._tuple#20$T10@@33| T@U) (|_System._tuple#20$T11@@33| T@U) (|_System._tuple#20$T12@@33| T@U) (|_System._tuple#20$T13@@33| T@U) (|_System._tuple#20$T14@@33| T@U) (|_System._tuple#20$T15@@33| T@U) (|_System._tuple#20$T16@@33| T@U) (|_System._tuple#20$T17@@33| T@U) (|_System._tuple#20$T18@@33| T@U) (|_System._tuple#20$T19@@33| T@U) ) (! (= (Tclass._System.Tuple20_10 (Tclass._System.Tuple20 |_System._tuple#20$T0@@33| |_System._tuple#20$T1@@33| |_System._tuple#20$T2@@33| |_System._tuple#20$T3@@33| |_System._tuple#20$T4@@33| |_System._tuple#20$T5@@33| |_System._tuple#20$T6@@33| |_System._tuple#20$T7@@33| |_System._tuple#20$T8@@33| |_System._tuple#20$T9@@33| |_System._tuple#20$T10@@33| |_System._tuple#20$T11@@33| |_System._tuple#20$T12@@33| |_System._tuple#20$T13@@33| |_System._tuple#20$T14@@33| |_System._tuple#20$T15@@33| |_System._tuple#20$T16@@33| |_System._tuple#20$T17@@33| |_System._tuple#20$T18@@33| |_System._tuple#20$T19@@33|)) |_System._tuple#20$T10@@33|)
 :qid |unknown.0:0|
 :skolemid |1815|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@33| |_System._tuple#20$T1@@33| |_System._tuple#20$T2@@33| |_System._tuple#20$T3@@33| |_System._tuple#20$T4@@33| |_System._tuple#20$T5@@33| |_System._tuple#20$T6@@33| |_System._tuple#20$T7@@33| |_System._tuple#20$T8@@33| |_System._tuple#20$T9@@33| |_System._tuple#20$T10@@33| |_System._tuple#20$T11@@33| |_System._tuple#20$T12@@33| |_System._tuple#20$T13@@33| |_System._tuple#20$T14@@33| |_System._tuple#20$T15@@33| |_System._tuple#20$T16@@33| |_System._tuple#20$T17@@33| |_System._tuple#20$T18@@33| |_System._tuple#20$T19@@33|))
)))
(assert (forall ((|_System._tuple#20$T0@@34| T@U) (|_System._tuple#20$T1@@34| T@U) (|_System._tuple#20$T2@@34| T@U) (|_System._tuple#20$T3@@34| T@U) (|_System._tuple#20$T4@@34| T@U) (|_System._tuple#20$T5@@34| T@U) (|_System._tuple#20$T6@@34| T@U) (|_System._tuple#20$T7@@34| T@U) (|_System._tuple#20$T8@@34| T@U) (|_System._tuple#20$T9@@34| T@U) (|_System._tuple#20$T10@@34| T@U) (|_System._tuple#20$T11@@34| T@U) (|_System._tuple#20$T12@@34| T@U) (|_System._tuple#20$T13@@34| T@U) (|_System._tuple#20$T14@@34| T@U) (|_System._tuple#20$T15@@34| T@U) (|_System._tuple#20$T16@@34| T@U) (|_System._tuple#20$T17@@34| T@U) (|_System._tuple#20$T18@@34| T@U) (|_System._tuple#20$T19@@34| T@U) ) (! (= (Tclass._System.Tuple20_11 (Tclass._System.Tuple20 |_System._tuple#20$T0@@34| |_System._tuple#20$T1@@34| |_System._tuple#20$T2@@34| |_System._tuple#20$T3@@34| |_System._tuple#20$T4@@34| |_System._tuple#20$T5@@34| |_System._tuple#20$T6@@34| |_System._tuple#20$T7@@34| |_System._tuple#20$T8@@34| |_System._tuple#20$T9@@34| |_System._tuple#20$T10@@34| |_System._tuple#20$T11@@34| |_System._tuple#20$T12@@34| |_System._tuple#20$T13@@34| |_System._tuple#20$T14@@34| |_System._tuple#20$T15@@34| |_System._tuple#20$T16@@34| |_System._tuple#20$T17@@34| |_System._tuple#20$T18@@34| |_System._tuple#20$T19@@34|)) |_System._tuple#20$T11@@34|)
 :qid |unknown.0:0|
 :skolemid |1816|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@34| |_System._tuple#20$T1@@34| |_System._tuple#20$T2@@34| |_System._tuple#20$T3@@34| |_System._tuple#20$T4@@34| |_System._tuple#20$T5@@34| |_System._tuple#20$T6@@34| |_System._tuple#20$T7@@34| |_System._tuple#20$T8@@34| |_System._tuple#20$T9@@34| |_System._tuple#20$T10@@34| |_System._tuple#20$T11@@34| |_System._tuple#20$T12@@34| |_System._tuple#20$T13@@34| |_System._tuple#20$T14@@34| |_System._tuple#20$T15@@34| |_System._tuple#20$T16@@34| |_System._tuple#20$T17@@34| |_System._tuple#20$T18@@34| |_System._tuple#20$T19@@34|))
)))
(assert (forall ((|_System._tuple#20$T0@@35| T@U) (|_System._tuple#20$T1@@35| T@U) (|_System._tuple#20$T2@@35| T@U) (|_System._tuple#20$T3@@35| T@U) (|_System._tuple#20$T4@@35| T@U) (|_System._tuple#20$T5@@35| T@U) (|_System._tuple#20$T6@@35| T@U) (|_System._tuple#20$T7@@35| T@U) (|_System._tuple#20$T8@@35| T@U) (|_System._tuple#20$T9@@35| T@U) (|_System._tuple#20$T10@@35| T@U) (|_System._tuple#20$T11@@35| T@U) (|_System._tuple#20$T12@@35| T@U) (|_System._tuple#20$T13@@35| T@U) (|_System._tuple#20$T14@@35| T@U) (|_System._tuple#20$T15@@35| T@U) (|_System._tuple#20$T16@@35| T@U) (|_System._tuple#20$T17@@35| T@U) (|_System._tuple#20$T18@@35| T@U) (|_System._tuple#20$T19@@35| T@U) ) (! (= (Tclass._System.Tuple20_12 (Tclass._System.Tuple20 |_System._tuple#20$T0@@35| |_System._tuple#20$T1@@35| |_System._tuple#20$T2@@35| |_System._tuple#20$T3@@35| |_System._tuple#20$T4@@35| |_System._tuple#20$T5@@35| |_System._tuple#20$T6@@35| |_System._tuple#20$T7@@35| |_System._tuple#20$T8@@35| |_System._tuple#20$T9@@35| |_System._tuple#20$T10@@35| |_System._tuple#20$T11@@35| |_System._tuple#20$T12@@35| |_System._tuple#20$T13@@35| |_System._tuple#20$T14@@35| |_System._tuple#20$T15@@35| |_System._tuple#20$T16@@35| |_System._tuple#20$T17@@35| |_System._tuple#20$T18@@35| |_System._tuple#20$T19@@35|)) |_System._tuple#20$T12@@35|)
 :qid |unknown.0:0|
 :skolemid |1817|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@35| |_System._tuple#20$T1@@35| |_System._tuple#20$T2@@35| |_System._tuple#20$T3@@35| |_System._tuple#20$T4@@35| |_System._tuple#20$T5@@35| |_System._tuple#20$T6@@35| |_System._tuple#20$T7@@35| |_System._tuple#20$T8@@35| |_System._tuple#20$T9@@35| |_System._tuple#20$T10@@35| |_System._tuple#20$T11@@35| |_System._tuple#20$T12@@35| |_System._tuple#20$T13@@35| |_System._tuple#20$T14@@35| |_System._tuple#20$T15@@35| |_System._tuple#20$T16@@35| |_System._tuple#20$T17@@35| |_System._tuple#20$T18@@35| |_System._tuple#20$T19@@35|))
)))
(assert (forall ((|_System._tuple#20$T0@@36| T@U) (|_System._tuple#20$T1@@36| T@U) (|_System._tuple#20$T2@@36| T@U) (|_System._tuple#20$T3@@36| T@U) (|_System._tuple#20$T4@@36| T@U) (|_System._tuple#20$T5@@36| T@U) (|_System._tuple#20$T6@@36| T@U) (|_System._tuple#20$T7@@36| T@U) (|_System._tuple#20$T8@@36| T@U) (|_System._tuple#20$T9@@36| T@U) (|_System._tuple#20$T10@@36| T@U) (|_System._tuple#20$T11@@36| T@U) (|_System._tuple#20$T12@@36| T@U) (|_System._tuple#20$T13@@36| T@U) (|_System._tuple#20$T14@@36| T@U) (|_System._tuple#20$T15@@36| T@U) (|_System._tuple#20$T16@@36| T@U) (|_System._tuple#20$T17@@36| T@U) (|_System._tuple#20$T18@@36| T@U) (|_System._tuple#20$T19@@36| T@U) ) (! (= (Tclass._System.Tuple20_13 (Tclass._System.Tuple20 |_System._tuple#20$T0@@36| |_System._tuple#20$T1@@36| |_System._tuple#20$T2@@36| |_System._tuple#20$T3@@36| |_System._tuple#20$T4@@36| |_System._tuple#20$T5@@36| |_System._tuple#20$T6@@36| |_System._tuple#20$T7@@36| |_System._tuple#20$T8@@36| |_System._tuple#20$T9@@36| |_System._tuple#20$T10@@36| |_System._tuple#20$T11@@36| |_System._tuple#20$T12@@36| |_System._tuple#20$T13@@36| |_System._tuple#20$T14@@36| |_System._tuple#20$T15@@36| |_System._tuple#20$T16@@36| |_System._tuple#20$T17@@36| |_System._tuple#20$T18@@36| |_System._tuple#20$T19@@36|)) |_System._tuple#20$T13@@36|)
 :qid |unknown.0:0|
 :skolemid |1818|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@36| |_System._tuple#20$T1@@36| |_System._tuple#20$T2@@36| |_System._tuple#20$T3@@36| |_System._tuple#20$T4@@36| |_System._tuple#20$T5@@36| |_System._tuple#20$T6@@36| |_System._tuple#20$T7@@36| |_System._tuple#20$T8@@36| |_System._tuple#20$T9@@36| |_System._tuple#20$T10@@36| |_System._tuple#20$T11@@36| |_System._tuple#20$T12@@36| |_System._tuple#20$T13@@36| |_System._tuple#20$T14@@36| |_System._tuple#20$T15@@36| |_System._tuple#20$T16@@36| |_System._tuple#20$T17@@36| |_System._tuple#20$T18@@36| |_System._tuple#20$T19@@36|))
)))
(assert (forall ((|_System._tuple#20$T0@@37| T@U) (|_System._tuple#20$T1@@37| T@U) (|_System._tuple#20$T2@@37| T@U) (|_System._tuple#20$T3@@37| T@U) (|_System._tuple#20$T4@@37| T@U) (|_System._tuple#20$T5@@37| T@U) (|_System._tuple#20$T6@@37| T@U) (|_System._tuple#20$T7@@37| T@U) (|_System._tuple#20$T8@@37| T@U) (|_System._tuple#20$T9@@37| T@U) (|_System._tuple#20$T10@@37| T@U) (|_System._tuple#20$T11@@37| T@U) (|_System._tuple#20$T12@@37| T@U) (|_System._tuple#20$T13@@37| T@U) (|_System._tuple#20$T14@@37| T@U) (|_System._tuple#20$T15@@37| T@U) (|_System._tuple#20$T16@@37| T@U) (|_System._tuple#20$T17@@37| T@U) (|_System._tuple#20$T18@@37| T@U) (|_System._tuple#20$T19@@37| T@U) ) (! (= (Tclass._System.Tuple20_14 (Tclass._System.Tuple20 |_System._tuple#20$T0@@37| |_System._tuple#20$T1@@37| |_System._tuple#20$T2@@37| |_System._tuple#20$T3@@37| |_System._tuple#20$T4@@37| |_System._tuple#20$T5@@37| |_System._tuple#20$T6@@37| |_System._tuple#20$T7@@37| |_System._tuple#20$T8@@37| |_System._tuple#20$T9@@37| |_System._tuple#20$T10@@37| |_System._tuple#20$T11@@37| |_System._tuple#20$T12@@37| |_System._tuple#20$T13@@37| |_System._tuple#20$T14@@37| |_System._tuple#20$T15@@37| |_System._tuple#20$T16@@37| |_System._tuple#20$T17@@37| |_System._tuple#20$T18@@37| |_System._tuple#20$T19@@37|)) |_System._tuple#20$T14@@37|)
 :qid |unknown.0:0|
 :skolemid |1819|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@37| |_System._tuple#20$T1@@37| |_System._tuple#20$T2@@37| |_System._tuple#20$T3@@37| |_System._tuple#20$T4@@37| |_System._tuple#20$T5@@37| |_System._tuple#20$T6@@37| |_System._tuple#20$T7@@37| |_System._tuple#20$T8@@37| |_System._tuple#20$T9@@37| |_System._tuple#20$T10@@37| |_System._tuple#20$T11@@37| |_System._tuple#20$T12@@37| |_System._tuple#20$T13@@37| |_System._tuple#20$T14@@37| |_System._tuple#20$T15@@37| |_System._tuple#20$T16@@37| |_System._tuple#20$T17@@37| |_System._tuple#20$T18@@37| |_System._tuple#20$T19@@37|))
)))
(assert (forall ((|_System._tuple#20$T0@@38| T@U) (|_System._tuple#20$T1@@38| T@U) (|_System._tuple#20$T2@@38| T@U) (|_System._tuple#20$T3@@38| T@U) (|_System._tuple#20$T4@@38| T@U) (|_System._tuple#20$T5@@38| T@U) (|_System._tuple#20$T6@@38| T@U) (|_System._tuple#20$T7@@38| T@U) (|_System._tuple#20$T8@@38| T@U) (|_System._tuple#20$T9@@38| T@U) (|_System._tuple#20$T10@@38| T@U) (|_System._tuple#20$T11@@38| T@U) (|_System._tuple#20$T12@@38| T@U) (|_System._tuple#20$T13@@38| T@U) (|_System._tuple#20$T14@@38| T@U) (|_System._tuple#20$T15@@38| T@U) (|_System._tuple#20$T16@@38| T@U) (|_System._tuple#20$T17@@38| T@U) (|_System._tuple#20$T18@@38| T@U) (|_System._tuple#20$T19@@38| T@U) ) (! (= (Tclass._System.Tuple20_15 (Tclass._System.Tuple20 |_System._tuple#20$T0@@38| |_System._tuple#20$T1@@38| |_System._tuple#20$T2@@38| |_System._tuple#20$T3@@38| |_System._tuple#20$T4@@38| |_System._tuple#20$T5@@38| |_System._tuple#20$T6@@38| |_System._tuple#20$T7@@38| |_System._tuple#20$T8@@38| |_System._tuple#20$T9@@38| |_System._tuple#20$T10@@38| |_System._tuple#20$T11@@38| |_System._tuple#20$T12@@38| |_System._tuple#20$T13@@38| |_System._tuple#20$T14@@38| |_System._tuple#20$T15@@38| |_System._tuple#20$T16@@38| |_System._tuple#20$T17@@38| |_System._tuple#20$T18@@38| |_System._tuple#20$T19@@38|)) |_System._tuple#20$T15@@38|)
 :qid |unknown.0:0|
 :skolemid |1820|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@38| |_System._tuple#20$T1@@38| |_System._tuple#20$T2@@38| |_System._tuple#20$T3@@38| |_System._tuple#20$T4@@38| |_System._tuple#20$T5@@38| |_System._tuple#20$T6@@38| |_System._tuple#20$T7@@38| |_System._tuple#20$T8@@38| |_System._tuple#20$T9@@38| |_System._tuple#20$T10@@38| |_System._tuple#20$T11@@38| |_System._tuple#20$T12@@38| |_System._tuple#20$T13@@38| |_System._tuple#20$T14@@38| |_System._tuple#20$T15@@38| |_System._tuple#20$T16@@38| |_System._tuple#20$T17@@38| |_System._tuple#20$T18@@38| |_System._tuple#20$T19@@38|))
)))
(assert (forall ((|_System._tuple#20$T0@@39| T@U) (|_System._tuple#20$T1@@39| T@U) (|_System._tuple#20$T2@@39| T@U) (|_System._tuple#20$T3@@39| T@U) (|_System._tuple#20$T4@@39| T@U) (|_System._tuple#20$T5@@39| T@U) (|_System._tuple#20$T6@@39| T@U) (|_System._tuple#20$T7@@39| T@U) (|_System._tuple#20$T8@@39| T@U) (|_System._tuple#20$T9@@39| T@U) (|_System._tuple#20$T10@@39| T@U) (|_System._tuple#20$T11@@39| T@U) (|_System._tuple#20$T12@@39| T@U) (|_System._tuple#20$T13@@39| T@U) (|_System._tuple#20$T14@@39| T@U) (|_System._tuple#20$T15@@39| T@U) (|_System._tuple#20$T16@@39| T@U) (|_System._tuple#20$T17@@39| T@U) (|_System._tuple#20$T18@@39| T@U) (|_System._tuple#20$T19@@39| T@U) ) (! (= (Tclass._System.Tuple20_16 (Tclass._System.Tuple20 |_System._tuple#20$T0@@39| |_System._tuple#20$T1@@39| |_System._tuple#20$T2@@39| |_System._tuple#20$T3@@39| |_System._tuple#20$T4@@39| |_System._tuple#20$T5@@39| |_System._tuple#20$T6@@39| |_System._tuple#20$T7@@39| |_System._tuple#20$T8@@39| |_System._tuple#20$T9@@39| |_System._tuple#20$T10@@39| |_System._tuple#20$T11@@39| |_System._tuple#20$T12@@39| |_System._tuple#20$T13@@39| |_System._tuple#20$T14@@39| |_System._tuple#20$T15@@39| |_System._tuple#20$T16@@39| |_System._tuple#20$T17@@39| |_System._tuple#20$T18@@39| |_System._tuple#20$T19@@39|)) |_System._tuple#20$T16@@39|)
 :qid |unknown.0:0|
 :skolemid |1821|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@39| |_System._tuple#20$T1@@39| |_System._tuple#20$T2@@39| |_System._tuple#20$T3@@39| |_System._tuple#20$T4@@39| |_System._tuple#20$T5@@39| |_System._tuple#20$T6@@39| |_System._tuple#20$T7@@39| |_System._tuple#20$T8@@39| |_System._tuple#20$T9@@39| |_System._tuple#20$T10@@39| |_System._tuple#20$T11@@39| |_System._tuple#20$T12@@39| |_System._tuple#20$T13@@39| |_System._tuple#20$T14@@39| |_System._tuple#20$T15@@39| |_System._tuple#20$T16@@39| |_System._tuple#20$T17@@39| |_System._tuple#20$T18@@39| |_System._tuple#20$T19@@39|))
)))
(assert (forall ((|_System._tuple#20$T0@@40| T@U) (|_System._tuple#20$T1@@40| T@U) (|_System._tuple#20$T2@@40| T@U) (|_System._tuple#20$T3@@40| T@U) (|_System._tuple#20$T4@@40| T@U) (|_System._tuple#20$T5@@40| T@U) (|_System._tuple#20$T6@@40| T@U) (|_System._tuple#20$T7@@40| T@U) (|_System._tuple#20$T8@@40| T@U) (|_System._tuple#20$T9@@40| T@U) (|_System._tuple#20$T10@@40| T@U) (|_System._tuple#20$T11@@40| T@U) (|_System._tuple#20$T12@@40| T@U) (|_System._tuple#20$T13@@40| T@U) (|_System._tuple#20$T14@@40| T@U) (|_System._tuple#20$T15@@40| T@U) (|_System._tuple#20$T16@@40| T@U) (|_System._tuple#20$T17@@40| T@U) (|_System._tuple#20$T18@@40| T@U) (|_System._tuple#20$T19@@40| T@U) ) (! (= (Tclass._System.Tuple20_17 (Tclass._System.Tuple20 |_System._tuple#20$T0@@40| |_System._tuple#20$T1@@40| |_System._tuple#20$T2@@40| |_System._tuple#20$T3@@40| |_System._tuple#20$T4@@40| |_System._tuple#20$T5@@40| |_System._tuple#20$T6@@40| |_System._tuple#20$T7@@40| |_System._tuple#20$T8@@40| |_System._tuple#20$T9@@40| |_System._tuple#20$T10@@40| |_System._tuple#20$T11@@40| |_System._tuple#20$T12@@40| |_System._tuple#20$T13@@40| |_System._tuple#20$T14@@40| |_System._tuple#20$T15@@40| |_System._tuple#20$T16@@40| |_System._tuple#20$T17@@40| |_System._tuple#20$T18@@40| |_System._tuple#20$T19@@40|)) |_System._tuple#20$T17@@40|)
 :qid |unknown.0:0|
 :skolemid |1822|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@40| |_System._tuple#20$T1@@40| |_System._tuple#20$T2@@40| |_System._tuple#20$T3@@40| |_System._tuple#20$T4@@40| |_System._tuple#20$T5@@40| |_System._tuple#20$T6@@40| |_System._tuple#20$T7@@40| |_System._tuple#20$T8@@40| |_System._tuple#20$T9@@40| |_System._tuple#20$T10@@40| |_System._tuple#20$T11@@40| |_System._tuple#20$T12@@40| |_System._tuple#20$T13@@40| |_System._tuple#20$T14@@40| |_System._tuple#20$T15@@40| |_System._tuple#20$T16@@40| |_System._tuple#20$T17@@40| |_System._tuple#20$T18@@40| |_System._tuple#20$T19@@40|))
)))
(assert (forall ((|_System._tuple#20$T0@@41| T@U) (|_System._tuple#20$T1@@41| T@U) (|_System._tuple#20$T2@@41| T@U) (|_System._tuple#20$T3@@41| T@U) (|_System._tuple#20$T4@@41| T@U) (|_System._tuple#20$T5@@41| T@U) (|_System._tuple#20$T6@@41| T@U) (|_System._tuple#20$T7@@41| T@U) (|_System._tuple#20$T8@@41| T@U) (|_System._tuple#20$T9@@41| T@U) (|_System._tuple#20$T10@@41| T@U) (|_System._tuple#20$T11@@41| T@U) (|_System._tuple#20$T12@@41| T@U) (|_System._tuple#20$T13@@41| T@U) (|_System._tuple#20$T14@@41| T@U) (|_System._tuple#20$T15@@41| T@U) (|_System._tuple#20$T16@@41| T@U) (|_System._tuple#20$T17@@41| T@U) (|_System._tuple#20$T18@@41| T@U) (|_System._tuple#20$T19@@41| T@U) ) (! (= (Tclass._System.Tuple20_18 (Tclass._System.Tuple20 |_System._tuple#20$T0@@41| |_System._tuple#20$T1@@41| |_System._tuple#20$T2@@41| |_System._tuple#20$T3@@41| |_System._tuple#20$T4@@41| |_System._tuple#20$T5@@41| |_System._tuple#20$T6@@41| |_System._tuple#20$T7@@41| |_System._tuple#20$T8@@41| |_System._tuple#20$T9@@41| |_System._tuple#20$T10@@41| |_System._tuple#20$T11@@41| |_System._tuple#20$T12@@41| |_System._tuple#20$T13@@41| |_System._tuple#20$T14@@41| |_System._tuple#20$T15@@41| |_System._tuple#20$T16@@41| |_System._tuple#20$T17@@41| |_System._tuple#20$T18@@41| |_System._tuple#20$T19@@41|)) |_System._tuple#20$T18@@41|)
 :qid |unknown.0:0|
 :skolemid |1823|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@41| |_System._tuple#20$T1@@41| |_System._tuple#20$T2@@41| |_System._tuple#20$T3@@41| |_System._tuple#20$T4@@41| |_System._tuple#20$T5@@41| |_System._tuple#20$T6@@41| |_System._tuple#20$T7@@41| |_System._tuple#20$T8@@41| |_System._tuple#20$T9@@41| |_System._tuple#20$T10@@41| |_System._tuple#20$T11@@41| |_System._tuple#20$T12@@41| |_System._tuple#20$T13@@41| |_System._tuple#20$T14@@41| |_System._tuple#20$T15@@41| |_System._tuple#20$T16@@41| |_System._tuple#20$T17@@41| |_System._tuple#20$T18@@41| |_System._tuple#20$T19@@41|))
)))
(assert (forall ((|_System._tuple#20$T0@@42| T@U) (|_System._tuple#20$T1@@42| T@U) (|_System._tuple#20$T2@@42| T@U) (|_System._tuple#20$T3@@42| T@U) (|_System._tuple#20$T4@@42| T@U) (|_System._tuple#20$T5@@42| T@U) (|_System._tuple#20$T6@@42| T@U) (|_System._tuple#20$T7@@42| T@U) (|_System._tuple#20$T8@@42| T@U) (|_System._tuple#20$T9@@42| T@U) (|_System._tuple#20$T10@@42| T@U) (|_System._tuple#20$T11@@42| T@U) (|_System._tuple#20$T12@@42| T@U) (|_System._tuple#20$T13@@42| T@U) (|_System._tuple#20$T14@@42| T@U) (|_System._tuple#20$T15@@42| T@U) (|_System._tuple#20$T16@@42| T@U) (|_System._tuple#20$T17@@42| T@U) (|_System._tuple#20$T18@@42| T@U) (|_System._tuple#20$T19@@42| T@U) ) (! (= (Tclass._System.Tuple20_19 (Tclass._System.Tuple20 |_System._tuple#20$T0@@42| |_System._tuple#20$T1@@42| |_System._tuple#20$T2@@42| |_System._tuple#20$T3@@42| |_System._tuple#20$T4@@42| |_System._tuple#20$T5@@42| |_System._tuple#20$T6@@42| |_System._tuple#20$T7@@42| |_System._tuple#20$T8@@42| |_System._tuple#20$T9@@42| |_System._tuple#20$T10@@42| |_System._tuple#20$T11@@42| |_System._tuple#20$T12@@42| |_System._tuple#20$T13@@42| |_System._tuple#20$T14@@42| |_System._tuple#20$T15@@42| |_System._tuple#20$T16@@42| |_System._tuple#20$T17@@42| |_System._tuple#20$T18@@42| |_System._tuple#20$T19@@42|)) |_System._tuple#20$T19@@42|)
 :qid |unknown.0:0|
 :skolemid |1824|
 :pattern ( (Tclass._System.Tuple20 |_System._tuple#20$T0@@42| |_System._tuple#20$T1@@42| |_System._tuple#20$T2@@42| |_System._tuple#20$T3@@42| |_System._tuple#20$T4@@42| |_System._tuple#20$T5@@42| |_System._tuple#20$T6@@42| |_System._tuple#20$T7@@42| |_System._tuple#20$T8@@42| |_System._tuple#20$T9@@42| |_System._tuple#20$T10@@42| |_System._tuple#20$T11@@42| |_System._tuple#20$T12@@42| |_System._tuple#20$T13@@42| |_System._tuple#20$T14@@42| |_System._tuple#20$T15@@42| |_System._tuple#20$T16@@42| |_System._tuple#20$T17@@42| |_System._tuple#20$T18@@42| |_System._tuple#20$T19@@42|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) (|a#16#3#0| T@U) (|a#16#4#0| T@U) (|a#16#5#0| T@U) (|a#16#6#0| T@U) (|a#16#7#0| T@U) (|a#16#8#0| T@U) (|a#16#9#0| T@U) (|a#16#10#0| T@U) (|a#16#11#0| T@U) (|a#16#12#0| T@U) (|a#16#13#0| T@U) (|a#16#14#0| T@U) (|a#16#15#0| T@U) (|a#16#16#0| T@U) (|a#16#17#0| T@U) (|a#16#18#0| T@U) (|a#16#19#0| T@U) ) (! (= (_System.Tuple20._0 (|#_System._tuple#20._#Make20| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0| |a#16#4#0| |a#16#5#0| |a#16#6#0| |a#16#7#0| |a#16#8#0| |a#16#9#0| |a#16#10#0| |a#16#11#0| |a#16#12#0| |a#16#13#0| |a#16#14#0| |a#16#15#0| |a#16#16#0| |a#16#17#0| |a#16#18#0| |a#16#19#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |1869|
 :pattern ( (|#_System._tuple#20._#Make20| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0| |a#16#4#0| |a#16#5#0| |a#16#6#0| |a#16#7#0| |a#16#8#0| |a#16#9#0| |a#16#10#0| |a#16#11#0| |a#16#12#0| |a#16#13#0| |a#16#14#0| |a#16#15#0| |a#16#16#0| |a#16#17#0| |a#16#18#0| |a#16#19#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (|a#18#3#0| T@U) (|a#18#4#0| T@U) (|a#18#5#0| T@U) (|a#18#6#0| T@U) (|a#18#7#0| T@U) (|a#18#8#0| T@U) (|a#18#9#0| T@U) (|a#18#10#0| T@U) (|a#18#11#0| T@U) (|a#18#12#0| T@U) (|a#18#13#0| T@U) (|a#18#14#0| T@U) (|a#18#15#0| T@U) (|a#18#16#0| T@U) (|a#18#17#0| T@U) (|a#18#18#0| T@U) (|a#18#19#0| T@U) ) (! (= (_System.Tuple20._1 (|#_System._tuple#20._#Make20| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0| |a#18#4#0| |a#18#5#0| |a#18#6#0| |a#18#7#0| |a#18#8#0| |a#18#9#0| |a#18#10#0| |a#18#11#0| |a#18#12#0| |a#18#13#0| |a#18#14#0| |a#18#15#0| |a#18#16#0| |a#18#17#0| |a#18#18#0| |a#18#19#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |1871|
 :pattern ( (|#_System._tuple#20._#Make20| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0| |a#18#4#0| |a#18#5#0| |a#18#6#0| |a#18#7#0| |a#18#8#0| |a#18#9#0| |a#18#10#0| |a#18#11#0| |a#18#12#0| |a#18#13#0| |a#18#14#0| |a#18#15#0| |a#18#16#0| |a#18#17#0| |a#18#18#0| |a#18#19#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) (|a#20#3#0| T@U) (|a#20#4#0| T@U) (|a#20#5#0| T@U) (|a#20#6#0| T@U) (|a#20#7#0| T@U) (|a#20#8#0| T@U) (|a#20#9#0| T@U) (|a#20#10#0| T@U) (|a#20#11#0| T@U) (|a#20#12#0| T@U) (|a#20#13#0| T@U) (|a#20#14#0| T@U) (|a#20#15#0| T@U) (|a#20#16#0| T@U) (|a#20#17#0| T@U) (|a#20#18#0| T@U) (|a#20#19#0| T@U) ) (! (= (_System.Tuple20._2 (|#_System._tuple#20._#Make20| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0| |a#20#4#0| |a#20#5#0| |a#20#6#0| |a#20#7#0| |a#20#8#0| |a#20#9#0| |a#20#10#0| |a#20#11#0| |a#20#12#0| |a#20#13#0| |a#20#14#0| |a#20#15#0| |a#20#16#0| |a#20#17#0| |a#20#18#0| |a#20#19#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |1873|
 :pattern ( (|#_System._tuple#20._#Make20| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0| |a#20#4#0| |a#20#5#0| |a#20#6#0| |a#20#7#0| |a#20#8#0| |a#20#9#0| |a#20#10#0| |a#20#11#0| |a#20#12#0| |a#20#13#0| |a#20#14#0| |a#20#15#0| |a#20#16#0| |a#20#17#0| |a#20#18#0| |a#20#19#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) (|a#22#3#0| T@U) (|a#22#4#0| T@U) (|a#22#5#0| T@U) (|a#22#6#0| T@U) (|a#22#7#0| T@U) (|a#22#8#0| T@U) (|a#22#9#0| T@U) (|a#22#10#0| T@U) (|a#22#11#0| T@U) (|a#22#12#0| T@U) (|a#22#13#0| T@U) (|a#22#14#0| T@U) (|a#22#15#0| T@U) (|a#22#16#0| T@U) (|a#22#17#0| T@U) (|a#22#18#0| T@U) (|a#22#19#0| T@U) ) (! (= (_System.Tuple20._3 (|#_System._tuple#20._#Make20| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0| |a#22#4#0| |a#22#5#0| |a#22#6#0| |a#22#7#0| |a#22#8#0| |a#22#9#0| |a#22#10#0| |a#22#11#0| |a#22#12#0| |a#22#13#0| |a#22#14#0| |a#22#15#0| |a#22#16#0| |a#22#17#0| |a#22#18#0| |a#22#19#0|)) |a#22#3#0|)
 :qid |unknown.0:0|
 :skolemid |1875|
 :pattern ( (|#_System._tuple#20._#Make20| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0| |a#22#4#0| |a#22#5#0| |a#22#6#0| |a#22#7#0| |a#22#8#0| |a#22#9#0| |a#22#10#0| |a#22#11#0| |a#22#12#0| |a#22#13#0| |a#22#14#0| |a#22#15#0| |a#22#16#0| |a#22#17#0| |a#22#18#0| |a#22#19#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) (|a#24#3#0| T@U) (|a#24#4#0| T@U) (|a#24#5#0| T@U) (|a#24#6#0| T@U) (|a#24#7#0| T@U) (|a#24#8#0| T@U) (|a#24#9#0| T@U) (|a#24#10#0| T@U) (|a#24#11#0| T@U) (|a#24#12#0| T@U) (|a#24#13#0| T@U) (|a#24#14#0| T@U) (|a#24#15#0| T@U) (|a#24#16#0| T@U) (|a#24#17#0| T@U) (|a#24#18#0| T@U) (|a#24#19#0| T@U) ) (! (= (_System.Tuple20._4 (|#_System._tuple#20._#Make20| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0| |a#24#4#0| |a#24#5#0| |a#24#6#0| |a#24#7#0| |a#24#8#0| |a#24#9#0| |a#24#10#0| |a#24#11#0| |a#24#12#0| |a#24#13#0| |a#24#14#0| |a#24#15#0| |a#24#16#0| |a#24#17#0| |a#24#18#0| |a#24#19#0|)) |a#24#4#0|)
 :qid |unknown.0:0|
 :skolemid |1877|
 :pattern ( (|#_System._tuple#20._#Make20| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0| |a#24#4#0| |a#24#5#0| |a#24#6#0| |a#24#7#0| |a#24#8#0| |a#24#9#0| |a#24#10#0| |a#24#11#0| |a#24#12#0| |a#24#13#0| |a#24#14#0| |a#24#15#0| |a#24#16#0| |a#24#17#0| |a#24#18#0| |a#24#19#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) (|a#26#3#0| T@U) (|a#26#4#0| T@U) (|a#26#5#0| T@U) (|a#26#6#0| T@U) (|a#26#7#0| T@U) (|a#26#8#0| T@U) (|a#26#9#0| T@U) (|a#26#10#0| T@U) (|a#26#11#0| T@U) (|a#26#12#0| T@U) (|a#26#13#0| T@U) (|a#26#14#0| T@U) (|a#26#15#0| T@U) (|a#26#16#0| T@U) (|a#26#17#0| T@U) (|a#26#18#0| T@U) (|a#26#19#0| T@U) ) (! (= (_System.Tuple20._5 (|#_System._tuple#20._#Make20| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0| |a#26#4#0| |a#26#5#0| |a#26#6#0| |a#26#7#0| |a#26#8#0| |a#26#9#0| |a#26#10#0| |a#26#11#0| |a#26#12#0| |a#26#13#0| |a#26#14#0| |a#26#15#0| |a#26#16#0| |a#26#17#0| |a#26#18#0| |a#26#19#0|)) |a#26#5#0|)
 :qid |unknown.0:0|
 :skolemid |1879|
 :pattern ( (|#_System._tuple#20._#Make20| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0| |a#26#4#0| |a#26#5#0| |a#26#6#0| |a#26#7#0| |a#26#8#0| |a#26#9#0| |a#26#10#0| |a#26#11#0| |a#26#12#0| |a#26#13#0| |a#26#14#0| |a#26#15#0| |a#26#16#0| |a#26#17#0| |a#26#18#0| |a#26#19#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) (|a#28#3#0| T@U) (|a#28#4#0| T@U) (|a#28#5#0| T@U) (|a#28#6#0| T@U) (|a#28#7#0| T@U) (|a#28#8#0| T@U) (|a#28#9#0| T@U) (|a#28#10#0| T@U) (|a#28#11#0| T@U) (|a#28#12#0| T@U) (|a#28#13#0| T@U) (|a#28#14#0| T@U) (|a#28#15#0| T@U) (|a#28#16#0| T@U) (|a#28#17#0| T@U) (|a#28#18#0| T@U) (|a#28#19#0| T@U) ) (! (= (_System.Tuple20._6 (|#_System._tuple#20._#Make20| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0| |a#28#4#0| |a#28#5#0| |a#28#6#0| |a#28#7#0| |a#28#8#0| |a#28#9#0| |a#28#10#0| |a#28#11#0| |a#28#12#0| |a#28#13#0| |a#28#14#0| |a#28#15#0| |a#28#16#0| |a#28#17#0| |a#28#18#0| |a#28#19#0|)) |a#28#6#0|)
 :qid |unknown.0:0|
 :skolemid |1881|
 :pattern ( (|#_System._tuple#20._#Make20| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0| |a#28#4#0| |a#28#5#0| |a#28#6#0| |a#28#7#0| |a#28#8#0| |a#28#9#0| |a#28#10#0| |a#28#11#0| |a#28#12#0| |a#28#13#0| |a#28#14#0| |a#28#15#0| |a#28#16#0| |a#28#17#0| |a#28#18#0| |a#28#19#0|))
)))
(assert (forall ((|a#30#0#0| T@U) (|a#30#1#0| T@U) (|a#30#2#0| T@U) (|a#30#3#0| T@U) (|a#30#4#0| T@U) (|a#30#5#0| T@U) (|a#30#6#0| T@U) (|a#30#7#0| T@U) (|a#30#8#0| T@U) (|a#30#9#0| T@U) (|a#30#10#0| T@U) (|a#30#11#0| T@U) (|a#30#12#0| T@U) (|a#30#13#0| T@U) (|a#30#14#0| T@U) (|a#30#15#0| T@U) (|a#30#16#0| T@U) (|a#30#17#0| T@U) (|a#30#18#0| T@U) (|a#30#19#0| T@U) ) (! (= (_System.Tuple20._7 (|#_System._tuple#20._#Make20| |a#30#0#0| |a#30#1#0| |a#30#2#0| |a#30#3#0| |a#30#4#0| |a#30#5#0| |a#30#6#0| |a#30#7#0| |a#30#8#0| |a#30#9#0| |a#30#10#0| |a#30#11#0| |a#30#12#0| |a#30#13#0| |a#30#14#0| |a#30#15#0| |a#30#16#0| |a#30#17#0| |a#30#18#0| |a#30#19#0|)) |a#30#7#0|)
 :qid |unknown.0:0|
 :skolemid |1883|
 :pattern ( (|#_System._tuple#20._#Make20| |a#30#0#0| |a#30#1#0| |a#30#2#0| |a#30#3#0| |a#30#4#0| |a#30#5#0| |a#30#6#0| |a#30#7#0| |a#30#8#0| |a#30#9#0| |a#30#10#0| |a#30#11#0| |a#30#12#0| |a#30#13#0| |a#30#14#0| |a#30#15#0| |a#30#16#0| |a#30#17#0| |a#30#18#0| |a#30#19#0|))
)))
(assert (forall ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) (|a#32#3#0| T@U) (|a#32#4#0| T@U) (|a#32#5#0| T@U) (|a#32#6#0| T@U) (|a#32#7#0| T@U) (|a#32#8#0| T@U) (|a#32#9#0| T@U) (|a#32#10#0| T@U) (|a#32#11#0| T@U) (|a#32#12#0| T@U) (|a#32#13#0| T@U) (|a#32#14#0| T@U) (|a#32#15#0| T@U) (|a#32#16#0| T@U) (|a#32#17#0| T@U) (|a#32#18#0| T@U) (|a#32#19#0| T@U) ) (! (= (_System.Tuple20._8 (|#_System._tuple#20._#Make20| |a#32#0#0| |a#32#1#0| |a#32#2#0| |a#32#3#0| |a#32#4#0| |a#32#5#0| |a#32#6#0| |a#32#7#0| |a#32#8#0| |a#32#9#0| |a#32#10#0| |a#32#11#0| |a#32#12#0| |a#32#13#0| |a#32#14#0| |a#32#15#0| |a#32#16#0| |a#32#17#0| |a#32#18#0| |a#32#19#0|)) |a#32#8#0|)
 :qid |unknown.0:0|
 :skolemid |1885|
 :pattern ( (|#_System._tuple#20._#Make20| |a#32#0#0| |a#32#1#0| |a#32#2#0| |a#32#3#0| |a#32#4#0| |a#32#5#0| |a#32#6#0| |a#32#7#0| |a#32#8#0| |a#32#9#0| |a#32#10#0| |a#32#11#0| |a#32#12#0| |a#32#13#0| |a#32#14#0| |a#32#15#0| |a#32#16#0| |a#32#17#0| |a#32#18#0| |a#32#19#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) (|a#34#3#0| T@U) (|a#34#4#0| T@U) (|a#34#5#0| T@U) (|a#34#6#0| T@U) (|a#34#7#0| T@U) (|a#34#8#0| T@U) (|a#34#9#0| T@U) (|a#34#10#0| T@U) (|a#34#11#0| T@U) (|a#34#12#0| T@U) (|a#34#13#0| T@U) (|a#34#14#0| T@U) (|a#34#15#0| T@U) (|a#34#16#0| T@U) (|a#34#17#0| T@U) (|a#34#18#0| T@U) (|a#34#19#0| T@U) ) (! (= (_System.Tuple20._9 (|#_System._tuple#20._#Make20| |a#34#0#0| |a#34#1#0| |a#34#2#0| |a#34#3#0| |a#34#4#0| |a#34#5#0| |a#34#6#0| |a#34#7#0| |a#34#8#0| |a#34#9#0| |a#34#10#0| |a#34#11#0| |a#34#12#0| |a#34#13#0| |a#34#14#0| |a#34#15#0| |a#34#16#0| |a#34#17#0| |a#34#18#0| |a#34#19#0|)) |a#34#9#0|)
 :qid |unknown.0:0|
 :skolemid |1887|
 :pattern ( (|#_System._tuple#20._#Make20| |a#34#0#0| |a#34#1#0| |a#34#2#0| |a#34#3#0| |a#34#4#0| |a#34#5#0| |a#34#6#0| |a#34#7#0| |a#34#8#0| |a#34#9#0| |a#34#10#0| |a#34#11#0| |a#34#12#0| |a#34#13#0| |a#34#14#0| |a#34#15#0| |a#34#16#0| |a#34#17#0| |a#34#18#0| |a#34#19#0|))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) (|a#36#3#0| T@U) (|a#36#4#0| T@U) (|a#36#5#0| T@U) (|a#36#6#0| T@U) (|a#36#7#0| T@U) (|a#36#8#0| T@U) (|a#36#9#0| T@U) (|a#36#10#0| T@U) (|a#36#11#0| T@U) (|a#36#12#0| T@U) (|a#36#13#0| T@U) (|a#36#14#0| T@U) (|a#36#15#0| T@U) (|a#36#16#0| T@U) (|a#36#17#0| T@U) (|a#36#18#0| T@U) (|a#36#19#0| T@U) ) (! (= (_System.Tuple20._10 (|#_System._tuple#20._#Make20| |a#36#0#0| |a#36#1#0| |a#36#2#0| |a#36#3#0| |a#36#4#0| |a#36#5#0| |a#36#6#0| |a#36#7#0| |a#36#8#0| |a#36#9#0| |a#36#10#0| |a#36#11#0| |a#36#12#0| |a#36#13#0| |a#36#14#0| |a#36#15#0| |a#36#16#0| |a#36#17#0| |a#36#18#0| |a#36#19#0|)) |a#36#10#0|)
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( (|#_System._tuple#20._#Make20| |a#36#0#0| |a#36#1#0| |a#36#2#0| |a#36#3#0| |a#36#4#0| |a#36#5#0| |a#36#6#0| |a#36#7#0| |a#36#8#0| |a#36#9#0| |a#36#10#0| |a#36#11#0| |a#36#12#0| |a#36#13#0| |a#36#14#0| |a#36#15#0| |a#36#16#0| |a#36#17#0| |a#36#18#0| |a#36#19#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) (|a#38#3#0| T@U) (|a#38#4#0| T@U) (|a#38#5#0| T@U) (|a#38#6#0| T@U) (|a#38#7#0| T@U) (|a#38#8#0| T@U) (|a#38#9#0| T@U) (|a#38#10#0| T@U) (|a#38#11#0| T@U) (|a#38#12#0| T@U) (|a#38#13#0| T@U) (|a#38#14#0| T@U) (|a#38#15#0| T@U) (|a#38#16#0| T@U) (|a#38#17#0| T@U) (|a#38#18#0| T@U) (|a#38#19#0| T@U) ) (! (= (_System.Tuple20._11 (|#_System._tuple#20._#Make20| |a#38#0#0| |a#38#1#0| |a#38#2#0| |a#38#3#0| |a#38#4#0| |a#38#5#0| |a#38#6#0| |a#38#7#0| |a#38#8#0| |a#38#9#0| |a#38#10#0| |a#38#11#0| |a#38#12#0| |a#38#13#0| |a#38#14#0| |a#38#15#0| |a#38#16#0| |a#38#17#0| |a#38#18#0| |a#38#19#0|)) |a#38#11#0|)
 :qid |unknown.0:0|
 :skolemid |1891|
 :pattern ( (|#_System._tuple#20._#Make20| |a#38#0#0| |a#38#1#0| |a#38#2#0| |a#38#3#0| |a#38#4#0| |a#38#5#0| |a#38#6#0| |a#38#7#0| |a#38#8#0| |a#38#9#0| |a#38#10#0| |a#38#11#0| |a#38#12#0| |a#38#13#0| |a#38#14#0| |a#38#15#0| |a#38#16#0| |a#38#17#0| |a#38#18#0| |a#38#19#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) (|a#40#3#0| T@U) (|a#40#4#0| T@U) (|a#40#5#0| T@U) (|a#40#6#0| T@U) (|a#40#7#0| T@U) (|a#40#8#0| T@U) (|a#40#9#0| T@U) (|a#40#10#0| T@U) (|a#40#11#0| T@U) (|a#40#12#0| T@U) (|a#40#13#0| T@U) (|a#40#14#0| T@U) (|a#40#15#0| T@U) (|a#40#16#0| T@U) (|a#40#17#0| T@U) (|a#40#18#0| T@U) (|a#40#19#0| T@U) ) (! (= (_System.Tuple20._12 (|#_System._tuple#20._#Make20| |a#40#0#0| |a#40#1#0| |a#40#2#0| |a#40#3#0| |a#40#4#0| |a#40#5#0| |a#40#6#0| |a#40#7#0| |a#40#8#0| |a#40#9#0| |a#40#10#0| |a#40#11#0| |a#40#12#0| |a#40#13#0| |a#40#14#0| |a#40#15#0| |a#40#16#0| |a#40#17#0| |a#40#18#0| |a#40#19#0|)) |a#40#12#0|)
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( (|#_System._tuple#20._#Make20| |a#40#0#0| |a#40#1#0| |a#40#2#0| |a#40#3#0| |a#40#4#0| |a#40#5#0| |a#40#6#0| |a#40#7#0| |a#40#8#0| |a#40#9#0| |a#40#10#0| |a#40#11#0| |a#40#12#0| |a#40#13#0| |a#40#14#0| |a#40#15#0| |a#40#16#0| |a#40#17#0| |a#40#18#0| |a#40#19#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) (|a#42#3#0| T@U) (|a#42#4#0| T@U) (|a#42#5#0| T@U) (|a#42#6#0| T@U) (|a#42#7#0| T@U) (|a#42#8#0| T@U) (|a#42#9#0| T@U) (|a#42#10#0| T@U) (|a#42#11#0| T@U) (|a#42#12#0| T@U) (|a#42#13#0| T@U) (|a#42#14#0| T@U) (|a#42#15#0| T@U) (|a#42#16#0| T@U) (|a#42#17#0| T@U) (|a#42#18#0| T@U) (|a#42#19#0| T@U) ) (! (= (_System.Tuple20._13 (|#_System._tuple#20._#Make20| |a#42#0#0| |a#42#1#0| |a#42#2#0| |a#42#3#0| |a#42#4#0| |a#42#5#0| |a#42#6#0| |a#42#7#0| |a#42#8#0| |a#42#9#0| |a#42#10#0| |a#42#11#0| |a#42#12#0| |a#42#13#0| |a#42#14#0| |a#42#15#0| |a#42#16#0| |a#42#17#0| |a#42#18#0| |a#42#19#0|)) |a#42#13#0|)
 :qid |unknown.0:0|
 :skolemid |1895|
 :pattern ( (|#_System._tuple#20._#Make20| |a#42#0#0| |a#42#1#0| |a#42#2#0| |a#42#3#0| |a#42#4#0| |a#42#5#0| |a#42#6#0| |a#42#7#0| |a#42#8#0| |a#42#9#0| |a#42#10#0| |a#42#11#0| |a#42#12#0| |a#42#13#0| |a#42#14#0| |a#42#15#0| |a#42#16#0| |a#42#17#0| |a#42#18#0| |a#42#19#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) (|a#44#3#0| T@U) (|a#44#4#0| T@U) (|a#44#5#0| T@U) (|a#44#6#0| T@U) (|a#44#7#0| T@U) (|a#44#8#0| T@U) (|a#44#9#0| T@U) (|a#44#10#0| T@U) (|a#44#11#0| T@U) (|a#44#12#0| T@U) (|a#44#13#0| T@U) (|a#44#14#0| T@U) (|a#44#15#0| T@U) (|a#44#16#0| T@U) (|a#44#17#0| T@U) (|a#44#18#0| T@U) (|a#44#19#0| T@U) ) (! (= (_System.Tuple20._14 (|#_System._tuple#20._#Make20| |a#44#0#0| |a#44#1#0| |a#44#2#0| |a#44#3#0| |a#44#4#0| |a#44#5#0| |a#44#6#0| |a#44#7#0| |a#44#8#0| |a#44#9#0| |a#44#10#0| |a#44#11#0| |a#44#12#0| |a#44#13#0| |a#44#14#0| |a#44#15#0| |a#44#16#0| |a#44#17#0| |a#44#18#0| |a#44#19#0|)) |a#44#14#0|)
 :qid |unknown.0:0|
 :skolemid |1897|
 :pattern ( (|#_System._tuple#20._#Make20| |a#44#0#0| |a#44#1#0| |a#44#2#0| |a#44#3#0| |a#44#4#0| |a#44#5#0| |a#44#6#0| |a#44#7#0| |a#44#8#0| |a#44#9#0| |a#44#10#0| |a#44#11#0| |a#44#12#0| |a#44#13#0| |a#44#14#0| |a#44#15#0| |a#44#16#0| |a#44#17#0| |a#44#18#0| |a#44#19#0|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) (|a#46#2#0| T@U) (|a#46#3#0| T@U) (|a#46#4#0| T@U) (|a#46#5#0| T@U) (|a#46#6#0| T@U) (|a#46#7#0| T@U) (|a#46#8#0| T@U) (|a#46#9#0| T@U) (|a#46#10#0| T@U) (|a#46#11#0| T@U) (|a#46#12#0| T@U) (|a#46#13#0| T@U) (|a#46#14#0| T@U) (|a#46#15#0| T@U) (|a#46#16#0| T@U) (|a#46#17#0| T@U) (|a#46#18#0| T@U) (|a#46#19#0| T@U) ) (! (= (_System.Tuple20._15 (|#_System._tuple#20._#Make20| |a#46#0#0| |a#46#1#0| |a#46#2#0| |a#46#3#0| |a#46#4#0| |a#46#5#0| |a#46#6#0| |a#46#7#0| |a#46#8#0| |a#46#9#0| |a#46#10#0| |a#46#11#0| |a#46#12#0| |a#46#13#0| |a#46#14#0| |a#46#15#0| |a#46#16#0| |a#46#17#0| |a#46#18#0| |a#46#19#0|)) |a#46#15#0|)
 :qid |unknown.0:0|
 :skolemid |1899|
 :pattern ( (|#_System._tuple#20._#Make20| |a#46#0#0| |a#46#1#0| |a#46#2#0| |a#46#3#0| |a#46#4#0| |a#46#5#0| |a#46#6#0| |a#46#7#0| |a#46#8#0| |a#46#9#0| |a#46#10#0| |a#46#11#0| |a#46#12#0| |a#46#13#0| |a#46#14#0| |a#46#15#0| |a#46#16#0| |a#46#17#0| |a#46#18#0| |a#46#19#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) (|a#48#2#0| T@U) (|a#48#3#0| T@U) (|a#48#4#0| T@U) (|a#48#5#0| T@U) (|a#48#6#0| T@U) (|a#48#7#0| T@U) (|a#48#8#0| T@U) (|a#48#9#0| T@U) (|a#48#10#0| T@U) (|a#48#11#0| T@U) (|a#48#12#0| T@U) (|a#48#13#0| T@U) (|a#48#14#0| T@U) (|a#48#15#0| T@U) (|a#48#16#0| T@U) (|a#48#17#0| T@U) (|a#48#18#0| T@U) (|a#48#19#0| T@U) ) (! (= (_System.Tuple20._16 (|#_System._tuple#20._#Make20| |a#48#0#0| |a#48#1#0| |a#48#2#0| |a#48#3#0| |a#48#4#0| |a#48#5#0| |a#48#6#0| |a#48#7#0| |a#48#8#0| |a#48#9#0| |a#48#10#0| |a#48#11#0| |a#48#12#0| |a#48#13#0| |a#48#14#0| |a#48#15#0| |a#48#16#0| |a#48#17#0| |a#48#18#0| |a#48#19#0|)) |a#48#16#0|)
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( (|#_System._tuple#20._#Make20| |a#48#0#0| |a#48#1#0| |a#48#2#0| |a#48#3#0| |a#48#4#0| |a#48#5#0| |a#48#6#0| |a#48#7#0| |a#48#8#0| |a#48#9#0| |a#48#10#0| |a#48#11#0| |a#48#12#0| |a#48#13#0| |a#48#14#0| |a#48#15#0| |a#48#16#0| |a#48#17#0| |a#48#18#0| |a#48#19#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) (|a#50#2#0| T@U) (|a#50#3#0| T@U) (|a#50#4#0| T@U) (|a#50#5#0| T@U) (|a#50#6#0| T@U) (|a#50#7#0| T@U) (|a#50#8#0| T@U) (|a#50#9#0| T@U) (|a#50#10#0| T@U) (|a#50#11#0| T@U) (|a#50#12#0| T@U) (|a#50#13#0| T@U) (|a#50#14#0| T@U) (|a#50#15#0| T@U) (|a#50#16#0| T@U) (|a#50#17#0| T@U) (|a#50#18#0| T@U) (|a#50#19#0| T@U) ) (! (= (_System.Tuple20._17 (|#_System._tuple#20._#Make20| |a#50#0#0| |a#50#1#0| |a#50#2#0| |a#50#3#0| |a#50#4#0| |a#50#5#0| |a#50#6#0| |a#50#7#0| |a#50#8#0| |a#50#9#0| |a#50#10#0| |a#50#11#0| |a#50#12#0| |a#50#13#0| |a#50#14#0| |a#50#15#0| |a#50#16#0| |a#50#17#0| |a#50#18#0| |a#50#19#0|)) |a#50#17#0|)
 :qid |unknown.0:0|
 :skolemid |1903|
 :pattern ( (|#_System._tuple#20._#Make20| |a#50#0#0| |a#50#1#0| |a#50#2#0| |a#50#3#0| |a#50#4#0| |a#50#5#0| |a#50#6#0| |a#50#7#0| |a#50#8#0| |a#50#9#0| |a#50#10#0| |a#50#11#0| |a#50#12#0| |a#50#13#0| |a#50#14#0| |a#50#15#0| |a#50#16#0| |a#50#17#0| |a#50#18#0| |a#50#19#0|))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) (|a#52#2#0| T@U) (|a#52#3#0| T@U) (|a#52#4#0| T@U) (|a#52#5#0| T@U) (|a#52#6#0| T@U) (|a#52#7#0| T@U) (|a#52#8#0| T@U) (|a#52#9#0| T@U) (|a#52#10#0| T@U) (|a#52#11#0| T@U) (|a#52#12#0| T@U) (|a#52#13#0| T@U) (|a#52#14#0| T@U) (|a#52#15#0| T@U) (|a#52#16#0| T@U) (|a#52#17#0| T@U) (|a#52#18#0| T@U) (|a#52#19#0| T@U) ) (! (= (_System.Tuple20._18 (|#_System._tuple#20._#Make20| |a#52#0#0| |a#52#1#0| |a#52#2#0| |a#52#3#0| |a#52#4#0| |a#52#5#0| |a#52#6#0| |a#52#7#0| |a#52#8#0| |a#52#9#0| |a#52#10#0| |a#52#11#0| |a#52#12#0| |a#52#13#0| |a#52#14#0| |a#52#15#0| |a#52#16#0| |a#52#17#0| |a#52#18#0| |a#52#19#0|)) |a#52#18#0|)
 :qid |unknown.0:0|
 :skolemid |1905|
 :pattern ( (|#_System._tuple#20._#Make20| |a#52#0#0| |a#52#1#0| |a#52#2#0| |a#52#3#0| |a#52#4#0| |a#52#5#0| |a#52#6#0| |a#52#7#0| |a#52#8#0| |a#52#9#0| |a#52#10#0| |a#52#11#0| |a#52#12#0| |a#52#13#0| |a#52#14#0| |a#52#15#0| |a#52#16#0| |a#52#17#0| |a#52#18#0| |a#52#19#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (|a#54#2#0| T@U) (|a#54#3#0| T@U) (|a#54#4#0| T@U) (|a#54#5#0| T@U) (|a#54#6#0| T@U) (|a#54#7#0| T@U) (|a#54#8#0| T@U) (|a#54#9#0| T@U) (|a#54#10#0| T@U) (|a#54#11#0| T@U) (|a#54#12#0| T@U) (|a#54#13#0| T@U) (|a#54#14#0| T@U) (|a#54#15#0| T@U) (|a#54#16#0| T@U) (|a#54#17#0| T@U) (|a#54#18#0| T@U) (|a#54#19#0| T@U) ) (! (= (_System.Tuple20._19 (|#_System._tuple#20._#Make20| |a#54#0#0| |a#54#1#0| |a#54#2#0| |a#54#3#0| |a#54#4#0| |a#54#5#0| |a#54#6#0| |a#54#7#0| |a#54#8#0| |a#54#9#0| |a#54#10#0| |a#54#11#0| |a#54#12#0| |a#54#13#0| |a#54#14#0| |a#54#15#0| |a#54#16#0| |a#54#17#0| |a#54#18#0| |a#54#19#0|)) |a#54#19#0|)
 :qid |unknown.0:0|
 :skolemid |1907|
 :pattern ( (|#_System._tuple#20._#Make20| |a#54#0#0| |a#54#1#0| |a#54#2#0| |a#54#3#0| |a#54#4#0| |a#54#5#0| |a#54#6#0| |a#54#7#0| |a#54#8#0| |a#54#9#0| |a#54#10#0| |a#54#11#0| |a#54#12#0| |a#54#13#0| |a#54#14#0| |a#54#15#0| |a#54#16#0| |a#54#17#0| |a#54#18#0| |a#54#19#0|))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1348|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1359|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((|_System._tuple#20$T0@@43| T@U) (|_System._tuple#20$T1@@43| T@U) (|_System._tuple#20$T2@@43| T@U) (|_System._tuple#20$T3@@43| T@U) (|_System._tuple#20$T4@@43| T@U) (|_System._tuple#20$T5@@43| T@U) (|_System._tuple#20$T6@@43| T@U) (|_System._tuple#20$T7@@43| T@U) (|_System._tuple#20$T8@@43| T@U) (|_System._tuple#20$T9@@43| T@U) (|_System._tuple#20$T10@@43| T@U) (|_System._tuple#20$T11@@43| T@U) (|_System._tuple#20$T12@@43| T@U) (|_System._tuple#20$T13@@43| T@U) (|_System._tuple#20$T14@@43| T@U) (|_System._tuple#20$T15@@43| T@U) (|_System._tuple#20$T16@@43| T@U) (|_System._tuple#20$T17@@43| T@U) (|_System._tuple#20$T18@@43| T@U) (|_System._tuple#20$T19@@43| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) (|a#14#3#0@@0| T@U) (|a#14#4#0@@0| T@U) (|a#14#5#0@@0| T@U) (|a#14#6#0@@0| T@U) (|a#14#7#0@@0| T@U) (|a#14#8#0@@0| T@U) (|a#14#9#0@@0| T@U) (|a#14#10#0@@0| T@U) (|a#14#11#0@@0| T@U) (|a#14#12#0@@0| T@U) (|a#14#13#0@@0| T@U) (|a#14#14#0@@0| T@U) (|a#14#15#0@@0| T@U) (|a#14#16#0@@0| T@U) (|a#14#17#0@@0| T@U) (|a#14#18#0@@0| T@U) (|a#14#19#0@@0| T@U) ($h@@21 T@U) ) (!  (=> ($IsGoodHeap $h@@21) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#20._#Make20| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0| |a#14#3#0@@0| |a#14#4#0@@0| |a#14#5#0@@0| |a#14#6#0@@0| |a#14#7#0@@0| |a#14#8#0@@0| |a#14#9#0@@0| |a#14#10#0@@0| |a#14#11#0@@0| |a#14#12#0@@0| |a#14#13#0@@0| |a#14#14#0@@0| |a#14#15#0@@0| |a#14#16#0@@0| |a#14#17#0@@0| |a#14#18#0@@0| |a#14#19#0@@0|) (Tclass._System.Tuple20 |_System._tuple#20$T0@@43| |_System._tuple#20$T1@@43| |_System._tuple#20$T2@@43| |_System._tuple#20$T3@@43| |_System._tuple#20$T4@@43| |_System._tuple#20$T5@@43| |_System._tuple#20$T6@@43| |_System._tuple#20$T7@@43| |_System._tuple#20$T8@@43| |_System._tuple#20$T9@@43| |_System._tuple#20$T10@@43| |_System._tuple#20$T11@@43| |_System._tuple#20$T12@@43| |_System._tuple#20$T13@@43| |_System._tuple#20$T14@@43| |_System._tuple#20$T15@@43| |_System._tuple#20$T16@@43| |_System._tuple#20$T17@@43| |_System._tuple#20$T18@@43| |_System._tuple#20$T19@@43|) $h@@21)  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and ($IsAllocBox |a#14#0#0@@0| |_System._tuple#20$T0@@43| $h@@21) ($IsAllocBox |a#14#1#0@@0| |_System._tuple#20$T1@@43| $h@@21)) ($IsAllocBox |a#14#2#0@@0| |_System._tuple#20$T2@@43| $h@@21)) ($IsAllocBox |a#14#3#0@@0| |_System._tuple#20$T3@@43| $h@@21)) ($IsAllocBox |a#14#4#0@@0| |_System._tuple#20$T4@@43| $h@@21)) ($IsAllocBox |a#14#5#0@@0| |_System._tuple#20$T5@@43| $h@@21)) ($IsAllocBox |a#14#6#0@@0| |_System._tuple#20$T6@@43| $h@@21)) ($IsAllocBox |a#14#7#0@@0| |_System._tuple#20$T7@@43| $h@@21)) ($IsAllocBox |a#14#8#0@@0| |_System._tuple#20$T8@@43| $h@@21)) ($IsAllocBox |a#14#9#0@@0| |_System._tuple#20$T9@@43| $h@@21)) ($IsAllocBox |a#14#10#0@@0| |_System._tuple#20$T10@@43| $h@@21)) ($IsAllocBox |a#14#11#0@@0| |_System._tuple#20$T11@@43| $h@@21)) ($IsAllocBox |a#14#12#0@@0| |_System._tuple#20$T12@@43| $h@@21)) ($IsAllocBox |a#14#13#0@@0| |_System._tuple#20$T13@@43| $h@@21)) ($IsAllocBox |a#14#14#0@@0| |_System._tuple#20$T14@@43| $h@@21)) ($IsAllocBox |a#14#15#0@@0| |_System._tuple#20$T15@@43| $h@@21)) ($IsAllocBox |a#14#16#0@@0| |_System._tuple#20$T16@@43| $h@@21)) ($IsAllocBox |a#14#17#0@@0| |_System._tuple#20$T17@@43| $h@@21)) ($IsAllocBox |a#14#18#0@@0| |_System._tuple#20$T18@@43| $h@@21)) ($IsAllocBox |a#14#19#0@@0| |_System._tuple#20$T19@@43| $h@@21))))
 :qid |unknown.0:0|
 :skolemid |1827|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#20._#Make20| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0| |a#14#3#0@@0| |a#14#4#0@@0| |a#14#5#0@@0| |a#14#6#0@@0| |a#14#7#0@@0| |a#14#8#0@@0| |a#14#9#0@@0| |a#14#10#0@@0| |a#14#11#0@@0| |a#14#12#0@@0| |a#14#13#0@@0| |a#14#14#0@@0| |a#14#15#0@@0| |a#14#16#0@@0| |a#14#17#0@@0| |a#14#18#0@@0| |a#14#19#0@@0|) (Tclass._System.Tuple20 |_System._tuple#20$T0@@43| |_System._tuple#20$T1@@43| |_System._tuple#20$T2@@43| |_System._tuple#20$T3@@43| |_System._tuple#20$T4@@43| |_System._tuple#20$T5@@43| |_System._tuple#20$T6@@43| |_System._tuple#20$T7@@43| |_System._tuple#20$T8@@43| |_System._tuple#20$T9@@43| |_System._tuple#20$T10@@43| |_System._tuple#20$T11@@43| |_System._tuple#20$T12@@43| |_System._tuple#20$T13@@43| |_System._tuple#20$T14@@43| |_System._tuple#20$T15@@43| |_System._tuple#20$T16@@43| |_System._tuple#20$T17@@43| |_System._tuple#20$T18@@43| |_System._tuple#20$T19@@43|) $h@@21))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| |xs#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@0| Tclass._module.List))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|tail#1| (_module.List.tail |xs#0@@0|)))
(|_module.__default.Sum#canCall| |tail#1|))) (= (_module.__default.Sum ($LS $ly@@3) |xs#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) 0 (let ((|tail#0| (_module.List.tail |xs#0@@0|)))
(let ((|x#0@@1| (_module.List.head |xs#0@@0|)))
(+ |x#0@@1| (_module.__default.Sum $ly@@3 |tail#0|))))))))
 :qid |Datatypedfy.50:10|
 :skolemid |1986|
 :pattern ( (_module.__default.Sum ($LS $ly@@3) |xs#0@@0|))
))))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1542|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1769|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1774|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1775|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1784|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1786|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##_module.List.Cons|)
 :qid |Datatypedfy.4:28|
 :skolemid |2067|
 :pattern ( (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Datatypedfy.4:28|
 :skolemid |2075|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)) |a#9#1#0|)
 :qid |Datatypedfy.4:28|
 :skolemid |2076|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1346|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1785|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1787|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)))
 :qid |Datatypedfy.4:28|
 :skolemid |2077|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall (($ly@@4 T@U) (|xs#0@@1| T@U) ) (! (= (_module.__default.Sum ($LS $ly@@4) |xs#0@@1|) (_module.__default.Sum $ly@@4 |xs#0@@1|))
 :qid |Datatypedfy.50:10|
 :skolemid |1982|
 :pattern ( (_module.__default.Sum ($LS $ly@@4) |xs#0@@1|))
)))
(assert (forall (($ly@@5 T@U) (|xs#0@@2| T@U) ) (! (= (_module.__default.SumAgain ($LS $ly@@5) |xs#0@@2|) (_module.__default.SumAgain $ly@@5 |xs#0@@2|))
 :qid |Datatypedfy.56:10|
 :skolemid |1989|
 :pattern ( (_module.__default.SumAgain ($LS $ly@@5) |xs#0@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1776|
 :pattern ( ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
 :skolemid |2280|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|m#0@@2| Int) (|n#0@@2| Int) ) (!  (=> (or (|_module.__default.Up#canCall| |m#0@@2| |n#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (<= (LitInt 0) |m#0@@2|) (<= (LitInt 0) |n#0@@2|)) (<= |m#0@@2| |n#0@@2|)))) ($Is DatatypeTypeType (_module.__default.Up $ly@@6 |m#0@@2| |n#0@@2|) Tclass._module.List))
 :qid |Datatypedfy.43:10|
 :skolemid |1977|
 :pattern ( (_module.__default.Up $ly@@6 |m#0@@2| |n#0@@2|))
))))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1773|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@30 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_module.List.Cons_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass._module.List $h@@22))) ($IsAlloc intType (int_2_U (_module.List.head d@@30)) TInt $h@@22))
 :qid |unknown.0:0|
 :skolemid |2072|
 :pattern ( ($IsAlloc intType (int_2_U (_module.List.head d@@30)) TInt $h@@22))
)))
(assert (forall ((d@@31 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@31)) (DtRank d@@31))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1405|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@31)))
)))
(assert (forall ((d@@32 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) ($Is DatatypeTypeType d@@32 Tclass._System.Tuple0)) ($IsAlloc DatatypeTypeType d@@32 Tclass._System.Tuple0 $h@@23))
 :qid |unknown.0:0|
 :skolemid |1795|
 :pattern ( ($IsAlloc DatatypeTypeType d@@32 Tclass._System.Tuple0 $h@@23))
)))
(assert (forall ((d@@33 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) ($Is DatatypeTypeType d@@33 Tclass._module.List)) ($IsAlloc DatatypeTypeType d@@33 Tclass._module.List $h@@24))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($IsAlloc DatatypeTypeType d@@33 Tclass._module.List $h@@24))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= |#_System._tuple#0._#Make0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.Sum#canCall| (Lit DatatypeTypeType |xs#0@@3|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@3| Tclass._module.List))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@3|)))))) (let ((|tail#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@3|)))))
(|_module.__default.Sum#canCall| |tail#3@@0|))) (= (_module.__default.Sum ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@3|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@3|)) 0 (let ((|tail#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@3|)))))
(let ((|x#2| (LitInt (_module.List.head (Lit DatatypeTypeType |xs#0@@3|)))))
(LitInt (+ |x#2| (_module.__default.Sum ($LS $ly@@7) |tail#2|)))))))))
 :qid |Datatypedfy.50:10|
 :weight 3
 :skolemid |1987|
 :pattern ( (_module.__default.Sum ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@3|)))
))))
(assert (forall ((d@@34 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (_System.Tuple2.___hMake2_q d@@34) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@34 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@25)
 :qid |unknown.0:0|
 :skolemid |1779|
 :pattern ( ($IsAlloc DatatypeTypeType d@@34 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@25))
)))) ($IsAllocBox (_System.Tuple2._0 d@@34) |_System._tuple#2$T0@@6| $h@@25))
 :qid |unknown.0:0|
 :skolemid |1780|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@34) |_System._tuple#2$T0@@6| $h@@25))
)))
(assert (forall ((d@@35 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (_System.Tuple2.___hMake2_q d@@35) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@35 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@26)
 :qid |unknown.0:0|
 :skolemid |1781|
 :pattern ( ($IsAlloc DatatypeTypeType d@@35 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@26))
)))) ($IsAllocBox (_System.Tuple2._1 d@@35) |_System._tuple#2$T1@@7| $h@@26))
 :qid |unknown.0:0|
 :skolemid |1782|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@35) |_System._tuple#2$T1@@7| $h@@26))
)))
(assert (forall ((d@@36 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (_module.List.Cons_q d@@36) ($IsAlloc DatatypeTypeType d@@36 Tclass._module.List $h@@27))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@36) Tclass._module.List $h@@27))
 :qid |unknown.0:0|
 :skolemid |2073|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@36) Tclass._module.List $h@@27))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@8 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.SumAgain#canCall| |xs#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| Tclass._module.List))) (and (=> (not (_module.List.Nil_q |xs#0@@4|)) (let ((|tail#1@@0| (_module.List.tail |xs#0@@4|)))
(|_module.__default.SumAgain#canCall| |tail#1@@0|))) (= (_module.__default.SumAgain ($LS $ly@@8) |xs#0@@4|) (let ((|r#0| (ite (_module.List.Nil_q |xs#0@@4|) 0 (let ((|tail#0@@0| (_module.List.tail |xs#0@@4|)))
(let ((|x#0@@2| (_module.List.head |xs#0@@4|)))
(+ |x#0@@2| (_module.__default.SumAgain $ly@@8 |tail#0@@0|)))))))
|r#0|))))
 :qid |Datatypedfy.56:10|
 :skolemid |1993|
 :pattern ( (_module.__default.SumAgain ($LS $ly@@8) |xs#0@@4|))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1783|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| Int) (|a#7#1#0@@0| T@U) ) (! (= (|#_module.List.Cons| (LitInt |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |Datatypedfy.4:28|
 :skolemid |2074|
 :pattern ( (|#_module.List.Cons| (LitInt |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1339|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1337|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((|a#6#0#0@@0| Int) (|a#6#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass._module.List)  (and ($Is intType (int_2_U |a#6#0#0@@0|) TInt) ($Is DatatypeTypeType |a#6#1#0@@0| Tclass._module.List)))
 :qid |Datatypedfy.4:28|
 :skolemid |2071|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass._module.List))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1543|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1382|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1361|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun |d#0@0| () T@U)
(declare-fun |e#0@0| () T@U)
(declare-fun |f#0@0| () T@U)
(declare-fun |##m#0@0| () Int)
(declare-fun |##n#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |c#0| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |e#0| () T@U)
(declare-fun |f#0| () T@U)
(declare-fun |u#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |a#0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) (=> (and (and (= |b#0@0| (|#_module.List.Cons| (LitInt 5) |a#0@0|)) (= |c#0@0| (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |a#0@0|) ($Box DatatypeTypeType |b#0@0|)))) (and (_System.Tuple2.___hMake2_q |c#0@0|) (_System.Tuple2.___hMake2_q |c#0@0|))) (=> (and (and (and (_System.Tuple2.___hMake2_q |c#0@0|) (_System.Tuple2.___hMake2_q |c#0@0|)) (= |d#0@0| (|#_System._tuple#2._#Make2| (_System.Tuple2._1 |c#0@0|) (_System.Tuple2._0 |c#0@0|)))) (and (= |e#0@0| (Lit DatatypeTypeType |#_System._tuple#0._#Make0|)) (= |f#0@0| (Lit DatatypeTypeType (|#_System._tuple#20._#Make20| ($Box intType (int_2_U (LitInt 1))) ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 4))) ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 7))) ($Box intType (int_2_U (LitInt 8))) ($Box intType (int_2_U (LitInt 9))) ($Box intType (int_2_U (LitInt 10))) ($Box intType (int_2_U (LitInt 11))) ($Box intType (int_2_U (LitInt 12))) ($Box intType (int_2_U (LitInt 13))) ($Box intType (int_2_U (LitInt 14))) ($Box intType (int_2_U (LitInt 15))) ($Box intType (int_2_U (LitInt 16))) ($Box intType (int_2_U (LitInt 17))) ($Box intType (int_2_U (LitInt 18))) ($Box intType (int_2_U (LitInt 19))) ($Box intType (int_2_U (LitInt 20)))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (_module.List.Cons_q |b#0@0|)) (=> (_module.List.Cons_q |b#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 5)) (_module.List.Cons_q |b#0@0|)) (=> (_module.List.Cons_q |b#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (and (= |##m#0@0| (LitInt 0)) ($IsAlloc intType (int_2_U |##m#0@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (LitInt 7)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 7)) Tclass._System.nat) (=> (= |##n#0@0| (LitInt 7)) (=> (and ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap) (= (ControlFlow 0 2) (- 0 1))) (<= |##m#0@0| |##n#0@0|)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and ($Is DatatypeTypeType |a#0| Tclass._module.List) ($IsAlloc DatatypeTypeType |a#0| Tclass._module.List $Heap)) true) (and (and ($Is DatatypeTypeType |b#0| Tclass._module.List) ($IsAlloc DatatypeTypeType |b#0| Tclass._module.List $Heap)) true)) (and (and (and ($Is DatatypeTypeType |c#0| (Tclass._System.Tuple2 Tclass._module.List Tclass._module.List)) ($IsAlloc DatatypeTypeType |c#0| (Tclass._System.Tuple2 Tclass._module.List Tclass._module.List) $Heap)) true) (and (and ($Is DatatypeTypeType |d#0| (Tclass._System.Tuple2 Tclass._module.List Tclass._module.List)) ($IsAlloc DatatypeTypeType |d#0| (Tclass._System.Tuple2 Tclass._module.List Tclass._module.List) $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |e#0| Tclass._System.Tuple0) ($IsAlloc DatatypeTypeType |e#0| Tclass._System.Tuple0 $Heap)) true) (and (and ($Is DatatypeTypeType |f#0| (Tclass._System.Tuple20 TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt)) ($IsAlloc DatatypeTypeType |f#0| (Tclass._System.Tuple20 TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt TInt) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |u#0| Tclass._module.List) ($IsAlloc DatatypeTypeType |u#0| Tclass._module.List $Heap)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 7) 2))))) anon0_correct))))
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
