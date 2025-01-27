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
(declare-fun _module.__default.X (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.X_h (T@U T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.X_h#canCall| (T@U T@U T@U) Bool)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.__default.X#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.FullX (T@U T@U) Bool)
(declare-fun |_module.__default.FullX#canCall| (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Stream |##_module.Stream.Cons| tytagFamily$Stream)
)
(assert (forall ((_module._default.X$_T0 T@U) ($ly T@U) (|s#0| T@U) ) (! (= (_module.__default.X _module._default.X$_T0 ($LS $ly) |s#0|) (_module.__default.X _module._default.X$_T0 $ly |s#0|))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.__default.X _module._default.X$_T0 ($LS $ly) |s#0|))
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
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Stream$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)) (_module.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |953|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$T)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.X#$_T0| T@U) ($ly@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@0| (Tclass._module.Stream |_module._default.X#$_T0|)) (_module.__default.X |_module._default.X#$_T0| ($LS $ly@@0) |s#0@@0|)) (forall ((|_k#0| T@U) ) (! (_module.__default.X_h |_module._default.X#$_T0| ($LS $ly@@0) |_k#0| |s#0@@0|)
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |612|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0| ($LS $ly@@0) |_k#0| |s#0@@0|))
)))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( (_module.__default.X |_module._default.X#$_T0| ($LS $ly@@0) |s#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.X#$_T0@@0| T@U) ($ly@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@1| (Tclass._module.Stream |_module._default.X#$_T0@@0|)) (forall ((|_k#0@@0| T@U) ) (! (_module.__default.X_h |_module._default.X#$_T0@@0| ($LS $ly@@1) |_k#0@@0| |s#0@@1|)
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |612|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@0| ($LS $ly@@1) |_k#0@@0| |s#0@@1|))
))) (_module.__default.X |_module._default.X#$_T0@@0| ($LS $ly@@1) |s#0@@1|))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.__default.X |_module._default.X#$_T0@@0| ($LS $ly@@1) |s#0@@1|))
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
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.X#$_T0@@1| T@U) ($ly@@2 T@U) (|_k#0@@1| T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@1| (Lit BoxType |_k#0@@1|) |s#0@@2|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream |_module._default.X#$_T0@@1|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@1| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |s#0@@2|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (_module.__default.X_h |_module._default.X#$_T0@@1| ($LS $ly@@2) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |s#0@@2|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@1|) (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@1| |_k'#1| |s#0@@2|))
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |625|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@1| ($LS $ly@@2) |_k'#1| |s#0@@2|))
))))) (= (_module.__default.X_h |_module._default.X#$_T0@@1| ($LS $ly@@2) (Lit BoxType |_k#0@@1|) |s#0@@2|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (_module.__default.X_h |_module._default.X#$_T0@@1| ($LS $ly@@2) (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) |s#0@@2|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@1|) (_module.__default.X_h |_module._default.X#$_T0@@1| ($LS $ly@@2) |_k'#1@@0| |s#0@@2|))
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |624|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@1| ($LS $ly@@2) |_k'#1@@0| |s#0@@2|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |626|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@1| ($LS $ly@@2) (Lit BoxType |_k#0@@1|) |s#0@@2|))
))))
(assert (forall ((_module.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#2#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |946|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |943|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.X$_T0@@0 T@U) ($ly@@3 T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.X#canCall| _module._default.X$_T0@@0 |s#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream _module._default.X$_T0@@0)))) (and (|_module.__default.X#canCall| _module._default.X$_T0@@0 |s#0@@3|) (= (_module.__default.X _module._default.X$_T0@@0 ($LS $ly@@3) |s#0@@3|) (_module.__default.X _module._default.X$_T0@@0 $ly@@3 |s#0@@3|))))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( (_module.__default.X _module._default.X$_T0@@0 ($LS $ly@@3) |s#0@@3|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.FullX$_T0 T@U) (|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.FullX#canCall| _module._default.FullX$_T0 (Lit DatatypeTypeType |s#0@@4|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream _module._default.FullX$_T0)))) (and (|_module.__default.X#canCall| _module._default.FullX$_T0 (Lit DatatypeTypeType |s#0@@4|)) (= (_module.__default.FullX _module._default.FullX$_T0 (Lit DatatypeTypeType |s#0@@4|)) (U_2_bool (Lit boolType (bool_2_U (_module.__default.X _module._default.FullX$_T0 ($LS $LZ) (Lit DatatypeTypeType |s#0@@4|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |649|
 :pattern ( (_module.__default.FullX _module._default.FullX$_T0 (Lit DatatypeTypeType |s#0@@4|)))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Cons_q d@@2) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@2 (|#_module.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |CoinductiveProofsdfy.4:29|
 :skolemid |944|
)))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( (_module.Stream.Cons_q d@@2))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.X#$_T0@@2| T@U) ($ly@@4 T@U) (|_k#0@@2| T@U) (|s#0@@5| T@U) ) (!  (=> (or (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@2| (Lit BoxType |_k#0@@2|) (Lit DatatypeTypeType |s#0@@5|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@5| (Tclass._module.Stream |_module._default.X#$_T0@@2|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@2| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (Lit DatatypeTypeType |s#0@@5|))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (_module.__default.X_h |_module._default.X#$_T0@@2| ($LS $ly@@4) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (Lit DatatypeTypeType |s#0@@5|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@2|) (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@2| |_k'#2| |s#0@@5|))
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |628|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@2| ($LS $ly@@4) |_k'#2| |s#0@@5|))
))))) (= (_module.__default.X_h |_module._default.X#$_T0@@2| ($LS $ly@@4) (Lit BoxType |_k#0@@2|) (Lit DatatypeTypeType |s#0@@5|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (_module.__default.X_h |_module._default.X#$_T0@@2| ($LS $ly@@4) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (Lit DatatypeTypeType |s#0@@5|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@2|) (_module.__default.X_h |_module._default.X#$_T0@@2| ($LS $ly@@4) |_k'#2@@0| |s#0@@5|))
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |627|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@2| ($LS $ly@@4) |_k'#2@@0| |s#0@@5|))
)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |629|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@2| ($LS $ly@@4) (Lit BoxType |_k#0@@2|) (Lit DatatypeTypeType |s#0@@5|)))
))))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.X#$_T0@@3| T@U) ($ly@@5 T@U) (|s#0@@6| T@U) (|_k#0@@3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream |_module._default.X#$_T0@@3|)) (= |_k#0@@3| (|ORD#FromNat| 0))) (_module.__default.X_h |_module._default.X#$_T0@@3| $ly@@5 |_k#0@@3| |s#0@@6|))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@3| $ly@@5 |_k#0@@3| |s#0@@6|))
))))
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
(assert (forall ((|_module._default.X#$_T0@@4| T@U) ($ly@@6 T@U) (|_k#0@@4| T@U) (|s#0@@7| T@U) ) (! (= (_module.__default.X_h |_module._default.X#$_T0@@4| ($LS $ly@@6) |_k#0@@4| |s#0@@7|) (_module.__default.X_h |_module._default.X#$_T0@@4| $ly@@6 |_k#0@@4| |s#0@@7|))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@4| ($LS $ly@@6) |_k#0@@4| |s#0@@7|))
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
(assert (forall ((_module.Stream$T@@4 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx (Tclass._module.Stream _module.Stream$T@@4)))
)))
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
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|_module._default.X#$_T0@@5| T@U) ($ly@@7 T@U) (|_k#0@@5| T@U) (|s#0@@8| T@U) ) (!  (=> (or (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@5| |_k#0@@5| |s#0@@8|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@8| (Tclass._module.Stream |_module._default.X#$_T0@@5|)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@5| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s#0@@8|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (_module.__default.X_h |_module._default.X#$_T0@@5| $ly@@7 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s#0@@8|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@5|) (|_module.__default.X_h#canCall| |_module._default.X#$_T0@@5| |_k'#0| |s#0@@8|))
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |622|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@5| $ly@@7 |_k'#0| |s#0@@8|))
))))) (= (_module.__default.X_h |_module._default.X#$_T0@@5| ($LS $ly@@7) |_k#0@@5| |s#0@@8|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (_module.__default.X_h |_module._default.X#$_T0@@5| $ly@@7 (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s#0@@8|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@5|) (_module.__default.X_h |_module._default.X#$_T0@@5| $ly@@7 |_k'#0@@0| |s#0@@8|))
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |621|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@5| $ly@@7 |_k'#0@@0| |s#0@@8|))
)))))))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( (_module.__default.X_h |_module._default.X#$_T0@@5| ($LS $ly@@7) |_k#0@@5| |s#0@@8|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module._default.FullX$_T0@@0 T@U) (|s#0@@9| T@U) ) (!  (=> (or (|_module.__default.FullX#canCall| _module._default.FullX$_T0@@0 |s#0@@9|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@9| (Tclass._module.Stream _module._default.FullX$_T0@@0)))) (and (|_module.__default.X#canCall| _module._default.FullX$_T0@@0 |s#0@@9|) (= (_module.__default.FullX _module._default.FullX$_T0@@0 |s#0@@9|) (_module.__default.X _module._default.FullX$_T0@@0 ($LS $LZ) |s#0@@9|))))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( (_module.__default.FullX _module._default.FullX$_T0@@0 |s#0@@9|))
))))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| _module.Stream$T@@6 $h@@1) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@1))))
 :qid |unknown.0:0|
 :skolemid |947|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_module._default.AlwaysLemma_X2#$_T0| () T@U)
