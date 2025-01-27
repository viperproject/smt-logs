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
(declare-fun TagMultiSet () T@U)
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
(declare-fun _module.__default.AllSorted (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.AllSorted#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun Tclass._module.G () T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |_module.__default.sorted#canCall| (T@U) Bool)
(declare-fun _module.__default.sorted (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.__default.append (T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.append#canCall| (T@U T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun _module.__default.sequences (T@U T@U) T@U)
(declare-fun |_module.__default.sequences#canCall| (T@U) Bool)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _module.__default.length (T@U T@U T@U) Int)
(declare-fun |_module.__default.length#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.__default.ascending (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.ascending#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun |_module.__default.Below#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.Below (T@U T@U) Bool)
(declare-fun |_module.__default.reverse#canCall| (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.reverse (T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.multiset__of (T@U T@U T@U) T@U)
(declare-fun _module.__default.flatten (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun _module.__default.merge (T@U T@U T@U) T@U)
(declare-fun |_module.__default.merge#canCall| (T@U T@U) Bool)
(declare-fun |_module.__default.flatten#canCall| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.__default.mergePairs (T@U T@U) T@U)
(declare-fun |_module.__default.mergePairs#canCall| (T@U) Bool)
(declare-fun _module.__default.descending (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.descending#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.__default.multiset__of#canCall| (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun _module.__default.sort (T@U) T@U)
(declare-fun |_module.__default.sort#canCall| (T@U) Bool)
(declare-fun |_module.__default.mergeAll#canCall| (T@U) Bool)
(declare-fun _module.__default.mergeAll (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |_module.__default.key#canCall| (T@U) Bool)
(declare-fun _module.__default.key (T@U) Int)
(declare-fun _module.__default.filter (T@U T@U T@U) T@U)
(declare-fun |_module.__default.filter#canCall| (T@U T@U) Bool)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun Inv0_TMultiSet (T@U) T@U)
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
(assert (distinct TagMultiSet alloc Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$List)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|x#0| T@U) ) (!  (=> (or (|_module.__default.AllSorted#canCall| |x#0|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0| (Tclass._module.List (Tclass._module.List Tclass._module.G))))) (and (=> (not (_module.List.Nil_q |x#0|)) (let ((|y#1| (_module.List.tail |x#0|)))
(let ((|xs#1| ($Unbox DatatypeTypeType (_module.List.head |x#0|))))
 (and (|_module.__default.sorted#canCall| |xs#1|) (=> (_module.__default.sorted ($LS $LZ) |xs#1|) (|_module.__default.AllSorted#canCall| |y#1|)))))) (= (_module.__default.AllSorted ($LS $ly) |x#0|) (ite (_module.List.Nil_q |x#0|) true (let ((|y#0| (_module.List.tail |x#0|)))
(let ((|xs#0| ($Unbox DatatypeTypeType (_module.List.head |x#0|))))
 (and (_module.__default.sorted ($LS $LZ) |xs#0|) (_module.__default.AllSorted $ly |y#0|))))))))
 :qid |GHCMergeSortdfy.315:17|
 :skolemid |796|
 :pattern ( (_module.__default.AllSorted ($LS $ly) |x#0|))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) (|ys#0| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0 (Lit DatatypeTypeType |xs#0@@0|) (Lit DatatypeTypeType |ys#0|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.append$_T0)) ($Is DatatypeTypeType |ys#0| (Tclass._module.List _module._default.append$_T0))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@0|)))))) (let ((|xs'#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@0|)))))
(|_module.__default.append#canCall| _module._default.append$_T0 |xs'#3| (Lit DatatypeTypeType |ys#0|)))) (= (_module.__default.append _module._default.append$_T0 ($LS $ly@@0) (Lit DatatypeTypeType |xs#0@@0|) (Lit DatatypeTypeType |ys#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@0|)) |ys#0| (let ((|xs'#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@0|)))))
(let ((|a#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@0|)))))
(Lit DatatypeTypeType (|#_module.List.Cons| |a#2| (Lit DatatypeTypeType (_module.__default.append _module._default.append$_T0 ($LS $ly@@0) |xs'#2| (Lit DatatypeTypeType |ys#0|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |622|
 :pattern ( (_module.__default.append _module._default.append$_T0 ($LS $ly@@0) (Lit DatatypeTypeType |xs#0@@0|) (Lit DatatypeTypeType |ys#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|xs#0@@1| T@U) ) (!  (=> (or (|_module.__default.sequences#canCall| |xs#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List Tclass._module.G)))) (and (not (|_module.List#Equal| (_module.__default.sequences $ly@@1 |xs#0@@1|) |#_module.List.Nil|)) ($Is DatatypeTypeType (_module.__default.sequences $ly@@1 |xs#0@@1|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.85:10|
 :skolemid |651|
 :pattern ( (_module.__default.sequences $ly@@1 |xs#0@@1|))
))))
(assert ($AlwaysAllocated Tclass._module.G))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0 T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0 (Lit DatatypeTypeType |xs#0@@2|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.length$_T0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(|_module.__default.length#canCall| _module._default.length$_T0 |ys#3|))) (= (_module.__default.length _module._default.length$_T0 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)) 0 (let ((|ys#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(LitInt (+ 1 (_module.__default.length _module._default.length$_T0 ($LS $ly@@2) |ys#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |589|
 :pattern ( (_module.__default.length _module._default.length$_T0 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|a#0| T@U) (|xs#0@@3| T@U) (|ys#0@@0| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| |a#0| |xs#0@@3| |ys#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@0| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (_module.List.Cons_q |ys#0@@0|) (|_module.__default.Below#canCall| |a#0| (_module.List.head |ys#0@@0|))) (=> (and (_module.List.Cons_q |ys#0@@0|) (_module.__default.Below |a#0| (_module.List.head |ys#0@@0|))) (|_module.__default.ascending#canCall| (_module.List.head |ys#0@@0|) (|#_module.List.Cons| |a#0| |xs#0@@3|) (_module.List.tail |ys#0@@0|)))) (=> (not (and (_module.List.Cons_q |ys#0@@0|) (_module.__default.Below |a#0| (_module.List.head |ys#0@@0|)))) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0| |xs#0@@3|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| |ys#0@@0|)))) (= (_module.__default.ascending ($LS $ly@@3) |a#0| |xs#0@@3| |ys#0@@0|) (ite  (and (_module.List.Cons_q |ys#0@@0|) (_module.__default.Below |a#0| (_module.List.head |ys#0@@0|))) (_module.__default.ascending $ly@@3 (_module.List.head |ys#0@@0|) (|#_module.List.Cons| |a#0| |xs#0@@3|) (_module.List.tail |ys#0@@0|)) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0| |xs#0@@3|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences $ly@@3 |ys#0@@0|))))))
 :qid |GHCMergeSortdfy.107:10|
 :skolemid |672|
 :pattern ( (_module.__default.ascending ($LS $ly@@3) |a#0| |xs#0@@3| |ys#0@@0|))
))))
(assert (forall ((_module._default.length$_T0@@0 T@U) ($ly@@4 T@U) (|xs#0@@4| T@U) ) (! (= (_module.__default.length _module._default.length$_T0@@0 ($LS $ly@@4) |xs#0@@4|) (_module.__default.length _module._default.length$_T0@@0 $ly@@4 |xs#0@@4|))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.__default.length _module._default.length$_T0@@0 ($LS $ly@@4) |xs#0@@4|))
)))
(assert (forall ((_module._default.multiset_of$T T@U) ($ly@@5 T@U) (|xs#0@@5| T@U) ) (! (= (_module.__default.multiset__of _module._default.multiset_of$T ($LS $ly@@5) |xs#0@@5|) (_module.__default.multiset__of _module._default.multiset_of$T $ly@@5 |xs#0@@5|))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T ($LS $ly@@5) |xs#0@@5|))
)))
(assert (forall ((_module._default.flatten$_T0 T@U) ($ly@@6 T@U) (|x#0@@0| T@U) ) (! (= (_module.__default.flatten _module._default.flatten$_T0 ($LS $ly@@6) |x#0@@0|) (_module.__default.flatten _module._default.flatten$_T0 $ly@@6 |x#0@@0|))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( (_module.__default.flatten _module._default.flatten$_T0 ($LS $ly@@6) |x#0@@0|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (Ctor MultiSetType) 5))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|xs#0@@6| T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|_module.__default.merge#canCall| (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@1|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List Tclass._module.G)) ($Is DatatypeTypeType |ys#0@@1| (Tclass._module.List Tclass._module.G))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@6|)))))) (let ((|xs'#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@6|)))))
(let ((|a#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@6|)))))
 (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |ys#0@@1|)))))) (let ((|ys'#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@1|)))))
(let ((|b#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@1|)))))
 (and (and (|_module.__default.Below#canCall| |a#3| |b#3|) (=> (_module.__default.Below |a#3| |b#3|) (|_module.__default.merge#canCall| |xs'#3@@0| (Lit DatatypeTypeType |ys#0@@1|)))) (=> (not (_module.__default.Below |a#3| |b#3|)) (|_module.__default.merge#canCall| (Lit DatatypeTypeType |xs#0@@6|) |ys'#3|))))))))) (= (_module.__default.merge ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@6|)) |ys#0@@1| (let ((|xs'#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@6|)))))
(let ((|a#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@6|)))))
(ite (_module.List.Nil_q (Lit DatatypeTypeType |ys#0@@1|)) |xs#0@@6| (let ((|ys'#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@1|)))))
(let ((|b#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@1|)))))
(ite (_module.__default.Below |a#2@@0| |b#2|) (|#_module.List.Cons| |a#2@@0| (Lit DatatypeTypeType (_module.__default.merge ($LS $ly@@7) |xs'#2@@0| (Lit DatatypeTypeType |ys#0@@1|)))) (|#_module.List.Cons| |b#2| (Lit DatatypeTypeType (_module.__default.merge ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@6|) |ys'#2|)))))))))))))
 :qid |GHCMergeSortdfy.138:10|
 :weight 3
 :skolemid |700|
 :pattern ( (_module.__default.merge ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@1|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.flatten$_T0@@0 T@U) ($ly@@8 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.__default.flatten#canCall| _module._default.flatten$_T0@@0 (Lit DatatypeTypeType |x#0@@1|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@1| (Tclass._module.List (Tclass._module.List _module._default.flatten$_T0@@0))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |x#0@@1|)))))) (let ((|y#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@1|)))))
(let ((|xs#3| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@1|))))))
 (and (|_module.__default.flatten#canCall| _module._default.flatten$_T0@@0 |y#3|) (|_module.__default.append#canCall| _module._default.flatten$_T0@@0 |xs#3| (_module.__default.flatten _module._default.flatten$_T0@@0 ($LS $ly@@8) |y#3|)))))) (= (_module.__default.flatten _module._default.flatten$_T0@@0 ($LS $ly@@8) (Lit DatatypeTypeType |x#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |x#0@@1|)) |#_module.List.Nil| (let ((|y#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@1|)))))
(let ((|xs#2| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@1|))))))
(Lit DatatypeTypeType (_module.__default.append _module._default.flatten$_T0@@0 ($LS $LZ) |xs#2| (Lit DatatypeTypeType (_module.__default.flatten _module._default.flatten$_T0@@0 ($LS $ly@@8) |y#2|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |632|
 :pattern ( (_module.__default.flatten _module._default.flatten$_T0@@0 ($LS $ly@@8) (Lit DatatypeTypeType |x#0@@1|)))
))))
(assert (forall ((_module.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@9 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.__default.mergePairs#canCall| |x#0@@2|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@2| (Tclass._module.List (Tclass._module.List Tclass._module.G))))) (and (and (and (<= (_module.__default.length (Tclass._module.List Tclass._module.G) ($LS $LZ) (_module.__default.mergePairs $ly@@9 |x#0@@2|)) (_module.__default.length (Tclass._module.List Tclass._module.G) ($LS $LZ) |x#0@@2|)) (=> (and (_module.List.Cons_q |x#0@@2|) (_module.List.Cons_q (_module.List.tail |x#0@@2|))) (< (_module.__default.length (Tclass._module.List Tclass._module.G) ($LS $LZ) (_module.__default.mergePairs $ly@@9 |x#0@@2|)) (_module.__default.length (Tclass._module.List Tclass._module.G) ($LS $LZ) |x#0@@2|)))) (=> (not (|_module.List#Equal| |x#0@@2| |#_module.List.Nil|)) (not (|_module.List#Equal| (_module.__default.mergePairs $ly@@9 |x#0@@2|) |#_module.List.Nil|)))) ($Is DatatypeTypeType (_module.__default.mergePairs $ly@@9 |x#0@@2|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.127:10|
 :skolemid |689|
 :pattern ( (_module.__default.mergePairs $ly@@9 |x#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) (|a#0@@0| T@U) (|xs#0@@7| T@U) (|ys#0@@2| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@0| |xs#0@@7| |ys#0@@2|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@0| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@2| (Tclass._module.List Tclass._module.G))))) (and (not (|_module.List#Equal| (_module.__default.descending $ly@@10 |a#0@@0| |xs#0@@7| |ys#0@@2|) |#_module.List.Nil|)) ($Is DatatypeTypeType (_module.__default.descending $ly@@10 |a#0@@0| |xs#0@@7| |ys#0@@2|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |660|
 :pattern ( (_module.__default.descending $ly@@10 |a#0@@0| |xs#0@@7| |ys#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@11 T@U) (|a#0@@1| T@U) (|xs#0@@8| T@U) (|ys#0@@3| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| |a#0@@1| |xs#0@@8| |ys#0@@3|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@1| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@8| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@3| (Tclass._module.List Tclass._module.G))))) (and (not (|_module.List#Equal| (_module.__default.ascending $ly@@11 |a#0@@1| |xs#0@@8| |ys#0@@3|) |#_module.List.Nil|)) ($Is DatatypeTypeType (_module.__default.ascending $ly@@11 |a#0@@1| |xs#0@@8| |ys#0@@3|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.107:10|
 :skolemid |670|
 :pattern ( (_module.__default.ascending $ly@@11 |a#0@@1| |xs#0@@8| |ys#0@@3|))
))))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@0 T@U) ($ly@@12 T@U) (|xs#0@@9| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@0 |xs#0@@9|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List _module._default.multiset_of$T@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@9|)) (let ((|ys#1| (_module.List.tail |xs#0@@9|)))
(|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@0 |ys#1|))) (= (_module.__default.multiset__of _module._default.multiset_of$T@@0 ($LS $ly@@12) |xs#0@@9|) (ite (_module.List.Nil_q |xs#0@@9|) |MultiSet#Empty| (let ((|ys#0@@4| (_module.List.tail |xs#0@@9|)))
(let ((|a#0@@2| (_module.List.head |xs#0@@9|)))
(|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0@@2|) (_module.__default.multiset__of _module._default.multiset_of$T@@0 $ly@@12 |ys#0@@4|))))))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@0 ($LS $ly@@12) |xs#0@@9|))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@13 T@U) (|a#0@@3| T@U) (|xs#0@@10| T@U) (|ys#0@@5| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@10|) (Lit DatatypeTypeType |ys#0@@5|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@3| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@5| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@5|))))) (|_module.__default.Below#canCall| (Lit BoxType |a#0@@3|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@5|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@3|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))))))))) (|_module.__default.descending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@10|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@5|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@5|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@3|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|)))))))))) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@5|)))) (= (_module.__default.descending ($LS $ly@@13) (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@10|) (Lit DatatypeTypeType |ys#0@@5|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@5|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@3|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))))))))) (_module.__default.descending ($LS $ly@@13) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@10|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@5|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@10|)))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@13) (Lit DatatypeTypeType |ys#0@@5|))))))))
 :qid |GHCMergeSortdfy.97:10|
 :weight 3
 :skolemid |664|
 :pattern ( (_module.__default.descending ($LS $ly@@13) (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@10|) (Lit DatatypeTypeType |ys#0@@5|)))
))))
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
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|xs#0@@11| T@U) ) (!  (=> (or (|_module.__default.sort#canCall| (Lit DatatypeTypeType |xs#0@@11|)) (and (< 5 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@11| (Tclass._module.List Tclass._module.G)))) (and (and (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |xs#0@@11|)) (|_module.__default.mergeAll#canCall| (Lit DatatypeTypeType (_module.__default.sequences ($LS $LZ) (Lit DatatypeTypeType |xs#0@@11|))))) (= (_module.__default.sort (Lit DatatypeTypeType |xs#0@@11|)) (Lit DatatypeTypeType (_module.__default.mergeAll ($LS $LZ) (Lit DatatypeTypeType (_module.__default.sequences ($LS $LZ) (Lit DatatypeTypeType |xs#0@@11|))))))))
 :qid |GHCMergeSortdfy.80:15|
 :weight 3
 :skolemid |646|
 :pattern ( (_module.__default.sort (Lit DatatypeTypeType |xs#0@@11|)))
))))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1099|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@14 T@U) (|x#0@@3| T@U) ) (!  (=> (or (|_module.__default.AllSorted#canCall| (Lit DatatypeTypeType |x#0@@3|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@3| (Tclass._module.List (Tclass._module.List Tclass._module.G))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |x#0@@3|)))))) (let ((|y#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@3|)))))
(let ((|xs#3@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@3|))))))
 (and (|_module.__default.sorted#canCall| |xs#3@@0|) (=> (_module.__default.sorted ($LS $LZ) |xs#3@@0|) (|_module.__default.AllSorted#canCall| |y#3@@0|)))))) (= (_module.__default.AllSorted ($LS $ly@@14) (Lit DatatypeTypeType |x#0@@3|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |x#0@@3|)) true (U_2_bool (let ((|y#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@3|)))))
(let ((|xs#2@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@3|))))))
(Lit boolType (bool_2_U  (and (_module.__default.sorted ($LS $LZ) |xs#2@@0|) (_module.__default.AllSorted ($LS $ly@@14) |y#2@@0|)))))))))))
 :qid |GHCMergeSortdfy.315:17|
 :weight 3
 :skolemid |797|
 :pattern ( (_module.__default.AllSorted ($LS $ly@@14) (Lit DatatypeTypeType |x#0@@3|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0@@0 T@U) ($ly@@15 T@U) (|xs#0@@12| T@U) (|ys#0@@6| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0@@0 |xs#0@@12| |ys#0@@6|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@12| (Tclass._module.List _module._default.append$_T0@@0)) ($Is DatatypeTypeType |ys#0@@6| (Tclass._module.List _module._default.append$_T0@@0))))) (and (=> (not (_module.List.Nil_q |xs#0@@12|)) (let ((|xs'#1| (_module.List.tail |xs#0@@12|)))
(|_module.__default.append#canCall| _module._default.append$_T0@@0 |xs'#1| |ys#0@@6|))) (= (_module.__default.append _module._default.append$_T0@@0 ($LS $ly@@15) |xs#0@@12| |ys#0@@6|) (ite (_module.List.Nil_q |xs#0@@12|) |ys#0@@6| (let ((|xs'#0| (_module.List.tail |xs#0@@12|)))
(let ((|a#0@@4| (_module.List.head |xs#0@@12|)))
(|#_module.List.Cons| |a#0@@4| (_module.__default.append _module._default.append$_T0@@0 $ly@@15 |xs'#0| |ys#0@@6|))))))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( (_module.__default.append _module._default.append$_T0@@0 ($LS $ly@@15) |xs#0@@12| |ys#0@@6|))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@16 T@U) (|xs#0@@13| T@U) ) (!  (=> (or (|_module.__default.sorted#canCall| (Lit DatatypeTypeType |xs#0@@13|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@13| (Tclass._module.List Tclass._module.G)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@13|)))))) (let ((|ys#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@13|)))))
(let ((|a#3@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@13|)))))
 (and (forall ((|y#3@@1| T@U) ) (!  (=> ($IsBox |y#3@@1| Tclass._module.G) (and (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#3@@0|) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#3@@0|) |y#3@@1|) 0) (|_module.__default.Below#canCall| |a#3@@0| |y#3@@1|))))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |713|
 :pattern ( (_module.__default.Below |a#3@@0| |y#3@@1|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#3@@0|) |y#3@@1|))
)) (=> (forall ((|y#3@@2| T@U) ) (!  (=> ($IsBox |y#3@@2| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#3@@0|) |y#3@@2|) 0) (_module.__default.Below |a#3@@0| |y#3@@2|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |714|
 :pattern ( (_module.__default.Below |a#3@@0| |y#3@@2|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#3@@0|) |y#3@@2|))
)) (|_module.__default.sorted#canCall| |ys#3@@0|)))))) (= (_module.__default.sorted ($LS $ly@@16) (Lit DatatypeTypeType |xs#0@@13|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@13|)) true (let ((|ys#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@13|)))))
(let ((|a#2@@1| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@13|)))))
 (and (forall ((|y#2@@1| T@U) ) (!  (=> ($IsBox |y#2@@1| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (Lit MultiSetType (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#2@@0|)) |y#2@@1|) 0) (_module.__default.Below |a#2@@1| |y#2@@1|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |712|
 :pattern ( (_module.__default.Below |a#2@@1| |y#2@@1|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#2@@0|) |y#2@@1|))
)) (_module.__default.sorted ($LS $ly@@16) |ys#2@@0|))))))))
 :qid |GHCMergeSortdfy.151:17|
 :weight 3
 :skolemid |715|
 :pattern ( (_module.__default.sorted ($LS $ly@@16) (Lit DatatypeTypeType |xs#0@@13|)))
))))
(assert (forall ((a@@1 T@U) (x@@5 T@U) (y T@U) ) (!  (=> (or (not (= x@@5 y)) (not true)) (= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@1 x@@5) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@1 x@@5) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@1 T@U) ($ly@@17 T@U) (|xs#0@@14| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@1 (Lit DatatypeTypeType |xs#0@@14|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@14| (Tclass._module.List _module._default.multiset_of$T@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@14|)))))) (let ((|ys#3@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@14|)))))
(|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@1 |ys#3@@1|))) (= (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@17) (Lit DatatypeTypeType |xs#0@@14|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@14|)) |MultiSet#Empty| (let ((|ys#2@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@14|)))))
(let ((|a#2@@2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@14|)))))
(|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#2@@2|) (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@17) |ys#2@@1|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |605|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@17) (Lit DatatypeTypeType |xs#0@@14|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@18 T@U) (|a#0@@5| T@U) (|xs#0@@15| T@U) (|ys#0@@7| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@5| |xs#0@@15| |ys#0@@7|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@5| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@15| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@7| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (_module.List.Cons_q |ys#0@@7|) (|_module.__default.Below#canCall| |a#0@@5| (_module.List.head |ys#0@@7|))) (=> (and (_module.List.Cons_q |ys#0@@7|) (not (_module.__default.Below |a#0@@5| (_module.List.head |ys#0@@7|)))) (|_module.__default.descending#canCall| (_module.List.head |ys#0@@7|) (|#_module.List.Cons| |a#0@@5| |xs#0@@15|) (_module.List.tail |ys#0@@7|)))) (=> (not (and (_module.List.Cons_q |ys#0@@7|) (not (_module.__default.Below |a#0@@5| (_module.List.head |ys#0@@7|))))) (|_module.__default.sequences#canCall| |ys#0@@7|))) (= (_module.__default.descending ($LS $ly@@18) |a#0@@5| |xs#0@@15| |ys#0@@7|) (ite  (and (_module.List.Cons_q |ys#0@@7|) (not (_module.__default.Below |a#0@@5| (_module.List.head |ys#0@@7|)))) (_module.__default.descending $ly@@18 (_module.List.head |ys#0@@7|) (|#_module.List.Cons| |a#0@@5| |xs#0@@15|) (_module.List.tail |ys#0@@7|)) (|#_module.List.Cons| ($Box DatatypeTypeType (|#_module.List.Cons| |a#0@@5| |xs#0@@15|)) (_module.__default.sequences $ly@@18 |ys#0@@7|))))))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |662|
 :pattern ( (_module.__default.descending ($LS $ly@@18) |a#0@@5| |xs#0@@15| |ys#0@@7|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1097|
)))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@6| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| (Lit BoxType |a#0@@6|) (Lit BoxType |b#0|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@6| Tclass._module.G) ($IsBox |b#0| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| (Lit BoxType |a#0@@6|)) (|_module.__default.key#canCall| (Lit BoxType |b#0|))) (= (_module.__default.Below (Lit BoxType |a#0@@6|) (Lit BoxType |b#0|)) (<= (_module.__default.key (Lit BoxType |a#0@@6|)) (_module.__default.key (Lit BoxType |b#0|))))))
 :qid |GHCMergeSortdfy.75:17|
 :weight 3
 :skolemid |640|
 :pattern ( (_module.__default.Below (Lit BoxType |a#0@@6|) (Lit BoxType |b#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@19 T@U) (|g#0| T@U) (|xs#0@@16| T@U) ) (!  (=> (or (|_module.__default.filter#canCall| |g#0| (Lit DatatypeTypeType |xs#0@@16|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |g#0| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@16| (Tclass._module.List Tclass._module.G))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@16|)))))) (let ((|ys#3@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@16|)))))
(let ((|b#3@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@16|)))))
 (and (and (and (|_module.__default.key#canCall| |g#0|) (|_module.__default.key#canCall| |b#3@@0|)) (=> (= (_module.__default.key |g#0|) (_module.__default.key |b#3@@0|)) (|_module.__default.filter#canCall| |g#0| |ys#3@@2|))) (=> (or (not (= (_module.__default.key |g#0|) (_module.__default.key |b#3@@0|))) (not true)) (|_module.__default.filter#canCall| |g#0| |ys#3@@2|)))))) (= (_module.__default.filter ($LS $ly@@19) |g#0| (Lit DatatypeTypeType |xs#0@@16|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@16|)) |#_module.List.Nil| (let ((|ys#2@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@16|)))))
(let ((|b#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@16|)))))
(ite (= (_module.__default.key |g#0|) (_module.__default.key |b#2@@0|)) (|#_module.List.Cons| |b#2@@0| (_module.__default.filter ($LS $ly@@19) |g#0| |ys#2@@2|)) (_module.__default.filter ($LS $ly@@19) |g#0| |ys#2@@2|))))))))
 :qid |GHCMergeSortdfy.160:16|
 :weight 3
 :skolemid |729|
 :pattern ( (_module.__default.filter ($LS $ly@@19) |g#0| (Lit DatatypeTypeType |xs#0@@16|)))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((a@@2 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@2 x@@6)) (+ (|MultiSet#Card| a@@2) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@2 x@@6)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@20 T@U) (|xs#0@@17| T@U) (|ys#0@@8| T@U) ) (!  (=> (or (|_module.__default.merge#canCall| |xs#0@@17| |ys#0@@8|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@17| (Tclass._module.List Tclass._module.G)) ($Is DatatypeTypeType |ys#0@@8| (Tclass._module.List Tclass._module.G))))) (and (=> (not (_module.List.Nil_q |xs#0@@17|)) (let ((|xs'#1@@0| (_module.List.tail |xs#0@@17|)))
(let ((|a#1| (_module.List.head |xs#0@@17|)))
 (=> (not (_module.List.Nil_q |ys#0@@8|)) (let ((|ys'#1| (_module.List.tail |ys#0@@8|)))
(let ((|b#1| (_module.List.head |ys#0@@8|)))
 (and (and (|_module.__default.Below#canCall| |a#1| |b#1|) (=> (_module.__default.Below |a#1| |b#1|) (|_module.__default.merge#canCall| |xs'#1@@0| |ys#0@@8|))) (=> (not (_module.__default.Below |a#1| |b#1|)) (|_module.__default.merge#canCall| |xs#0@@17| |ys'#1|))))))))) (= (_module.__default.merge ($LS $ly@@20) |xs#0@@17| |ys#0@@8|) (ite (_module.List.Nil_q |xs#0@@17|) |ys#0@@8| (let ((|xs'#0@@0| (_module.List.tail |xs#0@@17|)))
(let ((|a#0@@7| (_module.List.head |xs#0@@17|)))
(ite (_module.List.Nil_q |ys#0@@8|) |xs#0@@17| (let ((|ys'#0| (_module.List.tail |ys#0@@8|)))
(let ((|b#0@@0| (_module.List.head |ys#0@@8|)))
(ite (_module.__default.Below |a#0@@7| |b#0@@0|) (|#_module.List.Cons| |a#0@@7| (_module.__default.merge $ly@@20 |xs'#0@@0| |ys#0@@8|)) (|#_module.List.Cons| |b#0@@0| (_module.__default.merge $ly@@20 |xs#0@@17| |ys'#0|))))))))))))
 :qid |GHCMergeSortdfy.138:10|
 :skolemid |699|
 :pattern ( (_module.__default.merge ($LS $ly@@20) |xs#0@@17| |ys#0@@8|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@1 T@U) ($ly@@21 T@U) (|xs#0@@18| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@1 |xs#0@@18|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@18| (Tclass._module.List _module._default.length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |xs#0@@18|)) (let ((|ys#1@@0| (_module.List.tail |xs#0@@18|)))
(|_module.__default.length#canCall| _module._default.length$_T0@@1 |ys#1@@0|))) (= (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@21) |xs#0@@18|) (ite (_module.List.Nil_q |xs#0@@18|) 0 (let ((|ys#0@@9| (_module.List.tail |xs#0@@18|)))
(+ 1 (_module.__default.length _module._default.length$_T0@@1 $ly@@21 |ys#0@@9|)))))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@21) |xs#0@@18|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@22 T@U) (|xs#0@@19| T@U) ) (!  (=> (or (|_module.__default.sorted#canCall| |xs#0@@19|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@19| (Tclass._module.List Tclass._module.G)))) (and (=> (not (_module.List.Nil_q |xs#0@@19|)) (let ((|ys#1@@1| (_module.List.tail |xs#0@@19|)))
(let ((|a#1@@0| (_module.List.head |xs#0@@19|)))
 (and (forall ((|y#1@@0| T@U) ) (!  (=> ($IsBox |y#1@@0| Tclass._module.G) (and (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#1@@1|) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#1@@1|) |y#1@@0|) 0) (|_module.__default.Below#canCall| |a#1@@0| |y#1@@0|))))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |709|
 :pattern ( (_module.__default.Below |a#1@@0| |y#1@@0|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#1@@1|) |y#1@@0|))
)) (=> (forall ((|y#1@@1| T@U) ) (!  (=> ($IsBox |y#1@@1| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#1@@1|) |y#1@@1|) 0) (_module.__default.Below |a#1@@0| |y#1@@1|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |710|
 :pattern ( (_module.__default.Below |a#1@@0| |y#1@@1|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#1@@1|) |y#1@@1|))
)) (|_module.__default.sorted#canCall| |ys#1@@1|)))))) (= (_module.__default.sorted ($LS $ly@@22) |xs#0@@19|) (ite (_module.List.Nil_q |xs#0@@19|) true (let ((|ys#0@@10| (_module.List.tail |xs#0@@19|)))
(let ((|a#0@@8| (_module.List.head |xs#0@@19|)))
 (and (forall ((|y#0@@0| T@U) ) (!  (=> ($IsBox |y#0@@0| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#0@@10|) |y#0@@0|) 0) (_module.__default.Below |a#0@@8| |y#0@@0|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |708|
 :pattern ( (_module.__default.Below |a#0@@8| |y#0@@0|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#0@@10|) |y#0@@0|))
)) (_module.__default.sorted $ly@@22 |ys#0@@10|))))))))
 :qid |GHCMergeSortdfy.151:17|
 :skolemid |711|
 :pattern ( (_module.__default.sorted ($LS $ly@@22) |xs#0@@19|))
))))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.flatten$_T0@@1 T@U) ($ly@@23 T@U) (|x#0@@4| T@U) ) (!  (=> (or (|_module.__default.flatten#canCall| _module._default.flatten$_T0@@1 |x#0@@4|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@4| (Tclass._module.List (Tclass._module.List _module._default.flatten$_T0@@1))))) (and (=> (not (_module.List.Nil_q |x#0@@4|)) (let ((|y#1@@2| (_module.List.tail |x#0@@4|)))
(let ((|xs#1@@0| ($Unbox DatatypeTypeType (_module.List.head |x#0@@4|))))
 (and (|_module.__default.flatten#canCall| _module._default.flatten$_T0@@1 |y#1@@2|) (|_module.__default.append#canCall| _module._default.flatten$_T0@@1 |xs#1@@0| (_module.__default.flatten _module._default.flatten$_T0@@1 $ly@@23 |y#1@@2|)))))) (= (_module.__default.flatten _module._default.flatten$_T0@@1 ($LS $ly@@23) |x#0@@4|) (ite (_module.List.Nil_q |x#0@@4|) |#_module.List.Nil| (let ((|y#0@@1| (_module.List.tail |x#0@@4|)))
(let ((|xs#0@@20| ($Unbox DatatypeTypeType (_module.List.head |x#0@@4|))))
(_module.__default.append _module._default.flatten$_T0@@1 ($LS $LZ) |xs#0@@20| (_module.__default.flatten _module._default.flatten$_T0@@1 $ly@@23 |y#0@@1|))))))))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( (_module.__default.flatten _module._default.flatten$_T0@@1 ($LS $ly@@23) |x#0@@4|))
))))
(assert (forall ((a@@3 T@U) (b@@1 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@3 b@@1)) (+ (|MultiSet#Card| a@@3) (|MultiSet#Card| b@@1)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@3 b@@1)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@24 T@U) (|x#0@@5| T@U) ) (!  (=> (or (|_module.__default.mergeAll#canCall| (Lit DatatypeTypeType |x#0@@5|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@5| (Tclass._module.List (Tclass._module.List Tclass._module.G))) (not (|_module.List#Equal| |x#0@@5| |#_module.List.Nil|))))) (and (and (|$IsA#_module.List| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@5|)))) (=> (not (|_module.List#Equal| (_module.List.tail (Lit DatatypeTypeType |x#0@@5|)) |#_module.List.Nil|)) (and (|_module.__default.mergePairs#canCall| (Lit DatatypeTypeType |x#0@@5|)) (|_module.__default.mergeAll#canCall| (Lit DatatypeTypeType (_module.__default.mergePairs ($LS $LZ) (Lit DatatypeTypeType |x#0@@5|))))))) (= (_module.__default.mergeAll ($LS $ly@@24) (Lit DatatypeTypeType |x#0@@5|)) (ite (|_module.List#Equal| (_module.List.tail (Lit DatatypeTypeType |x#0@@5|)) |#_module.List.Nil|) ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@5|))) (_module.__default.mergeAll ($LS $ly@@24) (Lit DatatypeTypeType (_module.__default.mergePairs ($LS $LZ) (Lit DatatypeTypeType |x#0@@5|))))))))
 :qid |GHCMergeSortdfy.117:10|
 :weight 3
 :skolemid |684|
 :pattern ( (_module.__default.mergeAll ($LS $ly@@24) (Lit DatatypeTypeType |x#0@@5|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@9| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| |a#0@@9| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@9| Tclass._module.G) ($IsBox |b#0@@1| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| |a#0@@9|) (|_module.__default.key#canCall| |b#0@@1|)) (= (_module.__default.Below |a#0@@9| |b#0@@1|) (<= (_module.__default.key |a#0@@9|) (_module.__default.key |b#0@@1|)))))
 :qid |GHCMergeSortdfy.75:17|
 :skolemid |639|
 :pattern ( (_module.__default.Below |a#0@@9| |b#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@25 T@U) (|g#0@@0| T@U) (|xs#0@@21| T@U) ) (!  (=> (or (|_module.__default.filter#canCall| (Lit BoxType |g#0@@0|) (Lit DatatypeTypeType |xs#0@@21|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |g#0@@0| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@21| (Tclass._module.List Tclass._module.G))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@21|)))))) (let ((|ys#5| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@21|)))))
(let ((|b#5| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@21|)))))
 (and (and (and (|_module.__default.key#canCall| (Lit BoxType |g#0@@0|)) (|_module.__default.key#canCall| |b#5|)) (=> (= (_module.__default.key (Lit BoxType |g#0@@0|)) (_module.__default.key |b#5|)) (|_module.__default.filter#canCall| (Lit BoxType |g#0@@0|) |ys#5|))) (=> (or (not (= (_module.__default.key (Lit BoxType |g#0@@0|)) (_module.__default.key |b#5|))) (not true)) (|_module.__default.filter#canCall| (Lit BoxType |g#0@@0|) |ys#5|)))))) (= (_module.__default.filter ($LS $ly@@25) (Lit BoxType |g#0@@0|) (Lit DatatypeTypeType |xs#0@@21|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@21|)) |#_module.List.Nil| (let ((|ys#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@21|)))))
(let ((|b#4| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@21|)))))
(ite (= (_module.__default.key (Lit BoxType |g#0@@0|)) (_module.__default.key |b#4|)) (|#_module.List.Cons| |b#4| (Lit DatatypeTypeType (_module.__default.filter ($LS $ly@@25) (Lit BoxType |g#0@@0|) |ys#4|))) (_module.__default.filter ($LS $ly@@25) (Lit BoxType |g#0@@0|) |ys#4|))))))))
 :qid |GHCMergeSortdfy.160:16|
 :weight 3
 :skolemid |730|
 :pattern ( (_module.__default.filter ($LS $ly@@25) (Lit BoxType |g#0@@0|) (Lit DatatypeTypeType |xs#0@@21|)))
))))
(assert (forall (($ly@@26 T@U) (|xs#0@@22| T@U) (|ys#0@@11| T@U) ) (! (= (_module.__default.merge ($LS $ly@@26) |xs#0@@22| |ys#0@@11|) (_module.__default.merge $ly@@26 |xs#0@@22| |ys#0@@11|))
 :qid |GHCMergeSortdfy.138:10|
 :skolemid |695|
 :pattern ( (_module.__default.merge ($LS $ly@@26) |xs#0@@22| |ys#0@@11|))
)))
(assert (forall (($ly@@27 T@U) (|g#0@@1| T@U) (|xs#0@@23| T@U) ) (! (= (_module.__default.filter ($LS $ly@@27) |g#0@@1| |xs#0@@23|) (_module.__default.filter $ly@@27 |g#0@@1| |xs#0@@23|))
 :qid |GHCMergeSortdfy.160:16|
 :skolemid |724|
 :pattern ( (_module.__default.filter ($LS $ly@@27) |g#0@@1| |xs#0@@23|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@28 T@U) (|x#0@@6| T@U) ) (!  (=> (or (|_module.__default.mergeAll#canCall| |x#0@@6|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@6| (Tclass._module.List (Tclass._module.List Tclass._module.G))) (not (|_module.List#Equal| |x#0@@6| |#_module.List.Nil|))))) ($Is DatatypeTypeType (_module.__default.mergeAll $ly@@28 |x#0@@6|) (Tclass._module.List Tclass._module.G)))
 :qid |GHCMergeSortdfy.117:10|
 :skolemid |681|
 :pattern ( (_module.__default.mergeAll $ly@@28 |x#0@@6|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0 T@U) ($ly@@29 T@U) (|xs#0@@24| T@U) (|acc#0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0 |xs#0@@24| |acc#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@24| (Tclass._module.List _module._default.reverse$_T0)) ($Is DatatypeTypeType |acc#0| (Tclass._module.List _module._default.reverse$_T0))))) (and (=> (not (_module.List.Nil_q |xs#0@@24|)) (let ((|ys#1@@2| (_module.List.tail |xs#0@@24|)))
(let ((|a#1@@1| (_module.List.head |xs#0@@24|)))
(|_module.__default.reverse#canCall| _module._default.reverse$_T0 |ys#1@@2| (|#_module.List.Cons| |a#1@@1| |acc#0|))))) (= (_module.__default.reverse _module._default.reverse$_T0 ($LS $ly@@29) |xs#0@@24| |acc#0|) (ite (_module.List.Nil_q |xs#0@@24|) |acc#0| (let ((|ys#0@@12| (_module.List.tail |xs#0@@24|)))
(let ((|a#0@@10| (_module.List.head |xs#0@@24|)))
(_module.__default.reverse _module._default.reverse$_T0 $ly@@29 |ys#0@@12| (|#_module.List.Cons| |a#0@@10| |acc#0|))))))))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0 ($LS $ly@@29) |xs#0@@24| |acc#0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@30 T@U) (|x#0@@7| T@U) ) (!  (=> (or (|_module.__default.mergePairs#canCall| (Lit DatatypeTypeType |x#0@@7|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@7| (Tclass._module.List (Tclass._module.List Tclass._module.G))))) (and (=> (U_2_bool (Lit boolType (bool_2_U  (and (_module.List.Cons_q (Lit DatatypeTypeType |x#0@@7|)) (_module.List.Cons_q (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@7|)))))))) (and (|_module.__default.merge#canCall| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@7|)))) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@7|))))))) (|_module.__default.mergePairs#canCall| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@7|)))))))) (= (_module.__default.mergePairs ($LS $ly@@30) (Lit DatatypeTypeType |x#0@@7|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |x#0@@7|)) (_module.List.Cons_q (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@7|))))) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (_module.__default.merge ($LS $LZ) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@7|)))) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@7|))))))))) (Lit DatatypeTypeType (_module.__default.mergePairs ($LS $ly@@30) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@7|)))))))) |x#0@@7|))))
 :qid |GHCMergeSortdfy.127:10|
 :weight 3
 :skolemid |692|
 :pattern ( (_module.__default.mergePairs ($LS $ly@@30) (Lit DatatypeTypeType |x#0@@7|)))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.flatten$_T0@@2 T@U) ($ly@@31 T@U) (|x#0@@8| T@U) ) (!  (=> (and (or (|_module.__default.flatten#canCall| _module._default.flatten$_T0@@2 |x#0@@8|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@8| (Tclass._module.List (Tclass._module.List _module._default.flatten$_T0@@2))) ($IsAlloc DatatypeTypeType |x#0@@8| (Tclass._module.List (Tclass._module.List _module._default.flatten$_T0@@2)) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.flatten _module._default.flatten$_T0@@2 $ly@@31 |x#0@@8|) (Tclass._module.List _module._default.flatten$_T0@@2) $Heap))
 :qid |GHCMergeSortdfy.62:16|
 :skolemid |629|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.flatten _module._default.flatten$_T0@@2 $ly@@31 |x#0@@8|) (Tclass._module.List _module._default.flatten$_T0@@2) $Heap))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@32 T@U) (|a#0@@11| T@U) (|xs#0@@25| T@U) (|ys#0@@13| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| (Lit BoxType |a#0@@11|) (Lit DatatypeTypeType |xs#0@@25|) (Lit DatatypeTypeType |ys#0@@13|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@11| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@25| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@13|))))) (|_module.__default.Below#canCall| (Lit BoxType |a#0@@11|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@13|))))) (=> (U_2_bool (Lit boolType (bool_2_U  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@13|)) (_module.__default.Below (Lit BoxType |a#0@@11|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@13|)))))))) (|_module.__default.ascending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@13|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@11|) (Lit DatatypeTypeType |xs#0@@25|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@13|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@13|)) (_module.__default.Below (Lit BoxType |a#0@@11|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@13|))))))))) (and (|_module.__default.reverse#canCall| Tclass._module.G (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@11|) (Lit DatatypeTypeType |xs#0@@25|))) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@13|))))) (= (_module.__default.ascending ($LS $ly@@32) (Lit BoxType |a#0@@11|) (Lit DatatypeTypeType |xs#0@@25|) (Lit DatatypeTypeType |ys#0@@13|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@13|)) (_module.__default.Below (Lit BoxType |a#0@@11|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@13|))))) (_module.__default.ascending ($LS $ly@@32) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@13|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@11|) (Lit DatatypeTypeType |xs#0@@25|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@13|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@11|) (Lit DatatypeTypeType |xs#0@@25|))) (Lit DatatypeTypeType |#_module.List.Nil|)))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@32) (Lit DatatypeTypeType |ys#0@@13|))))))))
 :qid |GHCMergeSortdfy.107:10|
 :weight 3
 :skolemid |674|
 :pattern ( (_module.__default.ascending ($LS $ly@@32) (Lit BoxType |a#0@@11|) (Lit DatatypeTypeType |xs#0@@25|) (Lit DatatypeTypeType |ys#0@@13|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@33 T@U) (|g#0@@2| T@U) (|xs#0@@26| T@U) ) (!  (=> (or (|_module.__default.filter#canCall| |g#0@@2| |xs#0@@26|) (and (< 1 $FunctionContextHeight) (and ($IsBox |g#0@@2| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@26| (Tclass._module.List Tclass._module.G))))) (and (=> (not (_module.List.Nil_q |xs#0@@26|)) (let ((|ys#1@@3| (_module.List.tail |xs#0@@26|)))
(let ((|b#1@@0| (_module.List.head |xs#0@@26|)))
 (and (and (and (|_module.__default.key#canCall| |g#0@@2|) (|_module.__default.key#canCall| |b#1@@0|)) (=> (= (_module.__default.key |g#0@@2|) (_module.__default.key |b#1@@0|)) (|_module.__default.filter#canCall| |g#0@@2| |ys#1@@3|))) (=> (or (not (= (_module.__default.key |g#0@@2|) (_module.__default.key |b#1@@0|))) (not true)) (|_module.__default.filter#canCall| |g#0@@2| |ys#1@@3|)))))) (= (_module.__default.filter ($LS $ly@@33) |g#0@@2| |xs#0@@26|) (ite (_module.List.Nil_q |xs#0@@26|) |#_module.List.Nil| (let ((|ys#0@@14| (_module.List.tail |xs#0@@26|)))
(let ((|b#0@@2| (_module.List.head |xs#0@@26|)))
(ite (= (_module.__default.key |g#0@@2|) (_module.__default.key |b#0@@2|)) (|#_module.List.Cons| |b#0@@2| (_module.__default.filter $ly@@33 |g#0@@2| |ys#0@@14|)) (_module.__default.filter $ly@@33 |g#0@@2| |ys#0@@14|))))))))
 :qid |GHCMergeSortdfy.160:16|
 :skolemid |728|
 :pattern ( (_module.__default.filter ($LS $ly@@33) |g#0@@2| |xs#0@@26|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@34 T@U) (|xs#0@@27| T@U) ) (!  (=> (or (|_module.__default.sequences#canCall| |xs#0@@27|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@27| (Tclass._module.List Tclass._module.G)))) (and (=> (not (_module.List.Nil_q |xs#0@@27|)) (let ((|ys#1@@4| (_module.List.tail |xs#0@@27|)))
(let ((|a#1@@2| (_module.List.head |xs#0@@27|)))
 (=> (not (_module.List.Nil_q |ys#1@@4|)) (let ((|zs#1| (_module.List.tail |ys#1@@4|)))
(let ((|b#1@@1| (_module.List.head |ys#1@@4|)))
 (and (and (|_module.__default.Below#canCall| |a#1@@2| |b#1@@1|) (=> (not (_module.__default.Below |a#1@@2| |b#1@@1|)) (|_module.__default.descending#canCall| |b#1@@1| (|#_module.List.Cons| |a#1@@2| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#1|))) (=> (_module.__default.Below |a#1@@2| |b#1@@1|) (|_module.__default.ascending#canCall| |b#1@@1| (|#_module.List.Cons| |a#1@@2| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#1|))))))))) (= (_module.__default.sequences ($LS $ly@@34) |xs#0@@27|) (ite (_module.List.Nil_q |xs#0@@27|) (|#_module.List.Cons| ($Box DatatypeTypeType |xs#0@@27|) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|ys#0@@15| (_module.List.tail |xs#0@@27|)))
(let ((|a#0@@12| (_module.List.head |xs#0@@27|)))
(ite (_module.List.Nil_q |ys#0@@15|) (|#_module.List.Cons| ($Box DatatypeTypeType |xs#0@@27|) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|zs#0| (_module.List.tail |ys#0@@15|)))
(let ((|b#0@@3| (_module.List.head |ys#0@@15|)))
(ite  (not (_module.__default.Below |a#0@@12| |b#0@@3|)) (_module.__default.descending $ly@@34 |b#0@@3| (|#_module.List.Cons| |a#0@@12| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#0|) (_module.__default.ascending $ly@@34 |b#0@@3| (|#_module.List.Cons| |a#0@@12| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#0|)))))))))))
 :qid |GHCMergeSortdfy.85:10|
 :skolemid |653|
 :pattern ( (_module.__default.sequences ($LS $ly@@34) |xs#0@@27|))
))))
(assert (forall ((_module.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@0)) (forall ((bx T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@35 T@U) (|a#0@@13| T@U) (|xs#0@@28| T@U) (|ys#0@@16| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| |a#0@@13| |xs#0@@28| (Lit DatatypeTypeType |ys#0@@16|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@13| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@28| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@16| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@16|))))) (|_module.__default.Below#canCall| |a#0@@13| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@16|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@16|)) (_module.__default.Below |a#0@@13| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@16|))))) (|_module.__default.ascending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@16|))) (|#_module.List.Cons| |a#0@@13| |xs#0@@28|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@16|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@16|)) (_module.__default.Below |a#0@@13| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@16|)))))) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@13| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@16|))))) (= (_module.__default.ascending ($LS $ly@@35) |a#0@@13| |xs#0@@28| (Lit DatatypeTypeType |ys#0@@16|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@16|)) (_module.__default.Below |a#0@@13| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@16|))))) (_module.__default.ascending ($LS $ly@@35) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@16|))) (|#_module.List.Cons| |a#0@@13| |xs#0@@28|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@16|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@13| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@35) (Lit DatatypeTypeType |ys#0@@16|))))))))
 :qid |GHCMergeSortdfy.107:10|
 :weight 3
 :skolemid |673|
 :pattern ( (_module.__default.ascending ($LS $ly@@35) |a#0@@13| |xs#0@@28| (Lit DatatypeTypeType |ys#0@@16|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@36 T@U) (|g#0@@3| T@U) (|xs#0@@29| T@U) ) (!  (=> (or (|_module.__default.filter#canCall| |g#0@@3| |xs#0@@29|) (and (< 1 $FunctionContextHeight) (and ($IsBox |g#0@@3| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@29| (Tclass._module.List Tclass._module.G))))) ($Is DatatypeTypeType (_module.__default.filter $ly@@36 |g#0@@3| |xs#0@@29|) (Tclass._module.List Tclass._module.G)))
 :qid |GHCMergeSortdfy.160:16|
 :skolemid |726|
 :pattern ( (_module.__default.filter $ly@@36 |g#0@@3| |xs#0@@29|))
))))
(assert (forall (($ly@@37 T@U) (|xs#0@@30| T@U) ) (! (= (_module.__default.sorted ($LS $ly@@37) |xs#0@@30|) (_module.__default.sorted $ly@@37 |xs#0@@30|))
 :qid |GHCMergeSortdfy.151:17|
 :skolemid |704|
 :pattern ( (_module.__default.sorted ($LS $ly@@37) |xs#0@@30|))
)))
(assert (forall (($ly@@38 T@U) (|x#0@@9| T@U) ) (! (= (_module.__default.AllSorted ($LS $ly@@38) |x#0@@9|) (_module.__default.AllSorted $ly@@38 |x#0@@9|))
 :qid |GHCMergeSortdfy.315:17|
 :skolemid |792|
 :pattern ( (_module.__default.AllSorted ($LS $ly@@38) |x#0@@9|))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|xs#0@@31| T@U) ) (!  (=> (or (|_module.__default.sort#canCall| |xs#0@@31|) (and (< 5 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@31| (Tclass._module.List Tclass._module.G)))) (and (and (|_module.__default.sequences#canCall| |xs#0@@31|) (|_module.__default.mergeAll#canCall| (_module.__default.sequences ($LS $LZ) |xs#0@@31|))) (= (_module.__default.sort |xs#0@@31|) (_module.__default.mergeAll ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@31|)))))
 :qid |GHCMergeSortdfy.80:15|
 :skolemid |645|
 :pattern ( (_module.__default.sort |xs#0@@31|))
))))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@0 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@0)) (<= (|MultiSet#Multiplicity| ms bx@@0) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@0))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@3 T@U) ) (!  (=> ($IsBox v@@3 ty) ($IsAllocBox v@@3 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@3 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((a@@4 T@U) (b@@2 T@U) ) (!  (=> (and (_module.List.Nil_q a@@4) (_module.List.Nil_q b@@2)) (|_module.List#Equal| a@@4 b@@2))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( (|_module.List#Equal| a@@4 b@@2) (_module.List.Nil_q a@@4))
 :pattern ( (|_module.List#Equal| a@@4 b@@2) (_module.List.Nil_q b@@2))
)))
(assert (forall ((o T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o))
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
(assert (forall ((a@@5 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@7) x@@7) (+ (|MultiSet#Multiplicity| a@@5 x@@7) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@7))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@39 T@U) (|xs#0@@32| T@U) (|ys#0@@17| T@U) ) (!  (=> (or (|_module.__default.merge#canCall| |xs#0@@32| |ys#0@@17|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@32| (Tclass._module.List Tclass._module.G)) ($Is DatatypeTypeType |ys#0@@17| (Tclass._module.List Tclass._module.G))))) ($Is DatatypeTypeType (_module.__default.merge $ly@@39 |xs#0@@32| |ys#0@@17|) (Tclass._module.List Tclass._module.G)))
 :qid |GHCMergeSortdfy.138:10|
 :skolemid |697|
 :pattern ( (_module.__default.merge $ly@@39 |xs#0@@32| |ys#0@@17|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0@@0 T@U) ($ly@@40 T@U) (|xs#0@@33| T@U) (|acc#0@@0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@0 |xs#0@@33| |acc#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@33| (Tclass._module.List _module._default.reverse$_T0@@0)) ($Is DatatypeTypeType |acc#0@@0| (Tclass._module.List _module._default.reverse$_T0@@0))))) ($Is DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@0 $ly@@40 |xs#0@@33| |acc#0@@0|) (Tclass._module.List _module._default.reverse$_T0@@0)))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@0 $ly@@40 |xs#0@@33| |acc#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.append$_T0@@1 T@U) ($ly@@41 T@U) (|xs#0@@34| T@U) (|ys#0@@18| T@U) ) (!  (=> (or (|_module.__default.append#canCall| _module._default.append$_T0@@1 |xs#0@@34| |ys#0@@18|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@34| (Tclass._module.List _module._default.append$_T0@@1)) ($Is DatatypeTypeType |ys#0@@18| (Tclass._module.List _module._default.append$_T0@@1))))) ($Is DatatypeTypeType (_module.__default.append _module._default.append$_T0@@1 $ly@@41 |xs#0@@34| |ys#0@@18|) (Tclass._module.List _module._default.append$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (_module.__default.append _module._default.append$_T0@@1 $ly@@41 |xs#0@@34| |ys#0@@18|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@42 T@U) (|xs#0@@35| T@U) ) (!  (=> (or (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |xs#0@@35|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@35| (Tclass._module.List Tclass._module.G)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@35|)))))) (let ((|ys#3@@3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@35|)))))
(let ((|a#3@@1| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@35|)))))
 (=> (not (_module.List.Nil_q |ys#3@@3|)) (let ((|zs#3| (_module.List.tail |ys#3@@3|)))
(let ((|b#3@@1| (_module.List.head |ys#3@@3|)))
 (and (and (|_module.__default.Below#canCall| |a#3@@1| |b#3@@1|) (=> (not (_module.__default.Below |a#3@@1| |b#3@@1|)) (|_module.__default.descending#canCall| |b#3@@1| (|#_module.List.Cons| |a#3@@1| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#3|))) (=> (_module.__default.Below |a#3@@1| |b#3@@1|) (|_module.__default.ascending#canCall| |b#3@@1| (|#_module.List.Cons| |a#3@@1| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#3|))))))))) (= (_module.__default.sequences ($LS $ly@@42) (Lit DatatypeTypeType |xs#0@@35|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@35|)) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |xs#0@@35|)) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|ys#2@@3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@35|)))))
(let ((|a#2@@3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@35|)))))
(ite (_module.List.Nil_q |ys#2@@3|) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |xs#0@@35|)) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|zs#2| (Lit DatatypeTypeType (_module.List.tail |ys#2@@3|))))
(let ((|b#2@@1| (Lit BoxType (_module.List.head |ys#2@@3|))))
(ite  (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below |a#2@@3| |b#2@@1|))))) (_module.__default.descending ($LS $ly@@42) |b#2@@1| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2@@3| (Lit DatatypeTypeType |#_module.List.Nil|))) |zs#2|) (_module.__default.ascending ($LS $ly@@42) |b#2@@1| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2@@3| (Lit DatatypeTypeType |#_module.List.Nil|))) |zs#2|)))))))))))
 :qid |GHCMergeSortdfy.85:10|
 :weight 3
 :skolemid |654|
 :pattern ( (_module.__default.sequences ($LS $ly@@42) (Lit DatatypeTypeType |xs#0@@35|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.multiset_of$T@@2 T@U) ($ly@@43 T@U) (|xs#0@@36| T@U) ) (!  (=> (and (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@2 |xs#0@@36|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@36| (Tclass._module.List _module._default.multiset_of$T@@2)) ($IsAlloc DatatypeTypeType |xs#0@@36| (Tclass._module.List _module._default.multiset_of$T@@2) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@2 $ly@@43 |xs#0@@36|) (TMultiSet _module._default.multiset_of$T@@2) $Heap@@0))
 :qid |GHCMergeSortdfy.31:16|
 :skolemid |602|
 :pattern ( ($IsAlloc MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@2 $ly@@43 |xs#0@@36|) (TMultiSet _module._default.multiset_of$T@@2) $Heap@@0))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@3 T@U) ($ly@@44 T@U) (|xs#0@@37| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@3 |xs#0@@37|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@37| (Tclass._module.List _module._default.multiset_of$T@@3)))) ($Is MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@3 $ly@@44 |xs#0@@37|) (TMultiSet _module._default.multiset_of$T@@3)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@3 $ly@@44 |xs#0@@37|))
))))
(assert (forall (($ly@@45 T@U) (|xs#0@@38| T@U) ) (! (= (_module.__default.sequences ($LS $ly@@45) |xs#0@@38|) (_module.__default.sequences $ly@@45 |xs#0@@38|))
 :qid |GHCMergeSortdfy.85:10|
 :skolemid |649|
 :pattern ( (_module.__default.sequences ($LS $ly@@45) |xs#0@@38|))
)))
(assert (forall (($ly@@46 T@U) (|x#0@@10| T@U) ) (! (= (_module.__default.mergeAll ($LS $ly@@46) |x#0@@10|) (_module.__default.mergeAll $ly@@46 |x#0@@10|))
 :qid |GHCMergeSortdfy.117:10|
 :skolemid |679|
 :pattern ( (_module.__default.mergeAll ($LS $ly@@46) |x#0@@10|))
)))
(assert (forall (($ly@@47 T@U) (|x#0@@11| T@U) ) (! (= (_module.__default.mergePairs ($LS $ly@@47) |x#0@@11|) (_module.__default.mergePairs $ly@@47 |x#0@@11|))
 :qid |GHCMergeSortdfy.127:10|
 :skolemid |687|
 :pattern ( (_module.__default.mergePairs ($LS $ly@@47) |x#0@@11|))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@9 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@9))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@9))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0@@1 T@U) ($ly@@48 T@U) (|xs#0@@39| T@U) (|acc#0@@1| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@1 (Lit DatatypeTypeType |xs#0@@39|) (Lit DatatypeTypeType |acc#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@39| (Tclass._module.List _module._default.reverse$_T0@@1)) ($Is DatatypeTypeType |acc#0@@1| (Tclass._module.List _module._default.reverse$_T0@@1))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@39|)))))) (let ((|ys#3@@4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@39|)))))
(let ((|a#3@@2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@39|)))))
(|_module.__default.reverse#canCall| _module._default.reverse$_T0@@1 |ys#3@@4| (|#_module.List.Cons| |a#3@@2| (Lit DatatypeTypeType |acc#0@@1|)))))) (= (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@48) (Lit DatatypeTypeType |xs#0@@39|) (Lit DatatypeTypeType |acc#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@39|)) |acc#0@@1| (let ((|ys#2@@4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@39|)))))
(let ((|a#2@@4| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@39|)))))
(Lit DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@48) |ys#2@@4| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2@@4| (Lit DatatypeTypeType |acc#0@@1|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |597|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@48) (Lit DatatypeTypeType |xs#0@@39|) (Lit DatatypeTypeType |acc#0@@1|)))
))))
(assert (forall (($ly@@49 T@U) (|a#0@@14| T@U) (|xs#0@@40| T@U) (|ys#0@@19| T@U) ) (! (= (_module.__default.descending ($LS $ly@@49) |a#0@@14| |xs#0@@40| |ys#0@@19|) (_module.__default.descending $ly@@49 |a#0@@14| |xs#0@@40| |ys#0@@19|))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |658|
 :pattern ( (_module.__default.descending ($LS $ly@@49) |a#0@@14| |xs#0@@40| |ys#0@@19|))
)))
(assert (forall (($ly@@50 T@U) (|a#0@@15| T@U) (|xs#0@@41| T@U) (|ys#0@@20| T@U) ) (! (= (_module.__default.ascending ($LS $ly@@50) |a#0@@15| |xs#0@@41| |ys#0@@20|) (_module.__default.ascending $ly@@50 |a#0@@15| |xs#0@@41| |ys#0@@20|))
 :qid |GHCMergeSortdfy.107:10|
 :skolemid |668|
 :pattern ( (_module.__default.ascending ($LS $ly@@50) |a#0@@15| |xs#0@@41| |ys#0@@20|))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@6 b@@3) o@@0) (+ (|MultiSet#Multiplicity| a@@6 o@@0) (|MultiSet#Multiplicity| b@@3 o@@0)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@6 b@@3) o@@0))
)))
(assert (forall ((d@@5 T@U) (_module.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.List _module.List$T@@5) $h@@0))) ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAllocBox (_module.List.head d@@5) _module.List$T@@5 $h@@0))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.reverse$_T0@@2 T@U) ($ly@@51 T@U) (|xs#0@@42| T@U) (|acc#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@2 |xs#0@@42| |acc#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@42| (Tclass._module.List _module._default.reverse$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@42| (Tclass._module.List _module._default.reverse$_T0@@2) $Heap@@1)) (and ($Is DatatypeTypeType |acc#0@@2| (Tclass._module.List _module._default.reverse$_T0@@2)) ($IsAlloc DatatypeTypeType |acc#0@@2| (Tclass._module.List _module._default.reverse$_T0@@2) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@2 $ly@@51 |xs#0@@42| |acc#0@@2|) (Tclass._module.List _module._default.reverse$_T0@@2) $Heap@@1))
 :qid |GHCMergeSortdfy.24:10|
 :skolemid |594|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@2 $ly@@51 |xs#0@@42| |acc#0@@2|) (Tclass._module.List _module._default.reverse$_T0@@2) $Heap@@1))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (_module._default.append$_T0@@2 T@U) ($ly@@52 T@U) (|xs#0@@43| T@U) (|ys#0@@21| T@U) ) (!  (=> (and (or (|_module.__default.append#canCall| _module._default.append$_T0@@2 |xs#0@@43| |ys#0@@21|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@43| (Tclass._module.List _module._default.append$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@43| (Tclass._module.List _module._default.append$_T0@@2) $Heap@@2)) (and ($Is DatatypeTypeType |ys#0@@21| (Tclass._module.List _module._default.append$_T0@@2)) ($IsAlloc DatatypeTypeType |ys#0@@21| (Tclass._module.List _module._default.append$_T0@@2) $Heap@@2))))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (_module.__default.append _module._default.append$_T0@@2 $ly@@52 |xs#0@@43| |ys#0@@21|) (Tclass._module.List _module._default.append$_T0@@2) $Heap@@2))
 :qid |GHCMergeSortdfy.45:16|
 :skolemid |619|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.append _module._default.append$_T0@@2 $ly@@52 |xs#0@@43| |ys#0@@21|) (Tclass._module.List _module._default.append$_T0@@2) $Heap@@2))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@53 T@U) (|x#0@@12| T@U) ) (!  (=> (or (|_module.__default.mergePairs#canCall| |x#0@@12|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@12| (Tclass._module.List (Tclass._module.List Tclass._module.G))))) (and (=> (and (_module.List.Cons_q |x#0@@12|) (_module.List.Cons_q (_module.List.tail |x#0@@12|))) (and (|_module.__default.merge#canCall| ($Unbox DatatypeTypeType (_module.List.head |x#0@@12|)) ($Unbox DatatypeTypeType (_module.List.head (_module.List.tail |x#0@@12|)))) (|_module.__default.mergePairs#canCall| (_module.List.tail (_module.List.tail |x#0@@12|))))) (= (_module.__default.mergePairs ($LS $ly@@53) |x#0@@12|) (ite  (and (_module.List.Cons_q |x#0@@12|) (_module.List.Cons_q (_module.List.tail |x#0@@12|))) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.merge ($LS $LZ) ($Unbox DatatypeTypeType (_module.List.head |x#0@@12|)) ($Unbox DatatypeTypeType (_module.List.head (_module.List.tail |x#0@@12|))))) (_module.__default.mergePairs $ly@@53 (_module.List.tail (_module.List.tail |x#0@@12|)))) |x#0@@12|))))
 :qid |GHCMergeSortdfy.127:10|
 :skolemid |691|
 :pattern ( (_module.__default.mergePairs ($LS $ly@@53) |x#0@@12|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|xs#0@@44| T@U) ) (!  (=> (or (|_module.__default.sort#canCall| |xs#0@@44|) (and (< 5 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@44| (Tclass._module.List Tclass._module.G)))) ($Is DatatypeTypeType (_module.__default.sort |xs#0@@44|) (Tclass._module.List Tclass._module.G)))
 :qid |GHCMergeSortdfy.80:15|
 :skolemid |643|
 :pattern ( (_module.__default.sort |xs#0@@44|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.flatten$_T0@@3 T@U) ($ly@@54 T@U) (|x#0@@13| T@U) ) (!  (=> (or (|_module.__default.flatten#canCall| _module._default.flatten$_T0@@3 |x#0@@13|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@13| (Tclass._module.List (Tclass._module.List _module._default.flatten$_T0@@3))))) ($Is DatatypeTypeType (_module.__default.flatten _module._default.flatten$_T0@@3 $ly@@54 |x#0@@13|) (Tclass._module.List _module._default.flatten$_T0@@3)))
 :qid |unknown.0:0|
 :skolemid |628|
 :pattern ( (_module.__default.flatten _module._default.flatten$_T0@@3 $ly@@54 |x#0@@13|))
))))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((_module._default.reverse$_T0@@3 T@U) ($ly@@55 T@U) (|xs#0@@45| T@U) (|acc#0@@3| T@U) ) (! (= (_module.__default.reverse _module._default.reverse$_T0@@3 ($LS $ly@@55) |xs#0@@45| |acc#0@@3|) (_module.__default.reverse _module._default.reverse$_T0@@3 $ly@@55 |xs#0@@45| |acc#0@@3|))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@3 ($LS $ly@@55) |xs#0@@45| |acc#0@@3|))
)))
(assert (forall ((_module._default.append$_T0@@3 T@U) ($ly@@56 T@U) (|xs#0@@46| T@U) (|ys#0@@22| T@U) ) (! (= (_module.__default.append _module._default.append$_T0@@3 ($LS $ly@@56) |xs#0@@46| |ys#0@@22|) (_module.__default.append _module._default.append$_T0@@3 $ly@@56 |xs#0@@46| |ys#0@@22|))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (_module.__default.append _module._default.append$_T0@@3 ($LS $ly@@56) |xs#0@@46| |ys#0@@22|))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@1)) bx@@1) ($Is MultiSetType ($Unbox MultiSetType bx@@1) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@1 (TMultiSet t@@3)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@2 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) (Tclass._module.List _module.List$T@@7) $h@@1))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@57 T@U) (|a#0@@16| T@U) (|xs#0@@47| T@U) (|ys#0@@23| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@16| |xs#0@@47| (Lit DatatypeTypeType |ys#0@@23|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@16| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@47| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@23| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@23|))))) (|_module.__default.Below#canCall| |a#0@@16| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@23|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@23|)) (not (_module.__default.Below |a#0@@16| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@23|)))))) (|_module.__default.descending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@23|))) (|#_module.List.Cons| |a#0@@16| |xs#0@@47|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@23|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@23|)) (not (_module.__default.Below |a#0@@16| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@23|))))))) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@23|)))) (= (_module.__default.descending ($LS $ly@@57) |a#0@@16| |xs#0@@47| (Lit DatatypeTypeType |ys#0@@23|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@23|)) (not (_module.__default.Below |a#0@@16| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@23|)))))) (_module.__default.descending ($LS $ly@@57) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@23|))) (|#_module.List.Cons| |a#0@@16| |xs#0@@47|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@23|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (|#_module.List.Cons| |a#0@@16| |xs#0@@47|)) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@57) (Lit DatatypeTypeType |ys#0@@23|))))))))
 :qid |GHCMergeSortdfy.97:10|
 :weight 3
 :skolemid |663|
 :pattern ( (_module.__default.descending ($LS $ly@@57) |a#0@@16| |xs#0@@47| (Lit DatatypeTypeType |ys#0@@23|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@58 T@U) (|x#0@@14| T@U) ) (!  (=> (or (|_module.__default.mergeAll#canCall| |x#0@@14|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@14| (Tclass._module.List (Tclass._module.List Tclass._module.G))) (not (|_module.List#Equal| |x#0@@14| |#_module.List.Nil|))))) (and (and (|$IsA#_module.List| (_module.List.tail |x#0@@14|)) (=> (not (|_module.List#Equal| (_module.List.tail |x#0@@14|) |#_module.List.Nil|)) (and (|_module.__default.mergePairs#canCall| |x#0@@14|) (|_module.__default.mergeAll#canCall| (_module.__default.mergePairs ($LS $LZ) |x#0@@14|))))) (= (_module.__default.mergeAll ($LS $ly@@58) |x#0@@14|) (ite (|_module.List#Equal| (_module.List.tail |x#0@@14|) |#_module.List.Nil|) ($Unbox DatatypeTypeType (_module.List.head |x#0@@14|)) (_module.__default.mergeAll $ly@@58 (_module.__default.mergePairs ($LS $LZ) |x#0@@14|))))))
 :qid |GHCMergeSortdfy.117:10|
 :skolemid |683|
 :pattern ( (_module.__default.mergeAll ($LS $ly@@58) |x#0@@14|))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1103|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@2 T@U) ($ly@@59 T@U) (|xs#0@@48| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@2 |xs#0@@48|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@48| (Tclass._module.List _module._default.length$_T0@@2)))) (<= (LitInt 0) (_module.__default.length _module._default.length$_T0@@2 $ly@@59 |xs#0@@48|)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.__default.length _module._default.length$_T0@@2 $ly@@59 |xs#0@@48|))
))))
(assert (forall ((a@@7 T@U) (x@@12 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@7 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@12) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@7 x@@12) (|MultiSet#Multiplicity| a@@7 y@@0))
)))
(assert (forall ((a@@8 T@U) (x@@13 T@U) (o@@1 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@8 x@@13) o@@1))  (or (= o@@1 x@@13) (< 0 (|MultiSet#Multiplicity| a@@8 o@@1))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@8 x@@13) o@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MultiSetType v@@4 (TMultiSet t0@@3) h@@1) (forall ((bx@@3 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@4 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@1))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@4 bx@@3))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@4 (TMultiSet t0@@3) h@@1))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |g#0@@4| () T@U)
(declare-fun |xs#0@@49| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##x#0_0_0@0| () T@U)
(declare-fun |##xs#0_0_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##x#0_1_0@0| () T@U)
(declare-fun |##xs#0_1_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |x##0_1_0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |##x#0_1_1@0| () T@U)
(declare-fun |##xs#0_1_3@0| () T@U)
(declare-fun |##xs#0_2_0@0| () T@U)
(declare-fun |##x#0_2_0@0| () T@U)
(declare-fun |##xs#0_2_2@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@3 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.stable__sort)
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
 (=> (= (ControlFlow 0 0) 19) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (|_module.List#Equal| (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.sort |xs#0@@49|)) (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| |xs#0@@49|)))))
(let ((anon9_Else_correct  (=> (and (|_module.List#Equal| (_module.__default.filter ($LS $LZ) |g#0@@4| (_module.__default.sort |xs#0@@49|)) (_module.__default.filter ($LS $LZ) |g#0@@4| |xs#0@@49|)) (= (ControlFlow 0 17) 16)) GeneratedUnifiedExit_correct)))
(let ((anon9_Then_correct  (=> ($IsAllocBox |g#0@@4| Tclass._module.G $Heap@0) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.sequences#canCall| |xs#0@@49|)) (and (= |##x#0_0_0@0| (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) ($IsAlloc DatatypeTypeType |##x#0_0_0@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0))) (and (and (|_module.__default.flatten#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) (= |##xs#0_0_0@0| (_module.__default.flatten Tclass._module.G ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_0@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))))) (and (and (and (|_module.__default.sequences#canCall| |xs#0@@49|) (|_module.__default.flatten#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |xs#0@@49|))) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)))) (=> (and (and (and (and (and (|$IsA#_module.List| (_module.__default.filter ($LS $LZ) |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (|$IsA#_module.List| (_module.__default.filter ($LS $LZ) |g#0@@4| |xs#0@@49|))) (and (and (and (|_module.__default.sequences#canCall| |xs#0@@49|) (|_module.__default.flatten#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |xs#0@@49|))) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (|_module.__default.filter#canCall| |g#0@@4| |xs#0@@49|))) (|_module.List#Equal| (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS ($LS $LZ)) (_module.__default.sequences ($LS ($LS $LZ)) |xs#0@@49|))) (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| |xs#0@@49|))) (and (= $Heap@0 $Heap@3) ($IsAllocBox |g#0@@4| Tclass._module.G $Heap@3))) (and (and ($IsAlloc DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G) $Heap@3) (|_module.__default.filter#canCall| |g#0@@4| |xs#0@@49|)) (and (|_module.__default.filter#canCall| |g#0@@4| |xs#0@@49|) (= (ControlFlow 0 14) (- 0 13))))) (|_module.List#Equal| (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS ($LS $LZ)) (_module.__default.sequences ($LS ($LS $LZ)) |xs#0@@49|))) (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| |xs#0@@49|)))))))
(let ((anon8_Then_correct  (=> (and ($IsAllocBox |g#0@@4| Tclass._module.G $Heap@0) ($IsAlloc DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G) $Heap@0)) (=> (and (and (and (|_module.__default.sequences#canCall| |xs#0@@49|) (= |##x#0_1_0@0| (_module.__default.sequences ($LS $LZ) |xs#0@@49|))) (and ($IsAlloc DatatypeTypeType |##x#0_1_0@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (not (|_module.List#Equal| |##x#0_1_0@0| |#_module.List.Nil|)))) (and (and (|_module.__default.mergeAll#canCall| (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) (= |##xs#0_1_0@0| (_module.__default.mergeAll ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_1_0@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.mergeAll ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))))) (=> (and (and (and (and (|_module.__default.sequences#canCall| |xs#0@@49|) (|_module.__default.mergeAll#canCall| (_module.__default.sequences ($LS $LZ) |xs#0@@49|))) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.mergeAll ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (|_module.__default.sequences#canCall| |xs#0@@49|) (|_module.__default.AllSorted#canCall| (_module.__default.sequences ($LS $LZ) |xs#0@@49|))))) (and (and (and (|_module.__default.AllSorted#canCall| (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) (and (_module.__default.AllSorted ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) (ite (_module.List.Nil_q (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) true (let ((|y#3@@3| (_module.List.tail (_module.__default.sequences ($LS $LZ) |xs#0@@49|))))
(let ((|xs#2@@1| ($Unbox DatatypeTypeType (_module.List.head (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))))
 (and (_module.__default.sorted ($LS $LZ) |xs#2@@1|) (_module.__default.AllSorted ($LS $LZ) |y#3@@3|))))))) (= $Heap@0 $Heap@1)) (and (and ($IsAlloc DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G) $Heap@1) (|_module.__default.sequences#canCall| |xs#0@@49|)) (and (|_module.__default.sequences#canCall| |xs#0@@49|) (= |x##0_1_0@0| (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))))) (and (=> (= (ControlFlow 0 6) (- 0 12)) (not (|_module.List#Equal| |x##0_1_0@0| |#_module.List.Nil|))) (=> (not (|_module.List#Equal| |x##0_1_0@0| |#_module.List.Nil|)) (and (=> (= (ControlFlow 0 6) (- 0 11)) (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (_module.List.Nil_q |x##0_1_0@0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (_module.List.Nil_q |x##0_1_0@0|) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 6) (- 0 10)) (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (not (_module.List.Nil_q |x##0_1_0@0|)) (let ((|xs#0@@50| ($Unbox DatatypeTypeType (_module.List.head |x##0_1_0@0|))))
 (=> (|_module.__default.sorted#canCall| |xs#0@@50|) (or (_module.__default.sorted ($LS $LZ) |xs#0@@50|) (=> (_module.List.Nil_q |xs#0@@50|) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (=> (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (not (_module.List.Nil_q |x##0_1_0@0|)) (let ((|xs#0@@51| ($Unbox DatatypeTypeType (_module.List.head |x##0_1_0@0|))))
 (=> (|_module.__default.sorted#canCall| |xs#0@@51|) (or (_module.__default.sorted ($LS $LZ) |xs#0@@51|) (=> (_module.List.Nil_q |xs#0@@51|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (not (_module.List.Nil_q |x##0_1_0@0|)) (let ((|xs#0@@52| ($Unbox DatatypeTypeType (_module.List.head |x##0_1_0@0|))))
 (=> (|_module.__default.sorted#canCall| |xs#0@@52|) (or (_module.__default.sorted ($LS $LZ) |xs#0@@52|) (=> (not (_module.List.Nil_q |xs#0@@52|)) (let ((|ys#0@@24| (_module.List.tail |xs#0@@52|)))
(let ((|a#0@@17| (_module.List.head |xs#0@@52|)))
(forall ((|y#0@@2| T@U) ) (!  (=> ($IsBox |y#0@@2| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@24|) |y#0@@2|) 0) (_module.__default.Below |a#0@@17| |y#0@@2|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |1044|
 :pattern ( (_module.__default.Below |a#0@@17| |y#0@@2|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@24|) |y#0@@2|))
)))))))))))) (=> (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (not (_module.List.Nil_q |x##0_1_0@0|)) (let ((|xs#0@@53| ($Unbox DatatypeTypeType (_module.List.head |x##0_1_0@0|))))
 (=> (|_module.__default.sorted#canCall| |xs#0@@53|) (or (_module.__default.sorted ($LS $LZ) |xs#0@@53|) (=> (not (_module.List.Nil_q |xs#0@@53|)) (let ((|ys#0@@25| (_module.List.tail |xs#0@@53|)))
(let ((|a#0@@18| (_module.List.head |xs#0@@53|)))
(forall ((|y#0@@3| T@U) ) (!  (=> ($IsBox |y#0@@3| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@25|) |y#0@@3|) 0) (_module.__default.Below |a#0@@18| |y#0@@3|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |1044|
 :pattern ( (_module.__default.Below |a#0@@18| |y#0@@3|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@25|) |y#0@@3|))
))))))))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (not (_module.List.Nil_q |x##0_1_0@0|)) (let ((|xs#0@@54| ($Unbox DatatypeTypeType (_module.List.head |x##0_1_0@0|))))
 (=> (|_module.__default.sorted#canCall| |xs#0@@54|) (or (_module.__default.sorted ($LS $LZ) |xs#0@@54|) (=> (not (_module.List.Nil_q |xs#0@@54|)) (let ((|ys#0@@26| (_module.List.tail |xs#0@@54|)))
(_module.__default.sorted ($LS ($LS $LZ)) |ys#0@@26|)))))))))) (=> (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (not (_module.List.Nil_q |x##0_1_0@0|)) (let ((|xs#0@@55| ($Unbox DatatypeTypeType (_module.List.head |x##0_1_0@0|))))
 (=> (|_module.__default.sorted#canCall| |xs#0@@55|) (or (_module.__default.sorted ($LS $LZ) |xs#0@@55|) (=> (not (_module.List.Nil_q |xs#0@@55|)) (let ((|ys#0@@27| (_module.List.tail |xs#0@@55|)))
(_module.__default.sorted ($LS ($LS $LZ)) |ys#0@@27|))))))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (not (_module.List.Nil_q |x##0_1_0@0|)) (let ((|y#2@@2| (_module.List.tail |x##0_1_0@0|)))
(_module.__default.AllSorted ($LS ($LS $LZ)) |y#2@@2|)))))) (=> (=> (|_module.__default.AllSorted#canCall| |x##0_1_0@0|) (or (_module.__default.AllSorted ($LS $LZ) |x##0_1_0@0|) (=> (not (_module.List.Nil_q |x##0_1_0@0|)) (let ((|y#2@@3| (_module.List.tail |x##0_1_0@0|)))
(_module.__default.AllSorted ($LS ($LS $LZ)) |y#2@@3|))))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (and (and (|$IsA#_module.List| (_module.__default.filter ($LS $LZ) |g#0@@4| (_module.__default.mergeAll ($LS $LZ) |x##0_1_0@0|))) (|$IsA#_module.List| (_module.__default.filter ($LS $LZ) |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS $LZ) |x##0_1_0@0|)))) (and (and (|_module.__default.mergeAll#canCall| |x##0_1_0@0|) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.mergeAll ($LS $LZ) |x##0_1_0@0|))) (and (|_module.__default.flatten#canCall| Tclass._module.G |x##0_1_0@0|) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS $LZ) |x##0_1_0@0|))))) (|_module.List#Equal| (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.mergeAll ($LS ($LS $LZ)) |x##0_1_0@0|)) (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS ($LS $LZ)) |x##0_1_0@0|)))) (and (= $Heap@1 $Heap@2) ($IsAllocBox |g#0@@4| Tclass._module.G $Heap@2))) (and (and (and (and ($IsAlloc DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G) $Heap@2) (|_module.__default.sequences#canCall| |xs#0@@49|)) (and (= |##x#0_1_1@0| (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) ($IsAlloc DatatypeTypeType |##x#0_1_1@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@2))) (and (and (|_module.__default.flatten#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) (= |##xs#0_1_3@0| (_module.__default.flatten Tclass._module.G ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_1_3@0| (Tclass._module.List Tclass._module.G) $Heap@2) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))))) (and (and (and (|_module.__default.sequences#canCall| |xs#0@@49|) (|_module.__default.flatten#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |xs#0@@49|))) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (= (ControlFlow 0 6) (- 0 5))))) (|_module.List#Equal| (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.mergeAll ($LS ($LS $LZ)) (_module.__default.sequences ($LS ($LS $LZ)) |xs#0@@49|))) (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.flatten Tclass._module.G ($LS ($LS $LZ)) (_module.__default.sequences ($LS ($LS $LZ)) |xs#0@@49|)))))))))))))))))))))))
(let ((anon7_Then_correct  (=> (and ($IsAllocBox |g#0@@4| Tclass._module.G $Heap@0) ($IsAlloc DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G) $Heap@0)) (=> (and (and (|_module.__default.sort#canCall| |xs#0@@49|) (= |##xs#0_2_0@0| (_module.__default.sort |xs#0@@49|))) (and ($IsAlloc DatatypeTypeType |##xs#0_2_0@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.sort |xs#0@@49|)))) (=> (and (and (and (|_module.__default.sort#canCall| |xs#0@@49|) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.sort |xs#0@@49|))) ($IsAllocBox |g#0@@4| Tclass._module.G $Heap@0)) (and (and ($IsAlloc DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.sequences#canCall| |xs#0@@49|)) (and (= |##x#0_2_0@0| (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) ($IsAlloc DatatypeTypeType |##x#0_2_0@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (not (|_module.List#Equal| |##x#0_2_0@0| |#_module.List.Nil|))) (=> (and (and (|_module.__default.mergeAll#canCall| (_module.__default.sequences ($LS $LZ) |xs#0@@49|)) (= |##xs#0_2_2@0| (_module.__default.mergeAll ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_2_2@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.mergeAll ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|))))) (=> (and (and (and (|_module.__default.sequences#canCall| |xs#0@@49|) (|_module.__default.mergeAll#canCall| (_module.__default.sequences ($LS $LZ) |xs#0@@49|))) (|_module.__default.filter#canCall| |g#0@@4| (_module.__default.mergeAll ($LS $LZ) (_module.__default.sequences ($LS $LZ) |xs#0@@49|)))) (= (ControlFlow 0 3) (- 0 2))) (|_module.List#Equal| (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.sort |xs#0@@49|)) (_module.__default.filter ($LS ($LS $LZ)) |g#0@@4| (_module.__default.mergeAll ($LS ($LS $LZ)) (_module.__default.sequences ($LS ($LS $LZ)) |xs#0@@49|))))))))))))
(let ((anon6_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (|$IsA#_module.List| |xs#0@@49|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@3 $Heap@0) (forall ((|$ih#xs0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#xs0#0| (Tclass._module.List Tclass._module.G)) (U_2_bool (Lit boolType (bool_2_U true)))) (< (DtRank |$ih#xs0#0|) (DtRank |xs#0@@49|))) (|_module.List#Equal| (_module.__default.filter ($LS $LZ) |g#0@@4| (_module.__default.sort |$ih#xs0#0|)) (_module.__default.filter ($LS $LZ) |g#0@@4| |$ih#xs0#0|)))
 :qid |GHCMergeSortdfy.452:25|
 :skolemid |1014|
 :pattern ( (_module.__default.sort |$ih#xs0#0|))
)))) (and (and (and (and (=> (= (ControlFlow 0 18) 1) anon6_Then_correct) (=> (= (ControlFlow 0 18) 3) anon7_Then_correct)) (=> (= (ControlFlow 0 18) 6) anon8_Then_correct)) (=> (= (ControlFlow 0 18) 14) anon9_Then_correct)) (=> (= (ControlFlow 0 18) 17) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and ($IsBox |g#0@@4| Tclass._module.G) ($IsAllocBox |g#0@@4| Tclass._module.G $Heap@@3))) (=> (and (and (and ($Is DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G)) ($IsAlloc DatatypeTypeType |xs#0@@49| (Tclass._module.List Tclass._module.G) $Heap@@3)) (|$IsA#_module.List| |xs#0@@49|)) (and (= 7 $FunctionContextHeight) (= (ControlFlow 0 19) 18))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
