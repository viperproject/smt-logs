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
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun _module.__default.nth (T@U T@U Int T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.nth#canCall| (T@U Int T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun _module.__default.nfib (T@U Int) Int)
(declare-fun |_module.__default.nfib#canCall| (Int) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _module.__default.Fib (T@U) T@U)
(declare-fun |_module.__default.Fib#canCall| () Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun _module.__default.add (T@U T@U T@U) T@U)
(declare-fun |_module.__default.add#canCall| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $LZ () T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._module.Stream |##_module.Stream.Cons| tytagFamily$nat tytagFamily$Stream)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.nth$T T@U) ($ly T@U) (|n#0| Int) (|s#0| T@U) ) (!  (=> (or (|_module.__default.nth#canCall| _module._default.nth$T (LitInt |n#0|) |s#0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0|) ($Is DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.nth$T))))) (and (and (=> (= (LitInt |n#0|) (LitInt 0)) (_module.Stream.Cons_q |s#0|)) (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (and (_module.Stream.Cons_q |s#0|) (|_module.__default.nth#canCall| _module._default.nth$T (LitInt (- |n#0| 1)) (_module.Stream.tail |s#0|))))) (= (_module.__default.nth _module._default.nth$T ($LS $ly) (LitInt |n#0|) |s#0|) (ite (= (LitInt |n#0|) (LitInt 0)) (_module.Stream.head |s#0|) (_module.__default.nth _module._default.nth$T ($LS $ly) (LitInt (- |n#0| 1)) (_module.Stream.tail |s#0|))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |730|
 :pattern ( (_module.__default.nth _module._default.nth$T ($LS $ly) (LitInt |n#0|) |s#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.nfib#canCall| |n#0@@0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@0|))) (and (=> (<= 2 |n#0@@0|) (and (|_module.__default.nfib#canCall| (- |n#0@@0| 2)) (|_module.__default.nfib#canCall| (- |n#0@@0| 1)))) (= (_module.__default.nfib ($LS $ly@@0) |n#0@@0|) (ite (< |n#0@@0| 2) |n#0@@0| (+ (_module.__default.nfib $ly@@0 (- |n#0@@0| 2)) (_module.__default.nfib $ly@@0 (- |n#0@@0| 1)))))))
 :qid |Abstemiousdfy.131:16|
 :skolemid |737|
 :pattern ( (_module.__default.nfib ($LS $ly@@0) |n#0@@0|))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.nfib#canCall| |n#0@@1|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@1|))) (<= (LitInt 0) (_module.__default.nfib $ly@@1 |n#0@@1|)))
 :qid |Abstemiousdfy.131:16|
 :skolemid |735|
 :pattern ( (_module.__default.nfib $ly@@1 |n#0@@1|))
))))
(assert (forall ((_module.Stream$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Stream _module.Stream$T)) (_module.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.Stream.Cons_q d) ($Is DatatypeTypeType d (Tclass._module.Stream _module.Stream$T)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.nth$T@@0 T@U) ($ly@@2 T@U) (|n#0@@2| Int) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.nth#canCall| _module._default.nth$T@@0 |n#0@@2| |s#0@@0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@2|) ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream _module._default.nth$T@@0))))) (and (and (=> (= |n#0@@2| (LitInt 0)) (_module.Stream.Cons_q |s#0@@0|)) (=> (or (not (= |n#0@@2| (LitInt 0))) (not true)) (and (_module.Stream.Cons_q |s#0@@0|) (|_module.__default.nth#canCall| _module._default.nth$T@@0 (- |n#0@@2| 1) (_module.Stream.tail |s#0@@0|))))) (= (_module.__default.nth _module._default.nth$T@@0 ($LS $ly@@2) |n#0@@2| |s#0@@0|) (ite (= |n#0@@2| (LitInt 0)) (_module.Stream.head |s#0@@0|) (_module.__default.nth _module._default.nth$T@@0 $ly@@2 (- |n#0@@2| 1) (_module.Stream.tail |s#0@@0|))))))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (_module.__default.nth _module._default.nth$T@@0 ($LS $ly@@2) |n#0@@2| |s#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) ) (!  (=> (or |_module.__default.Fib#canCall| (< 2 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.Fib $ly@@3) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.98:10|
 :skolemid |691|
 :pattern ( (_module.__default.Fib $ly@@3))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.nth$T@@1 T@U) ($ly@@4 T@U) (|n#0@@3| Int) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.nth#canCall| _module._default.nth$T@@1 |n#0@@3| |s#0@@1|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@3|) ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream _module._default.nth$T@@1))))) ($IsBox (_module.__default.nth _module._default.nth$T@@1 $ly@@4 |n#0@@3| |s#0@@1|) _module._default.nth$T@@1))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (_module.__default.nth _module._default.nth$T@@1 $ly@@4 |n#0@@3| |s#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.nth$T@@2 T@U) ($ly@@5 T@U) (|n#0@@4| Int) (|s#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.nth#canCall| _module._default.nth$T@@2 |n#0@@4| |s#0@@2|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@4|) (and ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream _module._default.nth$T@@2)) ($IsAlloc DatatypeTypeType |s#0@@2| (Tclass._module.Stream _module._default.nth$T@@2) $Heap))))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.nth _module._default.nth$T@@2 $ly@@5 |n#0@@4| |s#0@@2|) _module._default.nth$T@@2 $Heap))
 :qid |Abstemiousdfy.126:16|
 :skolemid |727|
 :pattern ( ($IsAllocBox (_module.__default.nth _module._default.nth$T@@2 $ly@@5 |n#0@@4| |s#0@@2|) _module._default.nth$T@@2 $Heap))
))))
(assert (forall ((_module.Stream$T@@0 T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0| |a#14#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#14#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#14#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0| |a#14#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |a#0| |b#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |b#0| (Tclass._module.Stream TInt))))) (and (and (and (_module.Stream.Cons_q |a#0|) (_module.Stream.Cons_q |b#0|)) (and (and (_module.Stream.Cons_q |a#0|) (_module.Stream.Cons_q |b#0|)) (|_module.__default.add#canCall| (_module.Stream.tail |a#0|) (_module.Stream.tail |b#0|)))) (= (_module.__default.add ($LS $ly@@6) |a#0| |b#0|) (|#_module.Stream.Cons| ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (_module.Stream.head |a#0|))) (U_2_int ($Unbox intType (_module.Stream.head |b#0|)))))) (_module.__default.add $ly@@6 (_module.Stream.tail |a#0|) (_module.Stream.tail |b#0|))))))
 :qid |Abstemiousdfy.93:24|
 :skolemid |687|
 :pattern ( (_module.__default.add ($LS $ly@@6) |a#0| |b#0|))
))))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |799|
 :pattern ( (_module.Stream.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Stream.Cons_q d@@1) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@1 (|#_module.Stream.Cons| |a#13#0#0| |a#13#1#0|))
 :qid |Abstemiousdfy.51:29|
 :skolemid |800|
)))
 :qid |unknown.0:0|
 :skolemid |801|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@1))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall (($ly@@7 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (! (= (_module.__default.add ($LS $ly@@7) |a#0@@0| |b#0@@0|) (_module.__default.add $ly@@7 |a#0@@0| |b#0@@0|))
 :qid |Abstemiousdfy.93:24|
 :skolemid |683|
 :pattern ( (_module.__default.add ($LS $ly@@7) |a#0@@0| |b#0@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@8 T@U) (|n#0@@5| Int) ) (!  (=> (or (|_module.__default.nfib#canCall| (LitInt |n#0@@5|)) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@5|))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (< |n#0@@5| 2))))) (and (|_module.__default.nfib#canCall| (LitInt (- |n#0@@5| 2))) (|_module.__default.nfib#canCall| (LitInt (- |n#0@@5| 1))))) (= (_module.__default.nfib ($LS $ly@@8) (LitInt |n#0@@5|)) (ite (< |n#0@@5| 2) |n#0@@5| (+ (_module.__default.nfib ($LS $ly@@8) (LitInt (- |n#0@@5| 2))) (_module.__default.nfib ($LS $ly@@8) (LitInt (- |n#0@@5| 1))))))))
 :qid |Abstemiousdfy.131:16|
 :weight 3
 :skolemid |738|
 :pattern ( (_module.__default.nfib ($LS $ly@@8) (LitInt |n#0@@5|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.nth$T@@3 T@U) ($ly@@9 T@U) (|n#0@@6| Int) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.nth#canCall| _module._default.nth$T@@3 (LitInt |n#0@@6|) (Lit DatatypeTypeType |s#0@@3|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@6|) ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream _module._default.nth$T@@3))))) (and (and (=> (= (LitInt |n#0@@6|) (LitInt 0)) (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@3|))) (=> (or (not (= (LitInt |n#0@@6|) (LitInt 0))) (not true)) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@3|)) (|_module.__default.nth#canCall| _module._default.nth$T@@3 (LitInt (- |n#0@@6| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@3|))))))) (= (_module.__default.nth _module._default.nth$T@@3 ($LS $ly@@9) (LitInt |n#0@@6|) (Lit DatatypeTypeType |s#0@@3|)) (ite (= (LitInt |n#0@@6|) (LitInt 0)) (_module.Stream.head (Lit DatatypeTypeType |s#0@@3|)) (_module.__default.nth _module._default.nth$T@@3 ($LS $ly@@9) (LitInt (- |n#0@@6| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@3|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |731|
 :pattern ( (_module.__default.nth _module._default.nth$T@@3 ($LS $ly@@9) (LitInt |n#0@@6|) (Lit DatatypeTypeType |s#0@@3|)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#12#0#0| |a#12#1#0|)) |##_module.Stream.Cons|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |798|
 :pattern ( (|#_module.Stream.Cons| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#15#0#0| |a#15#1#0|)) |a#15#0#0|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |806|
 :pattern ( (|#_module.Stream.Cons| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#16#0#0| |a#16#1#0|)) |a#16#1#0|)
 :qid |Abstemiousdfy.51:29|
 :skolemid |807|
 :pattern ( (|#_module.Stream.Cons| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall (($ly@@10 T@U) (|n#0@@7| Int) ) (! (= (_module.__default.nfib ($LS $ly@@10) |n#0@@7|) (_module.__default.nfib $ly@@10 |n#0@@7|))
 :qid |Abstemiousdfy.131:16|
 :skolemid |733|
 :pattern ( (_module.__default.nfib ($LS $ly@@10) |n#0@@7|))
)))
(assert (forall ((d@@2 T@U) (_module.Stream$T@@3 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.Cons_q d@@2) ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Stream _module.Stream$T@@3) $h@@0))) ($IsAllocBox (_module.Stream.head d@@2) _module.Stream$T@@3 $h@@0))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@2) _module.Stream$T@@3 $h@@0))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |821|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@11 T@U) ) (!  (=> (or |_module.__default.Fib#canCall| (< 2 $FunctionContextHeight)) (and (and (and |_module.__default.Fib#canCall| (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib $ly@@11))))) (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.Fib $ly@@11)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib $ly@@11)))))) (= (_module.__default.Fib ($LS $ly@@11)) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 0))) (Lit DatatypeTypeType (|#_module.Stream.Cons| ($Box intType (int_2_U (LitInt 1))) (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib $ly@@11)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib $ly@@11)))))))))))))
 :qid |Abstemiousdfy.98:10|
 :skolemid |693|
 :pattern ( (_module.__default.Fib ($LS $ly@@11)))
))))
(assert (forall (($ly@@12 T@U) ) (! (= (_module.__default.Fib ($LS $ly@@12)) (_module.__default.Fib $ly@@12))
 :qid |Abstemiousdfy.98:10|
 :skolemid |689|
 :pattern ( (_module.__default.Fib ($LS $ly@@12)))
)))
(assert (forall ((_module._default.nth$T@@4 T@U) ($ly@@13 T@U) (|n#0@@8| Int) (|s#0@@4| T@U) ) (! (= (_module.__default.nth _module._default.nth$T@@4 ($LS $ly@@13) |n#0@@8| |s#0@@4|) (_module.__default.nth _module._default.nth$T@@4 $ly@@13 |n#0@@8| |s#0@@4|))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( (_module.__default.nth _module._default.nth$T@@4 ($LS $ly@@13) |n#0@@8| |s#0@@4|))
)))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsBox bx@@1 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@14 T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.__default.add#canCall| |a#0@@1| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@1| (Tclass._module.Stream TInt)) ($Is DatatypeTypeType |b#0@@1| (Tclass._module.Stream TInt))))) ($Is DatatypeTypeType (_module.__default.add $ly@@14 |a#0@@1| |b#0@@1|) (Tclass._module.Stream TInt)))
 :qid |Abstemiousdfy.93:24|
 :skolemid |685|
 :pattern ( (_module.__default.add $ly@@14 |a#0@@1| |b#0@@1|))
))))
(assert (forall ((d@@3 T@U) (_module.Stream$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@5) $h@@1))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@3) (Tclass._module.Stream _module.Stream$T@@5) $h@@1))
 :qid |unknown.0:0|
 :skolemid |805|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@3) (Tclass._module.Stream _module.Stream$T@@5) $h@@1))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@2)  (and ($IsAllocBox |a#14#0#0@@0| _module.Stream$T@@6 $h@@2) ($IsAlloc DatatypeTypeType |a#14#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@2))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |n#0@@9| () Int)
(declare-fun |F#1_0@0| () T@U)
(declare-fun |##n#1_0_0_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |##n#1_0_0_1@0| () Int)
(declare-fun |##n#1_0_1_0@0| () Int)
(declare-fun |##s#1_0_1_0@0| () T@U)
(declare-fun |##n#1_0_1_1@0| () Int)
(declare-fun |##s#1_0_1_1@0| () T@U)
(declare-fun |n##1_0_1_0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |n##1_0_1_1@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |##n#1_0_1_2@0| () Int)
(declare-fun |##n#1_0_1_3@0| () Int)
(declare-fun |##n#1_0_2_0@0| () Int)
(declare-fun |##s#1_0_2_0@0| () T@U)
(declare-fun |##n#1_0_2_1@0| () Int)
(declare-fun |##s#1_0_2_1@0| () T@U)
(declare-fun |##n#1_0_2_2@0| () Int)
(declare-fun |##s#1_0_2_2@0| () T@U)
(declare-fun |##n#1_0_2_3@0| () Int)
(declare-fun |##s#1_0_2_3@0| () T@U)
(declare-fun |##n#1_0_3_0@0| () Int)
(declare-fun |##a#1_0_3_0@0| () T@U)
(declare-fun |##b#1_0_3_0@0| () T@U)
(declare-fun |##s#1_0_3_0@0| () T@U)
(declare-fun |n##1_0_3_0@0| () Int)
(declare-fun |a##1_0_3_0@0| () T@U)
(declare-fun |b##1_0_3_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##n#1_0_3_1@0| () Int)
(declare-fun |##s#1_0_3_1@0| () T@U)
(declare-fun |##n#1_0_3_2@0| () Int)
(declare-fun |##s#1_0_3_2@0| () T@U)
(declare-fun |##n#1_0_4_0@0| () Int)
(declare-fun |##s#1_0_4_0@0| () T@U)
(declare-fun |##n#1_0_4_1@0| () Int)
(declare-fun |##a#1_0_4_0@0| () T@U)
(declare-fun |##b#1_0_4_0@0| () T@U)
(declare-fun |##s#1_0_4_1@0| () T@U)
(declare-fun |##n#1_0_5_1@0| () Int)
(declare-fun |##s#1_0_5_1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |F#1_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Fib__Correct)
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
 (=> (= (ControlFlow 0 0) 35) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 30) (- 0 29)) (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) |n#0@@9| (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))) (_module.__default.nfib ($LS ($LS $LZ)) |n#0@@9|)))))
(let ((anon18_Else_correct  (=> (and (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS $LZ) |n#0@@9| |F#1_0@0|))) (_module.__default.nfib ($LS $LZ) |n#0@@9|)) (= (ControlFlow 0 32) 30)) GeneratedUnifiedExit_correct)))
(let ((anon11_Then_correct  (=> (and (< |n#0@@9| 2) (= (ControlFlow 0 31) 30)) GeneratedUnifiedExit_correct)))
(let ((anon18_Then_correct  (=> (and ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (= |##n#1_0_0_0@0| (- |n#0@@9| 2))) (=> (and (and ($IsAlloc intType (int_2_U |##n#1_0_0_0@0|) Tclass._System.nat $Heap@0) (|_module.__default.nfib#canCall| (- |n#0@@9| 2))) (and ($Is intType (int_2_U (- |n#0@@9| 1)) Tclass._System.nat) (= |##n#1_0_0_1@0| (- |n#0@@9| 1)))) (=> (and (and (and ($IsAlloc intType (int_2_U |##n#1_0_0_1@0|) Tclass._System.nat $Heap@0) (|_module.__default.nfib#canCall| (- |n#0@@9| 1))) (and (|_module.__default.nfib#canCall| (- |n#0@@9| 2)) (|_module.__default.nfib#canCall| (- |n#0@@9| 1)))) (and (and ($IsAlloc intType (int_2_U |n#0@@9|) Tclass._System.nat $Heap@0) (|_module.__default.nfib#canCall| |n#0@@9|)) (and (|_module.__default.nfib#canCall| |n#0@@9|) (= (ControlFlow 0 28) (- 0 27))))) (= (+ (_module.__default.nfib ($LS ($LS $LZ)) (- |n#0@@9| 2)) (_module.__default.nfib ($LS ($LS $LZ)) (- |n#0@@9| 1))) (_module.__default.nfib ($LS ($LS $LZ)) |n#0@@9|)))))))
(let ((anon17_Then_correct  (=> (and (and ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (= |##n#1_0_1_0@0| (- |n#0@@9| 2))) (and ($IsAlloc intType (int_2_U |##n#1_0_1_0@0|) Tclass._System.nat $Heap@0) |_module.__default.Fib#canCall|)) (=> (and (and (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##s#1_0_1_0@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_1_0@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (and ($Is intType (int_2_U (- |n#0@@9| 1)) Tclass._System.nat) (= |##n#1_0_1_1@0| (- |n#0@@9| 1))) (and ($IsAlloc intType (int_2_U |##n#1_0_1_1@0|) Tclass._System.nat $Heap@0) |_module.__default.Fib#canCall|))) (and (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##s#1_0_1_1@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_1_1@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 1) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (and |_module.__default.Fib#canCall| (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and |_module.__default.Fib#canCall| (|_module.__default.nth#canCall| TInt (- |n#0@@9| 1) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))) (and (=> (= (ControlFlow 0 18) (- 0 26)) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (= |n##1_0_1_0@0| (- |n#0@@9| 2)) (and (=> (= (ControlFlow 0 18) (- 0 25)) (or (<= 0 |n#0@@9|) (= |n##1_0_1_0@0| |n#0@@9|))) (=> (or (<= 0 |n#0@@9|) (= |n##1_0_1_0@0| |n#0@@9|)) (and (=> (= (ControlFlow 0 18) (- 0 24)) (< |n##1_0_1_0@0| |n#0@@9|)) (=> (< |n##1_0_1_0@0| |n#0@@9|) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and |_module.__default.Fib#canCall| (|_module.__default.nth#canCall| TInt |n##1_0_1_0@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (|_module.__default.nfib#canCall| |n##1_0_1_0@0|)) (and (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) |n##1_0_1_0@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))) (_module.__default.nfib ($LS ($LS $LZ)) |n##1_0_1_0@0|)) (= $Heap@0 $Heap@2))) (and (=> (= (ControlFlow 0 18) (- 0 23)) ($Is intType (int_2_U (- |n#0@@9| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 1)) Tclass._System.nat) (=> (= |n##1_0_1_1@0| (- |n#0@@9| 1)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (or (<= 0 |n#0@@9|) (= |n##1_0_1_1@0| |n#0@@9|))) (=> (or (<= 0 |n#0@@9|) (= |n##1_0_1_1@0| |n#0@@9|)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (< |n##1_0_1_1@0| |n#0@@9|)) (=> (< |n##1_0_1_1@0| |n#0@@9|) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and |_module.__default.Fib#canCall| (|_module.__default.nth#canCall| TInt |n##1_0_1_1@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (|_module.__default.nfib#canCall| |n##1_0_1_1@0|)) (and (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) |n##1_0_1_1@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))) (_module.__default.nfib ($LS ($LS $LZ)) |n##1_0_1_1@0|)) (= $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 18) (- 0 20)) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (= |##n#1_0_1_2@0| (- |n#0@@9| 2)) (=> (and ($IsAlloc intType (int_2_U |##n#1_0_1_2@0|) Tclass._System.nat $Heap@3) (|_module.__default.nfib#canCall| (- |n#0@@9| 2))) (and (=> (= (ControlFlow 0 18) (- 0 19)) ($Is intType (int_2_U (- |n#0@@9| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 1)) Tclass._System.nat) (=> (= |##n#1_0_1_3@0| (- |n#0@@9| 1)) (=> (and ($IsAlloc intType (int_2_U |##n#1_0_1_3@0|) Tclass._System.nat $Heap@3) (|_module.__default.nfib#canCall| (- |n#0@@9| 1))) (=> (and (and (|_module.__default.nfib#canCall| (- |n#0@@9| 2)) (|_module.__default.nfib#canCall| (- |n#0@@9| 1))) (= (ControlFlow 0 18) (- 0 17))) (= (+ (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))) (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 1) (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ)))))))) (+ (_module.__default.nfib ($LS ($LS $LZ)) (- |n#0@@9| 2)) (_module.__default.nfib ($LS ($LS $LZ)) (- |n#0@@9| 1)))))))))))))))))))))))))))))))))))
(let ((anon16_Then_correct  (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (and (and (= |##n#1_0_2_0@0| (- |n#0@@9| 2)) ($IsAlloc intType (int_2_U |##n#1_0_2_0@0|) Tclass._System.nat $Heap@0)) (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (=> (and (and (and (and (= |##s#1_0_2_0@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) ($IsAlloc DatatypeTypeType |##s#1_0_2_0@0| (Tclass._module.Stream TInt) $Heap@0)) (and (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat))) (and (and (= |##n#1_0_2_1@0| (- |n#0@@9| 2)) ($IsAlloc intType (int_2_U |##n#1_0_2_1@0|) Tclass._System.nat $Heap@0)) (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (and (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##s#1_0_2_1@0| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_2_1@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))) (and (and |_module.__default.Fib#canCall| (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))))) (and (=> (= (ControlFlow 0 14) (- 0 16)) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (= |##n#1_0_2_2@0| (- |n#0@@9| 2)) (=> (and ($IsAlloc intType (int_2_U |##n#1_0_2_2@0|) Tclass._System.nat $Heap@0) |_module.__default.Fib#canCall|) (=> (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##s#1_0_2_2@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_2_2@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (=> (= (ControlFlow 0 14) (- 0 15)) ($Is intType (int_2_U (- |n#0@@9| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 1)) Tclass._System.nat) (=> (= |##n#1_0_2_3@0| (- |n#0@@9| 1)) (=> (and ($IsAlloc intType (int_2_U |##n#1_0_2_3@0|) Tclass._System.nat $Heap@0) |_module.__default.Fib#canCall|) (=> (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##s#1_0_2_3@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_2_3@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 1) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (=> (and (and (and |_module.__default.Fib#canCall| (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and |_module.__default.Fib#canCall| (|_module.__default.nth#canCall| TInt (- |n#0@@9| 1) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (= (ControlFlow 0 14) (- 0 13))) (= (+ (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))) (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ)))))))))) (+ (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))) (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 1) (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ)))))))))))))))))))))))))
(let ((anon15_Then_correct  (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (and (and (and (= |##n#1_0_3_0@0| (- |n#0@@9| 2)) ($IsAlloc intType (int_2_U |##n#1_0_3_0@0|) Tclass._System.nat $Heap@0)) (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (and (= |##a#1_0_3_0@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) ($IsAlloc DatatypeTypeType |##a#1_0_3_0@0| (Tclass._module.Stream TInt) $Heap@0)) (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (=> (and (and (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##b#1_0_3_0@0| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (and ($IsAlloc DatatypeTypeType |##b#1_0_3_0@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))) (= |##s#1_0_3_0@0| (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_3_0@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))))))) (and (and (and |_module.__default.Fib#canCall| (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))))) (and (=> (= (ControlFlow 0 9) (- 0 12)) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (and (and (and (= |n##1_0_3_0@0| (- |n#0@@9| 2)) |_module.__default.Fib#canCall|) (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) |_module.__default.Fib#canCall|)) (and (and (= |a##1_0_3_0@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) |_module.__default.Fib#canCall|) (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (=> (and (and (and (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (= |b##1_0_3_0@0| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and (and (|_module.__default.add#canCall| |a##1_0_3_0@0| |b##1_0_3_0@0|) (|_module.__default.nth#canCall| TInt |n##1_0_3_0@0| (_module.__default.add ($LS $LZ) |a##1_0_3_0@0| |b##1_0_3_0@0|))) (and (|_module.__default.nth#canCall| TInt |n##1_0_3_0@0| |a##1_0_3_0@0|) (|_module.__default.nth#canCall| TInt |n##1_0_3_0@0| |b##1_0_3_0@0|))) (and (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) |n##1_0_3_0@0| (_module.__default.add ($LS ($LS $LZ)) |a##1_0_3_0@0| |b##1_0_3_0@0|)))) (+ (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) |n##1_0_3_0@0| |a##1_0_3_0@0|))) (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) |n##1_0_3_0@0| |b##1_0_3_0@0|))))) (= $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 9) (- 0 11)) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (= |##n#1_0_3_1@0| (- |n#0@@9| 2)) (=> (and ($IsAlloc intType (int_2_U |##n#1_0_3_1@0|) Tclass._System.nat $Heap@1) |_module.__default.Fib#canCall|) (=> (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##s#1_0_3_1@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_3_1@0| (Tclass._module.Stream TInt) $Heap@1) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (=> (= (ControlFlow 0 9) (- 0 10)) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (and (and (and (and (= |##n#1_0_3_2@0| (- |n#0@@9| 2)) ($IsAlloc intType (int_2_U |##n#1_0_3_2@0|) Tclass._System.nat $Heap@1)) (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##s#1_0_3_2@0| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_3_2@0| (Tclass._module.Stream TInt) $Heap@1) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))))) (and (and (and |_module.__default.Fib#canCall| (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))) (= (ControlFlow 0 9) (- 0 8)))) (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.add ($LS ($LS $LZ)) (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ)))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))))))) (+ (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))) (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ))))))))))))))))))))))))))))
(let ((anon14_Then_correct  (=> (and (and ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (= |##n#1_0_4_0@0| (- |n#0@@9| 2))) (and ($IsAlloc intType (int_2_U |##n#1_0_4_0@0|) Tclass._System.nat $Heap@0) (_module.Stream.Cons_q |F#1_0@0|))) (=> (and (and (and (_module.Stream.Cons_q (_module.Stream.tail |F#1_0@0|)) (= |##s#1_0_4_0@0| (_module.Stream.tail (_module.Stream.tail |F#1_0@0|)))) (and ($IsAlloc DatatypeTypeType |##s#1_0_4_0@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (_module.Stream.tail (_module.Stream.tail |F#1_0@0|))))) (and (and (_module.Stream.Cons_q |F#1_0@0|) (_module.Stream.Cons_q (_module.Stream.tail |F#1_0@0|))) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (_module.Stream.tail (_module.Stream.tail |F#1_0@0|))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (and (and (and (and (and (= |##n#1_0_4_1@0| (- |n#0@@9| 2)) ($IsAlloc intType (int_2_U |##n#1_0_4_1@0|) Tclass._System.nat $Heap@0)) (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (and (= |##a#1_0_4_0@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) ($IsAlloc DatatypeTypeType |##a#1_0_4_0@0| (Tclass._module.Stream TInt) $Heap@0)) (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (and (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))) (= |##b#1_0_4_0@0| (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (and ($IsAlloc DatatypeTypeType |##b#1_0_4_0@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))) (and (and (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))) (= |##s#1_0_4_1@0| (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))))) (and ($IsAlloc DatatypeTypeType |##s#1_0_4_1@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))))))))) (and (and (and (and |_module.__default.Fib#canCall| (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (|_module.__default.add#canCall| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.add ($LS $LZ) (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))))) (= (ControlFlow 0 6) (- 0 5)))) (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (_module.Stream.tail (_module.Stream.tail |F#1_0@0|))))) (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (Lit DatatypeTypeType (_module.__default.add ($LS ($LS $LZ)) (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ)))) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType (_module.__default.Fib ($LS ($LS $LZ)))))))))))))))))))
(let ((anon13_Then_correct  (=> (and (and ($IsAlloc intType (int_2_U |n#0@@9|) Tclass._System.nat $Heap@0) ($IsAlloc DatatypeTypeType |F#1_0@0| (Tclass._module.Stream TInt) $Heap@0)) (and (|_module.__default.nth#canCall| TInt |n#0@@9| |F#1_0@0|) (|_module.__default.nth#canCall| TInt |n#0@@9| |F#1_0@0|))) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@9| 2)) Tclass._System.nat) (=> (= |##n#1_0_5_1@0| (- |n#0@@9| 2)) (=> (and ($IsAlloc intType (int_2_U |##n#1_0_5_1@0|) Tclass._System.nat $Heap@0) (_module.Stream.Cons_q |F#1_0@0|)) (=> (and (and (_module.Stream.Cons_q (_module.Stream.tail |F#1_0@0|)) (= |##s#1_0_5_1@0| (_module.Stream.tail (_module.Stream.tail |F#1_0@0|)))) (and ($IsAlloc DatatypeTypeType |##s#1_0_5_1@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (_module.Stream.tail (_module.Stream.tail |F#1_0@0|))))) (=> (and (and (and (_module.Stream.Cons_q |F#1_0@0|) (_module.Stream.Cons_q (_module.Stream.tail |F#1_0@0|))) (|_module.__default.nth#canCall| TInt (- |n#0@@9| 2) (_module.Stream.tail (_module.Stream.tail |F#1_0@0|)))) (= (ControlFlow 0 3) (- 0 2))) (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) |n#0@@9| |F#1_0@0|))) (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS ($LS $LZ)) (- |n#0@@9| 2) (_module.Stream.tail (_module.Stream.tail |F#1_0@0|)))))))))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (=> (<= 2 |n#0@@9|) (=> (and (and |_module.__default.Fib#canCall| (_module.Stream.Cons_q (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))) (and |_module.__default.Fib#canCall| (= |F#1_0@0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 33) 1) anon12_Then_correct) (=> (= (ControlFlow 0 33) 3) anon13_Then_correct)) (=> (= (ControlFlow 0 33) 6) anon14_Then_correct)) (=> (= (ControlFlow 0 33) 9) anon15_Then_correct)) (=> (= (ControlFlow 0 33) 14) anon16_Then_correct)) (=> (= (ControlFlow 0 33) 18) anon17_Then_correct)) (=> (= (ControlFlow 0 33) 28) anon18_Then_correct)) (=> (= (ControlFlow 0 33) 32) anon18_Else_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@0 $Heap@0) (forall ((|$ih#n0#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |$ih#n0#0|) (U_2_bool (Lit boolType (bool_2_U true)))) (and (<= 0 |$ih#n0#0|) (< |$ih#n0#0| |n#0@@9|))) (= (U_2_int ($Unbox intType (_module.__default.nth TInt ($LS $LZ) |$ih#n0#0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ)))))) (_module.__default.nfib ($LS $LZ) |$ih#n0#0|)))
 :qid |Abstemiousdfy.186:19|
 :skolemid |760|
 :pattern ( (_module.__default.nfib ($LS $LZ) |$ih#n0#0|))
 :pattern ( ($Unbox intType (_module.__default.nth TInt ($LS $LZ) |$ih#n0#0| (Lit DatatypeTypeType (_module.__default.Fib ($LS $LZ))))))
)))) (and (=> (= (ControlFlow 0 34) 31) anon11_Then_correct) (=> (= (ControlFlow 0 34) 33) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (<= (LitInt 0) |n#0@@9|)) (=> (and (and (and ($Is DatatypeTypeType |F#1_0| (Tclass._module.Stream TInt)) ($IsAlloc DatatypeTypeType |F#1_0| (Tclass._module.Stream TInt) $Heap@@0)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 35) 34))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
