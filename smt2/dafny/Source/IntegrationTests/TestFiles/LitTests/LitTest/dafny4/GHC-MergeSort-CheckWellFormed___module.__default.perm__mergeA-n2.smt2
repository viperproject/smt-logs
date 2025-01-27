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
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.G () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.length (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |_module.__default.length#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.__default.multiset__of (T@U T@U T@U) T@U)
(declare-fun _module.__default.MultisetUnion (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun _module.__default.merge (T@U T@U T@U) T@U)
(declare-fun |_module.__default.merge#canCall| (T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |_module.__default.Below#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.Below (T@U T@U) Bool)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.__default.mergePairs (T@U T@U) T@U)
(declare-fun |_module.__default.mergePairs#canCall| (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun |_module.__default.multiset__of#canCall| (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |_module.__default.key#canCall| (T@U) Bool)
(declare-fun _module.__default.key (T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.__default.mergeAll (T@U T@U) T@U)
(declare-fun |_module.__default.mergeAll#canCall| (T@U) Bool)
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
(assert ($AlwaysAllocated Tclass._module.G))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0 T@U) ($ly T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0 (Lit DatatypeTypeType |xs#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0| (Tclass._module.List _module._default.length$_T0)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(|_module.__default.length#canCall| _module._default.length$_T0 |ys#3|))) (= (_module.__default.length _module._default.length$_T0 ($LS $ly) (Lit DatatypeTypeType |xs#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) 0 (let ((|ys#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0|)))))
(LitInt (+ 1 (_module.__default.length _module._default.length$_T0 ($LS $ly) |ys#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |589|
 :pattern ( (_module.__default.length _module._default.length$_T0 ($LS $ly) (Lit DatatypeTypeType |xs#0|)))
))))
(assert (forall ((_module._default.length$_T0@@0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) ) (! (= (_module.__default.length _module._default.length$_T0@@0 ($LS $ly@@0) |xs#0@@0|) (_module.__default.length _module._default.length$_T0@@0 $ly@@0 |xs#0@@0|))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (_module.__default.length _module._default.length$_T0@@0 ($LS $ly@@0) |xs#0@@0|))
)))
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
(assert (= (Ctor BoxType) 5))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|xs#0@@3| T@U) (|ys#0| T@U) ) (!  (=> (or (|_module.__default.merge#canCall| (Lit DatatypeTypeType |xs#0@@3|) (Lit DatatypeTypeType |ys#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List Tclass._module.G)) ($Is DatatypeTypeType |ys#0| (Tclass._module.List Tclass._module.G))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@3|)))))) (let ((|xs'#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@3|)))))
(let ((|a#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@3|)))))
 (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |ys#0|)))))) (let ((|ys'#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0|)))))
(let ((|b#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0|)))))
 (and (and (|_module.__default.Below#canCall| |a#3| |b#3|) (=> (_module.__default.Below |a#3| |b#3|) (|_module.__default.merge#canCall| |xs'#3| (Lit DatatypeTypeType |ys#0|)))) (=> (not (_module.__default.Below |a#3| |b#3|)) (|_module.__default.merge#canCall| (Lit DatatypeTypeType |xs#0@@3|) |ys'#3|))))))))) (= (_module.__default.merge ($LS $ly@@3) (Lit DatatypeTypeType |xs#0@@3|) (Lit DatatypeTypeType |ys#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@3|)) |ys#0| (let ((|xs'#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@3|)))))
(let ((|a#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@3|)))))
(ite (_module.List.Nil_q (Lit DatatypeTypeType |ys#0|)) |xs#0@@3| (let ((|ys'#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |ys#0|)))))
(let ((|b#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |ys#0|)))))
(ite (_module.__default.Below |a#2| |b#2|) (|#_module.List.Cons| |a#2| (Lit DatatypeTypeType (_module.__default.merge ($LS $ly@@3) |xs'#2| (Lit DatatypeTypeType |ys#0|)))) (|#_module.List.Cons| |b#2| (Lit DatatypeTypeType (_module.__default.merge ($LS $ly@@3) (Lit DatatypeTypeType |xs#0@@3|) |ys'#2|)))))))))))))
 :qid |GHCMergeSortdfy.138:10|
 :weight 3
 :skolemid |700|
 :pattern ( (_module.__default.merge ($LS $ly@@3) (Lit DatatypeTypeType |xs#0@@3|) (Lit DatatypeTypeType |ys#0|)))
))))
(assert (forall ((_module.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@4 T@U) (|x#0| T@U) ) (!  (=> (or (|_module.__default.mergePairs#canCall| |x#0|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0| (Tclass._module.List (Tclass._module.List Tclass._module.G))))) (and (and (and (<= (_module.__default.length (Tclass._module.List Tclass._module.G) ($LS $LZ) (_module.__default.mergePairs $ly@@4 |x#0|)) (_module.__default.length (Tclass._module.List Tclass._module.G) ($LS $LZ) |x#0|)) (=> (and (_module.List.Cons_q |x#0|) (_module.List.Cons_q (_module.List.tail |x#0|))) (< (_module.__default.length (Tclass._module.List Tclass._module.G) ($LS $LZ) (_module.__default.mergePairs $ly@@4 |x#0|)) (_module.__default.length (Tclass._module.List Tclass._module.G) ($LS $LZ) |x#0|)))) (=> (not (|_module.List#Equal| |x#0| |#_module.List.Nil|)) (not (|_module.List#Equal| (_module.__default.mergePairs $ly@@4 |x#0|) |#_module.List.Nil|)))) ($Is DatatypeTypeType (_module.__default.mergePairs $ly@@4 |x#0|) (Tclass._module.List (Tclass._module.List Tclass._module.G)))))
 :qid |GHCMergeSortdfy.127:10|
 :skolemid |689|
 :pattern ( (_module.__default.mergePairs $ly@@4 |x#0|))
))))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@0 T@U) ($ly@@5 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@0 |xs#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| (Tclass._module.List _module._default.multiset_of$T@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@4|)) (let ((|ys#1| (_module.List.tail |xs#0@@4|)))
(|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@0 |ys#1|))) (= (_module.__default.multiset__of _module._default.multiset_of$T@@0 ($LS $ly@@5) |xs#0@@4|) (ite (_module.List.Nil_q |xs#0@@4|) |MultiSet#Empty| (let ((|ys#0@@0| (_module.List.tail |xs#0@@4|)))
(let ((|a#0| (_module.List.head |xs#0@@4|)))
(|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0|) (_module.__default.multiset__of _module._default.multiset_of$T@@0 $ly@@5 |ys#0@@0|))))))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@0 ($LS $ly@@5) |xs#0@@4|))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((a@@1 T@U) (x@@5 T@U) (y T@U) ) (!  (=> (or (not (= x@@5 y)) (not true)) (= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@1 x@@5) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@1 x@@5) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@1 T@U) ($ly@@6 T@U) (|xs#0@@5| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@1 (Lit DatatypeTypeType |xs#0@@5|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.multiset_of$T@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)))))) (let ((|ys#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@5|)))))
(|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@1 |ys#3@@0|))) (= (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@6) (Lit DatatypeTypeType |xs#0@@5|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@5|)) |MultiSet#Empty| (let ((|ys#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@5|)))))
(let ((|a#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@5|)))))
(|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#2@@0|) (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@6) |ys#2@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |605|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@6) (Lit DatatypeTypeType |xs#0@@5|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1097|
)))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| (Lit BoxType |a#0@@0|) (Lit BoxType |b#0|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@0| Tclass._module.G) ($IsBox |b#0| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| (Lit BoxType |a#0@@0|)) (|_module.__default.key#canCall| (Lit BoxType |b#0|))) (= (_module.__default.Below (Lit BoxType |a#0@@0|) (Lit BoxType |b#0|)) (<= (_module.__default.key (Lit BoxType |a#0@@0|)) (_module.__default.key (Lit BoxType |b#0|))))))
 :qid |GHCMergeSortdfy.75:17|
 :weight 3
 :skolemid |640|
 :pattern ( (_module.__default.Below (Lit BoxType |a#0@@0|) (Lit BoxType |b#0|)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|xs#0@@6| T@U) (|ys#0@@1| T@U) ) (!  (=> (or (|_module.__default.merge#canCall| |xs#0@@6| |ys#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List Tclass._module.G)) ($Is DatatypeTypeType |ys#0@@1| (Tclass._module.List Tclass._module.G))))) (and (=> (not (_module.List.Nil_q |xs#0@@6|)) (let ((|xs'#1| (_module.List.tail |xs#0@@6|)))
(let ((|a#1| (_module.List.head |xs#0@@6|)))
 (=> (not (_module.List.Nil_q |ys#0@@1|)) (let ((|ys'#1| (_module.List.tail |ys#0@@1|)))
(let ((|b#1| (_module.List.head |ys#0@@1|)))
 (and (and (|_module.__default.Below#canCall| |a#1| |b#1|) (=> (_module.__default.Below |a#1| |b#1|) (|_module.__default.merge#canCall| |xs'#1| |ys#0@@1|))) (=> (not (_module.__default.Below |a#1| |b#1|)) (|_module.__default.merge#canCall| |xs#0@@6| |ys'#1|))))))))) (= (_module.__default.merge ($LS $ly@@7) |xs#0@@6| |ys#0@@1|) (ite (_module.List.Nil_q |xs#0@@6|) |ys#0@@1| (let ((|xs'#0| (_module.List.tail |xs#0@@6|)))
(let ((|a#0@@1| (_module.List.head |xs#0@@6|)))
(ite (_module.List.Nil_q |ys#0@@1|) |xs#0@@6| (let ((|ys'#0| (_module.List.tail |ys#0@@1|)))
(let ((|b#0@@0| (_module.List.head |ys#0@@1|)))
(ite (_module.__default.Below |a#0@@1| |b#0@@0|) (|#_module.List.Cons| |a#0@@1| (_module.__default.merge $ly@@7 |xs'#0| |ys#0@@1|)) (|#_module.List.Cons| |b#0@@0| (_module.__default.merge $ly@@7 |xs#0@@6| |ys'#0|))))))))))))
 :qid |GHCMergeSortdfy.138:10|
 :skolemid |699|
 :pattern ( (_module.__default.merge ($LS $ly@@7) |xs#0@@6| |ys#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@1 T@U) ($ly@@8 T@U) (|xs#0@@7| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@1 |xs#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List _module._default.length$_T0@@1)))) (and (=> (not (_module.List.Nil_q |xs#0@@7|)) (let ((|ys#1@@0| (_module.List.tail |xs#0@@7|)))
(|_module.__default.length#canCall| _module._default.length$_T0@@1 |ys#1@@0|))) (= (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@8) |xs#0@@7|) (ite (_module.List.Nil_q |xs#0@@7|) 0 (let ((|ys#0@@2| (_module.List.tail |xs#0@@7|)))
(+ 1 (_module.__default.length _module._default.length$_T0@@1 $ly@@8 |ys#0@@2|)))))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( (_module.__default.length _module._default.length$_T0@@1 ($LS $ly@@8) |xs#0@@7|))
))))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@9 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.mergeAll#canCall| (Lit DatatypeTypeType |x#0@@0|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@0| (Tclass._module.List (Tclass._module.List Tclass._module.G))) (not (|_module.List#Equal| |x#0@@0| |#_module.List.Nil|))))) (and (and (|$IsA#_module.List| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@0|)))) (=> (not (|_module.List#Equal| (_module.List.tail (Lit DatatypeTypeType |x#0@@0|)) |#_module.List.Nil|)) (and (|_module.__default.mergePairs#canCall| (Lit DatatypeTypeType |x#0@@0|)) (|_module.__default.mergeAll#canCall| (Lit DatatypeTypeType (_module.__default.mergePairs ($LS $LZ) (Lit DatatypeTypeType |x#0@@0|))))))) (= (_module.__default.mergeAll ($LS $ly@@9) (Lit DatatypeTypeType |x#0@@0|)) (ite (|_module.List#Equal| (_module.List.tail (Lit DatatypeTypeType |x#0@@0|)) |#_module.List.Nil|) ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@0|))) (_module.__default.mergeAll ($LS $ly@@9) (Lit DatatypeTypeType (_module.__default.mergePairs ($LS $LZ) (Lit DatatypeTypeType |x#0@@0|))))))))
 :qid |GHCMergeSortdfy.117:10|
 :weight 3
 :skolemid |684|
 :pattern ( (_module.__default.mergeAll ($LS $ly@@9) (Lit DatatypeTypeType |x#0@@0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@2| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| |a#0@@2| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@2| Tclass._module.G) ($IsBox |b#0@@1| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| |a#0@@2|) (|_module.__default.key#canCall| |b#0@@1|)) (= (_module.__default.Below |a#0@@2| |b#0@@1|) (<= (_module.__default.key |a#0@@2|) (_module.__default.key |b#0@@1|)))))
 :qid |GHCMergeSortdfy.75:17|
 :skolemid |639|
 :pattern ( (_module.__default.Below |a#0@@2| |b#0@@1|))
))))
(assert (forall (($ly@@10 T@U) (|xs#0@@8| T@U) (|ys#0@@3| T@U) ) (! (= (_module.__default.merge ($LS $ly@@10) |xs#0@@8| |ys#0@@3|) (_module.__default.merge $ly@@10 |xs#0@@8| |ys#0@@3|))
 :qid |GHCMergeSortdfy.138:10|
 :skolemid |695|
 :pattern ( (_module.__default.merge ($LS $ly@@10) |xs#0@@8| |ys#0@@3|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@11 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.__default.mergeAll#canCall| |x#0@@1|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@1| (Tclass._module.List (Tclass._module.List Tclass._module.G))) (not (|_module.List#Equal| |x#0@@1| |#_module.List.Nil|))))) ($Is DatatypeTypeType (_module.__default.mergeAll $ly@@11 |x#0@@1|) (Tclass._module.List Tclass._module.G)))
 :qid |GHCMergeSortdfy.117:10|
 :skolemid |681|
 :pattern ( (_module.__default.mergeAll $ly@@11 |x#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@12 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.__default.mergePairs#canCall| (Lit DatatypeTypeType |x#0@@2|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@2| (Tclass._module.List (Tclass._module.List Tclass._module.G))))) (and (=> (U_2_bool (Lit boolType (bool_2_U  (and (_module.List.Cons_q (Lit DatatypeTypeType |x#0@@2|)) (_module.List.Cons_q (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@2|)))))))) (and (|_module.__default.merge#canCall| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@2|)))) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@2|))))))) (|_module.__default.mergePairs#canCall| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@2|)))))))) (= (_module.__default.mergePairs ($LS $ly@@12) (Lit DatatypeTypeType |x#0@@2|)) (ite  (and (_module.List.Cons_q (Lit DatatypeTypeType |x#0@@2|)) (_module.List.Cons_q (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@2|))))) (|#_module.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (_module.__default.merge ($LS $LZ) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |x#0@@2|)))) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@2|))))))))) (Lit DatatypeTypeType (_module.__default.mergePairs ($LS $ly@@12) (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |x#0@@2|)))))))) |x#0@@2|))))
 :qid |GHCMergeSortdfy.127:10|
 :weight 3
 :skolemid |692|
 :pattern ( (_module.__default.mergePairs ($LS $ly@@12) (Lit DatatypeTypeType |x#0@@2|)))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.MultisetUnion$T@@0 T@U) ($ly@@13 T@U) (|xs#0@@9| T@U) ) (!  (=> (and (or (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@0 |xs#0@@9|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@9| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@0))) ($IsAlloc DatatypeTypeType |xs#0@@9| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@0)) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc MultiSetType (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@0 $ly@@13 |xs#0@@9|) (TMultiSet _module._default.MultisetUnion$T@@0) $Heap))
 :qid |GHCMergeSortdfy.38:16|
 :skolemid |610|
 :pattern ( ($IsAlloc MultiSetType (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@0 $ly@@13 |xs#0@@9|) (TMultiSet _module._default.MultisetUnion$T@@0) $Heap))
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
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MultisetUnion$T@@1 T@U) ($ly@@14 T@U) (|xs#0@@10| T@U) ) (!  (=> (or (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@1 |xs#0@@10|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@10| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@1))))) (and (=> (not (_module.List.Nil_q |xs#0@@10|)) (let ((|ys#1@@1| (_module.List.tail |xs#0@@10|)))
(let ((|a#1@@0| ($Unbox DatatypeTypeType (_module.List.head |xs#0@@10|))))
 (and (|_module.__default.multiset__of#canCall| _module._default.MultisetUnion$T@@1 |a#1@@0|) (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@1 |ys#1@@1|))))) (= (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@1 ($LS $ly@@14) |xs#0@@10|) (ite (_module.List.Nil_q |xs#0@@10|) |MultiSet#Empty| (let ((|ys#0@@4| (_module.List.tail |xs#0@@10|)))
(let ((|a#0@@3| ($Unbox DatatypeTypeType (_module.List.head |xs#0@@10|))))
(|MultiSet#Union| (_module.__default.multiset__of _module._default.MultisetUnion$T@@1 ($LS $LZ) |a#0@@3|) (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@1 $ly@@14 |ys#0@@4|))))))))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@1 ($LS $ly@@14) |xs#0@@10|))
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
(assert (forall ((a@@6 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@7) x@@7) (+ (|MultiSet#Multiplicity| a@@6 x@@7) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@6 x@@7))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@15 T@U) (|xs#0@@11| T@U) (|ys#0@@5| T@U) ) (!  (=> (or (|_module.__default.merge#canCall| |xs#0@@11| |ys#0@@5|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@11| (Tclass._module.List Tclass._module.G)) ($Is DatatypeTypeType |ys#0@@5| (Tclass._module.List Tclass._module.G))))) ($Is DatatypeTypeType (_module.__default.merge $ly@@15 |xs#0@@11| |ys#0@@5|) (Tclass._module.List Tclass._module.G)))
 :qid |GHCMergeSortdfy.138:10|
 :skolemid |697|
 :pattern ( (_module.__default.merge $ly@@15 |xs#0@@11| |ys#0@@5|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.multiset_of$T@@2 T@U) ($ly@@16 T@U) (|xs#0@@12| T@U) ) (!  (=> (and (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@2 |xs#0@@12|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@12| (Tclass._module.List _module._default.multiset_of$T@@2)) ($IsAlloc DatatypeTypeType |xs#0@@12| (Tclass._module.List _module._default.multiset_of$T@@2) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@2 $ly@@16 |xs#0@@12|) (TMultiSet _module._default.multiset_of$T@@2) $Heap@@0))
 :qid |GHCMergeSortdfy.31:16|
 :skolemid |602|
 :pattern ( ($IsAlloc MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@2 $ly@@16 |xs#0@@12|) (TMultiSet _module._default.multiset_of$T@@2) $Heap@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@3 T@U) ($ly@@17 T@U) (|xs#0@@13| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@3 |xs#0@@13|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@13| (Tclass._module.List _module._default.multiset_of$T@@3)))) ($Is MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@3 $ly@@17 |xs#0@@13|) (TMultiSet _module._default.multiset_of$T@@3)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@3 $ly@@17 |xs#0@@13|))
))))
(assert (forall (($ly@@18 T@U) (|x#0@@3| T@U) ) (! (= (_module.__default.mergeAll ($LS $ly@@18) |x#0@@3|) (_module.__default.mergeAll $ly@@18 |x#0@@3|))
 :qid |GHCMergeSortdfy.117:10|
 :skolemid |679|
 :pattern ( (_module.__default.mergeAll ($LS $ly@@18) |x#0@@3|))
)))
(assert (forall (($ly@@19 T@U) (|x#0@@4| T@U) ) (! (= (_module.__default.mergePairs ($LS $ly@@19) |x#0@@4|) (_module.__default.mergePairs $ly@@19 |x#0@@4|))
 :qid |GHCMergeSortdfy.127:10|
 :skolemid |687|
 :pattern ( (_module.__default.mergePairs ($LS $ly@@19) |x#0@@4|))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@20 T@U) (|x#0@@5| T@U) ) (!  (=> (or (|_module.__default.mergePairs#canCall| |x#0@@5|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@5| (Tclass._module.List (Tclass._module.List Tclass._module.G))))) (and (=> (and (_module.List.Cons_q |x#0@@5|) (_module.List.Cons_q (_module.List.tail |x#0@@5|))) (and (|_module.__default.merge#canCall| ($Unbox DatatypeTypeType (_module.List.head |x#0@@5|)) ($Unbox DatatypeTypeType (_module.List.head (_module.List.tail |x#0@@5|)))) (|_module.__default.mergePairs#canCall| (_module.List.tail (_module.List.tail |x#0@@5|))))) (= (_module.__default.mergePairs ($LS $ly@@20) |x#0@@5|) (ite  (and (_module.List.Cons_q |x#0@@5|) (_module.List.Cons_q (_module.List.tail |x#0@@5|))) (|#_module.List.Cons| ($Box DatatypeTypeType (_module.__default.merge ($LS $LZ) ($Unbox DatatypeTypeType (_module.List.head |x#0@@5|)) ($Unbox DatatypeTypeType (_module.List.head (_module.List.tail |x#0@@5|))))) (_module.__default.mergePairs $ly@@20 (_module.List.tail (_module.List.tail |x#0@@5|)))) |x#0@@5|))))
 :qid |GHCMergeSortdfy.127:10|
 :skolemid |691|
 :pattern ( (_module.__default.mergePairs ($LS $ly@@20) |x#0@@5|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MultisetUnion$T@@2 T@U) ($ly@@21 T@U) (|xs#0@@14| T@U) ) (!  (=> (or (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@2 |xs#0@@14|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@14| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@2))))) ($Is MultiSetType (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@2 $ly@@21 |xs#0@@14|) (TMultiSet _module._default.MultisetUnion$T@@2)))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@2 $ly@@21 |xs#0@@14|))
))))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@22 T@U) (|x#0@@6| T@U) ) (!  (=> (or (|_module.__default.mergeAll#canCall| |x#0@@6|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |x#0@@6| (Tclass._module.List (Tclass._module.List Tclass._module.G))) (not (|_module.List#Equal| |x#0@@6| |#_module.List.Nil|))))) (and (and (|$IsA#_module.List| (_module.List.tail |x#0@@6|)) (=> (not (|_module.List#Equal| (_module.List.tail |x#0@@6|) |#_module.List.Nil|)) (and (|_module.__default.mergePairs#canCall| |x#0@@6|) (|_module.__default.mergeAll#canCall| (_module.__default.mergePairs ($LS $LZ) |x#0@@6|))))) (= (_module.__default.mergeAll ($LS $ly@@22) |x#0@@6|) (ite (|_module.List#Equal| (_module.List.tail |x#0@@6|) |#_module.List.Nil|) ($Unbox DatatypeTypeType (_module.List.head |x#0@@6|)) (_module.__default.mergeAll $ly@@22 (_module.__default.mergePairs ($LS $LZ) |x#0@@6|))))))
 :qid |GHCMergeSortdfy.117:10|
 :skolemid |683|
 :pattern ( (_module.__default.mergeAll ($LS $ly@@22) |x#0@@6|))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1103|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.MultisetUnion$T@@3 T@U) ($ly@@23 T@U) (|xs#0@@15| T@U) ) (!  (=> (or (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@3 (Lit DatatypeTypeType |xs#0@@15|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@15| (Tclass._module.List (Tclass._module.List _module._default.MultisetUnion$T@@3))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@15|)))))) (let ((|ys#3@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@15|)))))
(let ((|a#3@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |xs#0@@15|))))))
 (and (|_module.__default.multiset__of#canCall| _module._default.MultisetUnion$T@@3 |a#3@@0|) (|_module.__default.MultisetUnion#canCall| _module._default.MultisetUnion$T@@3 |ys#3@@1|))))) (= (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@3 ($LS $ly@@23) (Lit DatatypeTypeType |xs#0@@15|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@15|)) |MultiSet#Empty| (let ((|ys#2@@1| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@15|)))))
(let ((|a#2@@1| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.List.head (Lit DatatypeTypeType |xs#0@@15|))))))
(|MultiSet#Union| (_module.__default.multiset__of _module._default.MultisetUnion$T@@3 ($LS $LZ) |a#2@@1|) (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@3 ($LS $ly@@23) |ys#2@@1|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |613|
 :pattern ( (_module.__default.MultisetUnion _module._default.MultisetUnion$T@@3 ($LS $ly@@23) (Lit DatatypeTypeType |xs#0@@15|)))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.length$_T0@@2 T@U) ($ly@@24 T@U) (|xs#0@@16| T@U) ) (!  (=> (or (|_module.__default.length#canCall| _module._default.length$_T0@@2 |xs#0@@16|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@16| (Tclass._module.List _module._default.length$_T0@@2)))) (<= (LitInt 0) (_module.__default.length _module._default.length$_T0@@2 $ly@@24 |xs#0@@16|)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.__default.length _module._default.length$_T0@@2 $ly@@24 |xs#0@@16|))
))))
(assert (forall ((a@@8 T@U) (x@@12 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@8 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@8 x@@12) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@8 x@@12) (|MultiSet#Multiplicity| a@@8 y@@0))
)))
(assert (forall ((a@@9 T@U) (x@@13 T@U) (o@@1 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@13) o@@1))  (or (= o@@1 x@@13) (< 0 (|MultiSet#Multiplicity| a@@9 o@@1))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@13) o@@1))
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
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |x#0@@7| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.perm__mergeAll)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (not (|_module.List#Equal| |x#0@@7| |#_module.List.Nil|))) (and ($IsAlloc DatatypeTypeType |x#0@@7| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@@1) (|_module.__default.length#canCall| (Tclass._module.List Tclass._module.G) |x#0@@7|))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@1 $Heap@0)) (and ($IsAlloc DatatypeTypeType |x#0@@7| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) (not (|_module.List#Equal| |x#0@@7| |#_module.List.Nil|))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and ($Is DatatypeTypeType |x#0@@7| (Tclass._module.List (Tclass._module.List Tclass._module.G))) ($IsAlloc DatatypeTypeType |x#0@@7| (Tclass._module.List (Tclass._module.List Tclass._module.G)) $Heap@@1)) (|$IsA#_module.List| |x#0@@7|)) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
