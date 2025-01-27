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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass.List.M () T@U)
(declare-fun |##List.M.Cons| () T@U)
(declare-fun |##List.M.Nil| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$M () T@U)
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
(declare-fun List.__default.Map (T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |List.__default.Map#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.List.M (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun List.M.Cons_q (T@U) Bool)
(declare-fun List.M.tl (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun List.M.hd (T@U) T@U)
(declare-fun |#List.M.Cons| (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |#List.M.Nil| () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun List.M.Nil_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass.List.M_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass.List.M |##List.M.Cons| |##List.M.Nil| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$M)
)
(assert  (and (and (= (Ctor DatatypeTypeType) 3) (= (Ctor HandleTypeType) 4)) (= (Ctor BoxType) 5)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.Map$A T@U) (List._default.Map$B T@U) ($ly T@U) ($Heap T@U) (|xs#0| T@U) (|f#0| T@U) ) (!  (=> (or (|List.__default.Map#canCall| List._default.Map$A List._default.Map$B (Lit DatatypeTypeType |xs#0|) |f#0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |xs#0| (Tclass.List.M List._default.Map$A))) ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 List._default.Map$A List._default.Map$B))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (List.M.Cons_q (Lit DatatypeTypeType |xs#0|))))) (let ((|xs#4| (Lit DatatypeTypeType (List.M.tl (Lit DatatypeTypeType |xs#0|)))))
(|List.__default.Map#canCall| List._default.Map$A List._default.Map$B |xs#4| |f#0|))) (= (List.__default.Map List._default.Map$A List._default.Map$B ($LS $ly) (Lit DatatypeTypeType |xs#0|) |f#0|) (ite (List.M.Cons_q (Lit DatatypeTypeType |xs#0|)) (let ((|xs#3| (Lit DatatypeTypeType (List.M.tl (Lit DatatypeTypeType |xs#0|)))))
(let ((|x#2| (Lit BoxType (List.M.hd (Lit DatatypeTypeType |xs#0|)))))
(|#List.M.Cons| (Apply1 List._default.Map$A List._default.Map$B $Heap |f#0| |x#2|) (List.__default.Map List._default.Map$A List._default.Map$B ($LS $ly) |xs#3| |f#0|)))) |#List.M.Nil|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2234|
 :pattern ( (List.__default.Map List._default.Map$A List._default.Map$B ($LS $ly) (Lit DatatypeTypeType |xs#0|) |f#0|) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.Map$A@@0 T@U) (List._default.Map$B@@0 T@U) ($ly@@0 T@U) (|xs#0@@0| T@U) (|f#0@@0| T@U) ) (!  (=> (or (|List.__default.Map#canCall| List._default.Map$A@@0 List._default.Map$B@@0 |xs#0@@0| |f#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |xs#0@@0| (Tclass.List.M List._default.Map$A@@0)) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 List._default.Map$A@@0 List._default.Map$B@@0))))) ($Is DatatypeTypeType (List.__default.Map List._default.Map$A@@0 List._default.Map$B@@0 $ly@@0 |xs#0@@0| |f#0@@0|) (Tclass.List.M List._default.Map$B@@0)))
 :qid |unknown.0:0|
 :skolemid |2230|
 :pattern ( (List.__default.Map List._default.Map$A@@0 List._default.Map$B@@0 $ly@@0 |xs#0@@0| |f#0@@0|))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1800|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#List.M.Nil|) |##List.M.Nil|))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((List.M$A T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#List.M.Nil| (Tclass.List.M List.M$A) $h))
 :qid |unknown.0:0|
 :skolemid |2306|
 :pattern ( ($IsAlloc DatatypeTypeType |#List.M.Nil| (Tclass.List.M List.M$A) $h))
)))
(assert (forall ((List.M$A@@0 T@U) ) (! ($Is DatatypeTypeType |#List.M.Nil| (Tclass.List.M List.M$A@@0))
 :qid |unknown.0:0|
 :skolemid |2305|
 :pattern ( ($Is DatatypeTypeType |#List.M.Nil| (Tclass.List.M List.M$A@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1690|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (List._default.Map$A@@1 T@U) (List._default.Map$B@@1 T@U) ($ly@@1 T@U) (|xs#0@@1| T@U) (|f#0@@1| T@U) ) (!  (=> (and (or (|List.__default.Map#canCall| List._default.Map$A@@1 List._default.Map$B@@1 |xs#0@@1| |f#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |xs#0@@1| (Tclass.List.M List._default.Map$A@@1)) ($IsAlloc DatatypeTypeType |xs#0@@1| (Tclass.List.M List._default.Map$A@@1) $Heap@@0)) (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 List._default.Map$A@@1 List._default.Map$B@@1)) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 List._default.Map$A@@1 List._default.Map$B@@1) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (List.__default.Map List._default.Map$A@@1 List._default.Map$B@@1 $ly@@1 |xs#0@@1| |f#0@@1|) (Tclass.List.M List._default.Map$B@@1) $Heap@@0))
 :qid |Monadsdfy.104:12|
 :skolemid |2231|
 :pattern ( ($IsAlloc DatatypeTypeType (List.__default.Map List._default.Map$A@@1 List._default.Map$B@@1 $ly@@1 |xs#0@@1| |f#0@@1|) (Tclass.List.M List._default.Map$B@@1) $Heap@@0))
))))
(assert (forall ((List.M$A@@1 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#List.M.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.List.M List.M$A@@1))  (and ($IsBox |a#2#0#0| List.M$A@@1) ($Is DatatypeTypeType |a#2#1#0| (Tclass.List.M List.M$A@@1))))
 :qid |unknown.0:0|
 :skolemid |2294|
 :pattern ( ($Is DatatypeTypeType (|#List.M.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.List.M List.M$A@@1)))
)))
(assert (forall ((d T@U) ) (! (= (List.M.Cons_q d) (= (DatatypeCtorId d) |##List.M.Cons|))
 :qid |unknown.0:0|
 :skolemid |2291|
 :pattern ( (List.M.Cons_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (List.M.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##List.M.Nil|))
 :qid |unknown.0:0|
 :skolemid |2303|
 :pattern ( (List.M.Nil_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1701|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (List.M.Cons_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#List.M.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Monadsdfy.85:24|
 :skolemid |2292|
)))
 :qid |unknown.0:0|
 :skolemid |2293|
 :pattern ( (List.M.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (List.M.Nil_q d@@2) (= d@@2 |#List.M.Nil|))
 :qid |unknown.0:0|
 :skolemid |2304|
 :pattern ( (List.M.Nil_q d@@2))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1714|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((List.M$A@@2 T@U) ) (!  (and (= (Tag (Tclass.List.M List.M$A@@2)) Tagclass.List.M) (= (TagFamily (Tclass.List.M List.M$A@@2)) tytagFamily$M))
 :qid |unknown.0:0|
 :skolemid |2203|
 :pattern ( (Tclass.List.M List.M$A@@2))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0@@2| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@0))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@3| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |2085|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@1))
)))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@1 h@@0) (Requires1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.Map$A@@2 T@U) (List._default.Map$B@@2 T@U) ($ly@@2 T@U) ($Heap@@1 T@U) (|xs#0@@2| T@U) (|f#0@@4| T@U) ) (!  (=> (or (|List.__default.Map#canCall| List._default.Map$A@@2 List._default.Map$B@@2 |xs#0@@2| |f#0@@4|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |xs#0@@2| (Tclass.List.M List._default.Map$A@@2))) ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc1 List._default.Map$A@@2 List._default.Map$B@@2))))) (and (=> (List.M.Cons_q |xs#0@@2|) (let ((|xs#2| (List.M.tl |xs#0@@2|)))
(|List.__default.Map#canCall| List._default.Map$A@@2 List._default.Map$B@@2 |xs#2| |f#0@@4|))) (= (List.__default.Map List._default.Map$A@@2 List._default.Map$B@@2 ($LS $ly@@2) |xs#0@@2| |f#0@@4|) (ite (List.M.Cons_q |xs#0@@2|) (let ((|xs#1| (List.M.tl |xs#0@@2|)))
(let ((|x#0| (List.M.hd |xs#0@@2|)))
(|#List.M.Cons| (Apply1 List._default.Map$A@@2 List._default.Map$B@@2 $Heap@@1 |f#0@@4| |x#0|) (List.__default.Map List._default.Map$A@@2 List._default.Map$B@@2 $ly@@2 |xs#1| |f#0@@4|)))) |#List.M.Nil|))))
 :qid |unknown.0:0|
 :skolemid |2233|
 :pattern ( (List.__default.Map List._default.Map$A@@2 List._default.Map$B@@2 ($LS $ly@@2) |xs#0@@2| |f#0@@4|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((List.M$A@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.List.M List.M$A@@3)) (or (List.M.Cons_q d@@3) (List.M.Nil_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2308|
 :pattern ( (List.M.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.List.M List.M$A@@3)))
 :pattern ( (List.M.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.List.M List.M$A@@3)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1825|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((f@@2 T@U) (t0@@2 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@2)) (Requires1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2062|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((List._default.Map$A@@3 T@U) (List._default.Map$B@@3 T@U) ($ly@@3 T@U) ($Heap@@2 T@U) (|xs#0@@3| T@U) (|f#0@@5| T@U) ) (!  (=> (or (|List.__default.Map#canCall| List._default.Map$A@@3 List._default.Map$B@@3 (Lit DatatypeTypeType |xs#0@@3|) (Lit HandleTypeType |f#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |xs#0@@3| (Tclass.List.M List._default.Map$A@@3))) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hTotalFunc1 List._default.Map$A@@3 List._default.Map$B@@3))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (List.M.Cons_q (Lit DatatypeTypeType |xs#0@@3|))))) (let ((|xs#6| (Lit DatatypeTypeType (List.M.tl (Lit DatatypeTypeType |xs#0@@3|)))))
(|List.__default.Map#canCall| List._default.Map$A@@3 List._default.Map$B@@3 |xs#6| (Lit HandleTypeType |f#0@@5|)))) (= (List.__default.Map List._default.Map$A@@3 List._default.Map$B@@3 ($LS $ly@@3) (Lit DatatypeTypeType |xs#0@@3|) (Lit HandleTypeType |f#0@@5|)) (ite (List.M.Cons_q (Lit DatatypeTypeType |xs#0@@3|)) (let ((|xs#5| (Lit DatatypeTypeType (List.M.tl (Lit DatatypeTypeType |xs#0@@3|)))))
(let ((|x#4| (Lit BoxType (List.M.hd (Lit DatatypeTypeType |xs#0@@3|)))))
(|#List.M.Cons| (Apply1 List._default.Map$A@@3 List._default.Map$B@@3 $Heap@@2 (Lit HandleTypeType |f#0@@5|) |x#4|) (Lit DatatypeTypeType (List.__default.Map List._default.Map$A@@3 List._default.Map$B@@3 ($LS $ly@@3) |xs#5| (Lit HandleTypeType |f#0@@5|)))))) |#List.M.Nil|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2235|
 :pattern ( (List.__default.Map List._default.Map$A@@3 List._default.Map$B@@3 ($LS $ly@@3) (Lit DatatypeTypeType |xs#0@@3|) (Lit HandleTypeType |f#0@@5|)) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1713|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |2042|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |2043|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |2073|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |2074|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |2080|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#List.M.Cons| |a#0#0#0| |a#0#1#0|)) |##List.M.Cons|)
 :qid |Monadsdfy.85:24|
 :skolemid |2290|
 :pattern ( (|#List.M.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (List.M.hd (|#List.M.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |Monadsdfy.85:24|
 :skolemid |2299|
 :pattern ( (|#List.M.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (List.M.tl (|#List.M.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |Monadsdfy.85:24|
 :skolemid |2301|
 :pattern ( (|#List.M.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((List.M$A@@4 T@U) ) (! (= (Tclass.List.M_0 (Tclass.List.M List.M$A@@4)) List.M$A@@4)
 :qid |unknown.0:0|
 :skolemid |2204|
 :pattern ( (Tclass.List.M List.M$A@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1700|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#List.M.Cons| |a#5#0#0| |a#5#1#0|)))
 :qid |Monadsdfy.85:24|
 :skolemid |2300|
 :pattern ( (|#List.M.Cons| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (DtRank |a#7#1#0|) (DtRank (|#List.M.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Monadsdfy.85:24|
 :skolemid |2302|
 :pattern ( (|#List.M.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@6| T@U) ) (! (= ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@6| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |2083|
))))
 :qid |unknown.0:0|
 :skolemid |2084|
 :pattern ( ($Is HandleTypeType |f#0@@6| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@7| T@U) ) (! (= ($Is HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@7| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@7| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |2076|
))))
 :qid |unknown.0:0|
 :skolemid |2077|
 :pattern ( ($Is HandleTypeType |f#0@@7| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert  (and (and (and (and (and (and (= (Ctor refType) 6) (forall ((t0@@3 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@3 t1@@3 (MapType0Store t0@@3 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) (h@@2 T@U) ) (!  (=> ($IsGoodHeap h@@2) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@4) ($IsAllocBox bx0@@2 t0@@4 h@@2)) (Requires1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( (|Set#IsMember| (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@4 t1@@4 h@@2 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |2069|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4) h@@2))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |2044|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |2075|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((d@@4 T@U) (List.M$A@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (List.M.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.List.M List.M$A@@5) $h@@2))) ($IsAllocBox (List.M.hd d@@4) List.M$A@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |2296|
 :pattern ( ($IsAllocBox (List.M.hd d@@4) List.M$A@@5 $h@@2))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@5 t2 (MapType1Store t0@@5 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2330|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |2041|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |2072|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |2079|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@6) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (|Set#Equal| (Reads1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |2061|
 :pattern ( (Requires1 t0@@6 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@6 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1759|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((List.M$A@@6 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.List.M List.M$A@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass.List.M List.M$A@@6))))
 :qid |unknown.0:0|
 :skolemid |2205|
 :pattern ( ($IsBox bx@@4 (Tclass.List.M List.M$A@@6)))
)))
(assert (forall ((d@@6 T@U) (List.M$A@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (List.M.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.List.M List.M$A@@7) $h@@3))) ($IsAlloc DatatypeTypeType (List.M.tl d@@6) (Tclass.List.M List.M$A@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |2297|
 :pattern ( ($IsAlloc DatatypeTypeType (List.M.tl d@@6) (Tclass.List.M List.M$A@@7) $h@@3))
)))
(assert (= |#List.M.Nil| (Lit DatatypeTypeType |#List.M.Nil|)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1823|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1824|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#List.M.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)) (Lit DatatypeTypeType (|#List.M.Cons| |a#3#0#0| |a#3#1#0|)))
 :qid |Monadsdfy.85:24|
 :skolemid |2298|
 :pattern ( (|#List.M.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1691|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((List._default.Map$A@@4 T@U) (List._default.Map$B@@4 T@U) ($ly@@4 T@U) (|xs#0@@4| T@U) (|f#0@@8| T@U) ) (! (= (List.__default.Map List._default.Map$A@@4 List._default.Map$B@@4 ($LS $ly@@4) |xs#0@@4| |f#0@@8|) (List.__default.Map List._default.Map$A@@4 List._default.Map$B@@4 $ly@@4 |xs#0@@4| |f#0@@8|))
 :qid |unknown.0:0|
 :skolemid |2228|
 :pattern ( (List.__default.Map List._default.Map$A@@4 List._default.Map$B@@4 ($LS $ly@@4) |xs#0@@4| |f#0@@8|))
)))
(assert (forall ((List.M$A@@8 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#List.M.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.List.M List.M$A@@8) $h@@4)  (and ($IsAllocBox |a#2#0#0@@0| List.M$A@@8 $h@@4) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.List.M List.M$A@@8) $h@@4))))
 :qid |unknown.0:0|
 :skolemid |2295|
 :pattern ( ($IsAlloc DatatypeTypeType (|#List.M.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.List.M List.M$A@@8) $h@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xs#0@@5| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun List._default.Map$A@@5 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |xs#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |f#0@@9| () T@U)
(declare-fun List._default.Map$B@@5 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$List.__default.Map)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct true))
(let ((anon9_Else_correct  (=> (or (not (= |xs#0@@5| (|#List.M.Cons| |_mcc#0#0| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (and (and (= |xs#0@@5| (|#List.M.Cons| |_mcc#0#0| |_mcc#1#0|)) ($IsBox |_mcc#0#0| List._default.Map$A@@5)) (and ($Is DatatypeTypeType |_mcc#1#0| (Tclass.List.M List._default.Map$A@@5)) (= |let#0#0#0| |_mcc#1#0|))) (=> (and (and (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.List.M List._default.Map$A@@5)) (= |xs#Z#0@0| |let#0#0#0|)) (and (= |let#1#0#0| |_mcc#0#0|) ($IsBox |let#1#0#0| List._default.Map$A@@5))) (and (and (= |x#Z#0@0| |let#1#0#0|) ($IsAlloc DatatypeTypeType |xs#Z#0@0| (Tclass.List.M List._default.Map$A@@5) $Heap@@3)) (and ($IsAlloc HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 List._default.Map$A@@5 List._default.Map$B@@5) $Heap@@3) (= (ControlFlow 0 3) (- 0 2))))) (< (DtRank |xs#Z#0@0|) (DtRank |xs#0@@5|))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon8_Then_correct) (=> (= (ControlFlow 0 7) 3) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and ($Is DatatypeTypeType |xs#0@@5| (Tclass.List.M List._default.Map$A@@5)) ($Is HandleTypeType |f#0@@9| (Tclass._System.___hTotalFunc1 List._default.Map$A@@5 List._default.Map$B@@5))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
