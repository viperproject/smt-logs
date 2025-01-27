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
(declare-fun Tagclass._module.Stream () T@U)
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
(declare-fun Tag (T@U) T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Upward (T@U Int) T@U)
(declare-fun |_module.__default.Upward#canCall| (Int) Bool)
(declare-fun _module.__default.Pos_h (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.Pos_h#canCall| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.__default.Pos (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.__default.Pos#canCall| (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Stream |##_module.Stream.Cons| tytagFamily$Stream)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_module.Stream$T#l| T@U) (|_module.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0 (Tclass._module.Stream |_module.Stream$T#l|)) ($Is DatatypeTypeType d1 (Tclass._module.Stream |_module.Stream$T#r|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1)  (and (=> (< 0 (|ORD#Offset| k)) (and (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (=> (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (and (= (_module.Stream.head d0) (_module.Stream.head d1)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| (|ORD#Minus| k (|ORD#FromNat| 1)) ly (_module.Stream.tail d0) (_module.Stream.tail d1)))))) (=> (and (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| ly d0 d1)))))
 :qid |unknown.0:0|
 :skolemid |957|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert (forall ((|_module.Stream$T#l@@0| T@U) (|_module.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (or (not (= k@@0 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ly@@0 d0@@0 d1@@0)))
 :qid |unknown.0:0|
 :skolemid |958|
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
 :skolemid |952|
 :pattern ( (|$IsA#_module.Stream| d))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((_module.Stream$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)) (_module.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |953|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)))
)))
(assert (forall ((|_module.Stream$T#l@@1| T@U) (|_module.Stream$T#r@@1| T@U) (k@@1 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (!  (=> (= d0@@1 d1@@1) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Upward#canCall| |n#0|) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.Upward $ly |n#0|) (Tclass._module.Stream TInt)))
 :qid |CoinductiveProofsdfy.6:16|
 :skolemid |533|
 :pattern ( (_module.__default.Upward $ly |n#0|))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0| T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.Pos_h#canCall| (Lit BoxType |_k#0|) |s#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| (Tclass._module.Stream TInt)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (and (_module.Stream.Cons_q |s#0|) (=> (< 0 (U_2_int ($Unbox intType (_module.Stream.head |s#0|)))) (and (_module.Stream.Cons_q |s#0|) (|_module.__default.Pos_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (and (< 0 (U_2_int ($Unbox intType (_module.Stream.head |s#0|)))) (_module.__default.Pos_h ($LS $ly@@0) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0|) (|_module.__default.Pos_h#canCall| |_k'#1| |s#0|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |555|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@0) |_k'#1| |s#0|))
))))) (= (_module.__default.Pos_h ($LS $ly@@0) (Lit BoxType |_k#0|) |s#0|)  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (and (< 0 (U_2_int ($Unbox intType (_module.Stream.head |s#0|)))) (_module.__default.Pos_h ($LS $ly@@0) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0|) (_module.__default.Pos_h ($LS $ly@@0) |_k'#1@@0| |s#0|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |554|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@0) |_k'#1@@0| |s#0|))
)))))))
 :qid |CoinductiveProofsdfy.11:20|
 :weight 3
 :skolemid |556|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@0) (Lit BoxType |_k#0|) |s#0|))
))))
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2) (= d0@@2 d1@@2))
 :qid |unknown.0:0|
 :skolemid |956|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2))
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
(assert (forall ((_module.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#2#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |946|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@0| T@U) (|_k#0@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream TInt)) (= |_k#0@@0| (|ORD#FromNat| 0))) (_module.__default.Pos_h $ly@@1 |_k#0@@0| |s#0@@0|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |545|
 :pattern ( (_module.__default.Pos_h $ly@@1 |_k#0@@0| |s#0@@0|))
))))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |943|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|s#0@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream TInt)) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.Pos_h ($LS $ly@@2) |_k#0@@1| |s#0@@1|)
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |542|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@2) |_k#0@@1| |s#0@@1|))
))) (_module.__default.Pos ($LS $ly@@2) |s#0@@1|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |544|
 :pattern ( (_module.__default.Pos ($LS $ly@@2) |s#0@@1|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Cons_q d@@2) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@2 (|#_module.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |CoinductiveProofsdfy.4:29|
 :skolemid |944|
)))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( (_module.Stream.Cons_q d@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.Pos#canCall| |s#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream TInt)))) (and (and (_module.Stream.Cons_q |s#0@@2|) (=> (< 0 (U_2_int ($Unbox intType (_module.Stream.head |s#0@@2|)))) (and (_module.Stream.Cons_q |s#0@@2|) (|_module.__default.Pos#canCall| (_module.Stream.tail |s#0@@2|))))) (= (_module.__default.Pos ($LS $ly@@3) |s#0@@2|)  (and (< 0 (U_2_int ($Unbox intType (_module.Stream.head |s#0@@2|)))) (_module.__default.Pos $ly@@3 (_module.Stream.tail |s#0@@2|))))))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |541|
 :pattern ( (_module.__default.Pos ($LS $ly@@3) |s#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|s#0@@3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream TInt)) (_module.__default.Pos ($LS $ly@@4) |s#0@@3|)) (forall ((|_k#0@@2| T@U) ) (! (_module.__default.Pos_h ($LS $ly@@4) |_k#0@@2| |s#0@@3|)
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |542|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@4) |_k#0@@2| |s#0@@3|))
)))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |543|
 :pattern ( (_module.__default.Pos ($LS $ly@@4) |s#0@@3|))
))))
(assert (forall ((|_module.Stream$T#l@@3| T@U) (|_module.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$T#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3)))))))
 :qid |unknown.0:0|
 :skolemid |954|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall (($ly@@5 T@U) (|_k#0@@3| T@U) (|s#0@@4| T@U) ) (! (= (_module.__default.Pos_h ($LS $ly@@5) |_k#0@@3| |s#0@@4|) (_module.__default.Pos_h $ly@@5 |_k#0@@3| |s#0@@4|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |547|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@5) |_k#0@@3| |s#0@@4|))
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
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall (($ly@@6 T@U) (|s#0@@5| T@U) ) (! (= (_module.__default.Pos ($LS $ly@@6) |s#0@@5|) (_module.__default.Pos $ly@@6 |s#0@@5|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |537|
 :pattern ( (_module.__default.Pos ($LS $ly@@6) |s#0@@5|))
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
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|)) |##_module.Stream.Cons|)
 :qid |CoinductiveProofsdfy.4:29|
 :skolemid |942|
 :pattern ( (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |CoinductiveProofsdfy.4:29|
 :skolemid |950|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |CoinductiveProofsdfy.4:29|
 :skolemid |951|
 :pattern ( (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.Stream _module.Stream$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall (($ly@@7 T@U) (|n#0@@0| Int) ) (! (= (_module.__default.Upward ($LS $ly@@7) |n#0@@0|) (_module.__default.Upward $ly@@7 |n#0@@0|))
 :qid |CoinductiveProofsdfy.6:16|
 :skolemid |528|
 :pattern ( (_module.__default.Upward ($LS $ly@@7) |n#0@@0|))
)))
(assert (forall ((|_module.Stream$T#l@@4| T@U) (|_module.Stream$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@3 T@U) (_module.Stream$T@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$T@@3) $h))) ($IsAllocBox (_module.Stream.head d@@3) _module.Stream$T@@3 $h))
 :qid |unknown.0:0|
 :skolemid |948|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@3) _module.Stream$T@@3 $h))
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
 :skolemid |992|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) (|_k#0@@4| T@U) (|s#0@@6| T@U) ) (!  (=> (or (|_module.__default.Pos_h#canCall| (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |s#0@@6|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream TInt)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@6|)) (=> (U_2_bool (Lit boolType (bool_2_U (< 0 (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |s#0@@6|)))))))) (and (_module.Stream.Cons_q (Lit DatatypeTypeType |s#0@@6|)) (|_module.__default.Pos_h#canCall| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@6|)))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (and (< 0 (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |s#0@@6|))))) (_module.__default.Pos_h ($LS $ly@@8) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@6|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@4|) (|_module.__default.Pos_h#canCall| |_k'#2| |s#0@@6|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |558|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@8) |_k'#2| |s#0@@6|))
))))) (= (_module.__default.Pos_h ($LS $ly@@8) (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |s#0@@6|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (and (< 0 (U_2_int ($Unbox intType (_module.Stream.head (Lit DatatypeTypeType |s#0@@6|))))) (_module.__default.Pos_h ($LS $ly@@8) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Stream.tail (Lit DatatypeTypeType |s#0@@6|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@4|) (_module.__default.Pos_h ($LS $ly@@8) |_k'#2@@0| |s#0@@6|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |557|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@8) |_k'#2@@0| |s#0@@6|))
)))))))
 :qid |CoinductiveProofsdfy.11:20|
 :weight 3
 :skolemid |559|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@8) (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |s#0@@6|)))
))))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@0 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@9 T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Upward#canCall| |n#0@@1|) (< 1 $FunctionContextHeight)) (and (|_module.__default.Upward#canCall| (+ |n#0@@1| 1)) (= (_module.__default.Upward ($LS $ly@@9) |n#0@@1|) (|#_module.Stream.Cons| ($Box intType (int_2_U |n#0@@1|)) (_module.__default.Upward $ly@@9 (+ |n#0@@1| 1))))))
 :qid |CoinductiveProofsdfy.6:16|
 :skolemid |535|
 :pattern ( (_module.__default.Upward ($LS $ly@@9) |n#0@@1|))
))))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@4 T@U) (_module.Stream$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$T@@5) $h@@0))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@4) (Tclass._module.Stream _module.Stream$T@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |949|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@4) (Tclass._module.Stream _module.Stream$T@@5) $h@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) (|_k#0@@5| T@U) (|s#0@@7| T@U) ) (!  (=> (or (|_module.__default.Pos_h#canCall| |_k#0@@5| |s#0@@7|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream TInt)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (and (_module.Stream.Cons_q |s#0@@7|) (=> (< 0 (U_2_int ($Unbox intType (_module.Stream.head |s#0@@7|)))) (and (_module.Stream.Cons_q |s#0@@7|) (|_module.__default.Pos_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@7|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (and (< 0 (U_2_int ($Unbox intType (_module.Stream.head |s#0@@7|)))) (_module.__default.Pos_h $ly@@10 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@7|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@5|) (|_module.__default.Pos_h#canCall| |_k'#0| |s#0@@7|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |552|
 :pattern ( (_module.__default.Pos_h $ly@@10 |_k'#0| |s#0@@7|))
))))) (= (_module.__default.Pos_h ($LS $ly@@10) |_k#0@@5| |s#0@@7|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (and (< 0 (U_2_int ($Unbox intType (_module.Stream.head |s#0@@7|)))) (_module.__default.Pos_h $ly@@10 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (_module.Stream.tail |s#0@@7|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@5|) (_module.__default.Pos_h $ly@@10 |_k'#0@@0| |s#0@@7|))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |551|
 :pattern ( (_module.__default.Pos_h $ly@@10 |_k'#0@@0| |s#0@@7|))
)))))))
 :qid |CoinductiveProofsdfy.11:20|
 :skolemid |553|
 :pattern ( (_module.__default.Pos_h ($LS $ly@@10) |_k#0@@5| |s#0@@7|))
))))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((|_module.Stream$T#l@@5| T@U) (|_module.Stream$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.Stream$T#l@@6| T@U) (|_module.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |955|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
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
(assert (forall ((|_module.Stream$T#l@@7| T@U) (|_module.Stream$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| _module.Stream$T@@6 $h@@1) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@1))))
 :qid |unknown.0:0|
 :skolemid |947|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@1))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |n#0@@2| () Int)
(declare-fun $LZ () T@U)
(declare-fun |##n#2@0| () Int)
(declare-fun |n##0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##n#3@0| () Int)
(declare-fun |##s#1@0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Outside__Method__Caller__PosLemma)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsAlloc intType (int_2_U |n#0@@2|) TInt $Heap) (|_module.__default.Upward#canCall| |n#0@@2|)) (and (_module.Stream.Cons_q (_module.__default.Upward ($LS $LZ) |n#0@@2|)) (_module.Stream.Cons_q (_module.__default.Upward ($LS $LZ) |n#0@@2|)))) (=> (and (and (and (= |##n#2@0| (+ |n#0@@2| 1)) ($IsAlloc intType (int_2_U |##n#2@0|) TInt $Heap)) (and (|_module.__default.Upward#canCall| (+ |n#0@@2| 1)) (_module.Stream.Cons_q (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))))) (and (and (|$IsA#_module.Stream| (_module.Stream.tail (_module.__default.Upward ($LS $LZ) |n#0@@2|))) (|$IsA#_module.Stream| (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1)))) (and (and (|_module.__default.Upward#canCall| |n#0@@2|) (_module.Stream.Cons_q (_module.__default.Upward ($LS $LZ) |n#0@@2|))) (|_module.__default.Upward#canCall| (+ |n#0@@2| 1))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.Upward ($LS ($LS $LZ)) |n#0@@2|)) (_module.__default.Upward ($LS ($LS $LZ)) (+ |n#0@@2| 1)))) (=> (and (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.Upward ($LS $LZ) |n#0@@2|)) (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))) (= |n##0@0| (+ |n#0@@2| 1))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (<= (LitInt 1) |n##0@0|)) (=> (<= (LitInt 1) |n##0@0|) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (|_module.__default.Upward#canCall| |n##0@0|) (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) |n##0@0|)))) (and (and (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) |n##0@0|)) (and (_module.__default.Pos ($LS $LZ) (_module.__default.Upward ($LS $LZ) |n##0@0|)) (and (< 0 (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.Upward ($LS $LZ) |n##0@0|))))) (_module.__default.Pos ($LS $LZ) (_module.Stream.tail (_module.__default.Upward ($LS $LZ) |n##0@0|)))))) (and (= $Heap $Heap@0) (= |##n#3@0| (+ |n#0@@2| 1))))) (and (and (and ($IsAlloc intType (int_2_U |##n#3@0|) TInt $Heap@0) (|_module.__default.Upward#canCall| (+ |n#0@@2| 1))) (and (_module.Stream.Cons_q (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))) (= |##s#1@0| (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))))) (and (and ($IsAlloc DatatypeTypeType |##s#1@0| (Tclass._module.Stream TInt) $Heap@0) (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1)))) (and (|_module.__default.Upward#canCall| (+ |n#0@@2| 1)) (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))) (or (_module.__default.Pos ($LS $LZ) (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))) (< 0 (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.Upward ($LS ($LS $LZ)) (+ |n#0@@2| 1))))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))) (or (_module.__default.Pos ($LS $LZ) (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))) (_module.__default.Pos ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.Upward ($LS ($LS $LZ)) (+ |n#0@@2| 1))))))) (=> (_module.__default.Pos ($LS $LZ) (_module.__default.Upward ($LS $LZ) (+ |n#0@@2| 1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) |n#0@@2|)) (or (_module.__default.Pos ($LS $LZ) (_module.__default.Upward ($LS $LZ) |n#0@@2|)) (< 0 (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.Upward ($LS ($LS $LZ)) |n#0@@2|)))))))) (=> (=> (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) |n#0@@2|)) (or (_module.__default.Pos ($LS $LZ) (_module.__default.Upward ($LS $LZ) |n#0@@2|)) (< 0 (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.Upward ($LS ($LS $LZ)) |n#0@@2|))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.Pos#canCall| (_module.__default.Upward ($LS $LZ) |n#0@@2|)) (or (_module.__default.Pos ($LS $LZ) (_module.__default.Upward ($LS $LZ) |n#0@@2|)) (_module.__default.Pos ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.Upward ($LS ($LS $LZ)) |n#0@@2|)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 3 $FunctionContextHeight)) (and (<= (LitInt 1) |n#0@@2|) (= (ControlFlow 0 8) 2))) anon0_correct)))
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
