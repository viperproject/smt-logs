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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
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
(declare-fun _module.__default.append (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.append#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.__default.reverse (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.reverse#canCall| (T@U T@U T@U) Bool)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun Tclass._module.List_0 (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$List)
)
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor BoxType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0 T@U) ($ly T@U) (|xs#0| T@U) (|ys#0| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0 (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0| (Tclass._module.List _module._default.append$_T0)) ($Is DatatypeTypeType |ys#0| (Tclass._module.List _module._default.append$_T0))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|xs'#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.append#canCall| _module._default.append$_T0 |xs'#3| (Lit DatatypeTypeType |ys#0|)))) (= (_module.__default.append _module._default.append$_T0 ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) |ys#0| (let ((|xs'#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(let ((|a#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0|)))))
(Lit DatatypeTypeType (|#_module.List.Cons| |a#2| (Lit DatatypeTypeType (_module.__default.append _module._default.append$_T0 ($LS $ly) |xs'#2| (Lit DatatypeTypeType |ys#0|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |622|
 :pattern ( (_module.__default.append _module._default.append$_T0 ($LS $ly) (Lit DatatypeTypeType |xs#0|) (Lit DatatypeTypeType |ys#0|)))
))))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.List#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1112|
 :pattern ( (|_module.List#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.List.Cons_q a@@0) (_module.List.Cons_q b@@0)) (= (|_module.List#Equal| a@@0 b@@0)  (and (= (_module.List.head a@@0) (_module.List.head b@@0)) (|_module.List#Equal| (_module.List.tail a@@0) (_module.List.tail b@@0)))))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( (|_module.List#Equal| a@@0 b@@0) (_module.List.Cons_q a@@0))
 :pattern ( (|_module.List#Equal| a@@0 b@@0) (_module.List.Cons_q b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1099|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0@@0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) (|ys#0@@0| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0@@0 |xs#0@@0| |ys#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.append$_T0@@0)) ($Is DatatypeTypeType |ys#0@@0| (Tclass._module.List _module._default.append$_T0@@0))))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|xs'#1| (_module.List.tail |xs#0@@0|)))
(|_module.__default.append#canCall| _module._default.append$_T0@@0 |xs'#1| |ys#0@@0|))) (= (_module.__default.append _module._default.append$_T0@@0 ($LS $ly@@0) |xs#0@@0| |ys#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) |ys#0@@0| (let ((|xs'#0| (_module.List.tail |xs#0@@0|)))
(let ((|a#0| (_module.List.head |xs#0@@0|)))
(|#_module.List.Cons| |a#0| (_module.__default.append _module._default.append$_T0@@0 $ly@@0 |xs'#0| |ys#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( (_module.__default.append _module._default.append$_T0@@0 ($LS $ly@@0) |xs#0@@0| |ys#0@@0|))
))))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1097|
)))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0 T@U) ($ly@@1 T@U) (|xs#0@@1| T@U) (|acc#0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0 |xs#0@@1| |acc#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List _module._default.reverse$_T0)) ($Is DatatypeTypeType |acc#0| (Tclass._module.List _module._default.reverse$_T0))))) (and (=> (not (_module.List.Nil_q |xs#0@@1|)) (let ((|ys#1| (_module.List.tail |xs#0@@1|)))
(let ((|a#1| (_module.List.head |xs#0@@1|)))
(|_module.__default.reverse#canCall| _module._default.reverse$_T0 |ys#1| (|#_module.List.Cons| |a#1| |acc#0|))))) (= (_module.__default.reverse _module._default.reverse$_T0 ($LS $ly@@1) |xs#0@@1| |acc#0|) (ite (_module.List.Nil_q |xs#0@@1|) |acc#0| (let ((|ys#0@@1| (_module.List.tail |xs#0@@1|)))
(let ((|a#0@@0| (_module.List.head |xs#0@@1|)))
(_module.__default.reverse _module._default.reverse$_T0 $ly@@1 |ys#0@@1| (|#_module.List.Cons| |a#0@@0| |acc#0|))))))))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0 ($LS $ly@@1) |xs#0@@1| |acc#0|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.List.Nil_q a@@1) (_module.List.Nil_q b@@1)) (|_module.List#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( (|_module.List#Equal| a@@1 b@@1) (_module.List.Nil_q a@@1))
 :pattern ( (|_module.List#Equal| a@@1 b@@1) (_module.List.Nil_q b@@1))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1095|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1104|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1106|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0@@0 T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) (|acc#0@@0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@0 |xs#0@@2| |acc#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.reverse$_T0@@0)) ($Is DatatypeTypeType |acc#0@@0| (Tclass._module.List _module._default.reverse$_T0@@0))))) ($Is DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@0 $ly@@2 |xs#0@@2| |acc#0@@0|) (Tclass._module.List _module._default.reverse$_T0@@0)))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@0 $ly@@2 |xs#0@@2| |acc#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0@@1 T@U) ($ly@@3 T@U) (|xs#0@@3| T@U) (|ys#0@@2| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0@@1 |xs#0@@3| |ys#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List _module._default.append$_T0@@1)) ($Is DatatypeTypeType |ys#0@@2| (Tclass._module.List _module._default.append$_T0@@1))))) ($Is DatatypeTypeType (_module.__default.append _module._default.append$_T0@@1 $ly@@3 |xs#0@@3| |ys#0@@2|) (Tclass._module.List _module._default.append$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (_module.__default.append _module._default.append$_T0@@1 $ly@@3 |xs#0@@3| |ys#0@@2|))
))))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1105|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1107|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0@@1 T@U) ($ly@@4 T@U) (|xs#0@@4| T@U) (|acc#0@@1| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@1 (Lit DatatypeTypeType |xs#0@@4|) (Lit DatatypeTypeType |acc#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List _module._default.reverse$_T0@@1)) ($Is DatatypeTypeType |acc#0@@1| (Tclass._module.List _module._default.reverse$_T0@@1))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@4|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@4|)))))
(let ((|a#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@4|)))))
(|_module.__default.reverse#canCall| _module._default.reverse$_T0@@1 |ys#3| (|#_module.List.Cons| |a#3| (Lit DatatypeTypeType |acc#0@@1|)))))) (= (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@4|) (Lit DatatypeTypeType |acc#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@4|)) |acc#0@@1| (let ((|ys#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@4|)))))
(let ((|a#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@4|)))))
(Lit DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@4) |ys#2| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2@@0| (Lit DatatypeTypeType |acc#0@@1|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |597|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@4|) (Lit DatatypeTypeType |acc#0@@1|)))
))))
(assert (forall ((d@@5 T@U) (_module.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.List _module.List$T@@5) $h@@0))) ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@0))
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
 :skolemid |1113|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.reverse$_T0@@2 T@U) ($ly@@5 T@U) (|xs#0@@5| T@U) (|acc#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@2 |xs#0@@5| |acc#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.reverse$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.reverse$_T0@@2) $Heap)) (and ($Is DatatypeTypeType |acc#0@@2| (Tclass._module.List _module._default.reverse$_T0@@2)) ($IsAlloc DatatypeTypeType |acc#0@@2| (Tclass._module.List _module._default.reverse$_T0@@2) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@2 $ly@@5 |xs#0@@5| |acc#0@@2|) (Tclass._module.List _module._default.reverse$_T0@@2) $Heap))
 :qid |GHCMergeSortdfy.24:10|
 :skolemid |594|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@2 $ly@@5 |xs#0@@5| |acc#0@@2|) (Tclass._module.List _module._default.reverse$_T0@@2) $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.append$_T0@@2 T@U) ($ly@@6 T@U) (|xs#0@@6| T@U) (|ys#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.append#canCall| _module._default.append$_T0@@2 |xs#0@@6| |ys#0@@3|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.append$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.append$_T0@@2) $Heap@@0)) (and ($Is DatatypeTypeType |ys#0@@3| (Tclass._module.List _module._default.append$_T0@@2)) ($IsAlloc DatatypeTypeType |ys#0@@3| (Tclass._module.List _module._default.append$_T0@@2) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.__default.append _module._default.append$_T0@@2 $ly@@6 |xs#0@@6| |ys#0@@3|) (Tclass._module.List _module._default.append$_T0@@2) $Heap@@0))
 :qid |GHCMergeSortdfy.45:16|
 :skolemid |619|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.append _module._default.append$_T0@@2 $ly@@6 |xs#0@@6| |ys#0@@3|) (Tclass._module.List _module._default.append$_T0@@2) $Heap@@0))
))))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((_module._default.reverse$_T0@@3 T@U) ($ly@@7 T@U) (|xs#0@@7| T@U) (|acc#0@@3| T@U) ) (! (= (_module.__default.reverse _module._default.reverse$_T0@@3 ($LS $ly@@7) |xs#0@@7| |acc#0@@3|) (_module.__default.reverse _module._default.reverse$_T0@@3 $ly@@7 |xs#0@@7| |acc#0@@3|))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@3 ($LS $ly@@7) |xs#0@@7| |acc#0@@3|))
)))
(assert (forall ((_module._default.append$_T0@@3 T@U) ($ly@@8 T@U) (|xs#0@@8| T@U) (|ys#0@@4| T@U) ) (! (= (_module.__default.append _module._default.append$_T0@@3 ($LS $ly@@8) |xs#0@@8| |ys#0@@4|) (_module.__default.append _module._default.append$_T0@@3 $ly@@8 |xs#0@@8| |ys#0@@4|))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (_module.__default.append _module._default.append$_T0@@3 ($LS $ly@@8) |xs#0@@8| |ys#0@@4|))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@1))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1103|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.append_reverse$_T0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |xs#0@@9| () T@U)
(declare-fun |ys#0@@5| () T@U)
(declare-fun |a#0_0@0| () T@U)
(declare-fun |xs'#0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##acc#0_0_0_0@0| () T@U)
(declare-fun |##xs#0_0_0_0@0| () T@U)
(declare-fun |##xs#0_0_0_3@0| () T@U)
(declare-fun |##acc#0_0_0_1@0| () T@U)
(declare-fun |##xs#0_0_0_2@0| () T@U)
(declare-fun |##acc#0_0_1_0@0| () T@U)
(declare-fun |##xs#0_0_1_1@0| () T@U)
(declare-fun |##ys#0_0_1_0@0| () T@U)
(declare-fun |##xs#0_0_1_0@0| () T@U)
(declare-fun |##acc#0_0_1_1@0| () T@U)
(declare-fun |##xs#0_0_1_3@0| () T@U)
(declare-fun |##acc#0_0_2_0@0| () T@U)
(declare-fun |##xs#0_0_2_0@0| () T@U)
(declare-fun |##xs#0_0_2_2@0| () T@U)
(declare-fun |##ys#0_0_2_0@0| () T@U)
(declare-fun |##acc#0_0_2_1@0| () T@U)
(declare-fun |xs##0_0_2_0@0| () T@U)
(declare-fun |ys##0_0_2_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##acc#0_0_2_2@0| () T@U)
(declare-fun |##xs#0_0_2_5@0| () T@U)
(declare-fun |##ys#0_0_2_2@0| () T@U)
(declare-fun |##xs#0_0_2_4@0| () T@U)
(declare-fun |##acc#0_0_3_0@0| () T@U)
(declare-fun |##xs#0_0_3_0@0| () T@U)
(declare-fun |##ys#0_0_3_0@0| () T@U)
(declare-fun |##acc#0_0_3_1@0| () T@U)
(declare-fun |##xs#0_0_3_2@0| () T@U)
(declare-fun |##xs#0_0_3_4@0| () T@U)
(declare-fun |##ys#0_0_3_1@0| () T@U)
(declare-fun |##acc#0_0_4_0@0| () T@U)
(declare-fun |##acc#0_0_4_1@0| () T@U)
(declare-fun |##xs#0_0_4_1@0| () T@U)
(declare-fun |##ys#0_0_4_0@0| () T@U)
(declare-fun |##xs#0_0_5_0@0| () T@U)
(declare-fun |##acc#0_0_5_1@0| () T@U)
(declare-fun |_mcc#0#0_0@0| () T@U)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@1 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.append__reverse)
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
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (|_module.List#Equal| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs#0@@9| |ys#0@@5|) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs#0@@9| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|)))))
(let ((anon20_Else_correct  (=> (and (|_module.List#Equal| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) |ys#0@@5|) (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|)) (= (ControlFlow 0 18) 16)) GeneratedUnifiedExit_correct)))
(let ((anon12_Then_correct  (=> (and (= |xs#0@@9| |#_module.List.Nil|) (= (ControlFlow 0 17) 16)) GeneratedUnifiedExit_correct)))
(let ((anon20_Then_correct  (=> (and (and (and ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##acc#0_0_0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsAlloc DatatypeTypeType |##acc#0_0_0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (and (= |##xs#0_0_0_0@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|)))) (=> (and (and (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|)) (= |##xs#0_0_0_3@0| (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|))) (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_3@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##acc#0_0_0_1@0| (Lit DatatypeTypeType |#_module.List.Nil|))) (and ($IsAlloc DatatypeTypeType |##acc#0_0_0_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (and (and (= |##xs#0_0_0_2@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) (Lit DatatypeTypeType |#_module.List.Nil|))) ($IsAlloc DatatypeTypeType |##xs#0_0_0_2@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|))) (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|)) (= (ControlFlow 0 14) (- 0 13))))) (|_module.List#Equal| (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|))))))
(let ((anon19_Then_correct  (=> ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (=> (and (and (= |##acc#0_0_1_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#0_0_1_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= |##xs#0_0_1_1@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))))) (=> (and (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_1_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##ys#0_0_1_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_1_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (and (= |##xs#0_0_1_0@0| (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) ($IsAlloc DatatypeTypeType |##xs#0_0_1_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|)))) (=> (and (and (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|)) (and (and ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##acc#0_0_1_1@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsAlloc DatatypeTypeType |##acc#0_0_1_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))))) (and (and (and (= |##xs#0_0_1_3@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) ($IsAlloc DatatypeTypeType |##xs#0_0_1_3@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|))) (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|)) (= (ControlFlow 0 12) (- 0 11))))) (|_module.List#Equal| (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|))))))))
(let ((anon18_Then_correct  (=> ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (=> (and (and (= |##acc#0_0_2_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#0_0_2_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= |##xs#0_0_2_0@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))))) (=> (and (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_2_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##xs#0_0_2_2@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_2_2@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0))) (and (and (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|) (= |##ys#0_0_2_0@0| (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_2_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|))))) (=> (and (and (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|))) ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and (and (and (= |##acc#0_0_2_1@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#0_0_2_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and (and (= |xs##0_0_2_0@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) (= |ys##0_0_2_0@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))))) (=> (and (and (and (and (and (and (|$IsA#_module.List| (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) |xs##0_0_2_0@0| (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) |ys##0_0_2_0@0| |ys#0@@5|))) (|$IsA#_module.List| (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) |xs##0_0_2_0@0| |ys##0_0_2_0@0|) |ys#0@@5|))) (and (and (|_module.__default.append#canCall| _module._default.append_reverse$_T0 |ys##0_0_2_0@0| |ys#0@@5|) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 |xs##0_0_2_0@0| (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) |ys##0_0_2_0@0| |ys#0@@5|))) (and (|_module.__default.append#canCall| _module._default.append_reverse$_T0 |xs##0_0_2_0@0| |ys##0_0_2_0@0|) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) |xs##0_0_2_0@0| |ys##0_0_2_0@0|) |ys#0@@5|)))) (|_module.List#Equal| (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs##0_0_2_0@0| (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |ys##0_0_2_0@0| |ys#0@@5|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs##0_0_2_0@0| |ys##0_0_2_0@0|) |ys#0@@5|))) (and (= $Heap@0 $Heap@1) ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@1))) (and (and (= |##acc#0_0_2_2@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#0_0_2_2@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@1)) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= |##xs#0_0_2_5@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))))) (and (and (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_2_5@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@1) (= |##ys#0_0_2_2@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_2_2@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@1) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (and (= |##xs#0_0_2_4@0| (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) ($IsAlloc DatatypeTypeType |##xs#0_0_2_4@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@1)) (and ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@1) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|)))) (and (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|)) (= (ControlFlow 0 10) (- 0 9))))) (|_module.List#Equal| (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |ys#0@@5|)))))))))
(let ((anon17_Then_correct  (=> ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (=> (and (and (and (and (and (= |##acc#0_0_3_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#0_0_3_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= |##xs#0_0_3_0@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_3_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##ys#0_0_3_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_3_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))))) (and (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))) ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and (and (= |##acc#0_0_3_1@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#0_0_3_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= |##xs#0_0_3_2@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))))))) (and (and (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_3_2@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##xs#0_0_3_4@0| (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_3_4@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0))) (and (and (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|) (= |##ys#0_0_3_1@0| (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_3_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|))))) (and (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|))) (= (ControlFlow 0 8) (- 0 7))))) (|_module.List#Equal| (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |ys#0@@5|)))))))
(let ((anon16_Then_correct  (=> (and ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##acc#0_0_4_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |##acc#0_0_4_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|)) ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0))) (and (and (= |##acc#0_0_4_1@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#0_0_4_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= |##xs#0_0_4_1@0| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)))))) (and (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_4_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##ys#0_0_4_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))) (and ($IsAlloc DatatypeTypeType |##ys#0_0_4_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|)))) (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.append#canCall| _module._default.append_reverse$_T0 (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))) (= (ControlFlow 0 6) (- 0 5))))) (|_module.List#Equal| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|)) (_module.__default.append _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|)))))))
(let ((anon15_Then_correct  (=> (= |##xs#0_0_5_0@0| (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|)) (=> (and ($IsAlloc DatatypeTypeType |##xs#0_0_5_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (=> (and (and (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) |ys#0@@5|) (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) |ys#0@@5|)) (and ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (= |##acc#0_0_5_1@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|)))) (and (and ($IsAlloc DatatypeTypeType |##acc#0_0_5_1@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0) (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))) (and (|_module.__default.reverse#canCall| _module._default.append_reverse$_T0 |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|)) (= (ControlFlow 0 4) (- 0 3))))) (|_module.List#Equal| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0_0@0| |xs'#0_0@0|) |ys#0@@5|) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS ($LS $LZ)) |xs'#0_0@0| (|#_module.List.Cons| |a#0_0@0| |ys#0@@5|))))))))
(let ((anon14_Then_correct true))
(let ((anon13_Then_correct  (=> (= |xs#0@@9| (|#_module.List.Cons| |_mcc#0#0_0@0| |_mcc#1#0_0@0|)) (=> (and ($IsBox |_mcc#0#0_0@0| _module._default.append_reverse$_T0) ($Is DatatypeTypeType |_mcc#1#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0))) (=> (and (and (and (and ($Is DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0)) ($IsAlloc DatatypeTypeType |xs'#0_0@0| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@0)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| (Tclass._module.List _module._default.append_reverse$_T0)) (= |xs'#0_0@0| |let#0_0#0#0|))) (and (and (and ($IsBox |a#0_0@0| _module._default.append_reverse$_T0) ($IsAllocBox |a#0_0@0| _module._default.append_reverse$_T0 $Heap@0)) (= |let#0_1#0#0| |_mcc#0#0_0@0|)) (and ($IsBox |let#0_1#0#0| _module._default.append_reverse$_T0) (= |a#0_0@0| |let#0_1#0#0|)))) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 19) 2) anon14_Then_correct) (=> (= (ControlFlow 0 19) 4) anon15_Then_correct)) (=> (= (ControlFlow 0 19) 6) anon16_Then_correct)) (=> (= (ControlFlow 0 19) 8) anon17_Then_correct)) (=> (= (ControlFlow 0 19) 10) anon18_Then_correct)) (=> (= (ControlFlow 0 19) 12) anon19_Then_correct)) (=> (= (ControlFlow 0 19) 14) anon20_Then_correct)) (=> (= (ControlFlow 0 19) 18) anon20_Else_correct)))))))
(let ((anon13_Else_correct true))
(let ((anon12_Else_correct  (=> (or (not (= |xs#0@@9| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 20) 19) anon13_Then_correct) (=> (= (ControlFlow 0 20) 1) anon13_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (|$IsA#_module.List| |xs#0@@9|) (|$IsA#_module.List| |ys#0@@5|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@1 $Heap@0) (forall ((|$ih#xs0#0| T@U) (|$ih#ys0#0| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |$ih#xs0#0| (Tclass._module.List _module._default.append_reverse$_T0)) ($Is DatatypeTypeType |$ih#ys0#0| (Tclass._module.List _module._default.append_reverse$_T0))) (U_2_bool (Lit boolType (bool_2_U true)))) (or (< (DtRank |$ih#xs0#0|) (DtRank |xs#0@@9|)) (and (= (DtRank |$ih#xs0#0|) (DtRank |xs#0@@9|)) (< (DtRank |$ih#ys0#0|) (DtRank |ys#0@@5|))))) (|_module.List#Equal| (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |$ih#xs0#0| |$ih#ys0#0|) (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |$ih#xs0#0| (Lit DatatypeTypeType |#_module.List.Nil|)) |$ih#ys0#0|)))
 :qid |GHCMergeSortdfy.705:22|
 :skolemid |1089|
 :pattern ( (_module.__default.append _module._default.append_reverse$_T0 ($LS $LZ) (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |$ih#xs0#0| (Lit DatatypeTypeType |#_module.List.Nil|)) |$ih#ys0#0|))
 :pattern ( (_module.__default.reverse _module._default.append_reverse$_T0 ($LS $LZ) |$ih#xs0#0| |$ih#ys0#0|))
)))) (and (=> (= (ControlFlow 0 21) 17) anon12_Then_correct) (=> (= (ControlFlow 0 21) 20) anon12_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List _module._default.append_reverse$_T0)) ($IsAlloc DatatypeTypeType |xs#0@@9| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@@1)) (|$IsA#_module.List| |xs#0@@9|)) (=> (and (and (and ($Is DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0)) ($IsAlloc DatatypeTypeType |ys#0@@5| (Tclass._module.List _module._default.append_reverse$_T0) $Heap@@1)) (|$IsA#_module.List| |ys#0@@5|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
