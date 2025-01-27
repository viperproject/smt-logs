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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.__default.descending (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.descending#canCall| (T@U T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |_module.__default.key#canCall| (T@U) Bool)
(declare-fun _module.__default.key (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|a#0@@0| T@U) (|xs#0@@1| T@U) (|ys#0@@0| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@0| |xs#0@@1| |ys#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@0| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@0| (Tclass._module.List Tclass._module.G))))) (and (not (|_module.List#Equal| (_module.__default.descending $ly@@1 |a#0@@0| |xs#0@@1| |ys#0@@0|) |#_module.List.Nil|)) ($Is DatatypeTypeType (_module.__default.descending $ly@@1 |a#0@@0| |xs#0@@1| |ys#0@@0|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |660|
 :pattern ( (_module.__default.descending $ly@@1 |a#0@@0| |xs#0@@1| |ys#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|a#0@@1| T@U) (|xs#0@@2| T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| |a#0@@1| |xs#0@@2| |ys#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@1| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@1| (Tclass._module.List Tclass._module.G))))) (and (not (|_module.List#Equal| (_module.__default.ascending $ly@@2 |a#0@@1| |xs#0@@2| |ys#0@@1|) |#_module.List.Nil|)) ($Is DatatypeTypeType (_module.__default.ascending $ly@@2 |a#0@@1| |xs#0@@2| |ys#0@@1|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.107:10|
 :skolemid |670|
 :pattern ( (_module.__default.ascending $ly@@2 |a#0@@1| |xs#0@@2| |ys#0@@1|))
))))
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
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|a#0@@2| T@U) (|xs#0@@3| T@U) (|ys#0@@2| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |xs#0@@3|) (Lit DatatypeTypeType |ys#0@@2|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@2| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@2| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@2|))))) (|_module.__default.Below#canCall| (Lit BoxType |a#0@@2|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@2|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@2|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@2|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@2|))))))))) (|_module.__default.descending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@2|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |xs#0@@3|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@2|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@2|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@2|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@2|)))))))))) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@2|)))) (= (_module.__default.descending ($LS $ly@@3) (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |xs#0@@3|) (Lit DatatypeTypeType |ys#0@@2|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@2|)) (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below (Lit BoxType |a#0@@2|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@2|))))))))) (_module.__default.descending ($LS $ly@@3) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@2|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |xs#0@@3|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@2|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |xs#0@@3|)))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@3) (Lit DatatypeTypeType |ys#0@@2|))))))))
 :qid |GHCMergeSortdfy.97:10|
 :weight 3
 :skolemid |664|
 :pattern ( (_module.__default.descending ($LS $ly@@3) (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |xs#0@@3|) (Lit DatatypeTypeType |ys#0@@2|)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|a#0@@3| T@U) (|xs#0@@4| T@U) (|ys#0@@3| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@3| |xs#0@@4| |ys#0@@3|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@3| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@3| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (_module.List.Cons_q |ys#0@@3|) (|_module.__default.Below#canCall| |a#0@@3| (_module.List.head |ys#0@@3|))) (=> (and (_module.List.Cons_q |ys#0@@3|) (not (_module.__default.Below |a#0@@3| (_module.List.head |ys#0@@3|)))) (|_module.__default.descending#canCall| (_module.List.head |ys#0@@3|) (|#_module.List.Cons| |a#0@@3| |xs#0@@4|) (_module.List.tail |ys#0@@3|)))) (=> (not (and (_module.List.Cons_q |ys#0@@3|) (not (_module.__default.Below |a#0@@3| (_module.List.head |ys#0@@3|))))) (|_module.__default.sequences#canCall| |ys#0@@3|))) (= (_module.__default.descending ($LS $ly@@4) |a#0@@3| |xs#0@@4| |ys#0@@3|) (ite  (and (_module.List.Cons_q |ys#0@@3|) (not (_module.__default.Below |a#0@@3| (_module.List.head |ys#0@@3|)))) (_module.__default.descending $ly@@4 (_module.List.head |ys#0@@3|) (|#_module.List.Cons| |a#0@@3| |xs#0@@4|) (_module.List.tail |ys#0@@3|)) (|#_module.List.Cons| ($Box DatatypeTypeType (|#_module.List.Cons| |a#0@@3| |xs#0@@4|)) (_module.__default.sequences $ly@@4 |ys#0@@3|))))))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |662|
 :pattern ( (_module.__default.descending ($LS $ly@@4) |a#0@@3| |xs#0@@4| |ys#0@@3|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1097|
)))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@4| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| (Lit BoxType |a#0@@4|) (Lit BoxType |b#0|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@4| Tclass._module.G) ($IsBox |b#0| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| (Lit BoxType |a#0@@4|)) (|_module.__default.key#canCall| (Lit BoxType |b#0|))) (= (_module.__default.Below (Lit BoxType |a#0@@4|) (Lit BoxType |b#0|)) (<= (_module.__default.key (Lit BoxType |a#0@@4|)) (_module.__default.key (Lit BoxType |b#0|))))))
 :qid |GHCMergeSortdfy.75:17|
 :weight 3
 :skolemid |640|
 :pattern ( (_module.__default.Below (Lit BoxType |a#0@@4|) (Lit BoxType |b#0|)))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@5| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| |a#0@@5| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@5| Tclass._module.G) ($IsBox |b#0@@0| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| |a#0@@5|) (|_module.__default.key#canCall| |b#0@@0|)) (= (_module.__default.Below |a#0@@5| |b#0@@0|) (<= (_module.__default.key |a#0@@5|) (_module.__default.key |b#0@@0|)))))
 :qid |GHCMergeSortdfy.75:17|
 :skolemid |639|
 :pattern ( (_module.__default.Below |a#0@@5| |b#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0 T@U) ($ly@@5 T@U) (|xs#0@@5| T@U) (|acc#0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0 |xs#0@@5| |acc#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.reverse$_T0)) ($Is DatatypeTypeType |acc#0| (Tclass._module.List _module._default.reverse$_T0))))) (and (=> (not (_module.List.Nil_q |xs#0@@5|)) (let ((|ys#1| (_module.List.tail |xs#0@@5|)))
(let ((|a#1| (_module.List.head |xs#0@@5|)))
(|_module.__default.reverse#canCall| _module._default.reverse$_T0 |ys#1| (|#_module.List.Cons| |a#1| |acc#0|))))) (= (_module.__default.reverse _module._default.reverse$_T0 ($LS $ly@@5) |xs#0@@5| |acc#0|) (ite (_module.List.Nil_q |xs#0@@5|) |acc#0| (let ((|ys#0@@4| (_module.List.tail |xs#0@@5|)))
(let ((|a#0@@6| (_module.List.head |xs#0@@5|)))
(_module.__default.reverse _module._default.reverse$_T0 $ly@@5 |ys#0@@4| (|#_module.List.Cons| |a#0@@6| |acc#0|))))))))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0 ($LS $ly@@5) |xs#0@@5| |acc#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|a#0@@7| T@U) (|xs#0@@6| T@U) (|ys#0@@5| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| (Lit BoxType |a#0@@7|) (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@5|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@7| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@5| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@5|))))) (|_module.__default.Below#canCall| (Lit BoxType |a#0@@7|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))))) (=> (U_2_bool (Lit boolType (bool_2_U  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@5|)) (_module.__default.Below (Lit BoxType |a#0@@7|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|)))))))) (|_module.__default.ascending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@7|) (Lit DatatypeTypeType |xs#0@@6|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@5|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@5|)) (_module.__default.Below (Lit BoxType |a#0@@7|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))))))))) (and (|_module.__default.reverse#canCall| Tclass._module.G (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@7|) (Lit DatatypeTypeType |xs#0@@6|))) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@5|))))) (= (_module.__default.ascending ($LS $ly@@6) (Lit BoxType |a#0@@7|) (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@5|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@5|)) (_module.__default.Below (Lit BoxType |a#0@@7|) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))))) (_module.__default.ascending ($LS $ly@@6) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@5|))) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@7|) (Lit DatatypeTypeType |xs#0@@6|))) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@5|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (Lit DatatypeTypeType (|#_module.List.Cons| (Lit BoxType |a#0@@7|) (Lit DatatypeTypeType |xs#0@@6|))) (Lit DatatypeTypeType |#_module.List.Nil|)))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@6) (Lit DatatypeTypeType |ys#0@@5|))))))))
 :qid |GHCMergeSortdfy.107:10|
 :weight 3
 :skolemid |674|
 :pattern ( (_module.__default.ascending ($LS $ly@@6) (Lit BoxType |a#0@@7|) (Lit DatatypeTypeType |xs#0@@6|) (Lit DatatypeTypeType |ys#0@@5|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|xs#0@@7| T@U) ) (!  (=> (or (|_module.__default.sequences#canCall| |xs#0@@7|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List Tclass._module.G)))) (and (=> (not (_module.List.Nil_q |xs#0@@7|)) (let ((|ys#1@@0| (_module.List.tail |xs#0@@7|)))
(let ((|a#1@@0| (_module.List.head |xs#0@@7|)))
 (=> (not (_module.List.Nil_q |ys#1@@0|)) (let ((|zs#1| (_module.List.tail |ys#1@@0|)))
(let ((|b#1| (_module.List.head |ys#1@@0|)))
 (and (and (|_module.__default.Below#canCall| |a#1@@0| |b#1|) (=> (not (_module.__default.Below |a#1@@0| |b#1|)) (|_module.__default.descending#canCall| |b#1| (|#_module.List.Cons| |a#1@@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#1|))) (=> (_module.__default.Below |a#1@@0| |b#1|) (|_module.__default.ascending#canCall| |b#1| (|#_module.List.Cons| |a#1@@0| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#1|))))))))) (= (_module.__default.sequences ($LS $ly@@7) |xs#0@@7|) (ite (_module.List.Nil_q |xs#0@@7|) (|#_module.List.Cons| ($Box DatatypeTypeType |xs#0@@7|) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|ys#0@@6| (_module.List.tail |xs#0@@7|)))
(let ((|a#0@@8| (_module.List.head |xs#0@@7|)))
(ite (_module.List.Nil_q |ys#0@@6|) (|#_module.List.Cons| ($Box DatatypeTypeType |xs#0@@7|) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|zs#0| (_module.List.tail |ys#0@@6|)))
(let ((|b#0@@1| (_module.List.head |ys#0@@6|)))
(ite  (not (_module.__default.Below |a#0@@8| |b#0@@1|)) (_module.__default.descending $ly@@7 |b#0@@1| (|#_module.List.Cons| |a#0@@8| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#0|) (_module.__default.ascending $ly@@7 |b#0@@1| (|#_module.List.Cons| |a#0@@8| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#0|)))))))))))
 :qid |GHCMergeSortdfy.85:10|
 :skolemid |653|
 :pattern ( (_module.__default.sequences ($LS $ly@@7) |xs#0@@7|))
))))
(assert (forall ((_module.List$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (_module.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) (|a#0@@9| T@U) (|xs#0@@8| T@U) (|ys#0@@7| T@U) ) (!  (=> (or (|_module.__default.ascending#canCall| |a#0@@9| |xs#0@@8| (Lit DatatypeTypeType |ys#0@@7|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@9| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@8| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@7| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@7|))))) (|_module.__default.Below#canCall| |a#0@@9| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@7|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@7|)) (_module.__default.Below |a#0@@9| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@7|))))) (|_module.__default.ascending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@7|))) (|#_module.List.Cons| |a#0@@9| |xs#0@@8|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@7|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@7|)) (_module.__default.Below |a#0@@9| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@7|)))))) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@9| |xs#0@@8|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@7|))))) (= (_module.__default.ascending ($LS $ly@@8) |a#0@@9| |xs#0@@8| (Lit DatatypeTypeType |ys#0@@7|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@7|)) (_module.__default.Below |a#0@@9| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@7|))))) (_module.__default.ascending ($LS $ly@@8) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@7|))) (|#_module.List.Cons| |a#0@@9| |xs#0@@8|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@7|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@9| |xs#0@@8|) (Lit DatatypeTypeType |#_module.List.Nil|))) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@8) (Lit DatatypeTypeType |ys#0@@7|))))))))
 :qid |GHCMergeSortdfy.107:10|
 :weight 3
 :skolemid |673|
 :pattern ( (_module.__default.ascending ($LS $ly@@8) |a#0@@9| |xs#0@@8| (Lit DatatypeTypeType |ys#0@@7|)))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@1 T@U) ) (!  (=> ($IsBox v@@1 ty) ($IsAllocBox v@@1 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@1 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0@@0 T@U) ($ly@@9 T@U) (|xs#0@@9| T@U) (|acc#0@@0| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@0 |xs#0@@9| |acc#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List _module._default.reverse$_T0@@0)) ($Is DatatypeTypeType |acc#0@@0| (Tclass._module.List _module._default.reverse$_T0@@0))))) ($Is DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@0 $ly@@9 |xs#0@@9| |acc#0@@0|) (Tclass._module.List _module._default.reverse$_T0@@0)))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@0 $ly@@9 |xs#0@@9| |acc#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) (|xs#0@@10| T@U) ) (!  (=> (or (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |xs#0@@10|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List Tclass._module.G)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@10|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@10|)))))
(let ((|a#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@10|)))))
 (=> (not (_module.List.Nil_q |ys#3|)) (let ((|zs#3| (_module.List.tail |ys#3|)))
(let ((|b#3| (_module.List.head |ys#3|)))
 (and (and (|_module.__default.Below#canCall| |a#3| |b#3|) (=> (not (_module.__default.Below |a#3| |b#3|)) (|_module.__default.descending#canCall| |b#3| (|#_module.List.Cons| |a#3| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#3|))) (=> (_module.__default.Below |a#3| |b#3|) (|_module.__default.ascending#canCall| |b#3| (|#_module.List.Cons| |a#3| (Lit DatatypeTypeType |#_module.List.Nil|)) |zs#3|))))))))) (= (_module.__default.sequences ($LS $ly@@10) (Lit DatatypeTypeType |xs#0@@10|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@10|)) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |xs#0@@10|)) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|ys#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@10|)))))
(let ((|a#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@10|)))))
(ite (_module.List.Nil_q |ys#2|) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |xs#0@@10|)) (Lit DatatypeTypeType |#_module.List.Nil|)) (let ((|zs#2| (Lit DatatypeTypeType (_module.List.tail |ys#2|))))
(let ((|b#2| (Lit BoxType (_module.List.head |ys#2|))))
(ite  (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Below |a#2| |b#2|))))) (_module.__default.descending ($LS $ly@@10) |b#2| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2| (Lit DatatypeTypeType |#_module.List.Nil|))) |zs#2|) (_module.__default.ascending ($LS $ly@@10) |b#2| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2| (Lit DatatypeTypeType |#_module.List.Nil|))) |zs#2|)))))))))))
 :qid |GHCMergeSortdfy.85:10|
 :weight 3
 :skolemid |654|
 :pattern ( (_module.__default.sequences ($LS $ly@@10) (Lit DatatypeTypeType |xs#0@@10|)))
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
(assert (forall (($ly@@11 T@U) (|xs#0@@11| T@U) ) (! (= (_module.__default.sequences ($LS $ly@@11) |xs#0@@11|) (_module.__default.sequences $ly@@11 |xs#0@@11|))
 :qid |GHCMergeSortdfy.85:10|
 :skolemid |649|
 :pattern ( (_module.__default.sequences ($LS $ly@@11) |xs#0@@11|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.reverse$_T0@@1 T@U) ($ly@@12 T@U) (|xs#0@@12| T@U) (|acc#0@@1| T@U) ) (!  (=> (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@1 (Lit DatatypeTypeType |xs#0@@12|) (Lit DatatypeTypeType |acc#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@12| (Tclass._module.List _module._default.reverse$_T0@@1)) ($Is DatatypeTypeType |acc#0@@1| (Tclass._module.List _module._default.reverse$_T0@@1))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@12|)))))) (let ((|ys#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@12|)))))
(let ((|a#3@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@12|)))))
(|_module.__default.reverse#canCall| _module._default.reverse$_T0@@1 |ys#3@@0| (|#_module.List.Cons| |a#3@@0| (Lit DatatypeTypeType |acc#0@@1|)))))) (= (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@12) (Lit DatatypeTypeType |xs#0@@12|) (Lit DatatypeTypeType |acc#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@12|)) |acc#0@@1| (let ((|ys#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@12|)))))
(let ((|a#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@12|)))))
(Lit DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@12) |ys#2@@0| (Lit DatatypeTypeType (|#_module.List.Cons| |a#2@@0| (Lit DatatypeTypeType |acc#0@@1|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |597|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@1 ($LS $ly@@12) (Lit DatatypeTypeType |xs#0@@12|) (Lit DatatypeTypeType |acc#0@@1|)))
))))
(assert (forall (($ly@@13 T@U) (|a#0@@10| T@U) (|xs#0@@13| T@U) (|ys#0@@8| T@U) ) (! (= (_module.__default.descending ($LS $ly@@13) |a#0@@10| |xs#0@@13| |ys#0@@8|) (_module.__default.descending $ly@@13 |a#0@@10| |xs#0@@13| |ys#0@@8|))
 :qid |GHCMergeSortdfy.97:10|
 :skolemid |658|
 :pattern ( (_module.__default.descending ($LS $ly@@13) |a#0@@10| |xs#0@@13| |ys#0@@8|))
)))
(assert (forall (($ly@@14 T@U) (|a#0@@11| T@U) (|xs#0@@14| T@U) (|ys#0@@9| T@U) ) (! (= (_module.__default.ascending ($LS $ly@@14) |a#0@@11| |xs#0@@14| |ys#0@@9|) (_module.__default.ascending $ly@@14 |a#0@@11| |xs#0@@14| |ys#0@@9|))
 :qid |GHCMergeSortdfy.107:10|
 :skolemid |668|
 :pattern ( (_module.__default.ascending ($LS $ly@@14) |a#0@@11| |xs#0@@14| |ys#0@@9|))
)))
(assert (forall ((d@@4 T@U) (_module.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@5) $h@@0))) ($IsAllocBox (_module.List.head d@@4) _module.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAllocBox (_module.List.head d@@4) _module.List$T@@5 $h@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.reverse$_T0@@2 T@U) ($ly@@15 T@U) (|xs#0@@15| T@U) (|acc#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.reverse#canCall| _module._default.reverse$_T0@@2 |xs#0@@15| |acc#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@15| (Tclass._module.List _module._default.reverse$_T0@@2)) ($IsAlloc DatatypeTypeType |xs#0@@15| (Tclass._module.List _module._default.reverse$_T0@@2) $Heap)) (and ($Is DatatypeTypeType |acc#0@@2| (Tclass._module.List _module._default.reverse$_T0@@2)) ($IsAlloc DatatypeTypeType |acc#0@@2| (Tclass._module.List _module._default.reverse$_T0@@2) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@2 $ly@@15 |xs#0@@15| |acc#0@@2|) (Tclass._module.List _module._default.reverse$_T0@@2) $Heap))
 :qid |GHCMergeSortdfy.24:10|
 :skolemid |594|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.reverse _module._default.reverse$_T0@@2 $ly@@15 |xs#0@@15| |acc#0@@2|) (Tclass._module.List _module._default.reverse$_T0@@2) $Heap))
))))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((_module._default.reverse$_T0@@3 T@U) ($ly@@16 T@U) (|xs#0@@16| T@U) (|acc#0@@3| T@U) ) (! (= (_module.__default.reverse _module._default.reverse$_T0@@3 ($LS $ly@@16) |xs#0@@16| |acc#0@@3|) (_module.__default.reverse _module._default.reverse$_T0@@3 $ly@@16 |xs#0@@16| |acc#0@@3|))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (_module.__default.reverse _module._default.reverse$_T0@@3 ($LS $ly@@16) |xs#0@@16| |acc#0@@3|))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@6 T@U) (_module.List$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@6) (Tclass._module.List _module.List$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@6) (Tclass._module.List _module.List$T@@7) $h@@1))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@17 T@U) (|a#0@@12| T@U) (|xs#0@@17| T@U) (|ys#0@@10| T@U) ) (!  (=> (or (|_module.__default.descending#canCall| |a#0@@12| |xs#0@@17| (Lit DatatypeTypeType |ys#0@@10|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |a#0@@12| Tclass._module.G) ($Is DatatypeTypeType |xs#0@@17| (Tclass._module.List Tclass._module.G))) ($Is DatatypeTypeType |ys#0@@10| (Tclass._module.List Tclass._module.G))))) (and (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@10|))))) (|_module.__default.Below#canCall| |a#0@@12| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@10|))))) (=> (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@10|)) (not (_module.__default.Below |a#0@@12| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@10|)))))) (|_module.__default.descending#canCall| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@10|))) (|#_module.List.Cons| |a#0@@12| |xs#0@@17|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@10|)))))) (=> (not (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@10|)) (not (_module.__default.Below |a#0@@12| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@10|))))))) (|_module.__default.sequences#canCall| (Lit DatatypeTypeType |ys#0@@10|)))) (= (_module.__default.descending ($LS $ly@@17) |a#0@@12| |xs#0@@17| (Lit DatatypeTypeType |ys#0@@10|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |ys#0@@10|)) (not (_module.__default.Below |a#0@@12| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@10|)))))) (_module.__default.descending ($LS $ly@@17) (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0@@10|))) (|#_module.List.Cons| |a#0@@12| |xs#0@@17|) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0@@10|)))) (|#_module.List.Cons| ($Box DatatypeTypeType (|#_module.List.Cons| |a#0@@12| |xs#0@@17|)) (Lit DatatypeTypeType (_module.__default.sequences ($LS $ly@@17) (Lit DatatypeTypeType |ys#0@@10|))))))))
 :qid |GHCMergeSortdfy.97:10|
 :weight 3
 :skolemid |663|
 :pattern ( (_module.__default.descending ($LS $ly@@17) |a#0@@12| |xs#0@@17| (Lit DatatypeTypeType |ys#0@@10|)))
))))
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
(declare-fun |a#0@@13| () T@U)
(declare-fun |xs#0@@18| () T@U)
(declare-fun |ys#0@@11| () T@U)
(declare-fun |##xs#2@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |##acc#0@0| () T@U)
(declare-fun |##a#2@0| () T@U)
(declare-fun |##xs#1@0| () T@U)
(declare-fun |##ys#1@0| () T@U)
(declare-fun |##b#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.ascending)
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
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (not (|_module.List#Equal| (_module.__default.ascending ($LS ($LS $LZ)) |a#0@@13| |xs#0@@18| |ys#0@@11|) |#_module.List.Nil|)))))
(let ((anon11_Else_correct  (=> (not (and (_module.List.Cons_q |ys#0@@11|) (_module.__default.Below |a#0@@13| (_module.List.head |ys#0@@11|)))) (=> (and (= |##xs#2@0| (|#_module.List.Cons| |a#0@@13| |xs#0@@18|)) ($IsAlloc DatatypeTypeType |##xs#2@0| (Tclass._module.List Tclass._module.G) $Heap@@0)) (=> (and (and (= |##acc#0@0| (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |##acc#0@0| (Tclass._module.List Tclass._module.G) $Heap@@0)) (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@13| |xs#0@@18|) (Lit DatatypeTypeType |#_module.List.Nil|)) ($IsAlloc DatatypeTypeType |ys#0@@11| (Tclass._module.List Tclass._module.G) $Heap@@0))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= (DtRank |ys#0@@11|) (DtRank |ys#0@@11|))) (=> (<= (DtRank |ys#0@@11|) (DtRank |ys#0@@11|)) (=> (and (|_module.__default.sequences#canCall| |ys#0@@11|) (= (_module.__default.ascending ($LS $LZ) |a#0@@13| |xs#0@@18| |ys#0@@11|) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.reverse Tclass._module.G ($LS $LZ) (|#_module.List.Cons| |a#0@@13| |xs#0@@18|) (Lit DatatypeTypeType |#_module.List.Nil|))) (_module.__default.sequences ($LS $LZ) |ys#0@@11|)))) (=> (and (and (|_module.__default.reverse#canCall| Tclass._module.G (|#_module.List.Cons| |a#0@@13| |xs#0@@18|) (Lit DatatypeTypeType |#_module.List.Nil|)) (|_module.__default.sequences#canCall| |ys#0@@11|)) (and ($Is DatatypeTypeType (_module.__default.ascending ($LS $LZ) |a#0@@13| |xs#0@@18| |ys#0@@11|) (Tclass._module.List (Tclass._module.List Tclass._module.G))) (= (ControlFlow 0 9) 4))) GeneratedUnifiedExit_correct)))))))))
(let ((anon11_Then_correct  (=> (and (_module.List.Cons_q |ys#0@@11|) (_module.__default.Below |a#0@@13| (_module.List.head |ys#0@@11|))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (_module.List.Cons_q |ys#0@@11|)) (=> (_module.List.Cons_q |ys#0@@11|) (=> (and (and (= |##a#2@0| (_module.List.head |ys#0@@11|)) ($IsAllocBox |##a#2@0| Tclass._module.G $Heap@@0)) (and (= |##xs#1@0| (|#_module.List.Cons| |a#0@@13| |xs#0@@18|)) ($IsAlloc DatatypeTypeType |##xs#1@0| (Tclass._module.List Tclass._module.G) $Heap@@0))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (_module.List.Cons_q |ys#0@@11|)) (=> (_module.List.Cons_q |ys#0@@11|) (=> (and (= |##ys#1@0| (_module.List.tail |ys#0@@11|)) ($IsAlloc DatatypeTypeType |##ys#1@0| (Tclass._module.List Tclass._module.G) $Heap@@0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< (DtRank |##ys#1@0|) (DtRank |ys#0@@11|))) (=> (< (DtRank |##ys#1@0|) (DtRank |ys#0@@11|)) (=> (|_module.__default.ascending#canCall| (_module.List.head |ys#0@@11|) (|#_module.List.Cons| |a#0@@13| |xs#0@@18|) (_module.List.tail |ys#0@@11|)) (=> (and (and (= (_module.__default.ascending ($LS $LZ) |a#0@@13| |xs#0@@18| |ys#0@@11|) (_module.__default.ascending ($LS $LZ) (_module.List.head |ys#0@@11|) (|#_module.List.Cons| |a#0@@13| |xs#0@@18|) (_module.List.tail |ys#0@@11|))) (|_module.__default.ascending#canCall| (_module.List.head |ys#0@@11|) (|#_module.List.Cons| |a#0@@13| |xs#0@@18|) (_module.List.tail |ys#0@@11|))) (and ($Is DatatypeTypeType (_module.__default.ascending ($LS $LZ) |a#0@@13| |xs#0@@18| |ys#0@@11|) (Tclass._module.List (Tclass._module.List Tclass._module.G))) (= (ControlFlow 0 5) 4))) GeneratedUnifiedExit_correct)))))))))))))
(let ((anon10_Else_correct  (=> (not (_module.List.Cons_q |ys#0@@11|)) (and (=> (= (ControlFlow 0 13) 5) anon11_Then_correct) (=> (= (ControlFlow 0 13) 9) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (_module.List.Cons_q |ys#0@@11|) ($IsAllocBox |a#0@@13| Tclass._module.G $Heap@@0)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (_module.List.Cons_q |ys#0@@11|)) (=> (_module.List.Cons_q |ys#0@@11|) (=> (= |##b#0@0| (_module.List.head |ys#0@@11|)) (=> (and ($IsAllocBox |##b#0@0| Tclass._module.G $Heap@@0) (|_module.__default.Below#canCall| |a#0@@13| (_module.List.head |ys#0@@11|))) (and (=> (= (ControlFlow 0 11) 5) anon11_Then_correct) (=> (= (ControlFlow 0 11) 9) anon11_Else_correct)))))))))
(let ((anon9_Then_correct  (=> ($Is DatatypeTypeType (_module.__default.ascending ($LS $LZ) |a#0@@13| |xs#0@@18| |ys#0@@11|) (Tclass._module.List (Tclass._module.List Tclass._module.G))) (=> (and (and ($IsAllocBox |a#0@@13| Tclass._module.G $Heap@@0) ($IsAlloc DatatypeTypeType |xs#0@@18| (Tclass._module.List Tclass._module.G) $Heap@@0)) (and ($IsAlloc DatatypeTypeType |ys#0@@11| (Tclass._module.List Tclass._module.G) $Heap@@0) (= (ControlFlow 0 2) (- 0 1)))) (or (and (and (= |a#0@@13| |a#0@@13|) (|_module.List#Equal| |xs#0@@18| |xs#0@@18|)) (|_module.List#Equal| |ys#0@@11| |ys#0@@11|)) (< (DtRank |ys#0@@11|) (DtRank |ys#0@@11|)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 14) 2) anon9_Then_correct) (=> (= (ControlFlow 0 14) 11) anon10_Then_correct)) (=> (= (ControlFlow 0 14) 13) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($IsBox |a#0@@13| Tclass._module.G)) (and (and ($Is DatatypeTypeType |xs#0@@18| (Tclass._module.List Tclass._module.G)) ($Is DatatypeTypeType |ys#0@@11| (Tclass._module.List Tclass._module.G))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 15) 14)))) anon0_correct)))
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
