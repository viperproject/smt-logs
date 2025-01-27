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
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun Tagclass._module.Bit () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
(declare-fun |##_module.Bit.O| () T@U)
(declare-fun |##_module.Bit.I| () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$Bit () T@U)
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
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Bit.O| () T@U)
(declare-fun |#_module.Bit.I| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.zip (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.zip#canCall| (T@U T@U T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun Tclass._module.Bit () T@U)
(declare-fun |_module.Bit#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Bit.O_q (T@U) Bool)
(declare-fun _module.Bit.I_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.bitnot (T@U) T@U)
(declare-fun |_module.__default.bitnot#canCall| (T@U) Bool)
(declare-fun |$IsA#_module.Bit| (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun _module.__default.f (T@U T@U) T@U)
(declare-fun |_module.__default.f#canCall| (T@U) Bool)
(declare-fun _module.__default.not (T@U T@U) T@U)
(declare-fun |_module.__default.not#canCall| (T@U) Bool)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct alloc Tagclass._module.Stream Tagclass._module.Bit |##_module.Stream.Cons| |##_module.Bit.O| |##_module.Bit.I| tytagFamily$Stream tytagFamily$Bit)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_module.Stream$T#l| T@U) (|_module.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0 (Tclass._module.Stream |_module.Stream$T#l|)) ($Is DatatypeTypeType d1 (Tclass._module.Stream |_module.Stream$T#r|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1)  (and (=> (< 0 (|ORD#Offset| k)) (and (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (=> (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (and (= (_module.Stream.head d0) (_module.Stream.head d1)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| (|ORD#Minus| k (|ORD#FromNat| 1)) ly (_module.Stream.tail d0) (_module.Stream.tail d1)))))) (=> (and (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| ly d0 d1)))))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert (forall ((|_module.Stream$T#l@@0| T@U) (|_module.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (or (not (= k@@0 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ly@@0 d0@@0 d1@@0)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Stream| d) (_module.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (|$IsA#_module.Stream| d))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Bit.O|) |##_module.Bit.O|))
(assert (= (DatatypeCtorId |#_module.Bit.I|) |##_module.Bit.I|))
(assert (forall ((_module.Stream$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)) (_module.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.zip$_T0 T@U) ($ly T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.zip#canCall| _module._default.zip$_T0 |a#0| |b#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| (Tclass._module.Stream _module._default.zip$_T0)) ($Is DatatypeTypeType |b#0| (Tclass._module.Stream _module._default.zip$_T0))))) (and (and (_module.Stream.Cons_q |a#0|) (and (_module.Stream.Cons_q |a#0|) (|_module.__default.zip#canCall| _module._default.zip$_T0 |b#0| (_module.Stream.tail |a#0|)))) (= (_module.__default.zip _module._default.zip$_T0 ($LS $ly) |a#0| |b#0|) (|#_module.Stream.Cons| (_module.Stream.head |a#0|) (_module.__default.zip _module._default.zip$_T0 $ly |b#0| (_module.Stream.tail |a#0|))))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (_module.__default.zip _module._default.zip$_T0 ($LS $ly) |a#0| |b#0|))
))))
(assert (forall ((|_module.Stream$T#l@@1| T@U) (|_module.Stream$T#r@@1| T@U) (k@@1 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (!  (=> (= d0@@1 d1@@1) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
)))
(assert ($Is DatatypeTypeType |#_module.Bit.O| Tclass._module.Bit))
(assert ($Is DatatypeTypeType |#_module.Bit.I| Tclass._module.Bit))
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2) (= d0@@2 d1@@2))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Bit#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( (|_module.Bit#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#2#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Bit.O_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Bit.O|))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (_module.Bit.O_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Bit.I_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Bit.I|))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( (_module.Bit.I_q d@@3))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Stream.Cons_q d@@4) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@4 (|#_module.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Circdfy.7:29|
 :skolemid |585|
)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.Stream.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Bit.O_q d@@5) (= d@@5 |#_module.Bit.O|))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.Bit.O_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Bit.I_q d@@6) (= d@@6 |#_module.Bit.I|))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( (_module.Bit.I_q d@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.bitnot#canCall| |b#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@0| Tclass._module.Bit))) (and (|$IsA#_module.Bit| |b#0@@0|) (= (_module.__default.bitnot |b#0@@0|) (ite (|_module.Bit#Equal| |b#0@@0| |#_module.Bit.O|) |#_module.Bit.I| |#_module.Bit.O|))))
 :qid |Circdfy.25:23|
 :skolemid |562|
 :pattern ( (_module.__default.bitnot |b#0@@0|))
))))
(assert (forall ((|_module.Stream$T#l@@3| T@U) (|_module.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$T#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3)))))))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@1))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.Bit) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._module.Bit)))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsBox bx Tclass._module.Bit))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.f#canCall| |s#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| (Tclass._module.Stream Tclass._module.Bit)))) (and (and (_module.Stream.Cons_q |s#0|) (and (and (_module.Stream.Cons_q |s#0|) (|_module.__default.bitnot#canCall| ($Unbox DatatypeTypeType (_module.Stream.head |s#0|)))) (and (_module.Stream.Cons_q |s#0|) (|_module.__default.f#canCall| (_module.Stream.tail |s#0|))))) (= (_module.__default.f ($LS $ly@@0) |s#0|) (|#_module.Stream.Cons| (_module.Stream.head |s#0|) (|#_module.Stream.Cons| ($Box DatatypeTypeType (_module.__default.bitnot ($Unbox DatatypeTypeType (_module.Stream.head |s#0|)))) (_module.__default.f $ly@@0 (_module.Stream.tail |s#0|)))))))
 :qid |Circdfy.61:16|
 :skolemid |575|
 :pattern ( (_module.__default.f ($LS $ly@@0) |s#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|b#0@@1| T@U) ) (!  (=> (or (|_module.__default.bitnot#canCall| (Lit DatatypeTypeType |b#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@1| Tclass._module.Bit))) (and (|$IsA#_module.Bit| (Lit DatatypeTypeType |b#0@@1|)) (= (_module.__default.bitnot (Lit DatatypeTypeType |b#0@@1|)) (ite (|_module.Bit#Equal| |b#0@@1| |#_module.Bit.O|) |#_module.Bit.I| |#_module.Bit.O|))))
 :qid |Circdfy.25:23|
 :weight 3
 :skolemid |563|
 :pattern ( (_module.__default.bitnot (Lit DatatypeTypeType |b#0@@1|)))
))))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.Bit| d@@7) (or (_module.Bit.O_q d@@7) (_module.Bit.I_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( (|$IsA#_module.Bit| d@@7))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|b#0@@2| T@U) ) (!  (=> (or (|_module.__default.bitnot#canCall| |b#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@2| Tclass._module.Bit))) ($Is DatatypeTypeType (_module.__default.bitnot |b#0@@2|) Tclass._module.Bit))
 :qid |Circdfy.25:23|
 :skolemid |560|
 :pattern ( (_module.__default.bitnot |b#0@@2|))
))))
(assert (forall ((d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 Tclass._module.Bit) (or (_module.Bit.O_q d@@8) (_module.Bit.I_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (_module.Bit.I_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Bit))
 :pattern ( (_module.Bit.O_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Bit))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Bit.O_q a@@0) (_module.Bit.O_q b@@0)) (|_module.Bit#Equal| a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( (|_module.Bit#Equal| a@@0 b@@0) (_module.Bit.O_q a@@0))
 :pattern ( (|_module.Bit#Equal| a@@0 b@@0) (_module.Bit.O_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Bit.I_q a@@1) (_module.Bit.I_q b@@1)) (|_module.Bit#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (|_module.Bit#Equal| a@@1 b@@1) (_module.Bit.I_q a@@1))
 :pattern ( (|_module.Bit#Equal| a@@1 b@@1) (_module.Bit.I_q b@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.not#canCall| |s#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream Tclass._module.Bit)))) (and (and (and (_module.Stream.Cons_q |s#0@@0|) (|_module.__default.bitnot#canCall| ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@0|)))) (and (_module.Stream.Cons_q |s#0@@0|) (|_module.__default.not#canCall| (_module.Stream.tail |s#0@@0|)))) (= (_module.__default.not ($LS $ly@@1) |s#0@@0|) (|#_module.Stream.Cons| ($Box DatatypeTypeType (_module.__default.bitnot ($Unbox DatatypeTypeType (_module.Stream.head |s#0@@0|)))) (_module.__default.not $ly@@1 (_module.Stream.tail |s#0@@0|))))))
 :qid |Circdfy.30:16|
 :skolemid |568|
 :pattern ( (_module.__default.not ($LS $ly@@1) |s#0@@0|))
))))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|)) |##_module.Stream.Cons|)
 :qid |Circdfy.7:29|
 :skolemid |583|
 :pattern ( (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |Circdfy.7:29|
 :skolemid |591|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |Circdfy.7:29|
 :skolemid |592|
 :pattern ( (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.zip$_T0@@0 T@U) ($ly@@2 T@U) (|a#0@@0| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.__default.zip#canCall| _module._default.zip$_T0@@0 |a#0@@0| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@0| (Tclass._module.Stream _module._default.zip$_T0@@0)) ($Is DatatypeTypeType |b#0@@3| (Tclass._module.Stream _module._default.zip$_T0@@0))))) ($Is DatatypeTypeType (_module.__default.zip _module._default.zip$_T0@@0 $ly@@2 |a#0@@0| |b#0@@3|) (Tclass._module.Stream _module._default.zip$_T0@@0)))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (_module.__default.zip _module._default.zip$_T0@@0 $ly@@2 |a#0@@0| |b#0@@3|))
))))
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall (($ly@@3 T@U) (|s#0@@1| T@U) ) (! (= (_module.__default.not ($LS $ly@@3) |s#0@@1|) (_module.__default.not $ly@@3 |s#0@@1|))
 :qid |Circdfy.30:16|
 :skolemid |564|
 :pattern ( (_module.__default.not ($LS $ly@@3) |s#0@@1|))
)))
(assert (forall (($ly@@4 T@U) (|s#0@@2| T@U) ) (! (= (_module.__default.f ($LS $ly@@4) |s#0@@2|) (_module.__default.f $ly@@4 |s#0@@2|))
 :qid |Circdfy.61:16|
 :skolemid |571|
 :pattern ( (_module.__default.f ($LS $ly@@4) |s#0@@2|))
)))
(assert (forall ((|_module.Stream$T#l@@4| T@U) (|_module.Stream$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@9 T@U) (_module.Stream$T@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.Stream _module.Stream$T@@3) $h))) ($IsAllocBox (_module.Stream.head d@@9) _module.Stream$T@@3 $h))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@9) _module.Stream$T@@3 $h))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
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
 :skolemid |616|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.zip$_T0@@1 T@U) ($ly@@5 T@U) (|a#0@@1| T@U) (|b#0@@4| T@U) ) (!  (=> (and (or (|_module.__default.zip#canCall| _module._default.zip$_T0@@1 |a#0@@1| |b#0@@4|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |a#0@@1| (Tclass._module.Stream _module._default.zip$_T0@@1)) ($IsAlloc DatatypeTypeType |a#0@@1| (Tclass._module.Stream _module._default.zip$_T0@@1) $Heap)) (and ($Is DatatypeTypeType |b#0@@4| (Tclass._module.Stream _module._default.zip$_T0@@1)) ($IsAlloc DatatypeTypeType |b#0@@4| (Tclass._module.Stream _module._default.zip$_T0@@1) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.zip _module._default.zip$_T0@@1 $ly@@5 |a#0@@1| |b#0@@4|) (Tclass._module.Stream _module._default.zip$_T0@@1) $Heap))
 :qid |Circdfy.14:16|
 :skolemid |552|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.zip _module._default.zip$_T0@@1 $ly@@5 |a#0@@1| |b#0@@4|) (Tclass._module.Stream _module._default.zip$_T0@@1) $Heap))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.not#canCall| |s#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream Tclass._module.Bit)))) ($Is DatatypeTypeType (_module.__default.not $ly@@6 |s#0@@3|) (Tclass._module.Stream Tclass._module.Bit)))
 :qid |Circdfy.30:16|
 :skolemid |566|
 :pattern ( (_module.__default.not $ly@@6 |s#0@@3|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.f#canCall| |s#0@@4|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream Tclass._module.Bit)))) ($Is DatatypeTypeType (_module.__default.f $ly@@7 |s#0@@4|) (Tclass._module.Stream Tclass._module.Bit)))
 :qid |Circdfy.61:16|
 :skolemid |573|
 :pattern ( (_module.__default.f $ly@@7 |s#0@@4|))
))))
(assert (forall ((_module._default.zip$_T0@@2 T@U) ($ly@@8 T@U) (|a#0@@2| T@U) (|b#0@@5| T@U) ) (! (= (_module.__default.zip _module._default.zip$_T0@@2 ($LS $ly@@8) |a#0@@2| |b#0@@5|) (_module.__default.zip _module._default.zip$_T0@@2 $ly@@8 |a#0@@2| |b#0@@5|))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (_module.__default.zip _module._default.zip$_T0@@2 ($LS $ly@@8) |a#0@@2| |b#0@@5|))
)))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@10 T@U) (_module.Stream$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.Stream _module.Stream$T@@5) $h@@0))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@10) (Tclass._module.Stream _module.Stream$T@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@10) (Tclass._module.Stream _module.Stream$T@@5) $h@@0))
)))
(assert (forall ((d@@11 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@11 Tclass._module.Bit)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Bit $h@@1))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Bit $h@@1))
)))
(assert (= (Tag Tclass._module.Bit) Tagclass._module.Bit))
(assert (= (TagFamily Tclass._module.Bit) tytagFamily$Bit))
(assert (= |#_module.Bit.O| (Lit DatatypeTypeType |#_module.Bit.O|)))
(assert (= |#_module.Bit.I| (Lit DatatypeTypeType |#_module.Bit.I|)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((|_module.Stream$T#l@@5| T@U) (|_module.Stream$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.Stream$T#l@@6| T@U) (|_module.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|_module.Stream$T#l@@7| T@U) (|_module.Stream$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@2)  (and ($IsAllocBox |a#2#0#0@@0| _module.Stream$T@@6 $h@@2) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#1| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |##a#1@0| () T@U)
(declare-fun |##b#1@0| () T@U)
(declare-fun |##a#2@0| () T@U)
(declare-fun |##b#2@0| () T@U)
(declare-fun |##b#3@0| () T@U)
(declare-fun |##a#4@0| () T@U)
(declare-fun |##b#4@0| () T@U)
(declare-fun |_k#0| () T@U)
(declare-fun |_k##0@0| () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.FProperty_h)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon10_Then_correct  (=> (_module.Stream.Cons_q |s#1|) (=> (and (and (and (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream Tclass._module.Bit) $Heap@0) (|_module.__default.not#canCall| |s#1|)) (and (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|)) (= |##a#1@0| (_module.__default.not ($LS $LZ) |s#1|)))) (and (and ($IsAlloc DatatypeTypeType |##a#1@0| (Tclass._module.Stream Tclass._module.Bit) $Heap@0) (_module.Stream.Cons_q |s#1|)) (and (= |##b#1@0| (_module.Stream.tail |s#1|)) ($IsAlloc DatatypeTypeType |##b#1@0| (Tclass._module.Stream Tclass._module.Bit) $Heap@0)))) (and (and (and (|_module.__default.zip#canCall| Tclass._module.Bit (_module.__default.not ($LS $LZ) |s#1|) (_module.Stream.tail |s#1|)) (_module.Stream.Cons_q (_module.__default.zip Tclass._module.Bit ($LS $LZ) (_module.__default.not ($LS $LZ) |s#1|) (_module.Stream.tail |s#1|)))) (and (_module.Stream.Cons_q |s#1|) (and (and (|_module.__default.not#canCall| |s#1|) (_module.Stream.Cons_q |s#1|)) (|_module.__default.zip#canCall| Tclass._module.Bit (_module.__default.not ($LS $LZ) |s#1|) (_module.Stream.tail |s#1|))))) (and (and (_module.Stream.Cons_q |s#1|) ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream Tclass._module.Bit) $Heap@0)) (and (|_module.__default.not#canCall| |s#1|) (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|)))))) (and (and (and (and (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|)) (_module.Stream.Cons_q |s#1|)) (and (= |##a#2@0| (_module.Stream.tail |s#1|)) ($IsAlloc DatatypeTypeType |##a#2@0| (Tclass._module.Stream Tclass._module.Bit) $Heap@0))) (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream Tclass._module.Bit) $Heap@0) (|_module.__default.not#canCall| |s#1|)) (and (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|)) (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|))))) (and (and (and (= |##b#2@0| (_module.Stream.tail (_module.__default.not ($LS $LZ) |s#1|))) ($IsAlloc DatatypeTypeType |##b#2@0| (Tclass._module.Stream Tclass._module.Bit) $Heap@0)) (and (|_module.__default.zip#canCall| Tclass._module.Bit (_module.Stream.tail |s#1|) (_module.Stream.tail (_module.__default.not ($LS $LZ) |s#1|))) (_module.Stream.Cons_q (_module.__default.zip Tclass._module.Bit ($LS $LZ) (_module.Stream.tail |s#1|) (_module.Stream.tail (_module.__default.not ($LS $LZ) |s#1|)))))) (and (and (_module.Stream.Cons_q |s#1|) (and (and (|_module.__default.not#canCall| |s#1|) (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|))) (and (and (_module.Stream.Cons_q |s#1|) (and (|_module.__default.not#canCall| |s#1|) (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|)))) (|_module.__default.zip#canCall| Tclass._module.Bit (_module.Stream.tail |s#1|) (_module.Stream.tail (_module.__default.not ($LS $LZ) |s#1|)))))) (= (ControlFlow 0 9) (- 0 8)))))) (|$Eq#_module.Stream| Tclass._module.Bit Tclass._module.Bit ($LS ($LS $LZ)) (|#_module.Stream.Cons| (_module.Stream.head |s#1|) (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) (_module.__default.not ($LS ($LS $LZ)) |s#1|) (_module.Stream.tail |s#1|))) (|#_module.Stream.Cons| (_module.Stream.head |s#1|) (|#_module.Stream.Cons| (_module.Stream.head (_module.__default.not ($LS ($LS $LZ)) |s#1|)) (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) (_module.Stream.tail |s#1|) (_module.Stream.tail (_module.__default.not ($LS ($LS $LZ)) |s#1|))))))))))
(let ((anon9_Then_correct  (=> (and (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream Tclass._module.Bit) $Heap@0) ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream Tclass._module.Bit) $Heap@0)) (and (|_module.__default.not#canCall| |s#1|) (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|)))) (and (and (= |##b#3@0| (_module.__default.not ($LS $LZ) |s#1|)) ($IsAlloc DatatypeTypeType |##b#3@0| (Tclass._module.Stream Tclass._module.Bit) $Heap@0)) (and (|_module.__default.zip#canCall| Tclass._module.Bit |s#1| (_module.__default.not ($LS $LZ) |s#1|)) (_module.Stream.Cons_q (_module.__default.zip Tclass._module.Bit ($LS $LZ) |s#1| (_module.__default.not ($LS $LZ) |s#1|)))))) (=> (and (and (and (and (and (|_module.__default.not#canCall| |s#1|) (|_module.__default.zip#canCall| Tclass._module.Bit |s#1| (_module.__default.not ($LS $LZ) |s#1|))) (_module.Stream.Cons_q |s#1|)) (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream Tclass._module.Bit) $Heap@0) (|_module.__default.not#canCall| |s#1|))) (and (and (_module.Stream.Cons_q (_module.__default.not ($LS $LZ) |s#1|)) (= |##a#4@0| (_module.__default.not ($LS $LZ) |s#1|))) (and ($IsAlloc DatatypeTypeType |##a#4@0| (Tclass._module.Stream Tclass._module.Bit) $Heap@0) (_module.Stream.Cons_q |s#1|)))) (and (and (and (= |##b#4@0| (_module.Stream.tail |s#1|)) ($IsAlloc DatatypeTypeType |##b#4@0| (Tclass._module.Stream Tclass._module.Bit) $Heap@0)) (and (|_module.__default.zip#canCall| Tclass._module.Bit (_module.__default.not ($LS $LZ) |s#1|) (_module.Stream.tail |s#1|)) (_module.Stream.Cons_q (_module.__default.zip Tclass._module.Bit ($LS $LZ) (_module.__default.not ($LS $LZ) |s#1|) (_module.Stream.tail |s#1|))))) (and (and (_module.Stream.Cons_q |s#1|) (and (and (|_module.__default.not#canCall| |s#1|) (_module.Stream.Cons_q |s#1|)) (|_module.__default.zip#canCall| Tclass._module.Bit (_module.__default.not ($LS $LZ) |s#1|) (_module.Stream.tail |s#1|)))) (= (ControlFlow 0 7) (- 0 6))))) (|$Eq#_module.Stream| Tclass._module.Bit Tclass._module.Bit ($LS ($LS $LZ)) (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|)) (|#_module.Stream.Cons| (_module.Stream.head |s#1|) (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) (_module.__default.not ($LS ($LS $LZ)) |s#1|) (_module.Stream.tail |s#1|))))))))
(let ((anon8_Then_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit |_k#0| ($LS ($LS $LZ)) (_module.__default.f ($LS $LZ) |s#1|) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |s#1| (_module.__default.not ($LS $LZ) |s#1|))) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.Cons_q (_module.__default.f ($LS ($LS $LZ)) |s#1|)) (and (_module.Stream.Cons_q (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|))) (and (|_module.Bit#Equal| ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.f ($LS ($LS $LZ)) |s#1|))) ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|))))) (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.f ($LS ($LS $LZ)) |s#1|)) (_module.Stream.tail (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|)))))))))) (=> (or (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit |_k#0| ($LS ($LS $LZ)) (_module.__default.f ($LS $LZ) |s#1|) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |s#1| (_module.__default.not ($LS $LZ) |s#1|))) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.Cons_q (_module.__default.f ($LS ($LS $LZ)) |s#1|)) (and (_module.Stream.Cons_q (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|))) (and (|_module.Bit#Equal| ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.f ($LS ($LS $LZ)) |s#1|))) ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|))))) (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.f ($LS ($LS $LZ)) |s#1|)) (_module.Stream.tail (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|))))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (or (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit |_k#0| ($LS ($LS $LZ)) (_module.__default.f ($LS $LZ) |s#1|) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |s#1| (_module.__default.not ($LS $LZ) |s#1|))) (or (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.Cons_q (_module.__default.f ($LS ($LS $LZ)) |s#1|)) (and (_module.Stream.Cons_q (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|))) (and (|_module.Bit#Equal| ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.f ($LS ($LS $LZ)) |s#1|))) ($Unbox DatatypeTypeType (_module.Stream.head (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|))))) (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.f ($LS ($LS $LZ)) |s#1|)) (_module.Stream.tail (_module.__default.zip Tclass._module.Bit ($LS ($LS $LZ)) |s#1| (_module.__default.not ($LS ($LS $LZ)) |s#1|)))))))) (=> (and (or (not (= |_k#0| (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| |_k#0|) 0)) (|$Eq#_module.Stream| Tclass._module.Bit Tclass._module.Bit ($LS ($LS $LZ)) (_module.__default.f ($LS $LZ) |s#1|) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |s#1| (_module.__default.not ($LS $LZ) |s#1|)))))))))))
(let ((anon10_Else_correct  (=> (|$Eq#_module.Stream| Tclass._module.Bit Tclass._module.Bit ($LS ($LS $LZ)) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |s#1| (_module.__default.not ($LS $LZ) |s#1|)) (|#_module.Stream.Cons| (_module.Stream.head |s#1|) (|#_module.Stream.Cons| (_module.Stream.head (_module.__default.not ($LS $LZ) |s#1|)) (_module.__default.zip Tclass._module.Bit ($LS $LZ) (_module.Stream.tail |s#1|) (_module.Stream.tail (_module.__default.not ($LS $LZ) |s#1|)))))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0|)) (=> (and (= |_k##0@0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1))) (_module.Stream.Cons_q |s#1|)) (=> (and (and (_module.Stream.Cons_q |s#1|) (= |s##0@0| (_module.Stream.tail |s#1|))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (=> (and (and (and (|_module.__default.f#canCall| |s##0@0|) (and (|_module.__default.not#canCall| |s##0@0|) (|_module.__default.zip#canCall| Tclass._module.Bit |s##0@0| (_module.__default.not ($LS $LZ) |s##0@0|)))) (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit |_k##0@0| ($LS ($LS $LZ)) (_module.__default.f ($LS $LZ) |s##0@0|) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |s##0@0| (_module.__default.not ($LS $LZ) |s##0@0|)))) (and (= $Heap@0 $Heap@2) (= (ControlFlow 0 10) 2))) GeneratedUnifiedExit_correct))))))))))
(let ((anon7_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0|)) (and (and (and (=> (= (ControlFlow 0 13) 5) anon8_Then_correct) (=> (= (ControlFlow 0 13) 7) anon9_Then_correct)) (=> (= (ControlFlow 0 13) 9) anon10_Then_correct)) (=> (= (ControlFlow 0 13) 10) anon10_Else_correct)))))
(let ((anon7_Else_correct  (=> (<= (|ORD#Offset| |_k#0|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#0| T@U) (|s#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#2| (Tclass._module.Stream Tclass._module.Bit)) (|ORD#Less| |_k'#0| |_k#0|)) (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit |_k'#0| ($LS ($LS $LZ)) (_module.__default.f ($LS $LZ) |s#2|) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |s#2| (_module.__default.not ($LS $LZ) |s#2|))))
 :qid |Circdfy.69:16|
 :skolemid |580|
 :pattern ( (_module.__default.not ($LS $LZ) |s#2|) (|ORD#Less| |_k'#0| |_k#0|))
 :pattern ( (_module.__default.f ($LS $LZ) |s#2|) (|ORD#Less| |_k'#0| |_k#0|))
)) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#_module.Stream| |s#1|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@0 $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#s0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#s0#0| (Tclass._module.Stream Tclass._module.Bit)) (U_2_bool (Lit boolType (bool_2_U true)))) (|ORD#Less| |$ih#_k0#0| |_k#0|)) (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.f ($LS $LZ) |$ih#s0#0|) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |$ih#s0#0| (_module.__default.not ($LS $LZ) |$ih#s0#0|))))
 :qid |Circdfy.69:16|
 :skolemid |578|
 :pattern ( (|$PrefixEq#_module.Stream| Tclass._module.Bit Tclass._module.Bit |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.f ($LS $LZ) |$ih#s0#0|) (_module.__default.zip Tclass._module.Bit ($LS $LZ) |$ih#s0#0| (_module.__default.not ($LS $LZ) |$ih#s0#0|))))
)))) (and (=> (= (ControlFlow 0 14) 13) anon7_Then_correct) (=> (= (ControlFlow 0 14) 4) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is DatatypeTypeType |s#1| (Tclass._module.Stream Tclass._module.Bit)) ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream Tclass._module.Bit) $Heap@@0)) (|$IsA#_module.Stream| |s#1|)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
