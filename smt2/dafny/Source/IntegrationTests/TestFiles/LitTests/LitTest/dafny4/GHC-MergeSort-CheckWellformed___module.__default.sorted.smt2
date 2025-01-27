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
(declare-fun Tag (T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.G () T@U)
(declare-fun _module.__default.multiset__of (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.multiset__of#canCall| (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.sorted (T@U T@U) Bool)
(declare-fun |_module.__default.sorted#canCall| (T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun _module.__default.Below (T@U T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $LZ () T@U)
(declare-fun |_module.__default.Below#canCall| (T@U T@U) Bool)
(declare-fun |_module.__default.key#canCall| (T@U) Bool)
(declare-fun _module.__default.key (T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TagBool TagMultiSet alloc Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$List)
)
(assert (= (Tag TBool) TagBool))
(assert ($AlwaysAllocated Tclass._module.G))
(assert (forall ((_module._default.multiset_of$T T@U) ($ly T@U) (|xs#0| T@U) ) (! (= (_module.__default.multiset__of _module._default.multiset_of$T ($LS $ly) |xs#0|) (_module.__default.multiset__of _module._default.multiset_of$T $ly |xs#0|))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T ($LS $ly) |xs#0|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (= (Ctor DatatypeTypeType) 4))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@0 |xs#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@0| (Tclass._module.List _module._default.multiset_of$T@@0)))) (and (=> (not (_module.List.Nil_q |xs#0@@0|)) (let ((|ys#1| (_module.List.tail |xs#0@@0|)))
(|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@0 |ys#1|))) (= (_module.__default.multiset__of _module._default.multiset_of$T@@0 ($LS $ly@@0) |xs#0@@0|) (ite (_module.List.Nil_q |xs#0@@0|) |MultiSet#Empty| (let ((|ys#0| (_module.List.tail |xs#0@@0|)))
(let ((|a#0| (_module.List.head |xs#0@@0|)))
(|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0|) (_module.__default.multiset__of _module._default.multiset_of$T@@0 $ly@@0 |ys#0|))))))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@0 ($LS $ly@@0) |xs#0@@0|))
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
(assert (= (Ctor BoxType) 5))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|xs#0@@1| T@U) ) (!  (=> (or (|_module.__default.sorted#canCall| (Lit DatatypeTypeType |xs#0@@1|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@1| (Tclass._module.List Tclass._module.G)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|a#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@1|)))))
 (and (forall ((|y#3| T@U) ) (!  (=> ($IsBox |y#3| Tclass._module.G) (and (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#3|) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#3|) |y#3|) 0) (|_module.__default.Below#canCall| |a#3| |y#3|))))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |713|
 :pattern ( (_module.__default.Below |a#3| |y#3|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#3|) |y#3|))
)) (=> (forall ((|y#3@@0| T@U) ) (!  (=> ($IsBox |y#3@@0| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#3|) |y#3@@0|) 0) (_module.__default.Below |a#3| |y#3@@0|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |714|
 :pattern ( (_module.__default.Below |a#3| |y#3@@0|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#3|) |y#3@@0|))
)) (|_module.__default.sorted#canCall| |ys#3|)))))) (= (_module.__default.sorted ($LS $ly@@1) (Lit DatatypeTypeType |xs#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)) true (let ((|ys#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|a#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@1|)))))
 (and (forall ((|y#2| T@U) ) (!  (=> ($IsBox |y#2| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (Lit MultiSetType (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#2|)) |y#2|) 0) (_module.__default.Below |a#2| |y#2|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |712|
 :pattern ( (_module.__default.Below |a#2| |y#2|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#2|) |y#2|))
)) (_module.__default.sorted ($LS $ly@@1) |ys#2|))))))))
 :qid |GHCMergeSortdfy.151:17|
 :weight 3
 :skolemid |715|
 :pattern ( (_module.__default.sorted ($LS $ly@@1) (Lit DatatypeTypeType |xs#0@@1|)))
))))
(assert (forall ((a T@U) (x@@4 T@U) (y T@U) ) (!  (=> (or (not (= x@@4 y)) (not true)) (= (|MultiSet#Multiplicity| a y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a x@@4) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a x@@4) (|MultiSet#Multiplicity| a y))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@1 T@U) ($ly@@2 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@1 (Lit DatatypeTypeType |xs#0@@2|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@2| (Tclass._module.List _module._default.multiset_of$T@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)))))) (let ((|ys#3@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@1 |ys#3@@0|))) (= (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@2|)) |MultiSet#Empty| (let ((|ys#2@@0| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |xs#0@@2|)))))
(let ((|a#2@@0| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |xs#0@@2|)))))
(|MultiSet#Union| (|MultiSet#UnionOne| |MultiSet#Empty| |a#2@@0|) (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@2) |ys#2@@0|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |605|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@1 ($LS $ly@@2) (Lit DatatypeTypeType |xs#0@@2|)))
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
(assert (forall ((a@@0 T@U) (x@@5 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@5)) (+ (|MultiSet#Card| a@@0) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@5)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.sorted#canCall| |xs#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@3| (Tclass._module.List Tclass._module.G)))) (and (=> (not (_module.List.Nil_q |xs#0@@3|)) (let ((|ys#1@@0| (_module.List.tail |xs#0@@3|)))
(let ((|a#1| (_module.List.head |xs#0@@3|)))
 (and (forall ((|y#1| T@U) ) (!  (=> ($IsBox |y#1| Tclass._module.G) (and (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#1@@0|) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#1@@0|) |y#1|) 0) (|_module.__default.Below#canCall| |a#1| |y#1|))))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |709|
 :pattern ( (_module.__default.Below |a#1| |y#1|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#1@@0|) |y#1|))
)) (=> (forall ((|y#1@@0| T@U) ) (!  (=> ($IsBox |y#1@@0| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#1@@0|) |y#1@@0|) 0) (_module.__default.Below |a#1| |y#1@@0|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |710|
 :pattern ( (_module.__default.Below |a#1| |y#1@@0|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#1@@0|) |y#1@@0|))
)) (|_module.__default.sorted#canCall| |ys#1@@0|)))))) (= (_module.__default.sorted ($LS $ly@@3) |xs#0@@3|) (ite (_module.List.Nil_q |xs#0@@3|) true (let ((|ys#0@@0| (_module.List.tail |xs#0@@3|)))
(let ((|a#0@@1| (_module.List.head |xs#0@@3|)))
 (and (forall ((|y#0| T@U) ) (!  (=> ($IsBox |y#0| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#0@@0|) |y#0|) 0) (_module.__default.Below |a#0@@1| |y#0|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |708|
 :pattern ( (_module.__default.Below |a#0@@1| |y#0|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#0@@0|) |y#0|))
)) (_module.__default.sorted $ly@@3 |ys#0@@0|))))))))
 :qid |GHCMergeSortdfy.151:17|
 :skolemid |711|
 :pattern ( (_module.__default.sorted ($LS $ly@@3) |xs#0@@3|))
))))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((a@@1 T@U) (b T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@1 b)) (+ (|MultiSet#Card| a@@1) (|MultiSet#Card| b)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@1 b)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@2| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.Below#canCall| |a#0@@2| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and ($IsBox |a#0@@2| Tclass._module.G) ($IsBox |b#0@@0| Tclass._module.G)))) (and (and (|_module.__default.key#canCall| |a#0@@2|) (|_module.__default.key#canCall| |b#0@@0|)) (= (_module.__default.Below |a#0@@2| |b#0@@0|) (<= (_module.__default.key |a#0@@2|) (_module.__default.key |b#0@@0|)))))
 :qid |GHCMergeSortdfy.75:17|
 :skolemid |639|
 :pattern ( (_module.__default.Below |a#0@@2| |b#0@@0|))
))))
(assert (forall ((_module.List$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (_module.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)))
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
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall (($ly@@4 T@U) (|xs#0@@4| T@U) ) (! (= (_module.__default.sorted ($LS $ly@@4) |xs#0@@4|) (_module.__default.sorted $ly@@4 |xs#0@@4|))
 :qid |GHCMergeSortdfy.151:17|
 :skolemid |704|
 :pattern ( (_module.__default.sorted ($LS $ly@@4) |xs#0@@4|))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
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
(assert (forall ((a@@2 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@2 x@@6) x@@6) (+ (|MultiSet#Multiplicity| a@@2 x@@6) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@2 x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.multiset_of$T@@2 T@U) ($ly@@5 T@U) (|xs#0@@5| T@U) ) (!  (=> (and (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@2 |xs#0@@5|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.multiset_of$T@@2)) ($IsAlloc DatatypeTypeType |xs#0@@5| (Tclass._module.List _module._default.multiset_of$T@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@2 $ly@@5 |xs#0@@5|) (TMultiSet _module._default.multiset_of$T@@2) $Heap))
 :qid |GHCMergeSortdfy.31:16|
 :skolemid |602|
 :pattern ( ($IsAlloc MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@2 $ly@@5 |xs#0@@5|) (TMultiSet _module._default.multiset_of$T@@2) $Heap))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.multiset_of$T@@3 T@U) ($ly@@6 T@U) (|xs#0@@6| T@U) ) (!  (=> (or (|_module.__default.multiset__of#canCall| _module._default.multiset_of$T@@3 |xs#0@@6|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@6| (Tclass._module.List _module._default.multiset_of$T@@3)))) ($Is MultiSetType (_module.__default.multiset__of _module._default.multiset_of$T@@3 $ly@@6 |xs#0@@6|) (TMultiSet _module._default.multiset_of$T@@3)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.__default.multiset__of _module._default.multiset_of$T@@3 $ly@@6 |xs#0@@6|))
))))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@8 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@8))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@8))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@3 b@@0) o@@0) (+ (|MultiSet#Multiplicity| a@@3 o@@0) (|MultiSet#Multiplicity| b@@0 o@@0)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@3 b@@0) o@@0))
)))
(assert (forall ((d@@4 T@U) (_module.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@5) $h@@0))) ($IsAllocBox (_module.List.head d@@4) _module.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAllocBox (_module.List.head d@@4) _module.List$T@@5 $h@@0))
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
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@3)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@3 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@6 T@U) (_module.List$T@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@6) (Tclass._module.List _module.List$T@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@6) (Tclass._module.List _module.List$T@@7) $h@@1))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |GHCMergeSortdfy.14:31|
 :skolemid |1103|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((a@@4 T@U) (x@@10 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@4 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@4 x@@10) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@4 x@@10) (|MultiSet#Multiplicity| a@@4 y@@0))
)))
(assert (forall ((a@@5 T@U) (x@@11 T@U) (o@@1 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@11) o@@1))  (or (= o@@1 x@@11) (< 0 (|MultiSet#Multiplicity| a@@5 o@@1))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@11) o@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MultiSetType v@@4 (TMultiSet t0@@3) h@@1) (forall ((bx@@4 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@4 bx@@4)) ($IsAllocBox bx@@4 t0@@3 h@@1))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@4 bx@@4))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@4 (TMultiSet t0@@3) h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@2))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@2)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@2))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#Z#0@0| () T@U)
(declare-fun |ys#Z#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |xs#0@@7| () T@U)
(declare-fun |y#4@0| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.sorted)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon10_correct true))
(let ((anon18_Else_correct  (=> (and (not (forall ((|y#5| T@U) ) (!  (=> ($IsBox |y#5| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#Z#0@0|) |y#5|) 0) (_module.__default.Below |a#Z#0@0| |y#5|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |719|
 :pattern ( (_module.__default.Below |a#Z#0@0| |y#5|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#Z#0@0|) |y#5|))
))) (= (ControlFlow 0 7) 4)) anon10_correct)))
(let ((anon18_Then_correct  (=> (and (forall ((|y#5@@0| T@U) ) (!  (=> ($IsBox |y#5@@0| Tclass._module.G) (=> (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#Z#0@0|) |y#5@@0|) 0) (_module.__default.Below |a#Z#0@0| |y#5@@0|)))
 :qid |GHCMergeSortdfy.156:13|
 :skolemid |719|
 :pattern ( (_module.__default.Below |a#Z#0@0| |y#5@@0|))
 :pattern ( (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#Z#0@0|) |y#5@@0|))
)) ($IsAlloc DatatypeTypeType |ys#Z#0@0| (Tclass._module.List Tclass._module.G) $Heap@@0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< (DtRank |ys#Z#0@0|) (DtRank |xs#0@@7|))) (=> (< (DtRank |ys#Z#0@0|) (DtRank |xs#0@@7|)) (=> (and (|_module.__default.sorted#canCall| |ys#Z#0@0|) (= (ControlFlow 0 5) 4)) anon10_correct))))))
(let ((anon17_Else_correct  (=> (>= 0 (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#Z#0@0|) |y#4@0|)) (and (=> (= (ControlFlow 0 10) 5) anon18_Then_correct) (=> (= (ControlFlow 0 10) 7) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (and (> (|MultiSet#Multiplicity| (_module.__default.multiset__of Tclass._module.G ($LS $LZ) |ys#Z#0@0|) |y#4@0|) 0) ($IsAllocBox |a#Z#0@0| Tclass._module.G $Heap@@0)) (and ($IsAllocBox |y#4@0| Tclass._module.G $Heap@@0) (|_module.__default.Below#canCall| |a#Z#0@0| |y#4@0|))) (and (=> (= (ControlFlow 0 9) 5) anon18_Then_correct) (=> (= (ControlFlow 0 9) 7) anon18_Else_correct)))))
(let ((anon16_Then_correct  (=> (and (and ($IsBox |y#4@0| Tclass._module.G) ($IsAllocBox |y#4@0| Tclass._module.G $Heap@@0)) (and ($IsAlloc DatatypeTypeType |ys#Z#0@0| (Tclass._module.List Tclass._module.G) $Heap@@0) (|_module.__default.multiset__of#canCall| Tclass._module.G |ys#Z#0@0|))) (and (=> (= (ControlFlow 0 11) 9) anon17_Then_correct) (=> (= (ControlFlow 0 11) 10) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not (and ($IsBox |y#4@0| Tclass._module.G) ($IsAllocBox |y#4@0| Tclass._module.G $Heap@@0))) (and (=> (= (ControlFlow 0 8) 5) anon18_Then_correct) (=> (= (ControlFlow 0 8) 7) anon18_Else_correct)))))
(let ((anon15_Then_correct  (=> (= |xs#0@@7| (|#_module.List.Cons| |_mcc#0#0| |_mcc#1#0|)) (=> (and (and (and ($IsBox |_mcc#0#0| Tclass._module.G) ($Is DatatypeTypeType |_mcc#1#0| (Tclass._module.List Tclass._module.G))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.List Tclass._module.G)))) (and (and (= |ys#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($IsBox |let#1#0#0| Tclass._module.G) (= |a#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 12) 11) anon16_Then_correct) (=> (= (ControlFlow 0 12) 8) anon16_Else_correct))))))
(let ((anon15_Else_correct true))
(let ((anon14_Else_correct  (=> (or (not (= |xs#0@@7| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 13) 12) anon15_Then_correct) (=> (= (ControlFlow 0 13) 3) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon13_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 14) 1) anon13_Then_correct) (=> (= (ControlFlow 0 14) 2) anon14_Then_correct)) (=> (= (ControlFlow 0 14) 13) anon14_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is DatatypeTypeType |xs#0@@7| (Tclass._module.List Tclass._module.G))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
