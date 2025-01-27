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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.SplitLeft (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.SplitLeft#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun _module.Stream.Cons_q (T@U) Bool)
(declare-fun |_module.__default.SplitRight#canCall| (T@U T@U) Bool)
(declare-fun _module.Stream.tl (T@U) T@U)
(declare-fun |#_module.Stream.Cons| (T@U T@U) T@U)
(declare-fun _module.Stream.hd (T@U) T@U)
(declare-fun _module.__default.SplitRight (T@U T@U T@U) T@U)
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Stream| (T@U) Bool)
(declare-fun _module.__default.merge (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.merge#canCall| (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.SplitLeft$_T0 T@U) ($ly T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.SplitLeft#canCall| _module._default.SplitLeft$_T0 |s#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| (Tclass._module.Stream _module._default.SplitLeft$_T0)))) (and (and (_module.Stream.Cons_q |s#0|) (and (_module.Stream.Cons_q |s#0|) (|_module.__default.SplitRight#canCall| _module._default.SplitLeft$_T0 (_module.Stream.tl |s#0|)))) (= (_module.__default.SplitLeft _module._default.SplitLeft$_T0 ($LS $ly) |s#0|) (|#_module.Stream.Cons| (_module.Stream.hd |s#0|) (_module.__default.SplitRight _module._default.SplitLeft$_T0 $ly (_module.Stream.tl |s#0|))))))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( (_module.__default.SplitLeft _module._default.SplitLeft$_T0 ($LS $ly) |s#0|))
))))
(assert (forall ((|_module.Stream$A#l| T@U) (|_module.Stream$A#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0 (Tclass._module.Stream |_module.Stream$A#l|)) ($Is DatatypeTypeType d1 (Tclass._module.Stream |_module.Stream$A#r|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$A#l| |_module.Stream$A#r| k ($LS ly) d0 d1)  (and (=> (< 0 (|ORD#Offset| k)) (and (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (=> (and (_module.Stream.Cons_q d0) (_module.Stream.Cons_q d1)) (and (= (_module.Stream.hd d0) (_module.Stream.hd d1)) (|$PrefixEq#_module.Stream| |_module.Stream$A#l| |_module.Stream$A#r| (|ORD#Minus| k (|ORD#FromNat| 1)) ly (_module.Stream.tl d0) (_module.Stream.tl d1)))))) (=> (and (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k) 0)) (|$Eq#_module.Stream| |_module.Stream$A#l| |_module.Stream$A#r| ly d0 d1)))))
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$A#l| |_module.Stream$A#r| k ($LS ly) d0 d1))
)))
(assert (forall ((|_module.Stream$A#l@@0| T@U) (|_module.Stream$A#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (or (not (= k@@0 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@0| |_module.Stream$A#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@0| |_module.Stream$A#r@@0| k@@0 ly@@0 d0@@0 d1@@0)))
 :qid |unknown.0:0|
 :skolemid |890|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@0| |_module.Stream$A#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Stream| d) (_module.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |884|
 :pattern ( (|$IsA#_module.Stream| d))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall ((_module._default.SplitLeft$_T0@@0 T@U) ($ly@@0 T@U) (|s#0@@0| T@U) ) (! (= (_module.__default.SplitLeft _module._default.SplitLeft$_T0@@0 ($LS $ly@@0) |s#0@@0|) (_module.__default.SplitLeft _module._default.SplitLeft$_T0@@0 $ly@@0 |s#0@@0|))
 :qid |unknown.0:0|
 :skolemid |848|
 :pattern ( (_module.__default.SplitLeft _module._default.SplitLeft$_T0@@0 ($LS $ly@@0) |s#0@@0|))
)))
(assert (forall ((_module._default.SplitRight$_T0 T@U) ($ly@@1 T@U) (|s#0@@1| T@U) ) (! (= (_module.__default.SplitRight _module._default.SplitRight$_T0 ($LS $ly@@1) |s#0@@1|) (_module.__default.SplitRight _module._default.SplitRight$_T0 $ly@@1 |s#0@@1|))
 :qid |unknown.0:0|
 :skolemid |855|
 :pattern ( (_module.__default.SplitRight _module._default.SplitRight$_T0 ($LS $ly@@1) |s#0@@1|))
)))
(assert (forall ((_module.Stream$A T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$A)) (_module.Stream.Cons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( (_module.Stream.Cons_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Stream _module.Stream$A)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.merge$_T0 T@U) ($ly@@2 T@U) (|s#0@@2| T@U) (|t#0| T@U) ) (!  (=> (or (|_module.__default.merge#canCall| _module._default.merge$_T0 |s#0@@2| |t#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@2| (Tclass._module.Stream _module._default.merge$_T0)) ($Is DatatypeTypeType |t#0| (Tclass._module.Stream _module._default.merge$_T0))))) (and (and (_module.Stream.Cons_q |s#0@@2|) (and (_module.Stream.Cons_q |s#0@@2|) (|_module.__default.merge#canCall| _module._default.merge$_T0 |t#0| (_module.Stream.tl |s#0@@2|)))) (= (_module.__default.merge _module._default.merge$_T0 ($LS $ly@@2) |s#0@@2| |t#0|) (|#_module.Stream.Cons| (_module.Stream.hd |s#0@@2|) (_module.__default.merge _module._default.merge$_T0 $ly@@2 |t#0| (_module.Stream.tl |s#0@@2|))))))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( (_module.__default.merge _module._default.merge$_T0 ($LS $ly@@2) |s#0@@2| |t#0|))
))))
(assert (forall ((|_module.Stream$A#l@@1| T@U) (|_module.Stream$A#r@@1| T@U) (k@@1 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (!  (=> (= d0@@1 d1@@1) (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@1| |_module.Stream$A#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |896|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@1| |_module.Stream$A#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
)))
(assert (forall ((|_module.Stream$A#l@@2| T@U) (|_module.Stream$A#r@@2| T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$A#l@@2| |_module.Stream$A#r@@2| ($LS ly@@2) d0@@2 d1@@2) (= d0@@2 d1@@2))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$A#l@@2| |_module.Stream$A#r@@2| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.SplitRight$_T0@@0 T@U) ($ly@@3 T@U) (|s#0@@3| T@U) ) (!  (=> (or (|_module.__default.SplitRight#canCall| _module._default.SplitRight$_T0@@0 |s#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@3| (Tclass._module.Stream _module._default.SplitRight$_T0@@0)))) (and (and (_module.Stream.Cons_q |s#0@@3|) (|_module.__default.SplitLeft#canCall| _module._default.SplitRight$_T0@@0 (_module.Stream.tl |s#0@@3|))) (= (_module.__default.SplitRight _module._default.SplitRight$_T0@@0 ($LS $ly@@3) |s#0@@3|) (_module.__default.SplitLeft _module._default.SplitRight$_T0@@0 $ly@@3 (_module.Stream.tl |s#0@@3|)))))
 :qid |unknown.0:0|
 :skolemid |860|
 :pattern ( (_module.__default.SplitRight _module._default.SplitRight$_T0@@0 ($LS $ly@@3) |s#0@@3|))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.Stream$A@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$A@@0))  (and ($IsBox |a#2#0#0| _module.Stream$A@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.Stream _module.Stream$A@@0))))
 :qid |unknown.0:0|
 :skolemid |878|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$A@@0)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Stream.Cons_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |875|
 :pattern ( (_module.Stream.Cons_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Stream.Cons_q d@@2) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@2 (|#_module.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |KozenSilvadfy.15:29|
 :skolemid |876|
)))
 :qid |unknown.0:0|
 :skolemid |877|
 :pattern ( (_module.Stream.Cons_q d@@2))
)))
(assert (forall ((|_module.Stream$A#l@@3| T@U) (|_module.Stream$A#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$A#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$A#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$A#l@@3| |_module.Stream$A#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (and (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (=> (and (_module.Stream.Cons_q d0@@3) (_module.Stream.Cons_q d1@@3)) (and (= (_module.Stream.hd d0@@3) (_module.Stream.hd d1@@3)) (|$Eq#_module.Stream| |_module.Stream$A#l@@3| |_module.Stream$A#r@@3| ly@@3 (_module.Stream.tl d0@@3) (_module.Stream.tl d1@@3)))))))
 :qid |unknown.0:0|
 :skolemid |886|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$A#l@@3| |_module.Stream$A#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$A@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$A@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$A@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.Stream _module.Stream$A@@1))
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
 :qid |KozenSilvadfy.15:29|
 :skolemid |874|
 :pattern ( (|#_module.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.Stream.hd (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |KozenSilvadfy.15:29|
 :skolemid |882|
 :pattern ( (|#_module.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.Stream.tl (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |KozenSilvadfy.15:29|
 :skolemid |883|
 :pattern ( (|#_module.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.merge$_T0@@0 T@U) ($ly@@4 T@U) (|s#0@@4| T@U) (|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.merge#canCall| _module._default.merge$_T0@@0 |s#0@@4| |t#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@4| (Tclass._module.Stream _module._default.merge$_T0@@0)) ($Is DatatypeTypeType |t#0@@0| (Tclass._module.Stream _module._default.merge$_T0@@0))))) ($Is DatatypeTypeType (_module.__default.merge _module._default.merge$_T0@@0 $ly@@4 |s#0@@4| |t#0@@0|) (Tclass._module.Stream _module._default.merge$_T0@@0)))
 :qid |unknown.0:0|
 :skolemid |843|
 :pattern ( (_module.__default.merge _module._default.merge$_T0@@0 $ly@@4 |s#0@@4| |t#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.SplitLeft$_T0@@1 T@U) ($ly@@5 T@U) (|s#0@@5| T@U) ) (!  (=> (and (or (|_module.__default.SplitLeft#canCall| _module._default.SplitLeft$_T0@@1 |s#0@@5|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@5| (Tclass._module.Stream _module._default.SplitLeft$_T0@@1)) ($IsAlloc DatatypeTypeType |s#0@@5| (Tclass._module.Stream _module._default.SplitLeft$_T0@@1) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.__default.SplitLeft _module._default.SplitLeft$_T0@@1 $ly@@5 |s#0@@5|) (Tclass._module.Stream _module._default.SplitLeft$_T0@@1) $Heap))
 :qid |KozenSilvadfy.279:16|
 :skolemid |851|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.SplitLeft _module._default.SplitLeft$_T0@@1 $ly@@5 |s#0@@5|) (Tclass._module.Stream _module._default.SplitLeft$_T0@@1) $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.SplitRight$_T0@@1 T@U) ($ly@@6 T@U) (|s#0@@6| T@U) ) (!  (=> (and (or (|_module.__default.SplitRight#canCall| _module._default.SplitRight$_T0@@1 |s#0@@6|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |s#0@@6| (Tclass._module.Stream _module._default.SplitRight$_T0@@1)) ($IsAlloc DatatypeTypeType |s#0@@6| (Tclass._module.Stream _module._default.SplitRight$_T0@@1) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.__default.SplitRight _module._default.SplitRight$_T0@@1 $ly@@6 |s#0@@6|) (Tclass._module.Stream _module._default.SplitRight$_T0@@1) $Heap@@0))
 :qid |KozenSilvadfy.283:16|
 :skolemid |858|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.SplitRight _module._default.SplitRight$_T0@@1 $ly@@6 |s#0@@6|) (Tclass._module.Stream _module._default.SplitRight$_T0@@1) $Heap@@0))
))))
(assert (forall ((_module.Stream$A@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$A@@2)) _module.Stream$A@@2)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.Stream _module.Stream$A@@2))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.SplitLeft$_T0@@2 T@U) ($ly@@7 T@U) (|s#0@@7| T@U) ) (!  (=> (or (|_module.__default.SplitLeft#canCall| _module._default.SplitLeft$_T0@@2 |s#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@7| (Tclass._module.Stream _module._default.SplitLeft$_T0@@2)))) ($Is DatatypeTypeType (_module.__default.SplitLeft _module._default.SplitLeft$_T0@@2 $ly@@7 |s#0@@7|) (Tclass._module.Stream _module._default.SplitLeft$_T0@@2)))
 :qid |unknown.0:0|
 :skolemid |850|
 :pattern ( (_module.__default.SplitLeft _module._default.SplitLeft$_T0@@2 $ly@@7 |s#0@@7|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.SplitRight$_T0@@2 T@U) ($ly@@8 T@U) (|s#0@@8| T@U) ) (!  (=> (or (|_module.__default.SplitRight#canCall| _module._default.SplitRight$_T0@@2 |s#0@@8|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@8| (Tclass._module.Stream _module._default.SplitRight$_T0@@2)))) ($Is DatatypeTypeType (_module.__default.SplitRight _module._default.SplitRight$_T0@@2 $ly@@8 |s#0@@8|) (Tclass._module.Stream _module._default.SplitRight$_T0@@2)))
 :qid |unknown.0:0|
 :skolemid |857|
 :pattern ( (_module.__default.SplitRight _module._default.SplitRight$_T0@@2 $ly@@8 |s#0@@8|))
))))
(assert (forall ((|_module.Stream$A#l@@4| T@U) (|_module.Stream$A#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$A#l@@4| |_module.Stream$A#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@4| |_module.Stream$A#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |891|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@4| |_module.Stream$A#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |892|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$A#l@@4| |_module.Stream$A#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall ((d@@3 T@U) (_module.Stream$A@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.Cons_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$A@@3) $h))) ($IsAllocBox (_module.Stream.hd d@@3) _module.Stream$A@@3 $h))
 :qid |unknown.0:0|
 :skolemid |880|
 :pattern ( ($IsAllocBox (_module.Stream.hd d@@3) _module.Stream$A@@3 $h))
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
 :skolemid |1087|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.merge$_T0@@1 T@U) ($ly@@9 T@U) (|s#0@@9| T@U) (|t#0@@1| T@U) ) (!  (=> (and (or (|_module.__default.merge#canCall| _module._default.merge$_T0@@1 |s#0@@9| |t#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |s#0@@9| (Tclass._module.Stream _module._default.merge$_T0@@1)) ($IsAlloc DatatypeTypeType |s#0@@9| (Tclass._module.Stream _module._default.merge$_T0@@1) $Heap@@1)) (and ($Is DatatypeTypeType |t#0@@1| (Tclass._module.Stream _module._default.merge$_T0@@1)) ($IsAlloc DatatypeTypeType |t#0@@1| (Tclass._module.Stream _module._default.merge$_T0@@1) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (_module.__default.merge _module._default.merge$_T0@@1 $ly@@9 |s#0@@9| |t#0@@1|) (Tclass._module.Stream _module._default.merge$_T0@@1) $Heap@@1))
 :qid |KozenSilvadfy.262:16|
 :skolemid |844|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.__default.merge _module._default.merge$_T0@@1 $ly@@9 |s#0@@9| |t#0@@1|) (Tclass._module.Stream _module._default.merge$_T0@@1) $Heap@@1))
))))
(assert (forall ((_module._default.merge$_T0@@2 T@U) ($ly@@10 T@U) (|s#0@@10| T@U) (|t#0@@2| T@U) ) (! (= (_module.__default.merge _module._default.merge$_T0@@2 ($LS $ly@@10) |s#0@@10| |t#0@@2|) (_module.__default.merge _module._default.merge$_T0@@2 $ly@@10 |s#0@@10| |t#0@@2|))
 :qid |unknown.0:0|
 :skolemid |841|
 :pattern ( (_module.__default.merge _module._default.merge$_T0@@2 ($LS $ly@@10) |s#0@@10| |t#0@@2|))
)))
(assert (forall ((_module.Stream$A@@4 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Stream _module.Stream$A@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Stream _module.Stream$A@@4))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx (Tclass._module.Stream _module.Stream$A@@4)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@4 T@U) (_module.Stream$A@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Stream _module.Stream$A@@5) $h@@0))) ($IsAlloc DatatypeTypeType (_module.Stream.tl d@@4) (Tclass._module.Stream _module.Stream$A@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |881|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tl d@@4) (Tclass._module.Stream _module.Stream$A@@5) $h@@0))
)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((|_module.Stream$A#l@@5| T@U) (|_module.Stream$A#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@5| |_module.Stream$A#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@5| |_module.Stream$A#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |895|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@5| |_module.Stream$A#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@5| |_module.Stream$A#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.Stream$A#l@@6| T@U) (|_module.Stream$A#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$A#l@@6| |_module.Stream$A#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$A#l@@6| |_module.Stream$A#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |887|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$A#l@@6| |_module.Stream$A#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|_module.Stream$A#l@@7| T@U) (|_module.Stream$A#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@7| |_module.Stream$A#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |893|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$A#l@@7| |_module.Stream$A#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$A#l@@7| |_module.Stream$A#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$A#l@@7| |_module.Stream$A#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((_module.Stream$A@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$A@@6) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| _module.Stream$A@@6 $h@@1) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$A@@6) $h@@1))))
 :qid |unknown.0:0|
 :skolemid |879|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$A@@6) $h@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#1| () T@U)
(declare-fun |##s#12@0| () T@U)
(declare-fun |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun |##s#11@0| () T@U)
(declare-fun |##s#13@0| () T@U)
(declare-fun |##t#3@0| () T@U)
(declare-fun |_k#0| () T@U)
(declare-fun |_k##0@0| () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##s#14@0| () T@U)
(declare-fun |##t#4@0| () T@U)
(declare-fun |##s#18@0| () T@U)
(declare-fun |##s#17@0| () T@U)
(declare-fun |##s#19@0| () T@U)
(declare-fun |##t#5@0| () T@U)
(declare-fun |##s#20@0| () T@U)
(declare-fun |##t#6@0| () T@U)
(declare-fun |##s#23@0| () T@U)
(declare-fun |##t#7@0| () T@U)
(declare-fun |##s#4@0| () T@U)
(declare-fun |##t#1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@2 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Theorem7__Merge__Is__Left__Inverse__Of__Split__Equal_h)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon19_Then_correct  (=> (and (and (and (_module.Stream.Cons_q |s#1|) (= |##s#12@0| (_module.Stream.tl |s#1|))) (and ($IsAlloc DatatypeTypeType |##s#12@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.Stream.tl |s#1|)))) (and (and (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) (= |##s#11@0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)))) (and ($IsAlloc DatatypeTypeType |##s#11@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (_module.Stream.Cons_q |s#1|)))) (=> (and (and (and (and (= |##s#13@0| (_module.Stream.tl |s#1|)) ($IsAlloc DatatypeTypeType |##s#13@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0)) (and (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.Stream.tl |s#1|)) (_module.Stream.Cons_q (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))))) (and (and (= |##t#3@0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) ($IsAlloc DatatypeTypeType |##t#3@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0)) (and (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))))))) (and (and (and (_module.Stream.Cons_q |s#1|) (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.Stream.tl |s#1|))) (and (_module.Stream.Cons_q |s#1|) (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.Stream.tl |s#1|)))) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))))) (and (=> (= (ControlFlow 0 16) (- 0 21)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 16) (- 0 20)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0|)) (=> (and (= |_k##0@0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1))) (_module.Stream.Cons_q |s#1|)) (=> (and (and (_module.Stream.Cons_q |s#1|) (= |s##0@0| (_module.Stream.tl |s#1|))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (=> (and (and (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s##0@0|) (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s##0@0|)) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s##0@0|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s##0@0|))) (and (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_k##0@0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s##0@0|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s##0@0|)) |s##0@0|) (= $Heap@0 $Heap@2))) (and (=> (= (ControlFlow 0 16) (- 0 19)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0|)) (=> (and (_module.Stream.Cons_q |s#1|) (_module.Stream.Cons_q |s#1|)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) (_module.Stream.tl |s#1|)) (=> (< 0 (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)))) (=> (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)))) (and (_module.Stream.Cons_q (_module.Stream.tl |s#1|)) (and (= (_module.Stream.hd (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)))) (_module.Stream.hd (_module.Stream.tl |s#1|))) (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (|ORD#Minus| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tl (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)))) (_module.Stream.tl (_module.Stream.tl |s#1|))))))))) (=> (= (ControlFlow 0 16) (- 0 15)) (or (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) (_module.Stream.tl |s#1|)) (or (=> (< 0 (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)))) (=> (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)))) (and (_module.Stream.Cons_q (_module.Stream.tl |s#1|)) (and (= (_module.Stream.hd (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)))) (_module.Stream.hd (_module.Stream.tl |s#1|))) (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (|ORD#Minus| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tl (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)))) (_module.Stream.tl (_module.Stream.tl |s#1|))))))) (=> (and (or (not (= (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1))) 0)) (|$Eq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) (_module.Stream.tl |s#1|)))))))))))))))))))))))
(let ((anon18_Then_correct  (=> ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (=> (and (and (and (and (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (_module.Stream.Cons_q (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (and (= |##s#14@0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) ($IsAlloc DatatypeTypeType |##s#14@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0))) (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|)) (and (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))))) (and (and (and (= |##t#4@0| (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) ($IsAlloc DatatypeTypeType |##t#4@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0)) (and (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))))) (and (and (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))))) (=> (and (and (and (and (and (_module.Stream.Cons_q |s#1|) (= |##s#18@0| (_module.Stream.tl |s#1|))) (and ($IsAlloc DatatypeTypeType |##s#18@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.Stream.tl |s#1|)))) (and (and (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) (= |##s#17@0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)))) (and ($IsAlloc DatatypeTypeType |##s#17@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (_module.Stream.Cons_q |s#1|)))) (and (and (and (= |##s#19@0| (_module.Stream.tl |s#1|)) ($IsAlloc DatatypeTypeType |##s#19@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0)) (and (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.Stream.tl |s#1|)) (_module.Stream.Cons_q (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))))) (and (and (= |##t#5@0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) ($IsAlloc DatatypeTypeType |##t#5@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0)) (and (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|))) (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)))))))) (and (and (and (and (_module.Stream.Cons_q |s#1|) (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.Stream.tl |s#1|))) (and (_module.Stream.Cons_q |s#1|) (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.Stream.tl |s#1|)))) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.Stream.tl |s#1|)))) (= (ControlFlow 0 14) (- 0 13)))) (|$Eq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl |s#1|)))))))))
(let ((anon17_Then_correct  (=> ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (=> (and (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (and (= |##s#20@0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) ($IsAlloc DatatypeTypeType |##s#20@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0))) (=> (and (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|)) (and (_module.Stream.Cons_q (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) (= |##t#6@0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (and (and ($IsAlloc DatatypeTypeType |##t#6@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (and (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))))) (=> (and (and (and (and (and (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|)) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0)) (and (and (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (_module.Stream.Cons_q (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (and (= |##s#23@0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) ($IsAlloc DatatypeTypeType |##s#23@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0)))) (and (and (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|)) (and (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (and (and (= |##t#7@0| (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) ($IsAlloc DatatypeTypeType |##t#7@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0)) (and (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))))))) (and (and (and (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (= (ControlFlow 0 12) (- 0 11))))) (|$Eq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.Stream.tl (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.Stream.tl (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))))))))))
(let ((anon16_Then_correct true))
(let ((anon15_Then_correct  (=> (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|)) (and (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (=> (and (and (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.Cons_q |s#1|)) (and (_module.Stream.Cons_q |s#1|) (= (ControlFlow 0 9) (- 0 8)))) (= (_module.Stream.hd (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|)) (_module.Stream.hd |s#1|))))))
(let ((anon14_Then_correct  (=> ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (=> (and (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (and (= |##s#4@0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) ($IsAlloc DatatypeTypeType |##s#4@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0))) (=> (and (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|)) (and (_module.Stream.Cons_q (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) (= |##t#1@0| (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (and (and ($IsAlloc DatatypeTypeType |##t#1@0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (and (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))))) (=> (and (and (and (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (|_module.__default.SplitRight#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|)) (|_module.__default.merge#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (and (and (and ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@0) (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|)) (and (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)))) (and (and (|_module.__default.SplitLeft#canCall| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |s#1|) (_module.Stream.Cons_q (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (= (ControlFlow 0 7) (- 0 6))))) (= (_module.Stream.hd (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.Stream.hd (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|)))))))))
(let ((anon13_Then_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_k#0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) |s#1|) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (and (_module.Stream.Cons_q |s#1|) (and (= (_module.Stream.hd (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.Stream.hd |s#1|)) (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tl (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.Stream.tl |s#1|)))))))) (=> (or (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_k#0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) |s#1|) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (and (_module.Stream.Cons_q |s#1|) (and (= (_module.Stream.hd (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.Stream.hd |s#1|)) (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tl (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.Stream.tl |s#1|))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (or (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_k#0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) |s#1|) (or (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.Cons_q (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (and (_module.Stream.Cons_q |s#1|) (and (= (_module.Stream.hd (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.Stream.hd |s#1|)) (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tl (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) |s#1|))) (_module.Stream.tl |s#1|)))))) (=> (and (or (not (= |_k#0| (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| |_k#0|) 0)) (|$Eq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|)) |s#1|)))))))))
(let ((anon19_Else_correct  (=> (and (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tl (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.tl |s#1|)) (= (ControlFlow 0 22) 2)) GeneratedUnifiedExit_correct)))
(let ((anon15_Else_correct  (=> (= (_module.Stream.hd (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#1|))) (_module.Stream.hd |s#1|)) (and (and (and (and (=> (= (ControlFlow 0 23) 10) anon16_Then_correct) (=> (= (ControlFlow 0 23) 12) anon17_Then_correct)) (=> (= (ControlFlow 0 23) 14) anon18_Then_correct)) (=> (= (ControlFlow 0 23) 16) anon19_Then_correct)) (=> (= (ControlFlow 0 23) 22) anon19_Else_correct)))))
(let ((anon12_Then_correct  (=> (< 0 (|ORD#Offset| |_k#0|)) (and (and (and (=> (= (ControlFlow 0 24) 5) anon13_Then_correct) (=> (= (ControlFlow 0 24) 7) anon14_Then_correct)) (=> (= (ControlFlow 0 24) 9) anon15_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon15_Else_correct)))))
(let ((anon12_Else_correct  (=> (<= (|ORD#Offset| |_k#0|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#0| T@U) (|s#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |s#2| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|)) (|ORD#Less| |_k'#0| |_k#0|)) (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_k'#0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#2|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#2|)) |s#2|))
 :qid |KozenSilvadfy.322:16|
 :skolemid |873|
 :pattern ( (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#2|) (|ORD#Less| |_k'#0| |_k#0|))
 :pattern ( (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |s#2|) (|ORD#Less| |_k'#0| |_k#0|))
)) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (|$IsA#_module.Stream| |s#1|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@2 $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#s0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#s0#0| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|)) (U_2_bool (Lit boolType (bool_2_U true)))) (|ORD#Less| |$ih#_k0#0| |_k#0|)) (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |$ih#s0#0|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |$ih#s0#0|)) |$ih#s0#0|))
 :qid |KozenSilvadfy.322:16|
 :skolemid |871|
 :pattern ( (|$PrefixEq#_module.Stream| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.merge |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) (_module.__default.SplitLeft |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |$ih#s0#0|) (_module.__default.SplitRight |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0| ($LS $LZ) |$ih#s0#0|)) |$ih#s0#0|))
)))) (and (=> (= (ControlFlow 0 25) 24) anon12_Then_correct) (=> (= (ControlFlow 0 25) 4) anon12_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and ($Is DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|)) ($IsAlloc DatatypeTypeType |s#1| (Tclass._module.Stream |_module._default.Theorem7_Merge_Is_Left_Inverse_Of_Split_Equal#$_T0|) $Heap@@2)) (|$IsA#_module.Stream| |s#1|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 26) 25))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
