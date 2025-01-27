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
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun Tagclass._System.___hFunc3 () T@U)
(declare-fun Tagclass._System.___hPartialFunc3 () T@U)
(declare-fun Tagclass._System.___hTotalFunc3 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun |tytagFamily$_#TotalFunc2| () T@U)
(declare-fun |tytagFamily$_#Func3| () T@U)
(declare-fun |tytagFamily$_#PartialFunc3| () T@U)
(declare-fun |tytagFamily$_#TotalFunc3| () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.InvR (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.InvR#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.___hFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_3 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_3 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_3 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_2 (T@U) T@U)
(declare-fun _module.__default.foldr (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.foldr#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List._h3 (T@U) T@U)
(declare-fun _module.List._h2 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Reads3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Requires3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TBool TagBool alloc Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 Tagclass._System.___hFunc3 Tagclass._System.___hPartialFunc3 Tagclass._System.___hTotalFunc3 Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2| |tytagFamily$_#Func3| |tytagFamily$_#PartialFunc3| |tytagFamily$_#TotalFunc3| tytagFamily$List)
)
(assert  (and (= (Ctor HandleTypeType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.InvR$A T@U) (_module._default.InvR$B T@U) ($Heap T@U) (|inv#0| T@U) (|stp#0| T@U) ) (!  (=> (or (|_module.__default.InvR#canCall| _module._default.InvR$A _module._default.InvR$B |inv#0| |stp#0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |inv#0| (Tclass._System.___hTotalFunc2 (Tclass._module.List _module._default.InvR$A) _module._default.InvR$B TBool))) ($Is HandleTypeType |stp#0| (Tclass._System.___hTotalFunc3 _module._default.InvR$A _module._default.InvR$B _module._default.InvR$B TBool))))) (= (_module.__default.InvR _module._default.InvR$A _module._default.InvR$B |inv#0| |stp#0|) (forall ((|x#0| T@U) (|xs#0| T@U) (|b#0| T@U) (|b'#0| T@U) ) (!  (=> (and (and (and ($IsBox |x#0| _module._default.InvR$A) ($Is DatatypeTypeType |xs#0| (Tclass._module.List _module._default.InvR$A))) ($IsBox |b#0| _module._default.InvR$B)) ($IsBox |b'#0| _module._default.InvR$B)) (=> (and (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.InvR$A) _module._default.InvR$B TBool $Heap |inv#0| ($Box DatatypeTypeType |xs#0|) |b#0|))) (U_2_bool ($Unbox boolType (Apply3 _module._default.InvR$A _module._default.InvR$B _module._default.InvR$B TBool $Heap |stp#0| |x#0| |b#0| |b'#0|)))) (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.InvR$A) _module._default.InvR$B TBool $Heap |inv#0| ($Box DatatypeTypeType (|#_module.List.Cons| |x#0| |xs#0|)) |b'#0|)))))
 :qid |Foldinglegacydfy.50:10|
 :skolemid |641|
 :pattern ( (|#_module.List.Cons| |x#0| |xs#0|) ($Unbox boolType (Apply3 _module._default.InvR$A _module._default.InvR$B _module._default.InvR$B TBool $Heap |stp#0| |x#0| |b#0| |b'#0|)))
))))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( (_module.__default.InvR _module._default.InvR$A _module._default.InvR$B |inv#0| |stp#0|) ($IsGoodHeap $Heap))
))))
(assert (= (Tag TBool) TagBool))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$T2| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc3_0 (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (Tclass._System.___hFunc3 |#$T0| |#$T1| |#$T2| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$T2@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc3_1 (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@0| |#$T1@@0| |#$T2@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$T2@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc3_2 (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|)) |#$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@1| |#$T1@@1| |#$T2@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$T2@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc3_3 (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@2| |#$T1@@2| |#$T2@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$T2@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc3_0 (Tclass._System.___hPartialFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@3| |#$T1@@3| |#$T2@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$T2@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc3_1 (Tclass._System.___hPartialFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|)) |#$T1@@4|)
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@4| |#$T1@@4| |#$T2@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$T2@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc3_2 (Tclass._System.___hPartialFunc3 |#$T0@@5| |#$T1@@5| |#$T2@@5| |#$R@@5|)) |#$T2@@5|)
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@5| |#$T1@@5| |#$T2@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$T2@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hPartialFunc3_3 (Tclass._System.___hPartialFunc3 |#$T0@@6| |#$T1@@6| |#$T2@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@6| |#$T1@@6| |#$T2@@6| |#$R@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$T2@@7| T@U) (|#$R@@7| T@U) ) (! (= (Tclass._System.___hTotalFunc3_0 (Tclass._System.___hTotalFunc3 |#$T0@@7| |#$T1@@7| |#$T2@@7| |#$R@@7|)) |#$T0@@7|)
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@7| |#$T1@@7| |#$T2@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$T2@@8| T@U) (|#$R@@8| T@U) ) (! (= (Tclass._System.___hTotalFunc3_1 (Tclass._System.___hTotalFunc3 |#$T0@@8| |#$T1@@8| |#$T2@@8| |#$R@@8|)) |#$T1@@8|)
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@8| |#$T1@@8| |#$T2@@8| |#$R@@8|))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$T2@@9| T@U) (|#$R@@9| T@U) ) (! (= (Tclass._System.___hTotalFunc3_2 (Tclass._System.___hTotalFunc3 |#$T0@@9| |#$T1@@9| |#$T2@@9| |#$R@@9|)) |#$T2@@9|)
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@9| |#$T1@@9| |#$T2@@9| |#$R@@9|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$T2@@10| T@U) (|#$R@@10| T@U) ) (! (= (Tclass._System.___hTotalFunc3_3 (Tclass._System.___hTotalFunc3 |#$T0@@10| |#$T1@@10| |#$T2@@10| |#$R@@10|)) |#$R@@10|)
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@10| |#$T1@@10| |#$T2@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$T1@@11| T@U) (|#$R@@11| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0@@11|) ($IsBox |x1#0| |#$T1@@11|)) (Requires2 |#$T0@@11| |#$T1@@11| |#$R@@11| $OneHeap |f#0| |x0#0| |x1#0|))
 :qid |unknown.0:0|
 :skolemid |525|
))))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$T1@@12| T@U) (|#$R@@12| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)) |#$T0@@12|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$T1@@13| T@U) (|#$R@@13| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)) |#$T1@@13|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$T1@@14| T@U) (|#$R@@14| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)) |#$R@@14|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@15| T@U) (|#$R@@15| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)) |#$T0@@15|)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$T1@@16| T@U) (|#$R@@16| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|)) |#$T1@@16|)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$T1@@17| T@U) (|#$R@@17| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|)) |#$R@@17|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$T1@@18| T@U) (|#$R@@18| T@U) ) (! (= (Tclass._System.___hTotalFunc2_0 (Tclass._System.___hTotalFunc2 |#$T0@@18| |#$T1@@18| |#$R@@18|)) |#$T0@@18|)
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@18| |#$T1@@18| |#$R@@18|))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$T1@@19| T@U) (|#$R@@19| T@U) ) (! (= (Tclass._System.___hTotalFunc2_1 (Tclass._System.___hTotalFunc2 |#$T0@@19| |#$T1@@19| |#$R@@19|)) |#$T1@@19|)
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@19| |#$T1@@19| |#$R@@19|))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$T1@@20| T@U) (|#$R@@20| T@U) ) (! (= (Tclass._System.___hTotalFunc2_2 (Tclass._System.___hTotalFunc2 |#$T0@@20| |#$T1@@20| |#$R@@20|)) |#$R@@20|)
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@20| |#$T1@@20| |#$R@@20|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.foldr$A T@U) (_module._default.foldr$B T@U) ($ly T@U) ($Heap@@0 T@U) (|f#0@@0| T@U) (|b#0@@0| T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.foldr#canCall| _module._default.foldr$A _module._default.foldr$B |f#0@@0| |b#0@@0| |xs#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc2 _module._default.foldr$A _module._default.foldr$B _module._default.foldr$B))) ($IsBox |b#0@@0| _module._default.foldr$B)) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.foldr$A))))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|tail#1| (_module.List._h3 |xs#0@@0|)))
(|_module.__default.foldr#canCall| _module._default.foldr$A _module._default.foldr$B |f#0@@0| |b#0@@0| |tail#1|))) (= (_module.__default.foldr _module._default.foldr$A _module._default.foldr$B ($LS $ly) |f#0@@0| |b#0@@0| |xs#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) |b#0@@0| (let ((|tail#0| (_module.List._h3 |xs#0@@0|)))
(let ((|head#0| (_module.List._h2 |xs#0@@0|)))
(Apply2 _module._default.foldr$A _module._default.foldr$B _module._default.foldr$B $Heap@@0 |f#0@@0| |head#0| (_module.__default.foldr _module._default.foldr$A _module._default.foldr$B $ly |f#0@@0| |b#0@@0| |tail#0|))))))))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( (_module.__default.foldr _module._default.foldr$A _module._default.foldr$B ($LS $ly) |f#0@@0| |b#0@@0| |xs#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 5) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (t2 T@U) (t3 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@0 t1@@0 t2 t3) h) (forall ((bx0 T@U) (bx1 T@U) (bx2 T@U) ) (!  (=> (and (and (and (and ($IsBox bx0 t0@@0) ($IsAllocBox bx0 t0@@0 h)) (and ($IsBox bx1 t1@@0) ($IsAllocBox bx1 t1@@0 h))) (and ($IsBox bx2 t2) ($IsAllocBox bx2 t2 h))) (Requires3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (|Set#IsMember| (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (Apply3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2))
 :pattern ( (Reads3 t0@@0 t1@@0 t2 t3 h f bx0 bx1 bx2))
))))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc3 t0@@0 t1@@0 t2 t3) h))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$T1@@21| T@U) (|#$R@@21| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@21| |#$T1@@21| |#$R@@21|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@21| |#$T1@@21| |#$R@@21|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@21| |#$T1@@21| |#$R@@21|))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$T1@@22| T@U) (|#$R@@22| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@22| |#$T1@@22| |#$R@@22|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@22| |#$T1@@22| |#$R@@22|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@22| |#$T1@@22| |#$R@@22|))
)))
(assert (forall ((|#$T0@@23| T@U) (|#$T1@@23| T@U) (|#$R@@23| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@23| |#$T1@@23| |#$R@@23|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@23| |#$T1@@23| |#$R@@23|)) |tytagFamily$_#TotalFunc2|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@23| |#$T1@@23| |#$R@@23|))
)))
(assert (forall ((|#$T0@@24| T@U) (|#$T1@@24| T@U) (|#$R@@24| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@24| |#$T1@@24| |#$R@@24|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@24| |#$T1@@24| |#$R@@24|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@24| |#$T1@@24| |#$R@@24|)))
)))
(assert (forall ((|#$T0@@25| T@U) (|#$T1@@25| T@U) (|#$R@@25| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@25| |#$T1@@25| |#$R@@25|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hPartialFunc2 |#$T0@@25| |#$T1@@25| |#$R@@25|))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@25| |#$T1@@25| |#$R@@25|)))
)))
(assert (forall ((|#$T0@@26| T@U) (|#$T1@@26| T@U) (|#$R@@26| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hTotalFunc2 |#$T0@@26| |#$T1@@26| |#$R@@26|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hTotalFunc2 |#$T0@@26| |#$T1@@26| |#$R@@26|))))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hTotalFunc2 |#$T0@@26| |#$T1@@26| |#$R@@26|)))
)))
(assert (forall ((_module.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |766|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (t3@@0 T@U) (heap T@U) (f@@0 T@U) (bx0@@0 T@U) (bx1@@0 T@U) (bx2@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and (and (and ($IsBox bx0@@0 t0@@1) ($IsBox bx1@@0 t1@@1)) ($IsBox bx2@@0 t2@@0)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc3 t0@@1 t1@@1 t2@@0 t3@@0)))) (= (|Set#Equal| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 $OneHeap f@@0 bx0@@0 bx1@@0 bx2@@0) |Set#Empty|) (|Set#Equal| (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap f@@0 bx0@@0 bx1@@0 bx2@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 $OneHeap f@@0 bx0@@0 bx1@@0 bx2@@0) ($IsGoodHeap heap))
 :pattern ( (Reads3 t0@@1 t1@@1 t2@@0 t3@@0 heap f@@0 bx0@@0 bx1@@0 bx2@@0))
)))
(assert (forall ((f@@1 T@U) (t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (t3@@1 T@U) (u0@@0 T@U) (u1@@0 T@U) (u2 T@U) (u3 T@U) ) (!  (=> (and (and (and (and ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1)) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 u0@@0) ($IsBox bx@@2 t0@@2))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsBox bx@@2 u0@@0))
 :pattern ( ($IsBox bx@@2 t0@@2))
))) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 u1@@0) ($IsBox bx@@3 t1@@2))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsBox bx@@3 u1@@0))
 :pattern ( ($IsBox bx@@3 t1@@2))
))) (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 u2) ($IsBox bx@@4 t2@@1))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsBox bx@@4 u2))
 :pattern ( ($IsBox bx@@4 t2@@1))
))) (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 t3@@1) ($IsBox bx@@5 u3))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@5 t3@@1))
 :pattern ( ($IsBox bx@@5 u3))
))) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@0 u1@@0 u2 u3)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 t0@@2 t1@@2 t2@@1 t3@@1)) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc3 u0@@0 u1@@0 u2 u3)))
)))
(assert (forall ((|#$T0@@27| T@U) (|#$T1@@27| T@U) (|#$T2@@11| T@U) (|#$R@@27| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc3 |#$T0@@27| |#$T1@@27| |#$T2@@11| |#$R@@27|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc3 |#$T0@@27| |#$T1@@27| |#$T2@@11| |#$R@@27|)) (forall ((|x0#0@@0| T@U) (|x1#0@@0| T@U) (|x2#0| T@U) ) (!  (=> (and (and ($IsBox |x0#0@@0| |#$T0@@27|) ($IsBox |x1#0@@0| |#$T1@@27|)) ($IsBox |x2#0| |#$T2@@11|)) (Requires3 |#$T0@@27| |#$T1@@27| |#$T2@@11| |#$R@@27| $OneHeap |f#0@@1| |x0#0@@0| |x1#0@@0| |x2#0|))
 :qid |unknown.0:0|
 :skolemid |578|
))))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc3 |#$T0@@27| |#$T1@@27| |#$T2@@11| |#$R@@27|)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.foldr$A@@0 T@U) (_module._default.foldr$B@@0 T@U) ($ly@@0 T@U) (|f#0@@2| T@U) (|b#0@@1| T@U) (|xs#0@@1| T@U) ) (!  (=> (or (|_module.__default.foldr#canCall| _module._default.foldr$A@@0 _module._default.foldr$B@@0 |f#0@@2| |b#0@@1| |xs#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 _module._default.foldr$A@@0 _module._default.foldr$B@@0 _module._default.foldr$B@@0)) ($IsBox |b#0@@1| _module._default.foldr$B@@0)) ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.foldr$A@@0))))) ($IsBox (_module.__default.foldr _module._default.foldr$A@@0 _module._default.foldr$B@@0 $ly@@0 |f#0@@2| |b#0@@1| |xs#0@@1|) _module._default.foldr$B@@0))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (_module.__default.foldr _module._default.foldr$A@@0 _module._default.foldr$B@@0 $ly@@0 |f#0@@2| |b#0@@1| |xs#0@@1|))
))))
(assert (forall ((|#$T0@@28| T@U) (|#$T1@@28| T@U) (|#$T2@@12| T@U) (|#$R@@28| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc3 |#$T0@@28| |#$T1@@28| |#$T2@@12| |#$R@@28|)) Tagclass._System.___hFunc3) (= (TagFamily (Tclass._System.___hFunc3 |#$T0@@28| |#$T1@@28| |#$T2@@12| |#$R@@28|)) |tytagFamily$_#Func3|))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@28| |#$T1@@28| |#$T2@@12| |#$R@@28|))
)))
(assert (forall ((|#$T0@@29| T@U) (|#$T1@@29| T@U) (|#$T2@@13| T@U) (|#$R@@29| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc3 |#$T0@@29| |#$T1@@29| |#$T2@@13| |#$R@@29|)) Tagclass._System.___hPartialFunc3) (= (TagFamily (Tclass._System.___hPartialFunc3 |#$T0@@29| |#$T1@@29| |#$T2@@13| |#$R@@29|)) |tytagFamily$_#PartialFunc3|))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@29| |#$T1@@29| |#$T2@@13| |#$R@@29|))
)))
(assert (forall ((|#$T0@@30| T@U) (|#$T1@@30| T@U) (|#$T2@@14| T@U) (|#$R@@30| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc3 |#$T0@@30| |#$T1@@30| |#$T2@@14| |#$R@@30|)) Tagclass._System.___hTotalFunc3) (= (TagFamily (Tclass._System.___hTotalFunc3 |#$T0@@30| |#$T1@@30| |#$T2@@14| |#$R@@30|)) |tytagFamily$_#TotalFunc3|))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@30| |#$T1@@30| |#$T2@@14| |#$R@@30|))
)))
(assert (forall ((|#$T0@@31| T@U) (|#$T1@@31| T@U) (|#$R@@31| T@U) (|f#0@@3| T@U) ) (! (= ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@31| |#$T1@@31| |#$R@@31|))  (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hFunc2 |#$T0@@31| |#$T1@@31| |#$R@@31|)) (forall ((|x0#0@@1| T@U) (|x1#0@@1| T@U) ) (!  (=> (and ($IsBox |x0#0@@1| |#$T0@@31|) ($IsBox |x1#0@@1| |#$T1@@31|)) (|Set#Equal| (Reads2 |#$T0@@31| |#$T1@@31| |#$R@@31| $OneHeap |f#0@@3| |x0#0@@1| |x1#0@@1|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |517|
))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@31| |#$T1@@31| |#$R@@31|)))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |768|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Foldinglegacydfy.23:31|
 :skolemid |769|
)))
 :qid |unknown.0:0|
 :skolemid |770|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.foldr$A@@1 T@U) (_module._default.foldr$B@@1 T@U) ($ly@@1 T@U) (|f#0@@4| T@U) (|b#0@@2| T@U) (|xs#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.foldr#canCall| _module._default.foldr$A@@1 _module._default.foldr$B@@1 |f#0@@4| |b#0@@2| |xs#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc2 _module._default.foldr$A@@1 _module._default.foldr$B@@1 _module._default.foldr$B@@1)) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc2 _module._default.foldr$A@@1 _module._default.foldr$B@@1 _module._default.foldr$B@@1) $Heap@@1)) (and ($IsBox |b#0@@2| _module._default.foldr$B@@1) ($IsAllocBox |b#0@@2| _module._default.foldr$B@@1 $Heap@@1))) (and ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.foldr$A@@1)) ($IsAlloc DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.foldr$A@@1) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (_module.__default.foldr _module._default.foldr$A@@1 _module._default.foldr$B@@1 $ly@@1 |f#0@@4| |b#0@@2| |xs#0@@2|) _module._default.foldr$B@@1 $Heap@@1))
 :qid |Foldinglegacydfy.39:10|
 :skolemid |633|
 :pattern ( ($IsAllocBox (_module.__default.foldr _module._default.foldr$A@@1 _module._default.foldr$B@@1 $ly@@1 |f#0@@4| |b#0@@2| |xs#0@@2|) _module._default.foldr$B@@1 $Heap@@1))
))))
(assert ($IsGoodHeap $OneHeap))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.foldr$A@@2 T@U) (_module._default.foldr$B@@2 T@U) ($ly@@2 T@U) ($Heap@@2 T@U) (|f#0@@5| T@U) (|b#0@@3| T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.foldr#canCall| _module._default.foldr$A@@2 _module._default.foldr$B@@2 |f#0@@5| |b#0@@3| (Lit DatatypeTypeType |xs#0@@3|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@2) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc2 _module._default.foldr$A@@2 _module._default.foldr$B@@2 _module._default.foldr$B@@2))) ($IsBox |b#0@@3| _module._default.foldr$B@@2)) ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.foldr$A@@2))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@3|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List._h3 (Lit DatatypeTypeType |xs#0@@3|)))))
(|_module.__default.foldr#canCall| _module._default.foldr$A@@2 _module._default.foldr$B@@2 |f#0@@5| |b#0@@3| |tail#3|))) (= (_module.__default.foldr _module._default.foldr$A@@2 _module._default.foldr$B@@2 ($LS $ly@@2) |f#0@@5| |b#0@@3| (Lit DatatypeTypeType |xs#0@@3|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@3|)) |b#0@@3| (let ((|tail#2| (Lit DatatypeTypeType (_module.List._h3 (Lit DatatypeTypeType |xs#0@@3|)))))
(let ((|head#2| (Lit BoxType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@3|)))))
(Apply2 _module._default.foldr$A@@2 _module._default.foldr$B@@2 _module._default.foldr$B@@2 $Heap@@2 |f#0@@5| |head#2| (_module.__default.foldr _module._default.foldr$A@@2 _module._default.foldr$B@@2 ($LS $ly@@2) |f#0@@5| |b#0@@3| |tail#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |636|
 :pattern ( (_module.__default.foldr _module._default.foldr$A@@2 _module._default.foldr$B@@2 ($LS $ly@@2) |f#0@@5| |b#0@@3| (Lit DatatypeTypeType |xs#0@@3|)) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.InvR$A@@0 T@U) (_module._default.InvR$B@@0 T@U) ($Heap@@3 T@U) (|inv#0@@0| T@U) (|stp#0@@0| T@U) ) (!  (=> (or (|_module.__default.InvR#canCall| _module._default.InvR$A@@0 _module._default.InvR$B@@0 (Lit HandleTypeType |inv#0@@0|) (Lit HandleTypeType |stp#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) ($Is HandleTypeType |inv#0@@0| (Tclass._System.___hTotalFunc2 (Tclass._module.List _module._default.InvR$A@@0) _module._default.InvR$B@@0 TBool))) ($Is HandleTypeType |stp#0@@0| (Tclass._System.___hTotalFunc3 _module._default.InvR$A@@0 _module._default.InvR$B@@0 _module._default.InvR$B@@0 TBool))))) (= (_module.__default.InvR _module._default.InvR$A@@0 _module._default.InvR$B@@0 (Lit HandleTypeType |inv#0@@0|) (Lit HandleTypeType |stp#0@@0|)) (forall ((|x#1| T@U) (|xs#1| T@U) (|b#1| T@U) (|b'#1| T@U) ) (!  (=> (and (and (and ($IsBox |x#1| _module._default.InvR$A@@0) ($Is DatatypeTypeType |xs#1| (Tclass._module.List _module._default.InvR$A@@0))) ($IsBox |b#1| _module._default.InvR$B@@0)) ($IsBox |b'#1| _module._default.InvR$B@@0)) (=> (and (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.InvR$A@@0) _module._default.InvR$B@@0 TBool $Heap@@3 (Lit HandleTypeType |inv#0@@0|) ($Box DatatypeTypeType |xs#1|) |b#1|))) (U_2_bool ($Unbox boolType (Apply3 _module._default.InvR$A@@0 _module._default.InvR$B@@0 _module._default.InvR$B@@0 TBool $Heap@@3 (Lit HandleTypeType |stp#0@@0|) |x#1| |b#1| |b'#1|)))) (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.InvR$A@@0) _module._default.InvR$B@@0 TBool $Heap@@3 (Lit HandleTypeType |inv#0@@0|) ($Box DatatypeTypeType (|#_module.List.Cons| |x#1| |xs#1|)) |b'#1|)))))
 :qid |Foldinglegacydfy.50:10|
 :skolemid |643|
 :pattern ( (|#_module.List.Cons| |x#1| |xs#1|) ($Unbox boolType (Apply3 _module._default.InvR$A@@0 _module._default.InvR$B@@0 _module._default.InvR$B@@0 TBool $Heap@@3 |stp#0@@0| |x#1| |b#1| |b'#1|)))
))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |644|
 :pattern ( (_module.__default.InvR _module._default.InvR$A@@0 _module._default.InvR$B@@0 (Lit HandleTypeType |inv#0@@0|) (Lit HandleTypeType |stp#0@@0|)) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((_module._default.foldr$A@@3 T@U) (_module._default.foldr$B@@3 T@U) ($ly@@3 T@U) (|f#0@@6| T@U) (|b#0@@4| T@U) (|xs#0@@4| T@U) ) (! (= (_module.__default.foldr _module._default.foldr$A@@3 _module._default.foldr$B@@3 ($LS $ly@@3) |f#0@@6| |b#0@@4| |xs#0@@4|) (_module.__default.foldr _module._default.foldr$A@@3 _module._default.foldr$B@@3 $ly@@3 |f#0@@6| |b#0@@4| |xs#0@@4|))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( (_module.__default.foldr _module._default.foldr$A@@3 _module._default.foldr$B@@3 ($LS $ly@@3) |f#0@@6| |b#0@@4| |xs#0@@4|))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((|#$T0@@32| T@U) (|#$T1@@32| T@U) (|#$T2@@15| T@U) (|#$R@@32| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hFunc3 |#$T0@@32| |#$T1@@32| |#$T2@@15| |#$R@@32|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hFunc3 |#$T0@@32| |#$T1@@32| |#$T2@@15| |#$R@@32|))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hFunc3 |#$T0@@32| |#$T1@@32| |#$T2@@15| |#$R@@32|)))
)))
(assert (forall ((|#$T0@@33| T@U) (|#$T1@@33| T@U) (|#$T2@@16| T@U) (|#$R@@33| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.___hPartialFunc3 |#$T0@@33| |#$T1@@33| |#$T2@@16| |#$R@@33|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@7)) bx@@7) ($Is HandleTypeType ($Unbox HandleTypeType bx@@7) (Tclass._System.___hPartialFunc3 |#$T0@@33| |#$T1@@33| |#$T2@@16| |#$R@@33|))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsBox bx@@7 (Tclass._System.___hPartialFunc3 |#$T0@@33| |#$T1@@33| |#$T2@@16| |#$R@@33|)))
)))
(assert (forall ((|#$T0@@34| T@U) (|#$T1@@34| T@U) (|#$T2@@17| T@U) (|#$R@@34| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hTotalFunc3 |#$T0@@34| |#$T1@@34| |#$T2@@17| |#$R@@34|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hTotalFunc3 |#$T0@@34| |#$T1@@34| |#$T2@@17| |#$R@@34|))))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hTotalFunc3 |#$T0@@34| |#$T1@@34| |#$T2@@17| |#$R@@34|)))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (h@@1 T@U) ) (!  (=> ($IsGoodHeap h@@1) (= ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@1) (forall ((bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@1 t0@@3) ($IsAllocBox bx0@@1 t0@@3 h@@1)) (and ($IsBox bx1@@1 t1@@3) ($IsAllocBox bx1@@1 t1@@3 h@@1))) (Requires2 t0@@3 t1@@3 t2@@2 h@@1 f@@2 bx0@@1 bx1@@1)) (forall ((r@@0 T@U) ) (!  (=> (and (or (not (= r@@0 null)) (not true)) (|Set#IsMember| (Reads2 t0@@3 t1@@3 t2@@2 h@@1 f@@2 bx0@@1 bx1@@1) ($Box refType r@@0))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r@@0) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@3 t1@@3 t2@@2 h@@1 f@@2 bx0@@1 bx1@@1) ($Box refType r@@0)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@3 t1@@3 t2@@2 h@@1 f@@2 bx0@@1 bx1@@1))
 :pattern ( (Reads2 t0@@3 t1@@3 t2@@2 h@@1 f@@2 bx0@@1 bx1@@1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@1))
)))
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (t2@@3 T@U) (t3@@2 T@U) ) (! (= ($Is HandleTypeType f@@3 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@2)) (forall ((h@@2 T@U) (bx0@@2 T@U) (bx1@@2 T@U) (bx2@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@2) (and (and ($IsBox bx0@@2 t0@@4) ($IsBox bx1@@2 t1@@4)) ($IsBox bx2@@1 t2@@3))) (Requires3 t0@@4 t1@@4 t2@@3 t3@@2 h@@2 f@@3 bx0@@2 bx1@@2 bx2@@1)) ($IsBox (Apply3 t0@@4 t1@@4 t2@@3 t3@@2 h@@2 f@@3 bx0@@2 bx1@@2 bx2@@1) t3@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |551|
 :pattern ( (Apply3 t0@@4 t1@@4 t2@@3 t3@@2 h@@2 f@@3 bx0@@2 bx1@@2 bx2@@1))
)))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($Is HandleTypeType f@@3 (Tclass._System.___hFunc3 t0@@4 t1@@4 t2@@3 t3@@2)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |780|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert (forall ((f@@4 T@U) (t0@@5 T@U) (t1@@5 T@U) (t2@@4 T@U) ) (! (= ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@5 t2@@4)) (forall ((h@@3 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@3) (and ($IsBox bx0@@3 t0@@5) ($IsBox bx1@@3 t1@@5))) (Requires2 t0@@5 t1@@5 t2@@4 h@@3 f@@4 bx0@@3 bx1@@3)) ($IsBox (Apply2 t0@@5 t1@@5 t2@@4 h@@3 f@@4 bx0@@3 bx1@@3) t2@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@5 t1@@5 t2@@4 h@@3 f@@4 bx0@@3 bx1@@3))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@5 t2@@4)))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (t2@@5 T@U) (t3@@3 T@U) (heap@@0 T@U) (f@@5 T@U) (bx0@@4 T@U) (bx1@@4 T@U) (bx2@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and (and (and ($IsBox bx0@@4 t0@@6) ($IsBox bx1@@4 t1@@6)) ($IsBox bx2@@2 t2@@5)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc3 t0@@6 t1@@6 t2@@5 t3@@3)))) (|Set#Equal| (Reads3 t0@@6 t1@@6 t2@@5 t3@@3 $OneHeap f@@5 bx0@@4 bx1@@4 bx2@@2) |Set#Empty|)) (= (Requires3 t0@@6 t1@@6 t2@@5 t3@@3 $OneHeap f@@5 bx0@@4 bx1@@4 bx2@@2) (Requires3 t0@@6 t1@@6 t2@@5 t3@@3 heap@@0 f@@5 bx0@@4 bx1@@4 bx2@@2)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (Requires3 t0@@6 t1@@6 t2@@5 t3@@3 $OneHeap f@@5 bx0@@4 bx1@@4 bx2@@2) ($IsGoodHeap heap@@0))
 :pattern ( (Requires3 t0@@6 t1@@6 t2@@5 t3@@3 heap@@0 f@@5 bx0@@4 bx1@@4 bx2@@2))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |781|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@7 T@U) (t1@@7 T@U) (t2@@6 T@U) (heap@@1 T@U) (f@@6 T@U) (bx0@@5 T@U) (bx1@@5 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (and (and ($IsBox bx0@@5 t0@@7) ($IsBox bx1@@5 t1@@7)) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc2 t0@@7 t1@@7 t2@@6)))) (= (|Set#Equal| (Reads2 t0@@7 t1@@7 t2@@6 $OneHeap f@@6 bx0@@5 bx1@@5) |Set#Empty|) (|Set#Equal| (Reads2 t0@@7 t1@@7 t2@@6 heap@@1 f@@6 bx0@@5 bx1@@5) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@7 t1@@7 t2@@6 $OneHeap f@@6 bx0@@5 bx1@@5) ($IsGoodHeap heap@@1))
 :pattern ( (Reads2 t0@@7 t1@@7 t2@@6 heap@@1 f@@6 bx0@@5 bx1@@5))
)))
(assert (forall ((f@@7 T@U) (t0@@8 T@U) (t1@@8 T@U) (t2@@7 T@U) (h@@4 T@U) ) (!  (=> (and ($IsGoodHeap h@@4) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@8 t1@@8 t2@@7) h@@4)) (forall ((bx0@@6 T@U) (bx1@@6 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@6 t0@@8 h@@4) ($IsAllocBox bx1@@6 t1@@8 h@@4)) (Requires2 t0@@8 t1@@8 t2@@7 h@@4 f@@7 bx0@@6 bx1@@6)) ($IsAllocBox (Apply2 t0@@8 t1@@8 t2@@7 h@@4 f@@7 bx0@@6 bx1@@6) t2@@7 h@@4))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@8 t1@@8 t2@@7 h@@4 f@@7 bx0@@6 bx1@@6))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@8 t1@@8 t2@@7) h@@4))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TBool) (and (= ($Box boolType ($Unbox boolType bx@@9)) bx@@9) ($Is boolType ($Unbox boolType bx@@9) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@9 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@5 T@U) (v@@1 T@U) ) (!  (=> ($IsBox v@@1 ty) ($IsAllocBox v@@1 ty h@@5))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@1 ty h@@5))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.foldr$A@@4 T@U) (_module._default.foldr$B@@4 T@U) ($ly@@4 T@U) ($Heap@@4 T@U) (|f#0@@7| T@U) (|b#0@@5| T@U) (|xs#0@@5| T@U) ) (!  (=> (or (|_module.__default.foldr#canCall| _module._default.foldr$A@@4 _module._default.foldr$B@@4 (Lit HandleTypeType |f#0@@7|) (Lit BoxType |b#0@@5|) (Lit DatatypeTypeType |xs#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@4) ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc2 _module._default.foldr$A@@4 _module._default.foldr$B@@4 _module._default.foldr$B@@4))) ($IsBox |b#0@@5| _module._default.foldr$B@@4)) ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.foldr$A@@4))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)))))) (let ((|tail#5| (Lit DatatypeTypeType (_module.List._h3 (Lit DatatypeTypeType |xs#0@@5|)))))
(|_module.__default.foldr#canCall| _module._default.foldr$A@@4 _module._default.foldr$B@@4 (Lit HandleTypeType |f#0@@7|) (Lit BoxType |b#0@@5|) |tail#5|))) (= (_module.__default.foldr _module._default.foldr$A@@4 _module._default.foldr$B@@4 ($LS $ly@@4) (Lit HandleTypeType |f#0@@7|) (Lit BoxType |b#0@@5|) (Lit DatatypeTypeType |xs#0@@5|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)) |b#0@@5| (let ((|tail#4| (Lit DatatypeTypeType (_module.List._h3 (Lit DatatypeTypeType |xs#0@@5|)))))
(let ((|head#4| (Lit BoxType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@5|)))))
(Apply2 _module._default.foldr$A@@4 _module._default.foldr$B@@4 _module._default.foldr$B@@4 $Heap@@4 (Lit HandleTypeType |f#0@@7|) |head#4| (Lit BoxType (_module.__default.foldr _module._default.foldr$A@@4 _module._default.foldr$B@@4 ($LS $ly@@4) (Lit HandleTypeType |f#0@@7|) (Lit BoxType |b#0@@5|) |tail#4|)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |637|
 :pattern ( (_module.__default.foldr _module._default.foldr$A@@4 _module._default.foldr$B@@4 ($LS $ly@@4) (Lit HandleTypeType |f#0@@7|) (Lit BoxType |b#0@@5|) (Lit DatatypeTypeType |xs#0@@5|)) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |Foldinglegacydfy.23:31|
 :skolemid |767|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List._h2 (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Foldinglegacydfy.23:31|
 :skolemid |776|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List._h3 (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |Foldinglegacydfy.23:31|
 :skolemid |778|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@9 T@U) (t2@@8 T@U) (heap@@2 T@U) (f@@8 T@U) (bx0@@7 T@U) (bx1@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@2) (and (and ($IsBox bx0@@7 t0@@9) ($IsBox bx1@@7 t1@@9)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@9 t1@@9 t2@@8)))) (|Set#Equal| (Reads2 t0@@9 t1@@9 t2@@8 $OneHeap f@@8 bx0@@7 bx1@@7) |Set#Empty|)) (= (Requires2 t0@@9 t1@@9 t2@@8 $OneHeap f@@8 bx0@@7 bx1@@7) (Requires2 t0@@9 t1@@9 t2@@8 heap@@2 f@@8 bx0@@7 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@9 t1@@9 t2@@8 $OneHeap f@@8 bx0@@7 bx1@@7) ($IsGoodHeap heap@@2))
 :pattern ( (Requires2 t0@@9 t1@@9 t2@@8 heap@@2 f@@8 bx0@@7 bx1@@7))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |Foldinglegacydfy.23:31|
 :skolemid |777|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |Foldinglegacydfy.23:31|
 :skolemid |779|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((f@@9 T@U) (t0@@10 T@U) (t1@@10 T@U) (t2@@9 T@U) (u0@@1 T@U) (u1@@1 T@U) (u2@@0 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@10 t1@@10 t2@@9)) (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 u0@@1) ($IsBox bx@@10 t0@@10))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@10 u0@@1))
 :pattern ( ($IsBox bx@@10 t0@@10))
))) (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 u1@@1) ($IsBox bx@@11 t1@@10))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@11 u1@@1))
 :pattern ( ($IsBox bx@@11 t1@@10))
))) (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 t2@@9) ($IsBox bx@@12 u2@@0))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@12 t2@@9))
 :pattern ( ($IsBox bx@@12 u2@@0))
))) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 u0@@1 u1@@1 u2@@0)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@10 t1@@10 t2@@9)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 u0@@1 u1@@1 u2@@0)))
)))
(assert (forall ((d@@5 T@U) (_module.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.List _module.List$T@@5) $h@@0))) ($IsAllocBox (_module.List._h2 d@@5) _module.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAllocBox (_module.List._h2 d@@5) _module.List$T@@5 $h@@0))
)))
(assert (forall ((f@@10 T@U) (t0@@11 T@U) (t1@@11 T@U) (t2@@10 T@U) (t3@@4 T@U) (h@@6 T@U) ) (!  (=> (and ($IsGoodHeap h@@6) ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc3 t0@@11 t1@@11 t2@@10 t3@@4) h@@6)) (forall ((bx0@@8 T@U) (bx1@@8 T@U) (bx2@@3 T@U) ) (!  (=> (and (and (and ($IsAllocBox bx0@@8 t0@@11 h@@6) ($IsAllocBox bx1@@8 t1@@11 h@@6)) ($IsAllocBox bx2@@3 t2@@10 h@@6)) (Requires3 t0@@11 t1@@11 t2@@10 t3@@4 h@@6 f@@10 bx0@@8 bx1@@8 bx2@@3)) ($IsAllocBox (Apply3 t0@@11 t1@@11 t2@@10 t3@@4 h@@6 f@@10 bx0@@8 bx1@@8 bx2@@3) t3@@4 h@@6))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (Apply3 t0@@11 t1@@11 t2@@10 t3@@4 h@@6 f@@10 bx0@@8 bx1@@8 bx2@@3))
)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc3 t0@@11 t1@@11 t2@@10 t3@@4) h@@6))
)))
(assert  (and (forall ((t0@@12 T@T) (t1@@12 T@T) (t2@@11 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@12 t1@@12 t2@@11 (MapType1Store t0@@12 t1@@12 t2@@11 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@2 u1@@2 u2@@1 (MapType1Store u0@@2 u1@@2 u2@@1 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@2 u1@@2 u2@@1 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@3 T@T) (u1@@3 T@T) (u2@@2 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@3 u1@@3 u2@@2 (MapType1Store u0@@3 u1@@3 u2@@2 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@3 u1@@3 u2@@2 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |785|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@35| T@U) (|#$T1@@35| T@U) (|#$R@@35| T@U) (|f#0@@8| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc2 |#$T0@@35| |#$T1@@35| |#$R@@35|) $h@@1) ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hFunc2 |#$T0@@35| |#$T1@@35| |#$R@@35|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@8| (Tclass._System.___hPartialFunc2 |#$T0@@35| |#$T1@@35| |#$R@@35|) $h@@1))
)))
(assert (forall ((|#$T0@@36| T@U) (|#$T1@@36| T@U) (|#$R@@36| T@U) (|f#0@@9| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc2 |#$T0@@36| |#$T1@@36| |#$R@@36|) $h@@2) ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hPartialFunc2 |#$T0@@36| |#$T1@@36| |#$R@@36|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc2 |#$T0@@36| |#$T1@@36| |#$R@@36|) $h@@2))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsBox bx@@13 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@7) $h@@3))) ($IsAlloc DatatypeTypeType (_module.List._h3 d@@7) (Tclass._module.List _module.List$T@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h3 d@@7) (Tclass._module.List _module.List$T@@7) $h@@3))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Foldinglegacydfy.23:31|
 :skolemid |775|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|#$T0@@37| T@U) (|#$T1@@37| T@U) (|#$T2@@18| T@U) (|#$R@@37| T@U) (|f#0@@10| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc3 |#$T0@@37| |#$T1@@37| |#$T2@@18| |#$R@@37|) $h@@4) ($IsAlloc HandleTypeType |f#0@@10| (Tclass._System.___hFunc3 |#$T0@@37| |#$T1@@37| |#$T2@@18| |#$R@@37|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@10| (Tclass._System.___hPartialFunc3 |#$T0@@37| |#$T1@@37| |#$T2@@18| |#$R@@37|) $h@@4))
)))
(assert (forall ((|#$T0@@38| T@U) (|#$T1@@38| T@U) (|#$T2@@19| T@U) (|#$R@@38| T@U) (|f#0@@11| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@11| (Tclass._System.___hTotalFunc3 |#$T0@@38| |#$T1@@38| |#$T2@@19| |#$R@@38|) $h@@5) ($IsAlloc HandleTypeType |f#0@@11| (Tclass._System.___hPartialFunc3 |#$T0@@38| |#$T1@@38| |#$T2@@19| |#$R@@38|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@11| (Tclass._System.___hTotalFunc3 |#$T0@@38| |#$T1@@38| |#$T2@@19| |#$R@@38|) $h@@5))
)))
(assert (forall ((h@@7 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@7)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@7))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@6)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@6) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@6))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@6))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is boolType v@@3 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@3 TBool))
)))
(assert (forall ((|#$T0@@39| T@U) (|#$T1@@39| T@U) (|#$T2@@20| T@U) (|#$R@@39| T@U) (|f#0@@12| T@U) ) (! (= ($Is HandleTypeType |f#0@@12| (Tclass._System.___hPartialFunc3 |#$T0@@39| |#$T1@@39| |#$T2@@20| |#$R@@39|))  (and ($Is HandleTypeType |f#0@@12| (Tclass._System.___hFunc3 |#$T0@@39| |#$T1@@39| |#$T2@@20| |#$R@@39|)) (forall ((|x0#0@@2| T@U) (|x1#0@@2| T@U) (|x2#0@@0| T@U) ) (!  (=> (and (and ($IsBox |x0#0@@2| |#$T0@@39|) ($IsBox |x1#0@@2| |#$T1@@39|)) ($IsBox |x2#0@@0| |#$T2@@20|)) (|Set#Equal| (Reads3 |#$T0@@39| |#$T1@@39| |#$T2@@20| |#$R@@39| $OneHeap |f#0@@12| |x0#0@@2| |x1#0@@2| |x2#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |569|
))))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($Is HandleTypeType |f#0@@12| (Tclass._System.___hPartialFunc3 |#$T0@@39| |#$T1@@39| |#$T2@@20| |#$R@@39|)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.FoldR_Property$A () T@U)
(declare-fun _module._default.FoldR_Property$B () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |stp#0@@1| () T@U)
(declare-fun |head#0_0@0| () T@U)
(declare-fun |b'#0_0@0| () T@U)
(declare-fun |f#0@@13| () T@U)
(declare-fun |inv#0@@1| () T@U)
(declare-fun |tail#0_0@0| () T@U)
(declare-fun |xs#0@@6| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |b#0@@6| () T@U)
(declare-fun |_mcc#0#0_0@0| () T@U)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#b'#0_0| () Bool)
(declare-fun |b'#0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.FoldR__Property)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon7_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@0 |stp#0@@1| |head#0_0@0| |b'#0_0@0| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|)))) (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |tail#0_0@0|) |b'#0_0@0|))))) (=> (= (ControlFlow 0 18) (- 0 17)) (=> (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@0 |stp#0@@1| |head#0_0@0| |b'#0_0@0| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|)))) (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@0 |stp#0@@1| |head#0_0@0| |b'#0_0@0| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|)))))))))
(let ((anon18_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |tail#0_0@0|) |b'#0_0@0|)))) (= (ControlFlow 0 23) 18)) anon7_correct)))
(let ((anon18_Then_correct  (=> (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |tail#0_0@0|) |b'#0_0@0|))) (and (=> (= (ControlFlow 0 20) (- 0 22)) true) (and (=> (= (ControlFlow 0 20) (- 0 21)) true) (=> (= (ControlFlow 0 20) 18) anon7_correct))))))
(let ((anon17_Then_correct  (=> (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@0 |stp#0@@1| |head#0_0@0| |b'#0_0@0| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|)))) (and (=> (= (ControlFlow 0 24) (- 0 25)) true) (and (=> (= (ControlFlow 0 24) 20) anon18_Then_correct) (=> (= (ControlFlow 0 24) 23) anon18_Else_correct))))))
(let ((anon10_correct  (=> (and (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |tail#0_0@0|) |b'#0_0@0|))) (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@0 |stp#0@@1| |head#0_0@0| |b'#0_0@0| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) true) (=> (= (ControlFlow 0 12) (- 0 11)) (=> (and (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |tail#0_0@0|) |b'#0_0@0|))) (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@0 |stp#0@@1| |head#0_0@0| |b'#0_0@0| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|))))) (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType (|#_module.List.Cons| |head#0_0@0| |tail#0_0@0|)) (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|))))))))))
(let ((anon20_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |tail#0_0@0|) |b'#0_0@0|)))) (= (ControlFlow 0 15) 12)) anon10_correct)))
(let ((anon20_Then_correct  (=> (and (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |tail#0_0@0|) |b'#0_0@0|))) (= (ControlFlow 0 14) 12)) anon10_correct)))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 16) 14) anon20_Then_correct) (=> (= (ControlFlow 0 16) 15) anon20_Else_correct))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |xs#0@@6|) (_module.__default.foldr _module._default.FoldR_Property$A _module._default.FoldR_Property$B ($LS ($LS $LZ)) |f#0@@13| |b#0@@6| |xs#0@@6|)))))))
(let ((anon19_Else_correct  (=> (and (=> true (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType (|#_module.List.Cons| |head#0_0@0| |tail#0_0@0|)) (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|))))) (= (ControlFlow 0 10) 8)) GeneratedUnifiedExit_correct)))
(let ((anon13_Then_correct  (=> (and (= |xs#0@@6| |#_module.List.Nil|) (= (ControlFlow 0 9) 8)) GeneratedUnifiedExit_correct)))
(let ((anon16_Then_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) true) (and (=> (= (ControlFlow 0 4) (- 0 5)) true) (=> (= (ControlFlow 0 4) (- 0 3)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@0 |stp#0@@1| |head#0_0@0| |b'#0_0@0| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@0 |f#0@@13| |head#0_0@0| |b'#0_0@0|))))))))))
(let ((anon15_Then_correct true))
(let ((anon14_Then_correct  (=> (= |xs#0@@6| (|#_module.List.Cons| |_mcc#0#0_0@0| |_mcc#1#0_0@0|)) (=> (and ($IsBox |_mcc#0#0_0@0| _module._default.FoldR_Property$A) ($Is DatatypeTypeType |_mcc#1#0_0@0| (Tclass._module.List _module._default.FoldR_Property$A))) (=> (and (and (and (and (and ($Is DatatypeTypeType |tail#0_0@0| (Tclass._module.List _module._default.FoldR_Property$A)) ($IsAlloc DatatypeTypeType |tail#0_0@0| (Tclass._module.List _module._default.FoldR_Property$A) $Heap@0)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| (Tclass._module.List _module._default.FoldR_Property$A)) (= |tail#0_0@0| |let#0_0#0#0|))) (and (and ($IsBox |head#0_0@0| _module._default.FoldR_Property$A) ($IsAllocBox |head#0_0@0| _module._default.FoldR_Property$A $Heap@0)) (= |let#0_1#0#0| |_mcc#0#0_0@0|))) (and (and (and ($IsBox |let#0_1#0#0| _module._default.FoldR_Property$A) (= |head#0_0@0| |let#0_1#0#0|)) (and ($IsAlloc HandleTypeType |f#0@@13| (Tclass._System.___hTotalFunc2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B) $Heap@0) ($IsAllocBox |b#0@@6| _module._default.FoldR_Property$B $Heap@0))) (and (and ($IsAlloc DatatypeTypeType |tail#0_0@0| (Tclass._module.List _module._default.FoldR_Property$A) $Heap@0) (|_module.__default.foldr#canCall| _module._default.FoldR_Property$A _module._default.FoldR_Property$B |f#0@@13| |b#0@@6| |tail#0_0@0|)) (and (|_module.__default.foldr#canCall| _module._default.FoldR_Property$A _module._default.FoldR_Property$B |f#0@@13| |b#0@@6| |tail#0_0@0|) (= |b'#0_0@0| (_module.__default.foldr _module._default.FoldR_Property$A _module._default.FoldR_Property$B ($LS $LZ) |f#0@@13| |b#0@@6| |tail#0_0@0|)))))) (and (and (and (and (=> (= (ControlFlow 0 26) 2) anon15_Then_correct) (=> (= (ControlFlow 0 26) 4) anon16_Then_correct)) (=> (= (ControlFlow 0 26) 24) anon17_Then_correct)) (=> (= (ControlFlow 0 26) 16) anon19_Then_correct)) (=> (= (ControlFlow 0 26) 10) anon19_Else_correct)))))))
(let ((anon14_Else_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |xs#0@@6| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 27) 26) anon14_Then_correct) (=> (= (ControlFlow 0 27) 1) anon14_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@5 alloc false)) (|$IsA#_module.List| |xs#0@@6|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@5 $Heap@0) (forall ((|$ih#xs0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#xs0#0| (Tclass._module.List _module._default.FoldR_Property$A)) (and (and (_module.__default.InvR _module._default.FoldR_Property$A _module._default.FoldR_Property$B |inv#0@@1| |stp#0@@1|) (forall ((|a#2| T@U) (|b#5| T@U) ) (!  (=> (and ($IsBox |a#2| _module._default.FoldR_Property$A) ($IsBox |b#5| _module._default.FoldR_Property$B)) (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@@5 |stp#0@@1| |a#2| |b#5| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@@5 |f#0@@13| |a#2| |b#5|)))))
 :qid |Foldinglegacydfy.56:19|
 :skolemid |654|
 :pattern ( (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@@5 |f#0@@13| |a#2| |b#5|))
))) (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@@5 |inv#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) |b#0@@6|))))) (< (DtRank |$ih#xs0#0|) (DtRank |xs#0@@6|))) (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@0 |inv#0@@1| ($Box DatatypeTypeType |$ih#xs0#0|) (_module.__default.foldr _module._default.FoldR_Property$A _module._default.FoldR_Property$B ($LS $LZ) |f#0@@13| |b#0@@6| |$ih#xs0#0|)))))
 :qid |Foldinglegacydfy.54:108|
 :skolemid |655|
 :pattern ( (_module.__default.foldr _module._default.FoldR_Property$A _module._default.FoldR_Property$B ($LS $LZ) |f#0@@13| |b#0@@6| |$ih#xs0#0|))
)))) (and (=> (= (ControlFlow 0 28) 9) anon13_Then_correct) (=> (= (ControlFlow 0 28) 27) anon13_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (and ($AlwaysAllocated _module._default.FoldR_Property$A) ($AlwaysAllocated _module._default.FoldR_Property$B))) (=> (and (and (and ($Is HandleTypeType |inv#0@@1| (Tclass._System.___hTotalFunc2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool)) ($IsAlloc HandleTypeType |inv#0@@1| (Tclass._System.___hTotalFunc2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool) $Heap@@5)) (and ($Is HandleTypeType |stp#0@@1| (Tclass._System.___hTotalFunc3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool)) ($IsAlloc HandleTypeType |stp#0@@1| (Tclass._System.___hTotalFunc3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool) $Heap@@5))) (and (and ($Is HandleTypeType |f#0@@13| (Tclass._System.___hTotalFunc2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B)) ($IsAlloc HandleTypeType |f#0@@13| (Tclass._System.___hTotalFunc2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B) $Heap@@5)) (and ($IsBox |b#0@@6| _module._default.FoldR_Property$B) ($IsAllocBox |b#0@@6| _module._default.FoldR_Property$B $Heap@@5)))) (=> (and (and (and (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.FoldR_Property$A)) ($IsAlloc DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.FoldR_Property$A) $Heap@@5)) (|$IsA#_module.List| |xs#0@@6|)) (and (and (=> |defass#b'#0_0| (and ($IsBox |b'#0_0| _module._default.FoldR_Property$B) ($IsAllocBox |b'#0_0| _module._default.FoldR_Property$B $Heap@@5))) true) (= 2 $FunctionContextHeight))) (and (and (and (|_module.__default.InvR#canCall| _module._default.FoldR_Property$A _module._default.FoldR_Property$B |inv#0@@1| |stp#0@@1|) (and (_module.__default.InvR _module._default.FoldR_Property$A _module._default.FoldR_Property$B |inv#0@@1| |stp#0@@1|) (forall ((|x#1@@0| T@U) (|xs#2| T@U) (|b#4| T@U) (|b'#1@@0| T@U) ) (!  (=> (and (and (and ($IsBox |x#1@@0| _module._default.FoldR_Property$A) ($Is DatatypeTypeType |xs#2| (Tclass._module.List _module._default.FoldR_Property$A))) ($IsBox |b#4| _module._default.FoldR_Property$B)) ($IsBox |b'#1@@0| _module._default.FoldR_Property$B)) (=> (and (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@@5 |inv#0@@1| ($Box DatatypeTypeType |xs#2|) |b#4|))) (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@@5 |stp#0@@1| |x#1@@0| |b#4| |b'#1@@0|)))) (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@@5 |inv#0@@1| ($Box DatatypeTypeType (|#_module.List.Cons| |x#1@@0| |xs#2|)) |b'#1@@0|)))))
 :qid |Foldinglegacydfy.50:10|
 :skolemid |652|
 :pattern ( (|#_module.List.Cons| |x#1@@0| |xs#2|) ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@@5 |stp#0@@1| |x#1@@0| |b#4| |b'#1@@0|)))
)))) (forall ((|a#1| T@U) (|b#2| T@U) ) (!  (=> (and ($IsBox |a#1| _module._default.FoldR_Property$A) ($IsBox |b#2| _module._default.FoldR_Property$B)) (U_2_bool ($Unbox boolType (Apply3 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B TBool $Heap@@5 |stp#0@@1| |a#1| |b#2| (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@@5 |f#0@@13| |a#1| |b#2|)))))
 :qid |Foldinglegacydfy.56:19|
 :skolemid |653|
 :pattern ( (Apply2 _module._default.FoldR_Property$A _module._default.FoldR_Property$B _module._default.FoldR_Property$B $Heap@@5 |f#0@@13| |a#1| |b#2|))
))) (and (U_2_bool ($Unbox boolType (Apply2 (Tclass._module.List _module._default.FoldR_Property$A) _module._default.FoldR_Property$B TBool $Heap@@5 |inv#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.List.Nil|)) |b#0@@6|))) (= (ControlFlow 0 29) 28)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
