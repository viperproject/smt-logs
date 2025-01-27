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
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Nil| () T@U)
(declare-fun |##_module.Stream.Cons| () T@U)
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
(declare-fun _module.__default.Finite_h (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Finite_h#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |#_module.Stream.Nil| () T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun _module.__default.Finite (T@U T@U T@U) Bool)
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Stream.Nil_q (T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |_module.__default.Finite#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
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
(assert (distinct TBool TagBool alloc Tagclass._module.Stream |##_module.Stream.Nil| |##_module.Stream.Cons| tytagFamily$Stream)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Finite#$Y| T@U) ($ly T@U) (|_k#0| T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y| |_k#0| |s#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| (Tclass._module.Stream |_module._default.Finite#$Y|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (and (|$IsA#_module.Stream| |s#0|) (=> (not (|$Eq#_module.Stream| |_module._default.Finite#$Y| |_module._default.Finite#$Y| ($LS ($LS $LZ)) |s#0| |#_module.Stream.Nil|)) (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (or (|$Eq#_module.Stream| |_module._default.Finite#$Y| |_module._default.Finite#$Y| ($LS ($LS $LZ)) |s#0| |#_module.Stream.Nil|) (_module.__default.Finite_h |_module._default.Finite#$Y| $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0| |_k#0|) (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y| |_k'#0| |s#0|))
 :qid |gitissue2947dfy.6:17|
 :skolemid |547|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y| $ly |_k'#0| |s#0|))
))))) (= (_module.__default.Finite_h |_module._default.Finite#$Y| ($LS $ly) |_k#0| |s#0|)  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (or (|$Eq#_module.Stream| |_module._default.Finite#$Y| |_module._default.Finite#$Y| ($LS ($LS $LZ)) |s#0| |#_module.Stream.Nil|) (_module.__default.Finite_h |_module._default.Finite#$Y| $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k#0|) (_module.__default.Finite_h |_module._default.Finite#$Y| $ly |_k'#0@@0| |s#0|))
 :qid |gitissue2947dfy.6:17|
 :skolemid |546|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y| $ly |_k'#0@@0| |s#0|))
)))))))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y| ($LS $ly) |_k#0| |s#0|))
))))
(assert (= (Tag TBool) TagBool))
(assert (forall ((_module._default.Finite$Y T@U) ($ly@@0 T@U) (|s#0@@0| T@U) ) (! (= (_module.__default.Finite _module._default.Finite$Y ($LS $ly@@0) |s#0@@0|) (_module.__default.Finite _module._default.Finite$Y $ly@@0 |s#0@@0|))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.__default.Finite _module._default.Finite$Y ($LS $ly@@0) |s#0@@0|))
)))
(assert (forall ((|_module.Stream$X#l| T@U) (|_module.Stream$X#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$X#l| |_module.Stream$X#r| k ($LS ly) d0 d1) (|$PrefixEq#_module.Stream| |_module.Stream$X#l| |_module.Stream$X#r| k ly d0 d1)))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$X#l| |_module.Stream$X#r| k ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Stream.Nil|) |##_module.Stream.Nil|))
(assert (forall ((|_module.Stream$X#l@@0| T@U) (|_module.Stream$X#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (= d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@0| |_module.Stream$X#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@0| |_module.Stream$X#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((_module.Stream$X T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$X) $h))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$X) $h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Finite#$Y@@0| T@U) ($ly@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream |_module._default.Finite#$Y@@0|)) (_module.__default.Finite |_module._default.Finite#$Y@@0| ($LS $ly@@1) |s#0@@1|)) (exists ((|_k#0@@0| T@U) ) (! (_module.__default.Finite_h |_module._default.Finite#$Y@@0| ($LS $ly@@1) |_k#0@@0| |s#0@@1|)
 :qid |gitissue2947dfy.6:17|
 :skolemid |536|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@0| ($LS $ly@@1) |_k#0@@0| |s#0@@1|))
)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (_module.__default.Finite |_module._default.Finite#$Y@@0| ($LS $ly@@1) |s#0@@1|))
))))
(assert (forall ((|_module.Stream$X#l@@1| T@U) (|_module.Stream$X#r@@1| T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$X#l@@1| |_module.Stream$X#r@@1| ($LS ly@@1) d0@@1 d1@@1) (= d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$X#l@@1| |_module.Stream$X#r@@1| ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Finite#$Y@@1| T@U) ($ly@@2 T@U) (|_k#0@@1| T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y@@1| (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |s#0@@2|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream |_module._default.Finite#$Y@@1|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (and (|$IsA#_module.Stream| (Lit DatatypeTypeType |s#0@@2|)) (=> (not (|$Eq#_module.Stream| |_module._default.Finite#$Y@@1| |_module._default.Finite#$Y@@1| ($LS ($LS $LZ)) |s#0@@2| |#_module.Stream.Nil|)) (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y@@1| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@2|))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (or (|$Eq#_module.Stream| |_module._default.Finite#$Y@@1| |_module._default.Finite#$Y@@1| ($LS ($LS $LZ)) |s#0@@2| |#_module.Stream.Nil|) (_module.__default.Finite_h |_module._default.Finite#$Y@@1| ($LS $ly@@2) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@2|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2| |_k#0@@1|) (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y@@1| |_k'#2| |s#0@@2|))
 :qid |gitissue2947dfy.6:17|
 :skolemid |553|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@1| ($LS $ly@@2) |_k'#2| |s#0@@2|))
))))) (= (_module.__default.Finite_h |_module._default.Finite#$Y@@1| ($LS $ly@@2) (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |s#0@@2|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (or (|$Eq#_module.Stream| |_module._default.Finite#$Y@@1| |_module._default.Finite#$Y@@1| ($LS ($LS $LZ)) |s#0@@2| |#_module.Stream.Nil|) (_module.__default.Finite_h |_module._default.Finite#$Y@@1| ($LS $ly@@2) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@2|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (exists ((|_k'#2@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@0| |_k#0@@1|) (_module.__default.Finite_h |_module._default.Finite#$Y@@1| ($LS $ly@@2) |_k'#2@@0| |s#0@@2|))
 :qid |gitissue2947dfy.6:17|
 :skolemid |552|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@1| ($LS $ly@@2) |_k'#2@@0| |s#0@@2|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |554|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@1| ($LS $ly@@2) (Lit BoxType |_k#0@@1|) (Lit DatatypeTypeType |s#0@@2|)))
))))
(assert (forall ((_module.Stream$X@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$X@@0))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($Is DatatypeTypeType |#_module.Stream.Nil| (Tclass._module.Stream _module.Stream$X@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Finite#$Y@@2| T@U) ($ly@@3 T@U) (|s#0@@3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream |_module._default.Finite#$Y@@2|)) (exists ((|_k#0@@2| T@U) ) (! (_module.__default.Finite_h |_module._default.Finite#$Y@@2| ($LS $ly@@3) |_k#0@@2| |s#0@@3|)
 :qid |gitissue2947dfy.6:17|
 :skolemid |536|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@2| ($LS $ly@@3) |_k#0@@2| |s#0@@3|))
))) (_module.__default.Finite |_module._default.Finite#$Y@@2| ($LS $ly@@3) |s#0@@3|))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.__default.Finite |_module._default.Finite#$Y@@2| ($LS $ly@@3) |s#0@@3|))
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
(assert (forall ((_module.Stream$X@@1 T@U) (|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$X@@1))  (and ($IsBox |a#5#0#0| _module.Stream$X@@1) ($Is DatatypeTypeType |a#5#1#0| (Tclass._module.Stream _module.Stream$X@@1))))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0| |a#5#1#0|) (Tclass._module.Stream _module.Stream$X@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.Stream.Nil_q d) (= (DatatypeCtorId d) |##_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (_module.Stream.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( (_module.Stream.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Finite#$Y@@3| T@U) ($ly@@4 T@U) (|_k#0@@3| T@U) (|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y@@3| (Lit BoxType |_k#0@@3|) |s#0@@4|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream |_module._default.Finite#$Y@@3|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (and (|$IsA#_module.Stream| |s#0@@4|) (=> (not (|$Eq#_module.Stream| |_module._default.Finite#$Y@@3| |_module._default.Finite#$Y@@3| ($LS ($LS $LZ)) |s#0@@4| |#_module.Stream.Nil|)) (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y@@3| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@4|))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (|$Eq#_module.Stream| |_module._default.Finite#$Y@@3| |_module._default.Finite#$Y@@3| ($LS ($LS $LZ)) |s#0@@4| |#_module.Stream.Nil|) (_module.__default.Finite_h |_module._default.Finite#$Y@@3| ($LS $ly@@4) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@4|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@3|) (|_module.__default.Finite_h#canCall| |_module._default.Finite#$Y@@3| |_k'#1| |s#0@@4|))
 :qid |gitissue2947dfy.6:17|
 :skolemid |550|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@3| ($LS $ly@@4) |_k'#1| |s#0@@4|))
))))) (= (_module.__default.Finite_h |_module._default.Finite#$Y@@3| ($LS $ly@@4) (Lit BoxType |_k#0@@3|) |s#0@@4|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (|$Eq#_module.Stream| |_module._default.Finite#$Y@@3| |_module._default.Finite#$Y@@3| ($LS ($LS $LZ)) |s#0@@4| |#_module.Stream.Nil|) (_module.__default.Finite_h |_module._default.Finite#$Y@@3| ($LS $ly@@4) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@4|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@3|) (_module.__default.Finite_h |_module._default.Finite#$Y@@3| ($LS $ly@@4) |_k'#1@@0| |s#0@@4|))
 :qid |gitissue2947dfy.6:17|
 :skolemid |549|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@3| ($LS $ly@@4) |_k'#1@@0| |s#0@@4|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |551|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@3| ($LS $ly@@4) (Lit BoxType |_k#0@@3|) |s#0@@4|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Finite#$Y@@4| T@U) ($ly@@5 T@U) (|s#0@@5| T@U) (|_k#0@@4| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0@@4| _m) (=> (_module.__default.Finite_h |_module._default.Finite#$Y@@4| $ly@@5 |_k#0@@4| |s#0@@5|) (_module.__default.Finite_h |_module._default.Finite#$Y@@4| $ly@@5 _m |s#0@@5|)))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@4| $ly@@5 |_k#0@@4| |s#0@@5|) (|ORD#LessThanLimit| |_k#0@@4| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Stream.Cons_q d@@1) (exists ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= d@@1 (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
 :qid |gitissue2947dfy.4:35|
 :skolemid |710|
)))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Nil_q d@@2) (= d@@2 |#_module.Stream.Nil|))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( (_module.Stream.Nil_q d@@2))
)))
(assert (forall ((|_module.Stream$X#l@@2| T@U) (|_module.Stream$X#r@@2| T@U) (k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 (Tclass._module.Stream |_module.Stream$X#l@@2|)) ($Is DatatypeTypeType d1@@2 (Tclass._module.Stream |_module.Stream$X#r@@2|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@2| |_module.Stream$X#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (_module.Stream.Nil_q d0@@2) (_module.Stream.Nil_q d1@@2)) (and (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (=> (and (_module.Stream.Cons_q d0@@2) (_module.Stream.Cons_q d1@@2)) (and (= (_module.Stream.head d0@@2) (_module.Stream.head d1@@2)) (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@2| |_module.Stream$X#r@@2| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@2 (_module.Stream.tail d0@@2) (_module.Stream.tail d1@@2))))))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.Stream| |_module.Stream$X#l@@2| |_module.Stream$X#r@@2| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@2| |_module.Stream$X#r@@2| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$X@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$X@@2)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$X@@2)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.Stream _module.Stream$X@@2))
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
(assert (forall ((|_module.Stream$X#l@@3| T@U) (|_module.Stream$X#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$X#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$X#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$X#l@@3| |_module.Stream$X#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (or (and (_module.Stream.Nil_q d0@@3) (_module.Stream.Nil_q d1@@3)) (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$X#l@@3| |_module.Stream$X#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3))))))))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$X#l@@3| |_module.Stream$X#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Stream| d@@3) (or (_module.Stream.Nil_q d@@3) (_module.Stream.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (|$IsA#_module.Stream| d@@3))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Finite$Y@@0 T@U) ($ly@@6 T@U) (|s#0@@6| T@U) ) (!  (=> (or (|_module.__default.Finite#canCall| _module._default.Finite$Y@@0 |s#0@@6|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream _module._default.Finite$Y@@0)))) (and (and (|$IsA#_module.Stream| |s#0@@6|) (=> (not (|$Eq#_module.Stream| _module._default.Finite$Y@@0 _module._default.Finite$Y@@0 ($LS ($LS $LZ)) |s#0@@6| |#_module.Stream.Nil|)) (|_module.__default.Finite#canCall| _module._default.Finite$Y@@0 (_module.Stream.tail |s#0@@6|)))) (= (_module.__default.Finite _module._default.Finite$Y@@0 ($LS $ly@@6) |s#0@@6|)  (or (|$Eq#_module.Stream| _module._default.Finite$Y@@0 _module._default.Finite$Y@@0 ($LS ($LS $LZ)) |s#0@@6| |#_module.Stream.Nil|) (_module.__default.Finite _module._default.Finite$Y@@0 $ly@@6 (_module.Stream.tail |s#0@@6|))))))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (_module.__default.Finite _module._default.Finite$Y@@0 ($LS $ly@@6) |s#0@@6|))
))))
(assert (forall ((_module.Stream$X@@3 T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$X@@3)) (or (_module.Stream.Nil_q d@@4) (_module.Stream.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (_module.Stream.Cons_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$X@@3)))
 :pattern ( (_module.Stream.Nil_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$X@@3)))
)))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |91|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TBool) (and (= ($Box boolType ($Unbox boolType bx)) bx) ($Is boolType ($Unbox boolType bx) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.Finite#$Y@@5| T@U) ($ly@@7 T@U) (|s#0@@7| T@U) (|_k#0@@5| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream |_module._default.Finite#$Y@@5|)) (= |_k#0@@5| (|ORD#FromNat| 0))) (not (_module.__default.Finite_h |_module._default.Finite#$Y@@5| $ly@@7 |_k#0@@5| |s#0@@7|)))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@5| $ly@@7 |_k#0@@5| |s#0@@7|))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |##_module.Stream.Cons|)
 :qid |gitissue2947dfy.4:35|
 :skolemid |708|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|)) |a#6#0#0|)
 :qid |gitissue2947dfy.4:35|
 :skolemid |716|
 :pattern ( (|#_module.Stream.Cons| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|)
 :qid |gitissue2947dfy.4:35|
 :skolemid |717|
 :pattern ( (|#_module.Stream.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((_module.Stream$X@@4 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$X@@4)) _module.Stream$X@@4)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.Stream _module.Stream$X@@4))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@3))
)))
(assert (forall ((|_module._default.Finite#$Y@@6| T@U) ($ly@@8 T@U) (|_k#0@@6| T@U) (|s#0@@8| T@U) ) (! (= (_module.__default.Finite_h |_module._default.Finite#$Y@@6| ($LS $ly@@8) |_k#0@@6| |s#0@@8|) (_module.__default.Finite_h |_module._default.Finite#$Y@@6| $ly@@8 |_k#0@@6| |s#0@@8|))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (_module.__default.Finite_h |_module._default.Finite#$Y@@6| ($LS $ly@@8) |_k#0@@6| |s#0@@8|))
)))
(assert (forall ((|_module.Stream$X#l@@4| T@U) (|_module.Stream$X#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$X#l@@4| |_module.Stream$X#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@4| |_module.Stream$X#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@4| |_module.Stream$X#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$X#l@@4| |_module.Stream$X#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@5 T@U) (_module.Stream$X@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Stream _module.Stream$X@@5) $h@@0))) ($IsAllocBox (_module.Stream.head d@@5) _module.Stream$X@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@5) _module.Stream$X@@5 $h@@0))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
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
 :skolemid |731|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module.Stream$X@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$X@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.Stream _module.Stream$X@@6))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$X@@6)))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((d@@6 T@U) (_module.Stream$X@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Stream _module.Stream$X@@7) $h@@1))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@6) (Tclass._module.Stream _module.Stream$X@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@6) (Tclass._module.Stream _module.Stream$X@@7) $h@@1))
)))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert (forall ((|_module.Stream$X#l@@5| T@U) (|_module.Stream$X#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@5| |_module.Stream$X#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@5| |_module.Stream$X#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@5| |_module.Stream$X#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@5| |_module.Stream$X#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.Stream$X#l@@6| T@U) (|_module.Stream$X#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$X#l@@6| |_module.Stream$X#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$X#l@@6| |_module.Stream$X#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$X#l@@6| |_module.Stream$X#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
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
(assert (forall ((|_module.Stream$X#l@@7| T@U) (|_module.Stream$X#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@7| |_module.Stream$X#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$X#l@@7| |_module.Stream$X#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$X#l@@7| |_module.Stream$X#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$X#l@@7| |_module.Stream$X#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@0))
)))
(assert (forall ((_module.Stream$X@@8 T@U) (|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$X@@8) $h@@2)  (and ($IsAllocBox |a#5#0#0@@0| _module.Stream$X@@8 $h@@2) ($IsAlloc DatatypeTypeType |a#5#1#0@@0| (Tclass._module.Stream _module.Stream$X@@8) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#5#0#0@@0| |a#5#1#0@@0|) (Tclass._module.Stream _module.Stream$X@@8) $h@@2))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module._default.Finite$Y@@1 () T@U)
(declare-fun |s#0@@9| () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Finite)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon5_correct true))
(let ((anon8_Else_correct  (=> (and (|$Eq#_module.Stream| _module._default.Finite$Y@@1 _module._default.Finite$Y@@1 ($LS ($LS $LZ)) |s#0@@9| |#_module.Stream.Nil|) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon8_Then_correct  (=> (not (|$Eq#_module.Stream| _module._default.Finite$Y@@1 _module._default.Finite$Y@@1 ($LS ($LS $LZ)) |s#0@@9| |#_module.Stream.Nil|)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (_module.Stream.Cons_q |s#0@@9|)) (=> (_module.Stream.Cons_q |s#0@@9|) (=> (and (and (= |##s#0@0| (_module.Stream.tail |s#0@@9|)) ($IsAlloc DatatypeTypeType |##s#0@0| (Tclass._module.Stream _module._default.Finite$Y@@1) $Heap)) (and (|_module.__default.Finite#canCall| _module._default.Finite$Y@@1 (_module.Stream.tail |s#0@@9|)) (= (ControlFlow 0 3) 2))) anon5_correct))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 6) 1) anon7_Then_correct) (=> (= (ControlFlow 0 6) 3) anon8_Then_correct)) (=> (= (ControlFlow 0 6) 5) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |s#0@@9| (Tclass._module.Stream _module._default.Finite$Y@@1))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
