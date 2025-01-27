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
(declare-fun Tagclass._module.Color () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.ICons| () T@U)
(declare-fun |##_module.Color.Red| () T@U)
(declare-fun |##_module.Color.Blue| () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun _module.__default.CUp2 (T@U Int T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.CUp2#canCall| (Int T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Color () T@U)
(declare-fun |$IsA#_module.Color| (T@U) Bool)
(declare-fun |_module.Color#Equal| (T@U T@U) Bool)
(declare-fun |#_module.Color.Red| () T@U)
(declare-fun |#_module.Stream.ICons| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |$PrefixEq#_module.Stream| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _module.Stream.ICons_q (T@U) Bool)
(declare-fun _module.Stream.head (T@U) T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun _module.Stream.tail (T@U) T@U)
(declare-fun |$Eq#_module.Stream| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Color.Blue| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Color.Red_q (T@U) Bool)
(declare-fun _module.Color.Blue_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun _module.__default.CUp0 (T@U Int T@U) T@U)
(declare-fun _module.__default.CUp1 (T@U Int T@U) T@U)
(declare-fun _module.__default.CUp3 (T@U Int T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun |_module.__default.CUp0#canCall| (Int T@U) Bool)
(declare-fun |_module.__default.CUp1#canCall| (Int T@U) Bool)
(declare-fun |_module.__default.CUp3#canCall| (Int T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Color Tagclass._module.Stream |##_module.Stream.ICons| |##_module.Color.Red| |##_module.Color.Blue| tytagFamily$Color tytagFamily$Stream)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) (|c#0| T@U) ) (!  (=> (or (|_module.__default.CUp2#canCall| |n#0| |c#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0| Tclass._module.Color))) (and (and (and (|$IsA#_module.Color| |c#0|) (=> (|_module.Color#Equal| |c#0| |#_module.Color.Red|) (|_module.__default.CUp2#canCall| (+ |n#0| 1) |c#0|))) (=> (not (|_module.Color#Equal| |c#0| |#_module.Color.Red|)) (|_module.__default.CUp2#canCall| (+ |n#0| 2) |c#0|))) (= (_module.__default.CUp2 ($LS $ly) |n#0| |c#0|) (ite (|_module.Color#Equal| |c#0| |#_module.Color.Red|) (|#_module.Stream.ICons| ($Box intType (int_2_U |n#0|)) (_module.__default.CUp2 $ly (+ |n#0| 1) |c#0|)) (|#_module.Stream.ICons| ($Box intType (int_2_U |n#0|)) (_module.__default.CUp2 $ly (+ |n#0| 2) |c#0|))))))
 :qid |ExpandedGuardednessdfy.98:10|
 :skolemid |609|
 :pattern ( (_module.__default.CUp2 ($LS $ly) |n#0| |c#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|_module.Stream$T#l| T@U) (|_module.Stream$T#r| T@U) (k T@U) (ly T@U) (d0 T@U) (d1 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0 (Tclass._module.Stream |_module.Stream$T#l|)) ($Is DatatypeTypeType d1 (Tclass._module.Stream |_module.Stream$T#r|))) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1)  (and (=> (< 0 (|ORD#Offset| k)) (and (and (_module.Stream.ICons_q d0) (_module.Stream.ICons_q d1)) (=> (and (_module.Stream.ICons_q d0) (_module.Stream.ICons_q d1)) (and (= (_module.Stream.head d0) (_module.Stream.head d1)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| (|ORD#Minus| k (|ORD#FromNat| 1)) ly (_module.Stream.tail d0) (_module.Stream.tail d1)))))) (=> (and (or (not (= k (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k) 0)) (|$Eq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| ly d0 d1)))))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l| |_module.Stream$T#r| k ($LS ly) d0 d1))
)))
(assert (forall ((|_module.Stream$T#l@@0| T@U) (|_module.Stream$T#r@@0| T@U) (k@@0 T@U) (ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (or (not (= k@@0 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ly@@0 d0@@0 d1@@0)))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@0| |_module.Stream$T#r@@0| k@@0 ($LS ly@@0) d0@@0 d1@@0))
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
(assert (= (DatatypeCtorId |#_module.Color.Red|) |##_module.Color.Red|))
(assert (= (DatatypeCtorId |#_module.Color.Blue|) |##_module.Color.Blue|))
(assert (forall ((_module.Stream$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Stream _module.Stream$T)) (_module.Stream.ICons_q d))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( (_module.Stream.ICons_q d) ($Is DatatypeTypeType d (Tclass._module.Stream _module.Stream$T)))
)))
(assert (forall ((|_module.Stream$T#l@@1| T@U) (|_module.Stream$T#r@@1| T@U) (k@@1 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) ) (!  (=> (= d0@@1 d1@@1) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@1| |_module.Stream$T#r@@1| k@@1 ($LS ly@@1) d0@@1 d1@@1))
)))
(assert ($Is DatatypeTypeType |#_module.Color.Red| Tclass._module.Color))
(assert ($Is DatatypeTypeType |#_module.Color.Blue| Tclass._module.Color))
(assert (forall ((|_module.Stream$T#l@@2| T@U) (|_module.Stream$T#r@@2| T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2) (= d0@@2 d1@@2))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@2| |_module.Stream$T#r@@2| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Color#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |829|
 :pattern ( (|_module.Color#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.ICons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0))  (and ($IsBox |a#2#0#0| _module.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass._module.Stream _module.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |801|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.ICons| |a#2#0#0| |a#2#1#0|) (Tclass._module.Stream _module.Stream$T@@0)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.ICons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.ICons|))
 :qid |unknown.0:0|
 :skolemid |798|
 :pattern ( (_module.Stream.ICons_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Color.Red_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( (_module.Color.Red_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Color.Blue_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |822|
 :pattern ( (_module.Color.Blue_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Stream.ICons_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_module.Stream.ICons| |a#1#0#0| |a#1#1#0|))
 :qid |ExpandedGuardednessdfy.62:30|
 :skolemid |799|
)))
 :qid |unknown.0:0|
 :skolemid |800|
 :pattern ( (_module.Stream.ICons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Color.Red_q d@@4) (= d@@4 |#_module.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (_module.Color.Red_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Color.Blue_q d@@5) (= d@@5 |#_module.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |823|
 :pattern ( (_module.Color.Blue_q d@@5))
)))
(assert (forall ((|_module.Stream$T#l@@3| T@U) (|_module.Stream$T#r@@3| T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 (Tclass._module.Stream |_module.Stream$T#l@@3|)) ($Is DatatypeTypeType d1@@3 (Tclass._module.Stream |_module.Stream$T#r@@3|))) (= (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3)  (and (and (_module.Stream.ICons_q d0@@3) (_module.Stream.ICons_q d1@@3)) (=> (and (_module.Stream.ICons_q d0@@3) (_module.Stream.ICons_q d1@@3)) (and (= (_module.Stream.head d0@@3) (_module.Stream.head d1@@3)) (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ly@@3 (_module.Stream.tail d0@@3) (_module.Stream.tail d1@@3)))))))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@3| |_module.Stream$T#r@@3| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$T@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |549|
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
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._module.Color)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx Tclass._module.Color))
)))
(assert (forall (($ly@@0 T@U) (|n#0@@0| Int) (|c#0@@0| T@U) ) (! (= (_module.__default.CUp0 ($LS $ly@@0) |n#0@@0| |c#0@@0|) (_module.__default.CUp0 $ly@@0 |n#0@@0| |c#0@@0|))
 :qid |ExpandedGuardednessdfy.86:10|
 :skolemid |591|
 :pattern ( (_module.__default.CUp0 ($LS $ly@@0) |n#0@@0| |c#0@@0|))
)))
(assert (forall (($ly@@1 T@U) (|n#0@@1| Int) (|c#0@@1| T@U) ) (! (= (_module.__default.CUp1 ($LS $ly@@1) |n#0@@1| |c#0@@1|) (_module.__default.CUp1 $ly@@1 |n#0@@1| |c#0@@1|))
 :qid |ExpandedGuardednessdfy.93:10|
 :skolemid |598|
 :pattern ( (_module.__default.CUp1 ($LS $ly@@1) |n#0@@1| |c#0@@1|))
)))
(assert (forall (($ly@@2 T@U) (|n#0@@2| Int) (|c#0@@2| T@U) ) (! (= (_module.__default.CUp2 ($LS $ly@@2) |n#0@@2| |c#0@@2|) (_module.__default.CUp2 $ly@@2 |n#0@@2| |c#0@@2|))
 :qid |ExpandedGuardednessdfy.98:10|
 :skolemid |605|
 :pattern ( (_module.__default.CUp2 ($LS $ly@@2) |n#0@@2| |c#0@@2|))
)))
(assert (forall (($ly@@3 T@U) (|n#0@@3| Int) (|c#0@@3| T@U) ) (! (= (_module.__default.CUp3 ($LS $ly@@3) |n#0@@3| |c#0@@3|) (_module.__default.CUp3 $ly@@3 |n#0@@3| |c#0@@3|))
 :qid |ExpandedGuardednessdfy.106:10|
 :skolemid |612|
 :pattern ( (_module.__default.CUp3 ($LS $ly@@3) |n#0@@3| |c#0@@3|))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#_module.Color| d@@6) (or (_module.Color.Red_q d@@6) (_module.Color.Blue_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( (|$IsA#_module.Color| d@@6))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 Tclass._module.Color) (or (_module.Color.Red_q d@@7) (_module.Color.Blue_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( (_module.Color.Blue_q d@@7) ($Is DatatypeTypeType d@@7 Tclass._module.Color))
 :pattern ( (_module.Color.Red_q d@@7) ($Is DatatypeTypeType d@@7 Tclass._module.Color))
)))
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
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Color.Red_q a@@0) (_module.Color.Red_q b@@0)) (|_module.Color#Equal| a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( (|_module.Color#Equal| a@@0 b@@0) (_module.Color.Red_q a@@0))
 :pattern ( (|_module.Color#Equal| a@@0 b@@0) (_module.Color.Red_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Color.Blue_q a@@1) (_module.Color.Blue_q b@@1)) (|_module.Color#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |828|
 :pattern ( (|_module.Color#Equal| a@@1 b@@1) (_module.Color.Blue_q a@@1))
 :pattern ( (|_module.Color#Equal| a@@1 b@@1) (_module.Color.Blue_q b@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.ICons| |a#0#0#0| |a#0#1#0|)) |##_module.Stream.ICons|)
 :qid |ExpandedGuardednessdfy.62:30|
 :skolemid |797|
 :pattern ( (|#_module.Stream.ICons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (_module.Stream.head (|#_module.Stream.ICons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |ExpandedGuardednessdfy.62:30|
 :skolemid |805|
 :pattern ( (|#_module.Stream.ICons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.Stream.tail (|#_module.Stream.ICons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |ExpandedGuardednessdfy.62:30|
 :skolemid |806|
 :pattern ( (|#_module.Stream.ICons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((_module.Stream$T@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$T@@2)) _module.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |550|
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
(assert (forall ((|_module.Stream$T#l@@4| T@U) (|_module.Stream$T#r@@4| T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4)
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@4| |_module.Stream$T#r@@4| ($LS ly@@4) d0@@4 d1@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|n#0@@4| Int) (|c#0@@4| T@U) ) (!  (=> (or (|_module.__default.CUp0#canCall| |n#0@@4| |c#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@4| Tclass._module.Color))) ($Is DatatypeTypeType (_module.__default.CUp0 $ly@@4 |n#0@@4| |c#0@@4|) (Tclass._module.Stream TInt)))
 :qid |ExpandedGuardednessdfy.86:10|
 :skolemid |593|
 :pattern ( (_module.__default.CUp0 $ly@@4 |n#0@@4| |c#0@@4|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) (|n#0@@5| Int) (|c#0@@5| T@U) ) (!  (=> (or (|_module.__default.CUp1#canCall| |n#0@@5| |c#0@@5|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@5| Tclass._module.Color))) ($Is DatatypeTypeType (_module.__default.CUp1 $ly@@5 |n#0@@5| |c#0@@5|) (Tclass._module.Stream TInt)))
 :qid |ExpandedGuardednessdfy.93:10|
 :skolemid |600|
 :pattern ( (_module.__default.CUp1 $ly@@5 |n#0@@5| |c#0@@5|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|n#0@@6| Int) (|c#0@@6| T@U) ) (!  (=> (or (|_module.__default.CUp2#canCall| |n#0@@6| |c#0@@6|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@6| Tclass._module.Color))) ($Is DatatypeTypeType (_module.__default.CUp2 $ly@@6 |n#0@@6| |c#0@@6|) (Tclass._module.Stream TInt)))
 :qid |ExpandedGuardednessdfy.98:10|
 :skolemid |607|
 :pattern ( (_module.__default.CUp2 $ly@@6 |n#0@@6| |c#0@@6|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@7 T@U) (|n#0@@7| Int) (|c#0@@7| T@U) ) (!  (=> (or (|_module.__default.CUp3#canCall| |n#0@@7| |c#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@7| Tclass._module.Color))) ($Is DatatypeTypeType (_module.__default.CUp3 $ly@@7 |n#0@@7| |c#0@@7|) (Tclass._module.Stream TInt)))
 :qid |ExpandedGuardednessdfy.106:10|
 :skolemid |614|
 :pattern ( (_module.__default.CUp3 $ly@@7 |n#0@@7| |c#0@@7|))
))))
(assert (forall ((d@@8 T@U) (_module.Stream$T@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.ICons_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.Stream _module.Stream$T@@3) $h))) ($IsAllocBox (_module.Stream.head d@@8) _module.Stream$T@@3 $h))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAllocBox (_module.Stream.head d@@8) _module.Stream$T@@3 $h))
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
 :skolemid |902|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module.Stream$T@@4 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.Stream _module.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.Stream _module.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@1 (Tclass._module.Stream _module.Stream$T@@4)))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@9 T@U) (_module.Stream$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Stream.ICons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.Stream _module.Stream$T@@5) $h@@0))) ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@9) (Tclass._module.Stream _module.Stream$T@@5) $h@@0))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.tail d@@9) (Tclass._module.Stream _module.Stream$T@@5) $h@@0))
)))
(assert (forall ((d@@10 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@10 Tclass._module.Color)) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Color $h@@1))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Color $h@@1))
)))
(assert (= (Tag Tclass._module.Color) Tagclass._module.Color))
(assert (= (TagFamily Tclass._module.Color) tytagFamily$Color))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@8 T@U) (|n#0@@8| Int) (|c#0@@8| T@U) ) (!  (=> (or (|_module.__default.CUp1#canCall| |n#0@@8| |c#0@@8|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@8| Tclass._module.Color))) (and (and (=> (_module.Color.Red_q |c#0@@8|) (|_module.__default.CUp1#canCall| (+ |n#0@@8| 1) |c#0@@8|)) (=> (not (_module.Color.Red_q |c#0@@8|)) (|_module.__default.CUp1#canCall| (+ |n#0@@8| 2) |c#0@@8|))) (= (_module.__default.CUp1 ($LS $ly@@8) |n#0@@8| |c#0@@8|) (|#_module.Stream.ICons| ($Box intType (int_2_U |n#0@@8|)) (ite (_module.Color.Red_q |c#0@@8|) (_module.__default.CUp1 $ly@@8 (+ |n#0@@8| 1) |c#0@@8|) (_module.__default.CUp1 $ly@@8 (+ |n#0@@8| 2) |c#0@@8|))))))
 :qid |ExpandedGuardednessdfy.93:10|
 :skolemid |602|
 :pattern ( (_module.__default.CUp1 ($LS $ly@@8) |n#0@@8| |c#0@@8|))
))))
(assert (= |#_module.Color.Red| (Lit DatatypeTypeType |#_module.Color.Red|)))
(assert (= |#_module.Color.Blue| (Lit DatatypeTypeType |#_module.Color.Blue|)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((|_module.Stream$T#l@@5| T@U) (|_module.Stream$T#r@@5| T@U) (k@@3 T@U) (ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) (m@@5 T@U) ) (!  (=> (and (|ORD#Less| k@@3 m@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5)) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| k@@3 ($LS ly@@5) d0@@5 d1@@5) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@5| |_module.Stream$T#r@@5| m@@5 ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((|_module.Stream$T#l@@6| T@U) (|_module.Stream$T#r@@6| T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6) (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ly@@6 d0@@6 d1@@6))
 :qid |unknown.0:0|
 :skolemid |810|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@6| |_module.Stream$T#r@@6| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@9 T@U) (|n#0@@9| Int) (|c#0@@9| T@U) ) (!  (=> (or (|_module.__default.CUp3#canCall| |n#0@@9| |c#0@@9|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@9| Tclass._module.Color))) (and (and (and (|$IsA#_module.Color| |c#0@@9|) (=> (|_module.Color#Equal| |c#0@@9| |#_module.Color.Red|) (|_module.__default.CUp3#canCall| (+ |n#0@@9| 1) |c#0@@9|))) (=> (not (|_module.Color#Equal| |c#0@@9| |#_module.Color.Red|)) (|_module.__default.CUp3#canCall| (+ |n#0@@9| 2) |c#0@@9|))) (= (_module.__default.CUp3 ($LS $ly@@9) |n#0@@9| |c#0@@9|) (|#_module.Stream.ICons| ($Box intType (int_2_U |n#0@@9|)) (ite (|_module.Color#Equal| |c#0@@9| |#_module.Color.Red|) (_module.__default.CUp3 $ly@@9 (+ |n#0@@9| 1) |c#0@@9|) (_module.__default.CUp3 $ly@@9 (+ |n#0@@9| 2) |c#0@@9|))))))
 :qid |ExpandedGuardednessdfy.106:10|
 :skolemid |616|
 :pattern ( (_module.__default.CUp3 ($LS $ly@@9) |n#0@@9| |c#0@@9|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|n#0@@10| Int) (|c#0@@10| T@U) ) (!  (=> (or (|_module.__default.CUp0#canCall| |n#0@@10| |c#0@@10|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |c#0@@10| Tclass._module.Color))) (and (and (=> (_module.Color.Red_q |c#0@@10|) (|_module.__default.CUp0#canCall| (+ |n#0@@10| 1) |c#0@@10|)) (=> (not (_module.Color.Red_q |c#0@@10|)) (|_module.__default.CUp0#canCall| (+ |n#0@@10| 2) |c#0@@10|))) (= (_module.__default.CUp0 ($LS $ly@@10) |n#0@@10| |c#0@@10|) (ite (_module.Color.Red_q |c#0@@10|) (|#_module.Stream.ICons| ($Box intType (int_2_U |n#0@@10|)) (_module.__default.CUp0 $ly@@10 (+ |n#0@@10| 1) |c#0@@10|)) (|#_module.Stream.ICons| ($Box intType (int_2_U |n#0@@10|)) (_module.__default.CUp0 $ly@@10 (+ |n#0@@10| 2) |c#0@@10|))))))
 :qid |ExpandedGuardednessdfy.86:10|
 :skolemid |595|
 :pattern ( (_module.__default.CUp0 ($LS $ly@@10) |n#0@@10| |c#0@@10|))
))))
(assert (forall ((|_module.Stream$T#l@@7| T@U) (|_module.Stream$T#r@@7| T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (forall ((k@@4 Int) ) (!  (=> (<= 0 k@@4) (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( (|$PrefixEq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| (|ORD#FromNat| k@@4) ($LS ly@@7) d0@@7 d1@@7))
)) (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( (|$Eq#_module.Stream| |_module.Stream$T#l@@7| |_module.Stream$T#r@@7| ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((_module.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.ICons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@2)  (and ($IsAllocBox |a#2#0#0@@0| _module.Stream$T@@6 $h@@2) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass._module.Stream _module.Stream$T@@6) $h@@2))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.ICons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Stream _module.Stream$T@@6) $h@@2))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_k#0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |n#1| () Int)
(declare-fun |c#1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun DtRank (T@U) Int)
(set-info :boogie-vc-id Impl$$_module.__default.CUps_h)
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
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|)) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|))))))))) (=> (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|)) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|)) (or (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|))))))) (=> (and (or (not (= |_k#0| (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| |_k#0|) 0)) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|)))))) (=> (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|)) (or (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp0 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|))))))) (=> (and (or (not (= |_k#0| (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| |_k#0|) 0)) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|)) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|))))))))) (=> (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|)) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|)) (or (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|))))))) (=> (and (or (not (= |_k#0| (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| |_k#0|) 0)) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|)))))) (=> (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|)) (or (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp1 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|))))))) (=> (and (or (not (= |_k#0| (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| |_k#0|) 0)) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp3 ($LS $LZ) |n#1| |c#1|)) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|))))))))) (=> (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp3 ($LS $LZ) |n#1| |c#1|)) (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|)))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (or (|$PrefixEq#_module.Stream| TInt TInt |_k#0| ($LS ($LS $LZ)) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp3 ($LS $LZ) |n#1| |c#1|)) (or (=> (< 0 (|ORD#Offset| |_k#0|)) (=> (_module.Stream.ICons_q (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (_module.Stream.ICons_q (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|)) (and (= (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)))) (U_2_int ($Unbox intType (_module.Stream.head (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|))))) (|$PrefixEq#_module.Stream| TInt TInt (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) ($LS ($LS $LZ)) (_module.Stream.tail (_module.__default.CUp2 ($LS ($LS $LZ)) |n#1| |c#1|)) (_module.Stream.tail (_module.__default.CUp3 ($LS ($LS $LZ)) |n#1| |c#1|))))))) (=> (and (or (not (= |_k#0| (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| |_k#0|) 0)) (|$Eq#_module.Stream| TInt TInt ($LS ($LS $LZ)) (_module.__default.CUp2 ($LS $LZ) |n#1| |c#1|) (_module.__default.CUp3 ($LS $LZ) |n#1| |c#1|))))))))))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#0| T@U) (|n#2| Int) (|c#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |c#2| Tclass._module.Color) (|ORD#Less| |_k'#0| |_k#0|)) (and (and (|$PrefixEq#_module.Stream| TInt TInt |_k'#0| ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |n#2| |c#2|) (_module.__default.CUp1 ($LS $LZ) |n#2| |c#2|)) (|$PrefixEq#_module.Stream| TInt TInt |_k'#0| ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |n#2| |c#2|) (_module.__default.CUp2 ($LS $LZ) |n#2| |c#2|))) (|$PrefixEq#_module.Stream| TInt TInt |_k'#0| ($LS ($LS $LZ)) (_module.__default.CUp2 ($LS $LZ) |n#2| |c#2|) (_module.__default.CUp3 ($LS $LZ) |n#2| |c#2|))))
 :qid |ExpandedGuardednessdfy.111:16|
 :skolemid |620|
 :pattern ( (_module.__default.CUp3 ($LS $LZ) |n#2| |c#2|) (|ORD#Less| |_k'#0| |_k#0|))
 :pattern ( (_module.__default.CUp2 ($LS $LZ) |n#2| |c#2|) (|ORD#Less| |_k'#0| |_k#0|))
 :pattern ( (_module.__default.CUp1 ($LS $LZ) |n#2| |c#2|) (|ORD#Less| |_k'#0| |_k#0|))
 :pattern ( (_module.__default.CUp0 ($LS $LZ) |n#2| |c#2|) (|ORD#Less| |_k'#0| |_k#0|))
)) (= (ControlFlow 0 9) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (< 0 (|ORD#Offset| |_k#0|)) (= (ControlFlow 0 8) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.Color| |c#1|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#n0#0| Int) (|$ih#c0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#c0#0| Tclass._module.Color) (U_2_bool (Lit boolType (bool_2_U true)))) (or (|ORD#Less| |$ih#_k0#0| |_k#0|) (and (= |$ih#_k0#0| |_k#0|) (or (and (<= 0 |$ih#n0#0|) (< |$ih#n0#0| |n#1|)) (and (= |$ih#n0#0| |n#1|) (< (DtRank |$ih#c0#0|) (DtRank |c#1|))))))) (and (and (|$PrefixEq#_module.Stream| TInt TInt |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|) (_module.__default.CUp1 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|)) (|$PrefixEq#_module.Stream| TInt TInt |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|) (_module.__default.CUp2 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|))) (|$PrefixEq#_module.Stream| TInt TInt |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.CUp2 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|) (_module.__default.CUp3 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|))))
 :qid |ExpandedGuardednessdfy.111:16|
 :skolemid |619|
 :pattern ( (|$PrefixEq#_module.Stream| TInt TInt |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.CUp2 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|) (_module.__default.CUp3 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|)))
 :pattern ( (|$PrefixEq#_module.Stream| TInt TInt |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.CUp1 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|) (_module.__default.CUp2 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|)))
 :pattern ( (|$PrefixEq#_module.Stream| TInt TInt |$ih#_k0#0| ($LS ($LS $LZ)) (_module.__default.CUp0 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|) (_module.__default.CUp1 ($LS $LZ) |$ih#n0#0| |$ih#c0#0|)))
)))) (and (=> (= (ControlFlow 0 10) 8) anon3_Then_correct) (=> (= (ControlFlow 0 10) 9) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |c#1| Tclass._module.Color) ($IsAlloc DatatypeTypeType |c#1| Tclass._module.Color $Heap)) (|$IsA#_module.Color| |c#1|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 11) 10))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