(declare-fun |_k#0@@6| () T@U)
(declare-fun |s#1| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |_k##0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.AlwaysLemma__X2_h)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon6_Else_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.X_h#canCall| |_module._default.AlwaysLemma_X2#$_T0| |_k#0@@6| |s#1|) (or (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |_k#0@@6| |s#1|) (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |s#1|))))) (=> (=> (|_module.__default.X_h#canCall| |_module._default.AlwaysLemma_X2#$_T0| |_k#0@@6| |s#1|) (or (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |_k#0@@6| |s#1|) (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) |s#1|)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.X_h#canCall| |_module._default.AlwaysLemma_X2#$_T0| |_k#0@@6| |s#1|) (or (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |_k#0@@6| |s#1|) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@6|) (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS ($LS $LZ)) |_k'#1@@1| |s#1|))
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |654|
 :pattern ( (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS ($LS $LZ)) |_k'#1@@1| |s#1|))
))))))))))
(let ((anon6_Then_correct  (=> ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.AlwaysLemma_X2#$_T0|) $Heap@0) (=> (and (|_module.__default.FullX#canCall| |_module._default.AlwaysLemma_X2#$_T0| |s#1|) (|_module.__default.FullX#canCall| |_module._default.AlwaysLemma_X2#$_T0| |s#1|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> (|_module.__default.FullX#canCall| |_module._default.AlwaysLemma_X2#$_T0| |s#1|) (or (_module.__default.FullX |_module._default.AlwaysLemma_X2#$_T0| |s#1|) (=> (|_module.__default.X#canCall| |_module._default.AlwaysLemma_X2#$_T0| |s#1|) (or (_module.__default.X |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |s#1|) (_module.__default.X |_module._default.AlwaysLemma_X2#$_T0| ($LS ($LS $LZ)) |s#1|)))))) (=> (and (_module.__default.FullX |_module._default.AlwaysLemma_X2#$_T0| |s#1|) (= (ControlFlow 0 5) 2)) anon6_Else_correct))))))
(let ((anon5_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@6|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@6|)) (=> (= |_k##0@0| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.__default.X_h#canCall| |_module._default.AlwaysLemma_X2#$_T0| |_k##0@0| |s#1|)) (and (and (|_module.__default.X_h#canCall| |_module._default.AlwaysLemma_X2#$_T0| |_k##0@0| |s#1|) (and (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |_k##0@0| |s#1|) (and (=> (< 0 (|ORD#Offset| |_k##0@0|)) (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)) |s#1|)) (=> (= (LitInt 0) (|ORD#Offset| |_k##0@0|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@1| |_k##0@0|) (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |_k'#0@@1| |s#1|))
 :qid |CoinductiveProofsdfy.71:20|
 :skolemid |653|
 :pattern ( (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |_k'#0@@1| |s#1|))
)))))) (= $Heap $Heap@0))) (and (=> (= (ControlFlow 0 7) 5) anon6_Then_correct) (=> (= (ControlFlow 0 7) 2) anon6_Else_correct)))))))))))
(let ((anon5_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@6|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap $Heap@1)) (and (forall ((|_k'#2@@1| T@U) (|s#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#2| (Tclass._module.Stream |_module._default.AlwaysLemma_X2#$_T0|)) (|ORD#Less| |_k'#2@@1| |_k#0@@6|)) (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |_k'#2@@1| |s#2|))
 :qid |CoinductiveProofsdfy.89:35|
 :skolemid |658|
 :pattern ( (_module.__default.X_h |_module._default.AlwaysLemma_X2#$_T0| ($LS $LZ) |_k'#2@@1| |s#2|))
)) (= (ControlFlow 0 4) 2))) anon6_Else_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 10) 7) anon5_Then_correct) (=> (= (ControlFlow 0 10) 4) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.AlwaysLemma_X2#$_T0|)) ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.AlwaysLemma_X2#$_T0|) $Heap)) (|$IsA#_module.Stream| |s#1|)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 11) 10))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
