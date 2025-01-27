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
(declare-fun _module.__default.sequences (T@U T@U) T@U)
(declare-fun |_module.__default.sequences#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun Tclass._module.G () T@U)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _module.__default.ascending (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.ascending#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun |_module.__default.Below#canCall| (T@U T@U) Bool)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun _module.__default.Below (T@U T@U) Bool)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun |_module.__default.reverse#canCall| (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.reverse (T@U T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun _module.__default.multiset__of (T@U T@U T@U) T@U)
(declare-fun _module.__default.MultisetUnion (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.__default.descending (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.descending#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.__default.multiset__of#canCall| (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |_module.__default.key#canCall| (T@U) Bool)
(declare-fun _module.__default.key (T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun |_module.__default.MultisetUnion#canCall| (T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.sequences#canCall| |xs#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0| (Tclass._module.List Tclass._module.G)))) (and (not (|_module.List#Equal| (_module.__default.sequences $ly |xs#0|) |#_module.List.Nil|)) ($Is DatatypeTypeType (_module.__default.sequences $ly |xs#0|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.85:10|
 :skolemid |651|
 :pattern ( (_module.__default.sequences $ly |xs#0|))
))))
(assert ($AlwaysAllocated Tclass._module.G))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|a#0| T@U) (|xs#0@@0| T@U) (|ys#0| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| |a#0| |xs#0@@0| |ys#0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (_module.List.Cons_q |ys#0|) (|_module.__default.Below#canCall| |a#0| (_module.List.head |ys#0|))) (=> (and (_module.List.Cons_q |ys#0|) (_module.__default.Below |a#0| (_module.List.head |ys#0|))) (|_module.__default.ascending#canCall| (_module.List.head |ys#0|) (|#_module.List.Cons| |a#0| |xs#0@@0|) (_module.List.tail |ys#0|)))) (=> (not (and (_module.List.Cons_q |ys#0|) (_module.__default.Below |a#0| (_module.List.head |ys#0|)))) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0| |xs#0@@0|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| |ys#0|)))) (= (_module.__default.ascending ($LS $ly@@0) |a#0| |xs#0@@0| |ys#0|) (ite  (and (_module.List.Cons_q |ys#0|) (_module.__default.Below |a#0| (_module.List.head |ys#0|))) (_module.__default.ascending $ly@@0 (_module.List.head |ys#0|) (|#_module.List.Cons| |a#0| |xs#0@@0|) (_module.List.tail |ys#0|)) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0| |xs#0@@0|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences $ly@@0 |ys#0|))))))
 :qid |GHCMergeSortdfy.107:10|
 :skolemid |672|
 :pattern ( (_module.__default.ascending ($LS $ly@@0) |a#0| |xs#0@@0| |ys#0|))
))))
(assert (forall ((_module._default.multiset_of$T T@U) ($ly@@1 T@U) (|xs#0@@1| T@U) ) (! (= (_module.__default.multiset__of _module._default.multiset_of$T ($LS $ly@@1) |xs#0@@1|) (_module.__default.multiset__of _module._default.multiset_of$T $ly@@1 |xs#0@@1|))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T ($LS $ly@@1) |xs#0@@1|))
)))
(assert (forall ((_module._default.MultisetUnion$T T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) ) (! (= (_module.__default.MultisetUnion _module._default.MultisetUnion$T ($LS $ly@@2) |xs#0@@2|) (_module.__default.MultisetUnion _module._default.MultisetUnion$T $ly@@2 |xs#0@@2|))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.__default.MultisetUnion _module._default.MultisetUnion$T ($LS $ly@@2) |xs#0@@2|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (Ctor MultiSetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((_module.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|a#0@@0| T@U) (|xs#0@@3| T@U) (|ys#0@@0| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@0| |xs#0@@3| |ys#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@0| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@0| (Tclass._module.List Tclass._module.G))))) (and (not (|_module.List#Equal| (_module.__default.descending $ly@@3 |a#0@@0| |xs#0@@3| |ys#0@@0|) |#_module.List.Nil|)) ($Is DatatypeTypeType (_module.__default.descending $ly@@3 |a#0@@0| |xs#0@@3| |ys#0@@0|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |660|
 :pattern ( (_module.__default.descending $ly@@3 |a#0@@0| |xs#0@@3| |ys#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|a#0@@1| T@U) (|xs#0@@4| T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| |a#0@@1| |xs#0@@4| |ys#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@1| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@1| (Tclass._module.List Tclass._module.G))))) (and (not (|_module.List#Equal| (_module.__default.ascending $ly@@4 |a#0@@1| |xs#0@@4| |ys#0@@1|) |#_module.List.Nil|)) ($Is DatatypeTypeType (_module.__default.ascending $ly@@4 |a#0@@1| |xs#0@@4| |ys#0@@1|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.107:10|
 :skolemid |670|
 :pattern ( (_module.__default.ascending $ly@@4 |a#0@@1| |xs#0@@4| |ys#0@@1|))
))))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@0 T@U) ($ly@@5 T@U) (|xs#0@@5| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@0 |xs#0@@5|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.multiset_of$T@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@5|)) (let ((|ys#1| (_module.List.tail |xs#0@@5|)))
(|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@0 |ys#1|))) (= (_module.__default.multiset__of _module._default.multiset_of$T@@0 ($LS $ly@@5) |xs#0@@5|) (ite (_module.List.Nil_q |xs#0@@5|) |MultiSet#Empty| (let ((|ys#0@@2| (_module.List.tail |xs#0@@5|)))
(let ((|a#0@@2| (_module.List.head |xs#0@@5|)))
(|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0@@2|) (_module.__default.multiset__of _module._default.multiset_of$T@@0 $ly@@5 |ys#0@@2|))))))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@0 ($LS $ly@@5) |xs#0@@5|))
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
(assert (= (Ctor BoxType) 5))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|a#0@@3| T@U) (|xs#0@@6| T@U) (|ys#0@@3| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@3|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@3| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@3| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@3|))))) (|_module.__default.Below#canCall| (Lit BoxType |a#0@@3|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@3|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@3|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@3|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@3|))))))))) (|_module.__default.descending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@3|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@6|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@3|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@3|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@3|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@3|)))))))))) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@3|)))) (= (_module.__default.descending ($LS $ly@@6) (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@3|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@3|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@3|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@3|))))))))) (_module.__default.descending ($LS $ly@@6) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@3|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@6|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@3|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@6|)))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@6) (Lit DatatypeTypeType |ys#0@@3|))))))))
 :qid |GHCMergeSortdfy.97:10|
 :weight 3
 :skolemid |664|
 :pattern ( (_module.__default.descending ($LS $ly@@6) (Lit BoxType |a#0@@3|) (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@3|)))
))))
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
(assert (forall ((a@@1 T@U) (x@@4 T@U) (y T@U) ) (!  (=> (or (not (= x@@4 y)) (not true)) (= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@1 x@@4) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@1 x@@4) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@1 T@U) ($ly@@7 T@U) (|xs#0@@7| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@1 (Lit DatatypeTypeType |xs#0@@7|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.multiset_of$T@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@7|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@7|)))))
(|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@1 |ys#3|))) (= (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@7|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@7|)) |MultiSet#Empty| (let ((|ys#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@7|)))))
(let ((|a#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@7|)))))
(|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#2|) (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@7) |ys#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |605|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@7) (Lit DatatypeTypeType |xs#0@@7|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) (|a#0@@4| T@U) (|xs#0@@8| T@U) (|ys#0@@4| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@4| |xs#0@@8| |ys#0@@4|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@4| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@8| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@4| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (_module.List.Cons_q |ys#0@@4|) (|_module.__default.Below#canCall| |a#0@@4| (_module.List.head |ys#0@@4|))) (=> (and (_module.List.Cons_q |ys#0@@4|) (not (_module.__default.Below |a#0@@4| (_module.List.head |ys#0@@4|)))) (|_module.__default.descending#canCall| (_module.List.head |ys#0@@4|) (|#_module.List.Cons| |a#0@@4| |xs#0@@8|) (_module.List.tail |ys#0@@4|)))) (=> (not (and (_module.List.Cons_q |ys#0@@4|) (not (_module.__default.Below |a#0@@4| (_module.List.head |ys#0@@4|))))) (|_module.__default.sequences#canCall| |ys#0@@4|))) (= (_module.__default.descending ($LS $ly@@8) |a#0@@4| |xs#0@@8| |ys#0@@4|) (ite  (and (_module.List.Cons_q |ys#0@@4|) (not (_module.__default.Below |a#0@@4| (_module.List.head |ys#0@@4|)))) (_module.__default.descending $ly@@8 (_module.List.head |ys#0@@4|) (|#_module.List.Cons| |a#0@@4| |xs#0@@8|) (_module.List.tail |ys#0@@4|)) (|#_module.List.Cons| ($Box DatatypeTypeType (|#_module.List.Cons| |a#0@@4| |xs#0@@8|)) (_module.__default.sequences $ly@@8 |ys#0@@4|))))))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |662|
 :pattern ( (_module.__default.descending ($LS $ly@@8) |a#0@@4| |xs#0@@8| |ys#0@@4|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1097|
)))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@5| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| (Lit BoxType |a#0@@5|) (Lit BoxType |b#0|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@5| Tclass._module.G) ($IsBox |b#0| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| (Lit BoxType |a#0@@5|)) (|_module.__default.key#canCall| (Lit BoxType |b#0|))) (= (_module.__default.Below (Lit BoxType |a#0@@5|) (Lit BoxType |b#0|)) (<= (_module.__default.key (Lit BoxType |a#0@@5|)) (_module.__default.key (Lit BoxType |b#0|))))))
 :qid |GHCMergeSortdfy.75:17|
 :weight 3
 :skolemid |640|
 :pattern ( (_module.__default.Below (Lit BoxType |a#0@@5|) (Lit BoxType |b#0|)))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((a@@2 T@U) (x@@5 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@2 x@@5)) (+ (|MultiSet#Card| a@@2) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@2 x@@5)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((a@@3 T@U) (b@@1 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@3 b@@1)) (+ (|MultiSet#Card| a@@3) (|MultiSet#Card| b@@1)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@3 b@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@6| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| |a#0@@6| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@6| Tclass._module.G) ($IsBox |b#0@@0| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| |a#0@@6|) (|_module.__default.key#canCall| |b#0@@0|)) (= (_module.__default.Below |a#0@@6| |b#0@@0|) (<= (_module.__default.key |a#0@@6|) (_module.__default.key |b#0@@0|)))))
 :qid |GHCMergeSortdfy.75:17|
 :skolemid |639|
 :pattern ( (_module.__default.Below |a#0@@6| |b#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0 T@U) ($ly@@9 T@U) (|xs#0@@9| T@U) (|acc#0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0 |xs#0@@9| |acc#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List _module._default.reverse$_T0)) ($Is DatatypeTypeType |acc#0| (Tclass._module.List _module._default.reverse$_T0))))) (and (=> (not (_module.List.Nil_q |xs#0@@9|)) (let ((|ys#1@@0| (_module.List.tail |xs#0@@9|)))
(let ((|a#1| (_module.List.head |xs#0@@9|)))
(|_module.__default.reverse#canCall| _module._default.reverse$_T0 |ys#1@@0| (|#_module.List.Cons| |a#1| |acc#0|))))) (= (_module.__default.reverse _module._default.reverse$_T0 ($LS $ly@@9) |xs#0@@9| |acc#0|) (ite (_module.List.Nil_q |xs#0@@9|) |acc#0| (let ((|ys#0@@5| (_module.List.tail |xs#0@@9|)))
(let ((|a#0@@7| (_module.List.head |xs#0@@9|)))
(_module.__default.reverse _module._default.reverse$_T0 $ly@@9 |ys#0@@5| (|#_module.List.Cons| |a#0@@7| |acc#0|))))))))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0 ($LS $ly@@9) |xs#0@@9| |acc#0|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.MultisetUnion$T@@0 T@U) ($ly@@10 T@U) (|xs#0@@10| T@U) ) (!  (=> (and (or (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@0 |xs#0@@10|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@0))) ($IsAlloc DatatypeTypeType |xs#0@@10| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@0)) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc MultiSetType (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@0 $ly@@10 |xs#0@@10|) (TMultiSet _module._default.MultisetUnion$T@@0) $Heap))
 :qid |GHCMergeSortdfy.38:16|
 :skolemid |610|
 :pattern ( ($IsAlloc MultiSetType (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@0 $ly@@10 |xs#0@@10|) (TMultiSet _module._default.MultisetUnion$T@@0) $Heap))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@11 T@U) (|a#0@@8| T@U) (|xs#0@@11| T@U) (|ys#0@@6| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| (Lit BoxType |a#0@@8|) (Lit DatatypeTypeType |xs#0@@11|) (Lit DatatypeTypeType |ys#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@8| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@11| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@6| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@6|))))) (|_module.__default.Below#canCall| (Lit BoxType |a#0@@8|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@6|))))) (=> (U_2_bool (Lit boolType (bool_2_U  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@6|)) (_module.__default.Below (Lit BoxType |a#0@@8|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@6|)))))))) (|_module.__default.ascending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@6|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@8|) (Lit DatatypeTypeType |xs#0@@11|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@6|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@6|)) (_module.__default.Below (Lit BoxType |a#0@@8|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@6|))))))))) (and (|_module.__default.reverse#canCall| Tclass._module.G (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@8|) (Lit DatatypeTypeType |xs#0@@11|))) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@6|))))) (= (_module.__default.ascending ($LS $ly@@11) (Lit BoxType |a#0@@8|) (Lit DatatypeTypeType |xs#0@@11|) (Lit DatatypeTypeType |ys#0@@6|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@6|)) (_module.__default.Below (Lit BoxType |a#0@@8|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@6|))))) (_module.__default.ascending ($LS $ly@@11) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@6|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@8|) (Lit DatatypeTypeType |xs#0@@11|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@6|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@8|) (Lit DatatypeTypeType |xs#0@@11|))) (Lit DatatypeTypeType |#_module.List.Nil|)))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@11) (Lit DatatypeTypeType |ys#0@@6|))))))))
 :qid |GHCMergeSortdfy.107:10|
 :weight 3
 :skolemid |674|
 :pattern ( (_module.__default.ascending ($LS $ly@@11) (Lit BoxType |a#0@@8|) (Lit DatatypeTypeType |xs#0@@11|) (Lit DatatypeTypeType |ys#0@@6|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@12 T@U) (|xs#0@@12| T@U) ) (!  (=> (or (|_module.__default.sequences#canCall| |xs#0@@12|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@12| (Tclass._module.List Tclass._module.G)))) (and (=> (not (_module.List.Nil_q |xs#0@@12|)) (let ((|ys#1@@1| (_module.List.tail |xs#0@@12|)))
(let ((|a#1@@0| (_module.List.head |xs#0@@12|)))
 (=> (not (_module.List.Nil_q |ys#1@@1|)) (let ((|zs#1| (_module.List.tail |ys#1@@1|)))
(let ((|b#1| (_module.List.head |ys#1@@1|)))
 (and (and (|_module.__default.Below#canCall| |a#1@@0| |b#1|) (=> (not (_module.__default.Below |a#1@@0| |b#1|)) (|_module.__default.descending#canCall| |b#1| (|#_module.List.Cons| |a#1@@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#1|))) (=> (_module.__default.Below |a#1@@0| |b#1|) (|_module.__default.ascending#canCall| |b#1| (|#_module.List.Cons| |a#1@@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#1|))))))))) (= (_module.__default.sequences ($LS $ly@@12) |xs#0@@12|) (ite (_module.List.Nil_q |xs#0@@12|) (|#_module.List.Cons| ($Box DatatypeTypeType |xs#0@@12|) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|ys#0@@7| (_module.List.tail |xs#0@@12|)))
(let ((|a#0@@9| (_module.List.head |xs#0@@12|)))
(ite (_module.List.Nil_q |ys#0@@7|) (|#_module.List.Cons| ($Box DatatypeTypeType |xs#0@@12|) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|zs#0| (_module.List.tail |ys#0@@7|)))
(let ((|b#0@@1| (_module.List.head |ys#0@@7|)))
(ite  (not (_module.__default.Below |a#0@@9| |b#0@@1|)) (_module.__default.descending $ly@@12 |b#0@@1| (|#_module.List.Cons| |a#0@@9| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#0|) (_module.__default.ascending $ly@@12 |b#0@@1| (|#_module.List.Cons| |a#0@@9| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#0|)))))))))))
 :qid |GHCMergeSortdfy.85:10|
 :skolemid |653|
 :pattern ( (_module.__default.sequences ($LS $ly@@12) |xs#0@@12|))
))))
(assert (forall ((_module.List$T@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((a@@4 T@U) (b@@2 T@U) ) (!  (=> (|MultiSet#Equal| a@@4 b@@2) (= a@@4 b@@2))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@4 b@@2))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@13 T@U) (|a#0@@10| T@U) (|xs#0@@13| T@U) (|ys#0@@8| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| |a#0@@10| |xs#0@@13| (Lit DatatypeTypeType |ys#0@@8|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@10| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@13| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@8| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@8|))))) (|_module.__default.Below#canCall| |a#0@@10| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@8|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@8|)) (_module.__default.Below |a#0@@10| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@8|))))) (|_module.__default.ascending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@8|))) (|#_module.List.Cons| |a#0@@10| |xs#0@@13|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@8|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@8|)) (_module.__default.Below |a#0@@10| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@8|)))))) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@10| |xs#0@@13|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@8|))))) (= (_module.__default.ascending ($LS $ly@@13) |a#0@@10| |xs#0@@13| (Lit DatatypeTypeType |ys#0@@8|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@8|)) (_module.__default.Below |a#0@@10| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@8|))))) (_module.__default.ascending ($LS $ly@@13) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@8|))) (|#_module.List.Cons| |a#0@@10| |xs#0@@13|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@8|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@10| |xs#0@@13|) (Lit DatatypeTypeType |#_module.List.Nil|))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@13) (Lit DatatypeTypeType |ys#0@@8|))))))))
 :qid |GHCMergeSortdfy.107:10|
 :weight 3
 :skolemid |673|
 :pattern ( (_module.__default.ascending ($LS $ly@@13) |a#0@@10| |xs#0@@13| (Lit DatatypeTypeType |ys#0@@8|)))
))))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MultisetUnion$T@@1 T@U) ($ly@@14 T@U) (|xs#0@@14| T@U) ) (!  (=> (or (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@1 |xs#0@@14|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@14| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@1))))) (and (=> (not (_module.List.Nil_q |xs#0@@14|)) (let ((|ys#1@@2| (_module.List.tail |xs#0@@14|)))
(let ((|a#1@@1| ($Unbox DatatypeTypeType (_module.List.head |xs#0@@14|))))
 (and (|_module.__default.multiset__of#canCall| _module._default.MultisetUnion$T@@1 |a#1@@1|) (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@1 |ys#1@@2|))))) (= (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@1 ($LS $ly@@14) |xs#0@@14|) (ite (_module.List.Nil_q |xs#0@@14|) |MultiSet#Empty| (let ((|ys#0@@9| (_module.List.tail |xs#0@@14|)))
(let ((|a#0@@11| ($Unbox DatatypeTypeType (_module.List.head |xs#0@@14|))))
(|MultiSet#Union| (_module.__default.multiset__of _module._default.MultisetUnion$T@@1 ($LS $LZ) |a#0@@11|) (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@1 $ly@@14 |ys#0@@9|))))))))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@1 ($LS $ly@@14) |xs#0@@14|))
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
(assert (forall ((a@@5 T@U) (b@@3 T@U) ) (!  (=> (and (_module.List.Nil_q a@@5) (_module.List.Nil_q b@@3)) (|_module.List#Equal| a@@5 b@@3))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( (|_module.List#Equal| a@@5 b@@3) (_module.List.Nil_q a@@5))
 :pattern ( (|_module.List#Equal| a@@5 b@@3) (_module.List.Nil_q b@@3))
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
(assert (forall ((a@@6 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@6) x@@6) (+ (|MultiSet#Multiplicity| a@@6 x@@6) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@6 x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0@@0 T@U) ($ly@@15 T@U) (|xs#0@@15| T@U) (|acc#0@@0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@0 |xs#0@@15| |acc#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@15| (Tclass._module.List _module._default.reverse$_T0@@0)) ($Is DatatypeTypeType |acc#0@@0| (Tclass._module.List _module._default.reverse$_T0@@0))))) ($Is DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@0 $ly@@15 |xs#0@@15| |acc#0@@0|) (Tclass._module.List _module._default.reverse$_T0@@0)))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@0 $ly@@15 |xs#0@@15| |acc#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@16 T@U) (|xs#0@@16| T@U) ) (!  (=> (or (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |xs#0@@16|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@16| (Tclass._module.List Tclass._module.G)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@16|)))))) (let ((|ys#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@16|)))))
(let ((|a#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@16|)))))
 (=> (not (_module.List.Nil_q |ys#3@@0|)) (let ((|zs#3| (_module.List.tail |ys#3@@0|)))
(let ((|b#3| (_module.List.head |ys#3@@0|)))
 (and (and (|_module.__default.Below#canCall| |a#3| |b#3|) (=> (not (_module.__default.Below |a#3| |b#3|)) (|_module.__default.descending#canCall| |b#3| (|#_module.List.Cons| |a#3| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#3|))) (=> (_module.__default.Below |a#3| |b#3|) (|_module.__default.ascending#canCall| |b#3| (|#_module.List.Cons| |a#3| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#3|))))))))) (= (_module.__default.sequences ($LS $ly@@16) (Lit DatatypeTypeType |xs#0@@16|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@16|)) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |xs#0@@16|)) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|ys#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@16|)))))
(let ((|a#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@16|)))))
(ite (_module.List.Nil_q |ys#2@@0|) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |xs#0@@16|)) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|zs#2| (Lit DatatypeTypeType (_module.List.tail |ys#2@@0|))))
(let ((|b#2| (Lit BoxType (_module.List.head |ys#2@@0|))))
(ite  (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below |a#2@@0| |b#2|))))) (_module.__default.descending ($LS $ly@@16) |b#2| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2@@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |zs#2|) (_module.__default.ascending ($LS $ly@@16) |b#2| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2@@0| (Lit DatatypeTypeType |#_module.List.Nil|))) |zs#2|)))))))))))
 :qid |GHCMergeSortdfy.85:10|
 :weight 3
 :skolemid |654|
 :pattern ( (_module.__default.sequences ($LS $ly@@16) (Lit DatatypeTypeType |xs#0@@16|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.multiset_of$T@@2 T@U) ($ly@@17 T@U) (|xs#0@@17| T@U) ) (!  (=> (and (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@2 |xs#0@@17|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@17| (Tclass._module.List _module._default.multiset_of$T@@2)) ($IsAlloc DatatypeTypeType |xs#0@@17| (Tclass._module.List _module._default.multiset_of$T@@2) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@2 $ly@@17 |xs#0@@17|) (TMultiSet _module._default.multiset_of$T@@2) $Heap@@0))
 :qid |GHCMergeSortdfy.31:16|
 :skolemid |602|
 :pattern ( ($IsAlloc MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@2 $ly@@17 |xs#0@@17|) (TMultiSet _module._default.multiset_of$T@@2) $Heap@@0))
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
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@3 T@U) ($ly@@18 T@U) (|xs#0@@18| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@3 |xs#0@@18|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@18| (Tclass._module.List _module._default.multiset_of$T@@3)))) ($Is MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@3 $ly@@18 |xs#0@@18|) (TMultiSet _module._default.multiset_of$T@@3)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@3 $ly@@18 |xs#0@@18|))
))))
(assert (forall (($ly@@19 T@U) (|xs#0@@19| T@U) ) (! (= (_module.__default.sequences ($LS $ly@@19) |xs#0@@19|) (_module.__default.sequences $ly@@19 |xs#0@@19|))
 :qid |GHCMergeSortdfy.85:10|
 :skolemid |649|
 :pattern ( (_module.__default.sequences ($LS $ly@@19) |xs#0@@19|))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@8 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@8))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@8))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0@@1 T@U) ($ly@@20 T@U) (|xs#0@@20| T@U) (|acc#0@@1| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@1 (Lit DatatypeTypeType |xs#0@@20|) (Lit DatatypeTypeType |acc#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@20| (Tclass._module.List _module._default.reverse$_T0@@1)) ($Is DatatypeTypeType |acc#0@@1| (Tclass._module.List _module._default.reverse$_T0@@1))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@20|)))))) (let ((|ys#3@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@20|)))))
(let ((|a#3@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@20|)))))
(|_module.__default.reverse#canCall| _module._default.reverse$_T0@@1 |ys#3@@1| (|#_module.List.Cons| |a#3@@0| (Lit DatatypeTypeType |acc#0@@1|)))))) (= (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@20) (Lit DatatypeTypeType |xs#0@@20|) (Lit DatatypeTypeType |acc#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@20|)) |acc#0@@1| (let ((|ys#2@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@20|)))))
(let ((|a#2@@1| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@20|)))))
(Lit DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@20) |ys#2@@1| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2@@1| (Lit DatatypeTypeType |acc#0@@1|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |597|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@20) (Lit DatatypeTypeType |xs#0@@20|) (Lit DatatypeTypeType |acc#0@@1|)))
))))
(assert (forall (($ly@@21 T@U) (|a#0@@12| T@U) (|xs#0@@21| T@U) (|ys#0@@10| T@U) ) (! (= (_module.__default.descending ($LS $ly@@21) |a#0@@12| |xs#0@@21| |ys#0@@10|) (_module.__default.descending $ly@@21 |a#0@@12| |xs#0@@21| |ys#0@@10|))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |658|
 :pattern ( (_module.__default.descending ($LS $ly@@21) |a#0@@12| |xs#0@@21| |ys#0@@10|))
)))
(assert (forall (($ly@@22 T@U) (|a#0@@13| T@U) (|xs#0@@22| T@U) (|ys#0@@11| T@U) ) (! (= (_module.__default.ascending ($LS $ly@@22) |a#0@@13| |xs#0@@22| |ys#0@@11|) (_module.__default.ascending $ly@@22 |a#0@@13| |xs#0@@22| |ys#0@@11|))
 :qid |GHCMergeSortdfy.107:10|
 :skolemid |668|
 :pattern ( (_module.__default.ascending ($LS $ly@@22) |a#0@@13| |xs#0@@22| |ys#0@@11|))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@7 b@@4) o@@0) (+ (|MultiSet#Multiplicity| a@@7 o@@0) (|MultiSet#Multiplicity| b@@4 o@@0)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@7 b@@4) o@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.reverse$_T0@@2 T@U) ($ly@@23 T@U) (|xs#0@@23| T@U) (|acc#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@2 |xs#0@@23| |acc#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@23| (Tclass._module.List _module._default.reverse$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@23| (Tclass._module.List _module._default.reverse$_T0@@2) $Heap@@1)) (and ($Is DatatypeTypeType |acc#0@@2| (Tclass._module.List _module._default.reverse$_T0@@2)) ($IsAlloc DatatypeTypeType |acc#0@@2| (Tclass._module.List _module._default.reverse$_T0@@2) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@2 $ly@@23 |xs#0@@23| |acc#0@@2|) (Tclass._module.List _module._default.reverse$_T0@@2) $Heap@@1))
 :qid |GHCMergeSortdfy.24:10|
 :skolemid |594|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@2 $ly@@23 |xs#0@@23| |acc#0@@2|) (Tclass._module.List _module._default.reverse$_T0@@2) $Heap@@1))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MultisetUnion$T@@2 T@U) ($ly@@24 T@U) (|xs#0@@24| T@U) ) (!  (=> (or (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@2 |xs#0@@24|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@24| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@2))))) ($Is MultiSetType (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@2 $ly@@24 |xs#0@@24|) (TMultiSet _module._default.MultisetUnion$T@@2)))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@2 $ly@@24 |xs#0@@24|))
))))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((_module._default.reverse$_T0@@3 T@U) ($ly@@25 T@U) (|xs#0@@25| T@U) (|acc#0@@3| T@U) ) (! (= (_module.__default.reverse _module._default.reverse$_T0@@3 ($LS $ly@@25) |xs#0@@25| |acc#0@@3|) (_module.__default.reverse _module._default.reverse$_T0@@3 $ly@@25 |xs#0@@25| |acc#0@@3|))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@3 ($LS $ly@@25) |xs#0@@25| |acc#0@@3|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@26 T@U) (|a#0@@14| T@U) (|xs#0@@26| T@U) (|ys#0@@12| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@14| |xs#0@@26| (Lit DatatypeTypeType |ys#0@@12|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@14| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@26| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@12| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@12|))))) (|_module.__default.Below#canCall| |a#0@@14| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@12|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@12|)) (not (_module.__default.Below |a#0@@14| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@12|)))))) (|_module.__default.descending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@12|))) (|#_module.List.Cons| |a#0@@14| |xs#0@@26|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@12|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@12|)) (not (_module.__default.Below |a#0@@14| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@12|))))))) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@12|)))) (= (_module.__default.descending ($LS $ly@@26) |a#0@@14| |xs#0@@26| (Lit DatatypeTypeType |ys#0@@12|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@12|)) (not (_module.__default.Below |a#0@@14| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@12|)))))) (_module.__default.descending ($LS $ly@@26) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@12|))) (|#_module.List.Cons| |a#0@@14| |xs#0@@26|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@12|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (|#_module.List.Cons| |a#0@@14| |xs#0@@26|)) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@26) (Lit DatatypeTypeType |ys#0@@12|))))))))
 :qid |GHCMergeSortdfy.97:10|
 :weight 3
 :skolemid |663|
 :pattern ( (_module.__default.descending ($LS $ly@@26) |a#0@@14| |xs#0@@26| (Lit DatatypeTypeType |ys#0@@12|)))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1103|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MultisetUnion$T@@3 T@U) ($ly@@27 T@U) (|xs#0@@27| T@U) ) (!  (=> (or (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@3 (Lit DatatypeTypeType |xs#0@@27|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@27| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@3))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@27|)))))) (let ((|ys#3@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@27|)))))
(let ((|a#3@@1| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |xs#0@@27|))))))
 (and (|_module.__default.multiset__of#canCall| _module._default.MultisetUnion$T@@3 |a#3@@1|) (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@3 |ys#3@@2|))))) (= (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@3 ($LS $ly@@27) (Lit DatatypeTypeType |xs#0@@27|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@27|)) |MultiSet#Empty| (let ((|ys#2@@2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@27|)))))
(let ((|a#2@@2| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |xs#0@@27|))))))
(|MultiSet#Union| (_module.__default.multiset__of _module._default.MultisetUnion$T@@3 ($LS $LZ) |a#2@@2|) (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@3 ($LS $ly@@27) |ys#2@@2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |613|
 :pattern ( (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@3 ($LS $ly@@27) (Lit DatatypeTypeType |xs#0@@27|)))
))))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((a@@8 T@U) (x@@10 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@8 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@8 x@@10) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@8 x@@10) (|MultiSet#Multiplicity| a@@8 y@@0))
)))
(assert (forall ((a@@9 T@U) (x@@11 T@U) (o@@1 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@11) o@@1))  (or (= o@@1 x@@11) (< 0 (|MultiSet#Multiplicity| a@@9 o@@1))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@11) o@@1))
)))
(assert (forall ((a@@10 T@U) (b@@5 T@U) ) (! (= (|MultiSet#Equal| a@@10 b@@5) (forall ((o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| a@@10 o@@2) (|MultiSet#Multiplicity| b@@5 o@@2))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@10 o@@2))
 :pattern ( (|MultiSet#Multiplicity| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@10 b@@5))
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
(declare-fun |ys#0@@13| () T@U)
(declare-fun |##xs#0_0_0_0@0| () T@U)
(declare-fun |a#0@@15| () T@U)
(declare-fun |xs#0@@28| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##xs#0_0_0_1@0| () T@U)
(declare-fun |##xs#0_0_0_3@0| () T@U)
(declare-fun |##a#0_0_1_0@0| () T@U)
(declare-fun |##xs#0_0_1_1@0| () T@U)
(declare-fun |##ys#0_0_1_0@0| () T@U)
(declare-fun |##xs#0_0_1_0@0| () T@U)
(declare-fun |a##0_0_1_0@0| () T@U)
(declare-fun |xs##0_0_1_0@0| () T@U)
(declare-fun |ys##0_0_1_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##xs#0_0_1_2@0| () T@U)
(declare-fun |##xs#0_0_1_3@0| () T@U)
(declare-fun |##xs#0_0_2_0@0| () T@U)
(declare-fun |##a#0_0_2_1@0| () T@U)
(declare-fun |##xs#0_0_2_3@0| () T@U)
(declare-fun |##ys#0_0_2_1@0| () T@U)
(declare-fun |##xs#0_0_2_2@0| () T@U)
(declare-fun |##xs#1_0_0_0@0| () T@U)
(declare-fun |##xs#1_0_0_1@0| () T@U)
(declare-fun |##xs#1_0_1_1@0| () T@U)
(declare-fun |##acc#1_0_1_0@0| () T@U)
(declare-fun |##xs#1_0_1_0@0| () T@U)
(declare-fun |xs##1_0_1_0@0| () T@U)
(declare-fun |acc##1_0_1_0@0| () T@U)
(declare-fun call0formal@_module._default.perm_reverse$_T0@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |##xs#1_0_1_3@0| () T@U)
(declare-fun |##xs#1_0_1_4@0| () T@U)
(declare-fun |##xs#1_0_2_1@0| () T@U)
(declare-fun |##acc#1_0_2_0@0| () T@U)
(declare-fun |##xs#1_0_2_0@0| () T@U)
(declare-fun |##xs#1_0_2_2@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##xs#1_0_2_5@0| () T@U)
(declare-fun |##acc#1_0_2_1@0| () T@U)
(declare-fun |##xs#1_0_2_4@0| () T@U)
(declare-fun |##xs#1_0_3_1@0| () T@U)
(declare-fun |##acc#1_0_3_0@0| () T@U)
(declare-fun |##xs#1_0_3_0@0| () T@U)
(declare-fun |##xs#1_0_3_4@0| () T@U)
(declare-fun |##acc#1_0_3_1@0| () T@U)
(declare-fun |##xs#1_0_3_3@0| () T@U)
(declare-fun |##xs#1_0_3_5@0| () T@U)
(declare-fun |##xs#1_0_4_0@0| () T@U)
(declare-fun |##xs#1_0_4_3@0| () T@U)
(declare-fun |##acc#1_0_4_0@0| () T@U)
(declare-fun |##xs#1_0_4_2@0| () T@U)
(declare-fun |##b#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@2 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.perm__ascending)
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
 (=> (= (ControlFlow 0 0) 40) (let ((anon22_Then_correct  (=> (and (and (_module.List.Cons_q |ys#0@@13|) (= |##xs#0_0_0_0@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_0@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)))) (=> (and (and (and (_module.List.Cons_q |ys#0@@13|) (= |##xs#0_0_0_1@0| (_module.List.tail |ys#0@@13|))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_1@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.List.tail |ys#0@@13|)))) (and (and (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.List.tail |ys#0@@13|))) (and ($IsAlloc DatatypeTypeType |xs#0@@28| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G |xs#0@@28|)))) (and (=> (= (ControlFlow 0 30) (- 0 32)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (and (=> (= (ControlFlow 0 30) (- 0 31)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (=> (= |##xs#0_0_0_3@0| (|#_module.List.Cons| (_module.List.head |ys#0@@13|) (_module.List.tail |ys#0@@13|))) (=> (and ($IsAlloc DatatypeTypeType |##xs#0_0_0_3@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| (_module.List.head |ys#0@@13|) (_module.List.tail |ys#0@@13|)))) (=> (and (and (|_module.__default.multiset__of#canCall| Tclass._module.G |xs#0@@28|) (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| (_module.List.head |ys#0@@13|) (_module.List.tail |ys#0@@13|)))) (= (ControlFlow 0 30) (- 0 29))) (|MultiSet#Equal| (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| (_module.List.head |ys#0@@13|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|))) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (_module.List.tail |ys#0@@13|))) (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0@@15|) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |xs#0@@28|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| (_module.List.head |ys#0@@13|) (_module.List.tail |ys#0@@13|))))))))))))))))
(let ((anon21_Then_correct  (=> (and (_module.List.Cons_q |ys#0@@13|) (= |##a#0_0_1_0@0| (_module.List.head |ys#0@@13|))) (=> (and (and ($IsAllocBox |##a#0_0_1_0@0| Tclass._module.G $Heap@0) (= |##xs#0_0_1_1@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_1_1@0| (Tclass._module.List Tclass._module.G) $Heap@0) (_module.List.Cons_q |ys#0@@13|))) (=> (and (and (and (= |##ys#0_0_1_0@0| (_module.List.tail |ys#0@@13|)) ($IsAlloc DatatypeTypeType |##ys#0_0_1_0@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (and (|_module.__default.ascending#canCall| (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)) (= |##xs#0_0_1_0@0| (_module.__default.ascending ($LS $LZ) (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|))))) (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_1_0@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)))) (and (|_module.__default.ascending#canCall| (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)))))) (and (=> (= (ControlFlow 0 23) (- 0 28)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (=> (and (= |a##0_0_1_0@0| (_module.List.head |ys#0@@13|)) (= |xs##0_0_1_0@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|))) (and (=> (= (ControlFlow 0 23) (- 0 27)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (=> (= |ys##0_0_1_0@0| (_module.List.tail |ys#0@@13|)) (and (=> (= (ControlFlow 0 23) (- 0 26)) (< (DtRank |ys##0_0_1_0@0|) (DtRank |ys#0@@13|))) (=> (< (DtRank |ys##0_0_1_0@0|) (DtRank |ys#0@@13|)) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (|_module.__default.ascending#canCall| |a##0_0_1_0@0| |xs##0_0_1_0@0| |ys##0_0_1_0@0|) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) |a##0_0_1_0@0| |xs##0_0_1_0@0| |ys##0_0_1_0@0|))) (and (|_module.__default.multiset__of#canCall| Tclass._module.G |xs##0_0_1_0@0|) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys##0_0_1_0@0|))) (and (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.ascending ($LS ($LS $LZ)) |a##0_0_1_0@0| |xs##0_0_1_0@0| |ys##0_0_1_0@0|)) (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a##0_0_1_0@0|) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |xs##0_0_1_0@0|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys##0_0_1_0@0|))) (= $Heap@0 $Heap@3))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (=> (= |##xs#0_0_1_2@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (=> (and ($IsAlloc DatatypeTypeType |##xs#0_0_1_2@0| (Tclass._module.List Tclass._module.G) $Heap@3) (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (=> (= |##xs#0_0_1_3@0| (_module.List.tail |ys#0@@13|)) (=> (and ($IsAlloc DatatypeTypeType |##xs#0_0_1_3@0| (Tclass._module.List Tclass._module.G) $Heap@3) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.List.tail |ys#0@@13|))) (=> (and (and (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.List.tail |ys#0@@13|))) (= (ControlFlow 0 23) (- 0 22))) (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.ascending ($LS ($LS $LZ)) (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|))) (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| (_module.List.head |ys#0@@13|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|))) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (_module.List.tail |ys#0@@13|))))))))))))))))))))))))))))
(let ((anon20_Then_correct  (=> ($IsAllocBox |a#0@@15| Tclass._module.G $Heap@0) (=> (and (and (and ($IsAlloc DatatypeTypeType |xs#0@@28| (Tclass._module.List Tclass._module.G) $Heap@0) ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0)) (and (|_module.__default.ascending#canCall| |a#0@@15| |xs#0@@28| |ys#0@@13|) (= |##xs#0_0_2_0@0| (_module.__default.ascending ($LS $LZ) |a#0@@15| |xs#0@@28| |ys#0@@13|)))) (and (and ($IsAlloc DatatypeTypeType |##xs#0_0_2_0@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) |a#0@@15| |xs#0@@28| |ys#0@@13|))) (and (|_module.__default.ascending#canCall| |a#0@@15| |xs#0@@28| |ys#0@@13|) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) |a#0@@15| |xs#0@@28| |ys#0@@13|))))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (=> (and (and (= |##a#0_0_2_1@0| (_module.List.head |ys#0@@13|)) ($IsAllocBox |##a#0_0_2_1@0| Tclass._module.G $Heap@0)) (and (= |##xs#0_0_2_3@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) ($IsAlloc DatatypeTypeType |##xs#0_0_2_3@0| (Tclass._module.List Tclass._module.G) $Heap@0))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (=> (and (= |##ys#0_0_2_1@0| (_module.List.tail |ys#0@@13|)) ($IsAlloc DatatypeTypeType |##ys#0_0_2_1@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (=> (and (and (and (|_module.__default.ascending#canCall| (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)) (= |##xs#0_0_2_2@0| (_module.__default.ascending ($LS $LZ) (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)))) (and ($IsAlloc DatatypeTypeType |##xs#0_0_2_2@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|))))) (and (and (|_module.__default.ascending#canCall| (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)))) (= (ControlFlow 0 19) (- 0 18)))) (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.ascending ($LS ($LS $LZ)) |a#0@@15| |xs#0@@28| |ys#0@@13|)) (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.ascending ($LS ($LS $LZ)) (_module.List.head |ys#0@@13|) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (_module.List.tail |ys#0@@13|)))))))))))))))
(let ((anon19_Then_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 14) (- 0 13)) (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.ascending ($LS ($LS $LZ)) |a#0@@15| |xs#0@@28| |ys#0@@13|)) (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0@@15|) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |xs#0@@28|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@13|))))))
(let ((anon22_Else_correct  (=> (and (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS $LZ) (_module.__default.ascending ($LS $LZ) |a#0@@15| |xs#0@@28| |ys#0@@13|)) (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0@@15|) (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |xs#0@@28|)) (_module.__default.multiset__of Tclass._module.G ($LS $LZ) (|#_module.List.Cons| (_module.List.head |ys#0@@13|) (_module.List.tail |ys#0@@13|))))) (= (ControlFlow 0 33) 14)) GeneratedUnifiedExit_correct)))
(let ((anon18_Then_correct  (=> (and (_module.List.Cons_q |ys#0@@13|) (_module.__default.Below |a#0@@15| (_module.List.head |ys#0@@13|))) (and (and (and (and (=> (= (ControlFlow 0 34) 17) anon19_Then_correct) (=> (= (ControlFlow 0 34) 19) anon20_Then_correct)) (=> (= (ControlFlow 0 34) 23) anon21_Then_correct)) (=> (= (ControlFlow 0 34) 30) anon22_Then_correct)) (=> (= (ControlFlow 0 34) 33) anon22_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS $LZ) (_module.__default.ascending ($LS $LZ) |a#0@@15| |xs#0@@28| |ys#0@@13|)) (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0@@15|) (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |xs#0@@28|)) (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#0@@13|))) (= (ControlFlow 0 15) 14)) GeneratedUnifiedExit_correct)))
(let ((anon28_Then_correct  (=> (and (and (= |##xs#1_0_0_0@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) ($IsAlloc DatatypeTypeType |##xs#1_0_0_0@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (and (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (= |##xs#1_0_0_1@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |##xs#1_0_0_1@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G (Lit DatatypeTypeType |#_module.List.Nil|))) (and ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|))) (and (and (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (|_module.__default.multiset__of#canCall| Tclass._module.G (Lit DatatypeTypeType |#_module.List.Nil|))) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|))) (and (and (and ($IsAlloc DatatypeTypeType |xs#0@@28| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G |xs#0@@28|)) (and ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|))) (and (and (|_module.__default.multiset__of#canCall| Tclass._module.G |xs#0@@28|) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|)) (= (ControlFlow 0 12) (- 0 11))))) (|MultiSet#Equal| (|MultiSet#Union| (|MultiSet#Union| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@13|)) (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0@@15|) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |xs#0@@28|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@13|)))))))
(let ((anon27_Then_correct  (=> (and (= |##xs#1_0_1_1@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) ($IsAlloc DatatypeTypeType |##xs#1_0_1_1@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (=> (and (and (and (= |##acc#1_0_1_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#1_0_1_0@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (= |##xs#1_0_1_0@0| (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (and ($IsAlloc DatatypeTypeType |##xs#1_0_1_0@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|)))) (=> (and (and (and (and (and (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)))) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|)) (= |xs##1_0_1_0@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|))) (and (and (= |acc##1_0_1_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (= call0formal@_module._default.perm_reverse$_T0@0 Tclass._module.G)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (and (and (|_module.__default.reverse#canCall| call0formal@_module._default.perm_reverse$_T0@0 |xs##1_0_1_0@0| |acc##1_0_1_0@0|) (|_module.__default.multiset__of#canCall| call0formal@_module._default.perm_reverse$_T0@0 (_module.__default.reverse call0formal@_module._default.perm_reverse$_T0@0 ($LS $LZ) |xs##1_0_1_0@0| |acc##1_0_1_0@0|))) (and (|_module.__default.multiset__of#canCall| call0formal@_module._default.perm_reverse$_T0@0 |xs##1_0_1_0@0|) (|_module.__default.multiset__of#canCall| call0formal@_module._default.perm_reverse$_T0@0 |acc##1_0_1_0@0|))) (and (|MultiSet#Equal| (_module.__default.multiset__of call0formal@_module._default.perm_reverse$_T0@0 ($LS ($LS $LZ)) (_module.__default.reverse call0formal@_module._default.perm_reverse$_T0@0 ($LS ($LS $LZ)) |xs##1_0_1_0@0| |acc##1_0_1_0@0|)) (|MultiSet#Union| (_module.__default.multiset__of call0formal@_module._default.perm_reverse$_T0@0 ($LS ($LS $LZ)) |xs##1_0_1_0@0|) (_module.__default.multiset__of call0formal@_module._default.perm_reverse$_T0@0 ($LS ($LS $LZ)) |acc##1_0_1_0@0|))) (= $Heap@0 $Heap@2)))) (and (and (and (and (= |##xs#1_0_1_3@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) ($IsAlloc DatatypeTypeType |##xs#1_0_1_3@0| (Tclass._module.List Tclass._module.G) $Heap@2)) (and (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (= |##xs#1_0_1_4@0| (Lit DatatypeTypeType |#_module.List.Nil|)))) (and (and ($IsAlloc DatatypeTypeType |##xs#1_0_1_4@0| (Tclass._module.List Tclass._module.G) $Heap@2) (|_module.__default.multiset__of#canCall| Tclass._module.G (Lit DatatypeTypeType |#_module.List.Nil|))) (and ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@2) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|)))) (and (and (and (|_module.__default.multiset__of#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (|_module.__default.multiset__of#canCall| Tclass._module.G (Lit DatatypeTypeType |#_module.List.Nil|))) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|)) (= (ControlFlow 0 10) (- 0 9))))) (|MultiSet#Equal| (|MultiSet#Union| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (_module.__default.reverse Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@13|)) (|MultiSet#Union| (|MultiSet#Union| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@13|))))))))
(let ((anon26_Then_correct  (=> (= |##xs#1_0_2_1@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |##xs#1_0_2_1@0| (Tclass._module.List Tclass._module.G) $Heap@0) (= |##acc#1_0_2_0@0| (Lit DatatypeTypeType |#_module.List.Nil|))) (and ($IsAlloc DatatypeTypeType |##acc#1_0_2_0@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)))) (and (and (= |##xs#1_0_2_0@0| (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) ($IsAlloc DatatypeTypeType |##xs#1_0_2_0@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (and (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0)))) (and (and (and (|_module.__default.sequences#canCall| |ys#0@@13|) (= |##xs#1_0_2_2@0| (_module.__default.sequences ($LS $LZ) |ys#0@@13|))) (and ($IsAlloc DatatypeTypeType |##xs#1_0_2_2@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))) (and (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)))) (and (|_module.__default.sequences#canCall| |ys#0@@13|) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= (DtRank |ys#0@@13|) (DtRank |ys#0@@13|))) (=> (<= (DtRank |ys#0@@13|) (DtRank |ys#0@@13|)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|_module.__default.sequences#canCall| |ys#0@@13|) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |ys#0@@13|))) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|)) (and (and (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.sequences ($LS ($LS $LZ)) |ys#0@@13|)) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@13|)) (= $Heap@0 $Heap@1)) (and (= |##xs#1_0_2_5@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) ($IsAlloc DatatypeTypeType |##xs#1_0_2_5@0| (Tclass._module.List Tclass._module.G) $Heap@1)))) (=> (and (and (and (and (= |##acc#1_0_2_1@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#1_0_2_1@0| (Tclass._module.List Tclass._module.G) $Heap@1)) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (= |##xs#1_0_2_4@0| (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (and ($IsAlloc DatatypeTypeType |##xs#1_0_2_4@0| (Tclass._module.List Tclass._module.G) $Heap@1) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)))) (and ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@1) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|)))) (and (and (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)))) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#0@@13|)) (= (ControlFlow 0 7) (- 0 6)))) (|MultiSet#Equal| (|MultiSet#Union| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (_module.__default.reverse Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.sequences ($LS ($LS $LZ)) |ys#0@@13|))) (|MultiSet#Union| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (_module.__default.reverse Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) |ys#0@@13|))))))))))))
(let ((anon25_Then_correct  (=> (and (= |##xs#1_0_3_1@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) ($IsAlloc DatatypeTypeType |##xs#1_0_3_1@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (=> (and (and (and (= |##acc#1_0_3_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#1_0_3_0@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0))) (and (and (|_module.__default.sequences#canCall| |ys#0@@13|) (= |##xs#1_0_3_0@0| (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))) (and ($IsAlloc DatatypeTypeType |##xs#1_0_3_0@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))))) (=> (and (and (and (and (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| |ys#0@@13|)) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))) (= |##xs#1_0_3_4@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|))) (and (and ($IsAlloc DatatypeTypeType |##xs#1_0_3_4@0| (Tclass._module.List Tclass._module.G) $Heap@0) (= |##acc#1_0_3_1@0| (Lit DatatypeTypeType |#_module.List.Nil|))) (and ($IsAlloc DatatypeTypeType |##acc#1_0_3_1@0| (Tclass._module.List Tclass._module.G) $Heap@0) (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (and (and (and (= |##xs#1_0_3_3@0| (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) ($IsAlloc DatatypeTypeType |##xs#1_0_3_3@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (and (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0))) (and (and (|_module.__default.sequences#canCall| |ys#0@@13|) (= |##xs#1_0_3_5@0| (_module.__default.sequences ($LS $LZ) |ys#0@@13|))) (and ($IsAlloc DatatypeTypeType |##xs#1_0_3_5@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |ys#0@@13|))))) (and (and (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.multiset__of#canCall| Tclass._module.G (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)))) (and (|_module.__default.sequences#canCall| |ys#0@@13|) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))) (= (ControlFlow 0 5) (- 0 4))))) (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS ($LS $LZ)) |ys#0@@13|))) (|MultiSet#Union| (_module.__default.multiset__of Tclass._module.G ($LS ($LS $LZ)) (_module.__default.reverse Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.sequences ($LS ($LS $LZ)) |ys#0@@13|)))))))))
(let ((anon24_Then_correct  (=> ($IsAllocBox |a#0@@15| Tclass._module.G $Heap@0) (=> (and ($IsAlloc DatatypeTypeType |xs#0@@28| (Tclass._module.List Tclass._module.G) $Heap@0) ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0)) (=> (and (and (and (|_module.__default.ascending#canCall| |a#0@@15| |xs#0@@28| |ys#0@@13|) (= |##xs#1_0_4_0@0| (_module.__default.ascending ($LS $LZ) |a#0@@15| |xs#0@@28| |ys#0@@13|))) (and ($IsAlloc DatatypeTypeType |##xs#1_0_4_0@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) |a#0@@15| |xs#0@@28| |ys#0@@13|)))) (and (and (|_module.__default.ascending#canCall| |a#0@@15| |xs#0@@28| |ys#0@@13|) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (_module.__default.ascending ($LS $LZ) |a#0@@15| |xs#0@@28| |ys#0@@13|))) (and (= |##xs#1_0_4_3@0| (|#_module.List.Cons| |a#0@@15| |xs#0@@28|)) ($IsAlloc DatatypeTypeType |##xs#1_0_4_3@0| (Tclass._module.List Tclass._module.G) $Heap@0)))) (=> (and (and (and (and (= |##acc#1_0_4_0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#1_0_4_0@0| (Tclass._module.List Tclass._module.G) $Heap@0)) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@0))) (and (and (|_module.__default.sequences#canCall| |ys#0@@13|) (= |##xs#1_0_4_2@0| (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))) (and ($IsAlloc DatatypeTypeType |##xs#1_0_4_2@0| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))))) (and (and (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| |ys#0@@13|)) (|_module.__default.MultisetUnion#canCall| Tclass._module.G (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS $LZ) |ys#0@@13|)))) (= (ControlFlow 0 3) (- 0 2)))) (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (_module.__default.ascending ($LS ($LS $LZ)) |a#0@@15| |xs#0@@28| |ys#0@@13|)) (_module.__default.MultisetUnion Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS ($LS $LZ)) (|#_module.List.Cons| |a#0@@15| |xs#0@@28|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS ($LS $LZ)) |ys#0@@13|))))))))))
(let ((anon23_Then_correct true))
(let ((anon18_Else_correct  (=> (not (and (_module.List.Cons_q |ys#0@@13|) (_module.__default.Below |a#0@@15| (_module.List.head |ys#0@@13|)))) (and (and (and (and (and (and (=> (= (ControlFlow 0 16) 1) anon23_Then_correct) (=> (= (ControlFlow 0 16) 3) anon24_Then_correct)) (=> (= (ControlFlow 0 16) 5) anon25_Then_correct)) (=> (= (ControlFlow 0 16) 7) anon26_Then_correct)) (=> (= (ControlFlow 0 16) 10) anon27_Then_correct)) (=> (= (ControlFlow 0 16) 12) anon28_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon28_Else_correct)))))
(let ((anon2_correct  (=> (=> (_module.List.Cons_q |ys#0@@13|) (|_module.__default.Below#canCall| |a#0@@15| (_module.List.head |ys#0@@13|))) (and (=> (= (ControlFlow 0 35) 34) anon18_Then_correct) (=> (= (ControlFlow 0 35) 16) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not (_module.List.Cons_q |ys#0@@13|)) (= (ControlFlow 0 38) 35)) anon2_correct)))
(let ((anon17_Then_correct  (=> (and (_module.List.Cons_q |ys#0@@13|) ($IsAllocBox |a#0@@15| Tclass._module.G $Heap@0)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (_module.List.Cons_q |ys#0@@13|)) (=> (_module.List.Cons_q |ys#0@@13|) (=> (and (and (= |##b#0@0| (_module.List.head |ys#0@@13|)) ($IsAllocBox |##b#0@0| Tclass._module.G $Heap@0)) (and (|_module.__default.Below#canCall| |a#0@@15| (_module.List.head |ys#0@@13|)) (= (ControlFlow 0 36) 35))) anon2_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (=> (and (|$IsA#_module.List| |xs#0@@28|) (|$IsA#_module.List| |ys#0@@13|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@2 $Heap@0) (forall ((|$ih#xs0#0| T@U) (|$ih#ys0#0| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |$ih#xs0#0| (Tclass._module.List Tclass._module.G)) ($Is DatatypeTypeType |$ih#ys0#0| (Tclass._module.List Tclass._module.G))) (U_2_bool (Lit boolType (bool_2_U true)))) (< (DtRank |$ih#ys0#0|) (DtRank |ys#0@@13|))) (|MultiSet#Equal| (_module.__default.MultisetUnion Tclass._module.G ($LS $LZ) (_module.__default.ascending ($LS $LZ) |a#0@@15| |$ih#xs0#0| |$ih#ys0#0|)) (|MultiSet#Union| (|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0@@15|) (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |$ih#xs0#0|)) (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |$ih#ys0#0|))))
 :qid |GHCMergeSortdfy.231:28|
 :skolemid |772|
 :pattern ( (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |$ih#ys0#0|) (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |$ih#xs0#0|))
 :pattern ( (_module.__default.ascending ($LS $LZ) |a#0@@15| |$ih#xs0#0| |$ih#ys0#0|))
)))) (and (=> (= (ControlFlow 0 39) 36) anon17_Then_correct) (=> (= (ControlFlow 0 39) 38) anon17_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and ($IsBox |a#0@@15| Tclass._module.G) ($IsAllocBox |a#0@@15| Tclass._module.G $Heap@@2))) (and (and ($Is DatatypeTypeType |xs#0@@28| (Tclass._module.List Tclass._module.G)) ($IsAlloc DatatypeTypeType |xs#0@@28| (Tclass._module.List Tclass._module.G) $Heap@@2)) (|$IsA#_module.List| |xs#0@@28|))) (and (and (and ($Is DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G)) ($IsAlloc DatatypeTypeType |ys#0@@13| (Tclass._module.List Tclass._module.G) $Heap@@2)) (|$IsA#_module.List| |ys#0@@13|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 40) 39)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
