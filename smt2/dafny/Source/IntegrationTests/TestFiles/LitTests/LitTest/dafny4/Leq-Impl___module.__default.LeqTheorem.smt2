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
(declare-fun TORDINAL () T@U)
(declare-fun TagORDINAL () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Nat () T@U)
(declare-fun |##_module.Nat.Z| () T@U)
(declare-fun |##_module.Nat.S| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Nat () T@U)
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
(declare-fun |$Eq#_module.Nat| (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Nat.Z| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Leq (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Nat () T@U)
(declare-fun _module.__default.Leq_h (T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.Num (T@U Int) T@U)
(declare-fun |_module.__default.Num#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |$PrefixEq#_module.Nat| (T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Nat.Z_q (T@U) Bool)
(declare-fun _module.Nat.S_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.IsInfinity_h (T@U T@U T@U) Bool)
(declare-fun _module.Nat.pred (T@U) T@U)
(declare-fun _module.__default.IsInfinity (T@U T@U) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |#_module.Nat.S| (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |_module.__default.IsInfinity#canCall| (T@U) Bool)
(declare-fun |_module.__default.IsInfinity_h#canCall| (T@U T@U) Bool)
(declare-fun |_module.__default.Leq#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Nat| (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.Leq_h#canCall| (T@U T@U T@U) Bool)
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
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TORDINAL TagORDINAL alloc Tagclass._System.nat Tagclass._module.Nat |##_module.Nat.Z| |##_module.Nat.S| tytagFamily$nat tytagFamily$Nat)
)
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((ly T@U) (d0 T@U) (d1 T@U) ) (! (= (|$Eq#_module.Nat| ($LS ly) d0 d1) (= d0 d1))
 :qid |unknown.0:0|
 :skolemid |779|
 :pattern ( (|$Eq#_module.Nat| ($LS ly) d0 d1))
)))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.Nat.Z|) |##_module.Nat.Z|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0| Tclass._module.Nat) ($Is DatatypeTypeType |b#0| Tclass._module.Nat)) (_module.__default.Leq ($LS $ly) |a#0| |b#0|)) (exists ((|_k#0| T@U) ) (! (_module.__default.Leq_h ($LS $ly) |_k#0| |a#0| |b#0|)
 :qid |Leqdfy.50:17|
 :skolemid |640|
 :pattern ( (_module.__default.Leq_h ($LS $ly) |_k#0| |a#0| |b#0|))
)))
 :qid |Leqdfy.50:17|
 :skolemid |641|
 :pattern ( (_module.__default.Leq ($LS $ly) |a#0| |b#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Num#canCall| |n#0|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0|))) ($Is DatatypeTypeType (_module.__default.Num $ly@@0 |n#0|) Tclass._module.Nat))
 :qid |Leqdfy.11:16|
 :skolemid |584|
 :pattern ( (_module.__default.Num $ly@@0 |n#0|))
))))
(assert (forall ((ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (forall ((k Int) ) (!  (=> (<= 0 k) (|$PrefixEq#_module.Nat| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |784|
 :pattern ( (|$PrefixEq#_module.Nat| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
)) (|$Eq#_module.Nat| ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( (|$Eq#_module.Nat| ($LS ly@@0) d0@@0 d1@@0))
)))
(assert ($Is DatatypeTypeType |#_module.Nat.Z| Tclass._module.Nat))
(assert (forall ((k@@0 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) (m@@0 T@U) ) (!  (=> (and (|ORD#Less| k@@0 m@@0) (|$PrefixEq#_module.Nat| m@@0 ($LS ly@@1) d0@@1 d1@@1)) (|$PrefixEq#_module.Nat| k@@0 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |786|
 :pattern ( (|$PrefixEq#_module.Nat| k@@0 ($LS ly@@1) d0@@1 d1@@1) (|$PrefixEq#_module.Nat| m@@0 ($LS ly@@1) d0@@1 d1@@1))
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
(assert (forall ((d T@U) ) (! (= (_module.Nat.Z_q d) (= (DatatypeCtorId d) |##_module.Nat.Z|))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( (_module.Nat.Z_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Nat.S_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Nat.S|))
 :qid |unknown.0:0|
 :skolemid |768|
 :pattern ( (_module.Nat.S_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|a#0@@0| T@U) (|_k#0@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |a#0@@0| Tclass._module.Nat) (= |_k#0@@0| (|ORD#FromNat| 0))) (_module.__default.IsInfinity_h $ly@@1 |_k#0@@0| |a#0@@0|))
 :qid |Leqdfy.21:20|
 :skolemid |608|
 :pattern ( (_module.__default.IsInfinity_h $ly@@1 |_k#0@@0| |a#0@@0|))
))))
(assert (forall ((k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 Tclass._module.Nat) ($Is DatatypeTypeType d1@@2 Tclass._module.Nat)) (= (|$PrefixEq#_module.Nat| k@@1 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (_module.Nat.Z_q d0@@2) (_module.Nat.Z_q d1@@2)) (and (and (_module.Nat.S_q d0@@2) (_module.Nat.S_q d1@@2)) (=> (and (_module.Nat.S_q d0@@2) (_module.Nat.S_q d1@@2)) (|$PrefixEq#_module.Nat| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@2 (_module.Nat.pred d0@@2) (_module.Nat.pred d1@@2)))))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.Nat| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |780|
 :pattern ( (|$PrefixEq#_module.Nat| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|a#0@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |a#0@@1| Tclass._module.Nat) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.IsInfinity_h ($LS $ly@@2) |_k#0@@1| |a#0@@1|)
 :qid |Leqdfy.21:20|
 :skolemid |605|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@2) |_k#0@@1| |a#0@@1|))
))) (_module.__default.IsInfinity ($LS $ly@@2) |a#0@@1|))
 :qid |Leqdfy.21:20|
 :skolemid |607|
 :pattern ( (_module.__default.IsInfinity ($LS $ly@@2) |a#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|a#0@@2| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@2| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@0| Tclass._module.Nat)) (exists ((|_k#0@@2| T@U) ) (! (_module.__default.Leq_h ($LS $ly@@3) |_k#0@@2| |a#0@@2| |b#0@@0|)
 :qid |Leqdfy.50:17|
 :skolemid |640|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@3) |_k#0@@2| |a#0@@2| |b#0@@0|))
))) (_module.__default.Leq ($LS $ly@@3) |a#0@@2| |b#0@@0|))
 :qid |Leqdfy.50:17|
 :skolemid |642|
 :pattern ( (_module.__default.Leq ($LS $ly@@3) |a#0@@2| |b#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|a#0@@3| T@U) (|b#0@@1| T@U) (|_k#0@@3| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0@@3| _m) (=> (_module.__default.Leq_h $ly@@4 |_k#0@@3| |a#0@@3| |b#0@@1|) (_module.__default.Leq_h $ly@@4 _m |a#0@@3| |b#0@@1|)))
 :qid |Leqdfy.50:17|
 :skolemid |644|
 :pattern ( (_module.__default.Leq_h $ly@@4 |_k#0@@3| |a#0@@3| |b#0@@1|) (|ORD#LessThanLimit| |_k#0@@3| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Nat.Z_q d@@1) (= d@@1 |#_module.Nat.Z|))
 :qid |unknown.0:0|
 :skolemid |766|
 :pattern ( (_module.Nat.Z_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Nat.S_q d@@2) (exists ((|a#4#0#0| T@U) ) (! (= d@@2 (|#_module.Nat.S| |a#4#0#0|))
 :qid |Leqdfy.9:24|
 :skolemid |769|
)))
 :qid |unknown.0:0|
 :skolemid |770|
 :pattern ( (_module.Nat.S_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@3 Tclass._module.Nat) ($Is DatatypeTypeType d1@@3 Tclass._module.Nat)) (= (|$Eq#_module.Nat| ($LS ly@@3) d0@@3 d1@@3)  (or (and (_module.Nat.Z_q d0@@3) (_module.Nat.Z_q d1@@3)) (and (and (_module.Nat.S_q d0@@3) (_module.Nat.S_q d1@@3)) (=> (and (_module.Nat.S_q d0@@3) (_module.Nat.S_q d1@@3)) (|$Eq#_module.Nat| ly@@3 (_module.Nat.pred d0@@3) (_module.Nat.pred d1@@3)))))))
 :qid |unknown.0:0|
 :skolemid |777|
 :pattern ( (|$Eq#_module.Nat| ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall ((k@@2 T@U) (ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (!  (=> (or (not (= k@@2 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.Nat| k@@2 ($LS ly@@4) d0@@4 d1@@4) (|$PrefixEq#_module.Nat| k@@2 ly@@4 d0@@4 d1@@4)))
 :qid |unknown.0:0|
 :skolemid |781|
 :pattern ( (|$PrefixEq#_module.Nat| k@@2 ($LS ly@@4) d0@@4 d1@@4))
)))
(assert (forall (($ly@@5 T@U) (|_k#0@@4| T@U) (|a#0@@4| T@U) ) (! (= (_module.__default.IsInfinity_h ($LS $ly@@5) |_k#0@@4| |a#0@@4|) (_module.__default.IsInfinity_h $ly@@5 |_k#0@@4| |a#0@@4|))
 :qid |Leqdfy.21:20|
 :skolemid |610|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@5) |_k#0@@4| |a#0@@4|))
)))
(assert (forall (($ly@@6 T@U) (|a#0@@5| T@U) (|b#0@@2| T@U) ) (! (= (_module.__default.Leq ($LS $ly@@6) |a#0@@5| |b#0@@2|) (_module.__default.Leq $ly@@6 |a#0@@5| |b#0@@2|))
 :qid |Leqdfy.50:17|
 :skolemid |635|
 :pattern ( (_module.__default.Leq ($LS $ly@@6) |a#0@@5| |b#0@@2|))
)))
(assert (forall ((ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) ) (! (= (|$Eq#_module.Nat| ($LS ly@@5) d0@@5 d1@@5) (|$Eq#_module.Nat| ly@@5 d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |778|
 :pattern ( (|$Eq#_module.Nat| ($LS ly@@5) d0@@5 d1@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|a#0@@6| T@U) ) (!  (=> (and ($Is DatatypeTypeType |a#0@@6| Tclass._module.Nat) (_module.__default.IsInfinity ($LS $ly@@7) |a#0@@6|)) (forall ((|_k#0@@5| T@U) ) (! (_module.__default.IsInfinity_h ($LS $ly@@7) |_k#0@@5| |a#0@@6|)
 :qid |Leqdfy.21:20|
 :skolemid |605|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@7) |_k#0@@5| |a#0@@6|))
)))
 :qid |Leqdfy.21:20|
 :skolemid |606|
 :pattern ( (_module.__default.IsInfinity ($LS $ly@@7) |a#0@@6|))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@8 T@U) (|a#0@@7| T@U) ) (!  (=> (or (|_module.__default.IsInfinity#canCall| |a#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@7| Tclass._module.Nat))) (and (=> (_module.Nat.S_q |a#0@@7|) (|_module.__default.IsInfinity#canCall| (_module.Nat.pred |a#0@@7|))) (= (_module.__default.IsInfinity ($LS $ly@@8) |a#0@@7|)  (and (_module.Nat.S_q |a#0@@7|) (_module.__default.IsInfinity $ly@@8 (_module.Nat.pred |a#0@@7|))))))
 :qid |Leqdfy.21:20|
 :skolemid |604|
 :pattern ( (_module.__default.IsInfinity ($LS $ly@@8) |a#0@@7|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|_k#0@@6| T@U) (|a#0@@8| T@U) ) (!  (=> (or (|_module.__default.IsInfinity_h#canCall| |_k#0@@6| |a#0@@8|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@8| Tclass._module.Nat))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (=> (_module.Nat.S_q |a#0@@8|) (|_module.__default.IsInfinity_h#canCall| (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@8|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (and (_module.Nat.S_q |a#0@@8|) (_module.__default.IsInfinity_h $ly@@9 (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@8|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@6|) (|_module.__default.IsInfinity_h#canCall| |_k'#0| |a#0@@8|))
 :qid |Leqdfy.21:20|
 :skolemid |615|
 :pattern ( (_module.__default.IsInfinity_h $ly@@9 |_k'#0| |a#0@@8|))
))))) (= (_module.__default.IsInfinity_h ($LS $ly@@9) |_k#0@@6| |a#0@@8|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (and (_module.Nat.S_q |a#0@@8|) (_module.__default.IsInfinity_h $ly@@9 (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@8|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@6|) (_module.__default.IsInfinity_h $ly@@9 |_k'#0@@0| |a#0@@8|))
 :qid |Leqdfy.21:20|
 :skolemid |614|
 :pattern ( (_module.__default.IsInfinity_h $ly@@9 |_k'#0@@0| |a#0@@8|))
)))))))
 :qid |Leqdfy.21:20|
 :skolemid |616|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@9) |_k#0@@6| |a#0@@8|))
))))
(assert (forall ((|a#5#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.S| |a#5#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#5#0#0| Tclass._module.Nat))
 :qid |Leqdfy.9:24|
 :skolemid |771|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.S| |a#5#0#0|) Tclass._module.Nat))
)))
(assert (forall ((ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (! (= (|$Eq#_module.Nat| ($LS ly@@6) d0@@6 d1@@6) (forall ((k@@3 T@U) ) (! (|$PrefixEq#_module.Nat| k@@3 ($LS ly@@6) d0@@6 d1@@6)
 :qid |unknown.0:0|
 :skolemid |782|
 :pattern ( (|$PrefixEq#_module.Nat| k@@3 ($LS ly@@6) d0@@6 d1@@6))
)))
 :qid |unknown.0:0|
 :skolemid |783|
 :pattern ( (|$Eq#_module.Nat| ($LS ly@@6) d0@@6 d1@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|a#0@@9| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.__default.Leq#canCall| |a#0@@9| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@9| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@3| Tclass._module.Nat)))) (and (and (|$IsA#_module.Nat| |a#0@@9|) (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@9| |#_module.Nat.Z|)) (=> (_module.Nat.S_q |a#0@@9|) (=> (_module.Nat.S_q |b#0@@3|) (|_module.__default.Leq#canCall| (_module.Nat.pred |a#0@@9|) (_module.Nat.pred |b#0@@3|)))))) (= (_module.__default.Leq ($LS $ly@@10) |a#0@@9| |b#0@@3|)  (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@9| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@9|) (_module.Nat.S_q |b#0@@3|)) (_module.__default.Leq $ly@@10 (_module.Nat.pred |a#0@@9|) (_module.Nat.pred |b#0@@3|)))))))
 :qid |Leqdfy.50:17|
 :skolemid |639|
 :pattern ( (_module.__default.Leq ($LS $ly@@10) |a#0@@9| |b#0@@3|))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@11 T@U) (|_k#0@@7| T@U) (|a#0@@10| T@U) ) (!  (=> (or (|_module.__default.IsInfinity_h#canCall| (Lit BoxType |_k#0@@7|) (Lit DatatypeTypeType |a#0@@10|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@10| Tclass._module.Nat))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@10|))))) (|_module.__default.IsInfinity_h#canCall| (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@10|)))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (and (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@10|)) (_module.__default.IsInfinity_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@10|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@7|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@7|) (|_module.__default.IsInfinity_h#canCall| |_k'#2| |a#0@@10|))
 :qid |Leqdfy.21:20|
 :skolemid |621|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@11) |_k'#2| |a#0@@10|))
))))) (= (_module.__default.IsInfinity_h ($LS $ly@@11) (Lit BoxType |_k#0@@7|) (Lit DatatypeTypeType |a#0@@10|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (and (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@10|)) (_module.__default.IsInfinity_h ($LS $ly@@11) (|ORD#Minus| |_k#0@@7| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@10|)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@7|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@7|) (_module.__default.IsInfinity_h ($LS $ly@@11) |_k'#2@@0| |a#0@@10|))
 :qid |Leqdfy.21:20|
 :skolemid |620|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@11) |_k'#2@@0| |a#0@@10|))
)))))))
 :qid |Leqdfy.21:20|
 :weight 3
 :skolemid |622|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@11) (Lit BoxType |_k#0@@7|) (Lit DatatypeTypeType |a#0@@10|)))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Nat| d@@3) (or (_module.Nat.Z_q d@@3) (_module.Nat.S_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |775|
 :pattern ( (|$IsA#_module.Nat| d@@3))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@12 T@U) (|_k#0@@8| T@U) (|a#0@@11| T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.__default.Leq_h#canCall| |_k#0@@8| |a#0@@11| |b#0@@4|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@11| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@4| Tclass._module.Nat)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (and (|$IsA#_module.Nat| |a#0@@11|) (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@11| |#_module.Nat.Z|)) (=> (_module.Nat.S_q |a#0@@11|) (=> (_module.Nat.S_q |b#0@@4|) (|_module.__default.Leq_h#canCall| (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@11|) (_module.Nat.pred |b#0@@4|))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@11| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@11|) (_module.Nat.S_q |b#0@@4|)) (_module.__default.Leq_h $ly@@12 (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@11|) (_module.Nat.pred |b#0@@4|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@8|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0@@1| |_k#0@@8|) (|_module.__default.Leq_h#canCall| |_k'#0@@1| |a#0@@11| |b#0@@4|))
 :qid |Leqdfy.50:17|
 :skolemid |651|
 :pattern ( (_module.__default.Leq_h $ly@@12 |_k'#0@@1| |a#0@@11| |b#0@@4|))
))))) (= (_module.__default.Leq_h ($LS $ly@@12) |_k#0@@8| |a#0@@11| |b#0@@4|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@11| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@11|) (_module.Nat.S_q |b#0@@4|)) (_module.__default.Leq_h $ly@@12 (|ORD#Minus| |_k#0@@8| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@11|) (_module.Nat.pred |b#0@@4|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@8|)) (exists ((|_k'#0@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@2| |_k#0@@8|) (_module.__default.Leq_h $ly@@12 |_k'#0@@2| |a#0@@11| |b#0@@4|))
 :qid |Leqdfy.50:17|
 :skolemid |650|
 :pattern ( (_module.__default.Leq_h $ly@@12 |_k'#0@@2| |a#0@@11| |b#0@@4|))
)))))))
 :qid |Leqdfy.50:17|
 :skolemid |652|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@12) |_k#0@@8| |a#0@@11| |b#0@@4|))
))))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |91|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Nat) (or (_module.Nat.Z_q d@@4) (_module.Nat.S_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |776|
 :pattern ( (_module.Nat.S_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Nat))
 :pattern ( (_module.Nat.Z_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Nat))
)))
(assert (forall (($ly@@13 T@U) (|a#0@@12| T@U) ) (! (= (_module.__default.IsInfinity ($LS $ly@@13) |a#0@@12|) (_module.__default.IsInfinity $ly@@13 |a#0@@12|))
 :qid |Leqdfy.21:20|
 :skolemid |600|
 :pattern ( (_module.__default.IsInfinity ($LS $ly@@13) |a#0@@12|))
)))
(assert (forall (($ly@@14 T@U) (|_k#0@@9| T@U) (|a#0@@13| T@U) (|b#0@@5| T@U) ) (! (= (_module.__default.Leq_h ($LS $ly@@14) |_k#0@@9| |a#0@@13| |b#0@@5|) (_module.__default.Leq_h $ly@@14 |_k#0@@9| |a#0@@13| |b#0@@5|))
 :qid |Leqdfy.50:17|
 :skolemid |646|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@14) |_k#0@@9| |a#0@@13| |b#0@@5|))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@15 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Num#canCall| |n#0@@0|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@0|))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (|_module.__default.Num#canCall| (- |n#0@@0| 1))) (= (_module.__default.Num ($LS $ly@@15) |n#0@@0|) (ite (= |n#0@@0| (LitInt 0)) |#_module.Nat.Z| (|#_module.Nat.S| (_module.__default.Num $ly@@15 (- |n#0@@0| 1)))))))
 :qid |Leqdfy.11:16|
 :skolemid |586|
 :pattern ( (_module.__default.Num ($LS $ly@@15) |n#0@@0|))
))))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Nat.S| |a#3#0#0|)) |##_module.Nat.S|)
 :qid |Leqdfy.9:24|
 :skolemid |767|
 :pattern ( (|#_module.Nat.S| |a#3#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (_module.Nat.pred (|#_module.Nat.S| |a#6#0#0|)) |a#6#0#0|)
 :qid |Leqdfy.9:24|
 :skolemid |773|
 :pattern ( (|#_module.Nat.S| |a#6#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@3))
)))
(assert (forall (($ly@@16 T@U) (|n#0@@1| Int) ) (! (= (_module.__default.Num ($LS $ly@@16) |n#0@@1|) (_module.__default.Num $ly@@16 |n#0@@1|))
 :qid |Leqdfy.11:16|
 :skolemid |581|
 :pattern ( (_module.__default.Num ($LS $ly@@16) |n#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@17 T@U) (|_k#0@@10| T@U) (|a#0@@14| T@U) (|b#0@@6| T@U) ) (!  (=> (or (|_module.__default.Leq_h#canCall| (Lit BoxType |_k#0@@10|) |a#0@@14| |b#0@@6|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@14| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@6| Tclass._module.Nat)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (and (|$IsA#_module.Nat| |a#0@@14|) (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@14| |#_module.Nat.Z|)) (=> (_module.Nat.S_q |a#0@@14|) (=> (_module.Nat.S_q |b#0@@6|) (|_module.__default.Leq_h#canCall| (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@14|) (_module.Nat.pred |b#0@@6|))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@14| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@14|) (_module.Nat.S_q |b#0@@6|)) (_module.__default.Leq_h ($LS $ly@@17) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@14|) (_module.Nat.pred |b#0@@6|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@10|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@10|) (|_module.__default.Leq_h#canCall| |_k'#1| |a#0@@14| |b#0@@6|))
 :qid |Leqdfy.50:17|
 :skolemid |654|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@17) |_k'#1| |a#0@@14| |b#0@@6|))
))))) (= (_module.__default.Leq_h ($LS $ly@@17) (Lit BoxType |_k#0@@10|) |a#0@@14| |b#0@@6|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@14| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@14|) (_module.Nat.S_q |b#0@@6|)) (_module.__default.Leq_h ($LS $ly@@17) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@14|) (_module.Nat.pred |b#0@@6|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@10|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@10|) (_module.__default.Leq_h ($LS $ly@@17) |_k'#1@@0| |a#0@@14| |b#0@@6|))
 :qid |Leqdfy.50:17|
 :skolemid |653|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@17) |_k'#1@@0| |a#0@@14| |b#0@@6|))
)))))))
 :qid |Leqdfy.50:17|
 :weight 3
 :skolemid |655|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@17) (Lit BoxType |_k#0@@10|) |a#0@@14| |b#0@@6|))
))))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@1 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@1 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@2 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@2 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@2 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@3 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@3 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@4 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@5 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@5 y0@@1)))
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
 :skolemid |788|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@18 T@U) (|_k#0@@11| T@U) (|a#0@@15| T@U) ) (!  (=> (or (|_module.__default.IsInfinity_h#canCall| (Lit BoxType |_k#0@@11|) |a#0@@15|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@15| Tclass._module.Nat))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (=> (_module.Nat.S_q |a#0@@15|) (|_module.__default.IsInfinity_h#canCall| (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@15|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (and (_module.Nat.S_q |a#0@@15|) (_module.__default.IsInfinity_h ($LS $ly@@18) (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@15|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@11|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@11|) (|_module.__default.IsInfinity_h#canCall| |_k'#1@@1| |a#0@@15|))
 :qid |Leqdfy.21:20|
 :skolemid |618|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@18) |_k'#1@@1| |a#0@@15|))
))))) (= (_module.__default.IsInfinity_h ($LS $ly@@18) (Lit BoxType |_k#0@@11|) |a#0@@15|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (and (_module.Nat.S_q |a#0@@15|) (_module.__default.IsInfinity_h ($LS $ly@@18) (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@15|)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@11|)) (forall ((|_k'#1@@2| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@2| |_k#0@@11|) (_module.__default.IsInfinity_h ($LS $ly@@18) |_k'#1@@2| |a#0@@15|))
 :qid |Leqdfy.21:20|
 :skolemid |617|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@18) |_k'#1@@2| |a#0@@15|))
)))))))
 :qid |Leqdfy.21:20|
 :weight 3
 :skolemid |619|
 :pattern ( (_module.__default.IsInfinity_h ($LS $ly@@18) (Lit BoxType |_k#0@@11|) |a#0@@15|))
))))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass._module.Nat)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Nat $h@@0))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Nat $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@19 T@U) (|a#0@@16| T@U) (|b#0@@7| T@U) (|_k#0@@12| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@16| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@7| Tclass._module.Nat)) (= |_k#0@@12| (|ORD#FromNat| 0))) (not (_module.__default.Leq_h $ly@@19 |_k#0@@12| |a#0@@16| |b#0@@7|)))
 :qid |Leqdfy.50:17|
 :skolemid |643|
 :pattern ( (_module.__default.Leq_h $ly@@19 |_k#0@@12| |a#0@@16| |b#0@@7|))
))))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Nat.S_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Nat $h@@1))) ($IsAlloc DatatypeTypeType (_module.Nat.pred d@@6) Tclass._module.Nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat.pred d@@6) Tclass._module.Nat $h@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@20 T@U) (|_k#0@@13| T@U) (|a#0@@17| T@U) (|b#0@@8| T@U) ) (!  (=> (or (|_module.__default.Leq_h#canCall| (Lit BoxType |_k#0@@13|) (Lit DatatypeTypeType |a#0@@17|) (Lit DatatypeTypeType |b#0@@8|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@17| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@8| Tclass._module.Nat)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@13|)) (and (|$IsA#_module.Nat| (Lit DatatypeTypeType |a#0@@17|)) (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@17| |#_module.Nat.Z|)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@17|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Nat.S_q (Lit DatatypeTypeType |b#0@@8|))))) (|_module.__default.Leq_h#canCall| (|ORD#Minus| |_k#0@@13| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@17|))) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |b#0@@8|))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@13|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@17| |#_module.Nat.Z|) (and (and (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@17|)) (_module.Nat.S_q (Lit DatatypeTypeType |b#0@@8|))) (_module.__default.Leq_h ($LS $ly@@20) (|ORD#Minus| |_k#0@@13| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@17|))) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |b#0@@8|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@13|)) (forall ((|_k'#2@@1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2@@1| |_k#0@@13|) (|_module.__default.Leq_h#canCall| |_k'#2@@1| |a#0@@17| |b#0@@8|))
 :qid |Leqdfy.50:17|
 :skolemid |657|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@20) |_k'#2@@1| |a#0@@17| |b#0@@8|))
))))) (= (_module.__default.Leq_h ($LS $ly@@20) (Lit BoxType |_k#0@@13|) (Lit DatatypeTypeType |a#0@@17|) (Lit DatatypeTypeType |b#0@@8|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@13|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@17| |#_module.Nat.Z|) (and (and (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@17|)) (_module.Nat.S_q (Lit DatatypeTypeType |b#0@@8|))) (_module.__default.Leq_h ($LS $ly@@20) (|ORD#Minus| |_k#0@@13| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@17|))) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |b#0@@8|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@13|)) (exists ((|_k'#2@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@2| |_k#0@@13|) (_module.__default.Leq_h ($LS $ly@@20) |_k'#2@@2| |a#0@@17| |b#0@@8|))
 :qid |Leqdfy.50:17|
 :skolemid |656|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@20) |_k'#2@@2| |a#0@@17| |b#0@@8|))
)))))))
 :qid |Leqdfy.50:17|
 :weight 3
 :skolemid |658|
 :pattern ( (_module.__default.Leq_h ($LS $ly@@20) (Lit BoxType |_k#0@@13|) (Lit DatatypeTypeType |a#0@@17|) (Lit DatatypeTypeType |b#0@@8|)))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc BoxType v TORDINAL h)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |65|
 :pattern ( ($IsAlloc BoxType v TORDINAL h))
)))
(assert (forall ((k@@4 T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (= d0@@7 d1@@7) (|$PrefixEq#_module.Nat| k@@4 ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( (|$PrefixEq#_module.Nat| k@@4 ($LS ly@@7) d0@@7 d1@@7))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is BoxType v@@0 TORDINAL)
 :qid |DafnyPreludebpl.232:14|
 :skolemid |44|
 :pattern ( ($Is BoxType v@@0 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#0@@18| () T@U)
(declare-fun |b#0@@9| () T@U)
(declare-fun |k#2_1@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |k#2_0@0| () T@U)
(declare-fun |call4formal@m#0| () Int)
(declare-fun |call5formal@n#0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@m#0@0| () Int)
(declare-fun |call5formal@n#0@0| () Int)
(declare-fun |m#1_0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |m#1_1@0| () Int)
(declare-fun |m#5@0| () Int)
(declare-fun |m#0_0@0| () Int)
(declare-fun |n#0_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |m#0_1@0| () Int)
(declare-fun |n#0_1@0| () Int)
(declare-fun |m#3@0| () Int)
(declare-fun |n#3@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |m#0_0| () Int)
(declare-fun |n#0_0| () Int)
(declare-fun |m#1_0| () Int)
(declare-fun |m#2_0| () Int)
(declare-fun |n#2_0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.LeqTheorem)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon40_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (_module.__default.Leq ($LS ($LS $LZ)) |a#0@@18| |b#0@@9|) (exists ((|m#1| Int) ) (!  (and (<= (LitInt 0) |m#1|) (or (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS ($LS $LZ)) |m#1|)) (_module.__default.IsInfinity ($LS ($LS $LZ)) |b#0@@9|)) (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS ($LS $LZ)) |m#1|)) (exists ((|n#1| Int) ) (!  (and (<= (LitInt 0) |n#1|) (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS ($LS $LZ)) |n#1|)) (<= |m#1| |n#1|)))
 :qid |Leqdfy.59:54|
 :skolemid |667|
 :pattern ( (_module.__default.Num ($LS ($LS $LZ)) |n#1|))
)))))
 :qid |Leqdfy.58:20|
 :skolemid |668|
 :pattern ( (_module.__default.Num ($LS ($LS $LZ)) |m#1|))
))))))
(let ((anon40_Then_correct  (=> ($IsAlloc BoxType |k#2_1@0| TORDINAL $Heap@4) (=> (and (and ($IsAlloc DatatypeTypeType |a#0@@18| Tclass._module.Nat $Heap@4) ($IsAlloc DatatypeTypeType |b#0@@9| Tclass._module.Nat $Heap@4)) (and (|_module.__default.Leq_h#canCall| |k#2_1@0| |a#0@@18| |b#0@@9|) (|_module.__default.Leq_h#canCall| |k#2_1@0| |a#0@@18| |b#0@@9|))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (exists ((|$as#k2_0#2_0| T@U) ) (! (_module.__default.Leq_h ($LS $LZ) |$as#k2_0#2_0| |a#0@@18| |b#0@@9|)
 :qid |Leqdfy.70:9|
 :skolemid |688|
))) (=> (exists ((|$as#k2_0#2_0@@0| T@U) ) (! (_module.__default.Leq_h ($LS $LZ) |$as#k2_0#2_0@@0| |a#0@@18| |b#0@@9|)
 :qid |Leqdfy.70:9|
 :skolemid |688|
)) (=> (_module.__default.Leq_h ($LS $LZ) |k#2_0@0| |a#0@@18| |b#0@@9|) (=> (and (<= (LitInt 0) |call4formal@m#0|) (<= (LitInt 0) |call5formal@n#0|)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> (|_module.__default.Leq_h#canCall| |k#2_0@0| |a#0@@18| |b#0@@9|) (or (_module.__default.Leq_h ($LS $LZ) |k#2_0@0| |a#0@@18| |b#0@@9|) (=> (< 0 (|ORD#Offset| |k#2_0@0|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@18|) (_module.Nat.S_q |b#0@@9|)) (_module.__default.Leq_h ($LS ($LS $LZ)) (|ORD#Minus| |k#2_0@0| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@18|) (_module.Nat.pred |b#0@@9|)))))))) (=> (=> (|_module.__default.Leq_h#canCall| |k#2_0@0| |a#0@@18| |b#0@@9|) (or (_module.__default.Leq_h ($LS $LZ) |k#2_0@0| |a#0@@18| |b#0@@9|) (=> (< 0 (|ORD#Offset| |k#2_0@0|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@18|) (_module.Nat.S_q |b#0@@9|)) (_module.__default.Leq_h ($LS ($LS $LZ)) (|ORD#Minus| |k#2_0@0| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@18|) (_module.Nat.pred |b#0@@9|))))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> (|_module.__default.Leq_h#canCall| |k#2_0@0| |a#0@@18| |b#0@@9|) (or (_module.__default.Leq_h ($LS $LZ) |k#2_0@0| |a#0@@18| |b#0@@9|) (=> (= (LitInt 0) (|ORD#Offset| |k#2_0@0|)) (exists ((|_k'#0@@3| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@3| |k#2_0@0|) (_module.__default.Leq_h ($LS $LZ) |_k'#0@@3| |a#0@@18| |b#0@@9|))
 :qid |Leqdfy.50:17|
 :skolemid |692|
 :pattern ( (_module.__default.Leq_h ($LS $LZ) |_k'#0@@3| |a#0@@18| |b#0@@9|))
)))))) (=> (=> (|_module.__default.Leq_h#canCall| |k#2_0@0| |a#0@@18| |b#0@@9|) (or (_module.__default.Leq_h ($LS $LZ) |k#2_0@0| |a#0@@18| |b#0@@9|) (=> (= (LitInt 0) (|ORD#Offset| |k#2_0@0|)) (exists ((|_k'#0@@4| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@4| |k#2_0@0|) (_module.__default.Leq_h ($LS $LZ) |_k'#0@@4| |a#0@@18| |b#0@@9|))
 :qid |Leqdfy.50:17|
 :skolemid |692|
 :pattern ( (_module.__default.Leq_h ($LS $LZ) |_k'#0@@4| |a#0@@18| |b#0@@9|))
))))) (=> (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (<= (LitInt 0) |call4formal@m#0@0|) (<= (LitInt 0) |call5formal@n#0@0|))) (=> (and (and (and (and (|$IsA#_module.Nat| |a#0@@18|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |call4formal@m#0@0|))) (|_module.__default.Num#canCall| |call4formal@m#0@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS ($LS $LZ)) |call4formal@m#0@0|))) (and (and (and (|_module.__default.IsInfinity#canCall| |b#0@@9|) (=> (not (_module.__default.IsInfinity ($LS $LZ) |b#0@@9|)) (and (and (|$IsA#_module.Nat| |b#0@@9|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |call5formal@n#0@0|))) (|_module.__default.Num#canCall| |call5formal@n#0@0|)))) (or (_module.__default.IsInfinity ($LS ($LS $LZ)) |b#0@@9|) (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS ($LS $LZ)) |call5formal@n#0@0|)) (<= |call4formal@m#0@0| |call5formal@n#0@0|)))) (and (= $Heap@4 $Heap@5) (= (ControlFlow 0 4) 2)))) GeneratedUnifiedExit_correct))))))))))))))
(let ((anon39_Then_correct  (=> (_module.__default.Leq ($LS $LZ) |a#0@@18| |b#0@@9|) (and (=> (= (ControlFlow 0 9) 4) anon40_Then_correct) (=> (= (ControlFlow 0 9) 8) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (not (_module.__default.Leq ($LS $LZ) |a#0@@18| |b#0@@9|)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon23_correct  (=> (and (and ($IsAlloc DatatypeTypeType |a#0@@18| Tclass._module.Nat $Heap@4) ($IsAlloc DatatypeTypeType |b#0@@9| Tclass._module.Nat $Heap@4)) (and (|_module.__default.Leq#canCall| |a#0@@18| |b#0@@9|) (|_module.__default.Leq#canCall| |a#0@@18| |b#0@@9|))) (and (=> (= (ControlFlow 0 10) 9) anon39_Then_correct) (=> (= (ControlFlow 0 10) 3) anon39_Else_correct)))))
(let ((anon21_correct  (and (=> (= (ControlFlow 0 12) (- 0 15)) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (exists ((|$as#m1_0#1_0| Int) ) (!  (and (<= (LitInt 0) |$as#m1_0#1_0|) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m1_0#1_0|)))
 :qid |Leqdfy.66:9|
 :skolemid |685|
))))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (exists ((|$as#m1_0#1_0@@0| Int) ) (!  (and (<= (LitInt 0) |$as#m1_0#1_0@@0|) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m1_0#1_0@@0|)))
 :qid |Leqdfy.66:9|
 :skolemid |685|
)))) (=> (and (<= (LitInt 0) |m#1_0@0|) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#1_0@0|))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> (|_module.__default.IsInfinity#canCall| |b#0@@9|) (or (_module.__default.IsInfinity ($LS $LZ) |b#0@@9|) (_module.Nat.S_q |b#0@@9|)))) (=> (=> (|_module.__default.IsInfinity#canCall| |b#0@@9|) (or (_module.__default.IsInfinity ($LS $LZ) |b#0@@9|) (_module.Nat.S_q |b#0@@9|))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> (|_module.__default.IsInfinity#canCall| |b#0@@9|) (or (_module.__default.IsInfinity ($LS $LZ) |b#0@@9|) (_module.__default.IsInfinity ($LS ($LS $LZ)) (_module.Nat.pred |b#0@@9|))))) (=> (=> (|_module.__default.IsInfinity#canCall| |b#0@@9|) (or (_module.__default.IsInfinity ($LS $LZ) |b#0@@9|) (_module.__default.IsInfinity ($LS ($LS $LZ)) (_module.Nat.pred |b#0@@9|)))) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (|_module.__default.Num#canCall| |m#1_0@0|) (|_module.__default.Leq#canCall| (_module.__default.Num ($LS $LZ) |m#1_0@0|) |b#0@@9|))) (=> (and (and (and (|_module.__default.Leq#canCall| (_module.__default.Num ($LS $LZ) |m#1_0@0|) |b#0@@9|) (and (_module.__default.Leq ($LS $LZ) (_module.__default.Num ($LS $LZ) |m#1_0@0|) |b#0@@9|) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) (_module.__default.Num ($LS $LZ) |m#1_0@0|) |#_module.Nat.Z|) (and (and (_module.Nat.S_q (_module.__default.Num ($LS $LZ) |m#1_0@0|)) (_module.Nat.S_q |b#0@@9|)) (_module.__default.Leq ($LS $LZ) (_module.Nat.pred (_module.__default.Num ($LS $LZ) |m#1_0@0|)) (_module.Nat.pred |b#0@@9|)))))) (= $Heap@2 $Heap@3)) (and (= $Heap@4 $Heap@3) (= (ControlFlow 0 12) 10))) anon23_correct)))))))))))
(let ((anon38_Else_correct  (=> (and (< |m#1_1@0| (LitInt 0)) (= (ControlFlow 0 17) 12)) anon21_correct)))
(let ((anon38_Then_correct  (=> (<= (LitInt 0) |m#1_1@0|) (=> (and ($IsAlloc intType (int_2_U |m#1_1@0|) Tclass._System.nat $Heap@2) (|_module.__default.Num#canCall| |m#1_1@0|)) (=> (and (and (and (|$IsA#_module.Nat| |a#0@@18|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |m#1_1@0|))) (|_module.__default.Num#canCall| |m#1_1@0|)) (= (ControlFlow 0 16) 12)) anon21_correct)))))
(let ((anon37_Then_correct  (=> (and (exists ((|m#6| Int) ) (!  (and (<= (LitInt 0) |m#6|) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#6|)))
 :qid |Leqdfy.65:14|
 :skolemid |687|
 :pattern ( (_module.__default.Num ($LS $LZ) |m#6|))
)) (_module.__default.IsInfinity ($LS $LZ) |b#0@@9|)) (and (=> (= (ControlFlow 0 18) 16) anon38_Then_correct) (=> (= (ControlFlow 0 18) 17) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (not (and (exists ((|m#6@@0| Int) ) (!  (and (<= (LitInt 0) |m#6@@0|) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#6@@0|)))
 :qid |Leqdfy.65:14|
 :skolemid |687|
 :pattern ( (_module.__default.Num ($LS $LZ) |m#6@@0|))
)) (_module.__default.IsInfinity ($LS $LZ) |b#0@@9|))) (=> (and (= $Heap@4 $Heap@2) (= (ControlFlow 0 11) 10)) anon23_correct))))
(let ((anon18_correct  (=> (and (forall ((|m#6@@1| Int) ) (!  (=> (<= (LitInt 0) |m#6@@1|) (and (and (|$IsA#_module.Nat| |a#0@@18|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |m#6@@1|))) (|_module.__default.Num#canCall| |m#6@@1|)))
 :qid |Leqdfy.65:14|
 :skolemid |683|
 :pattern ( (_module.__default.Num ($LS $LZ) |m#6@@1|))
)) (=> (exists ((|m#6@@2| Int) ) (!  (and (<= (LitInt 0) |m#6@@2|) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#6@@2|)))
 :qid |Leqdfy.65:14|
 :skolemid |684|
 :pattern ( (_module.__default.Num ($LS $LZ) |m#6@@2|))
)) (|_module.__default.IsInfinity#canCall| |b#0@@9|))) (and (=> (= (ControlFlow 0 19) 18) anon37_Then_correct) (=> (= (ControlFlow 0 19) 11) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (not (exists ((|m#6@@3| Int) ) (!  (and (<= (LitInt 0) |m#6@@3|) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#6@@3|)))
 :qid |Leqdfy.65:14|
 :skolemid |682|
 :pattern ( (_module.__default.Num ($LS $LZ) |m#6@@3|))
))) (= (ControlFlow 0 21) 19)) anon18_correct)))
(let ((anon36_Then_correct  (=> (and (and (exists ((|m#6@@4| Int) ) (!  (and (<= (LitInt 0) |m#6@@4|) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#6@@4|)))
 :qid |Leqdfy.65:14|
 :skolemid |682|
 :pattern ( (_module.__default.Num ($LS $LZ) |m#6@@4|))
)) ($IsAlloc DatatypeTypeType |b#0@@9| Tclass._module.Nat $Heap@2)) (and (|_module.__default.IsInfinity#canCall| |b#0@@9|) (= (ControlFlow 0 20) 19))) anon18_correct)))
(let ((anon35_Else_correct  (=> (< |m#5@0| (LitInt 0)) (and (=> (= (ControlFlow 0 23) 20) anon36_Then_correct) (=> (= (ControlFlow 0 23) 21) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (<= (LitInt 0) |m#5@0|) (=> (and ($IsAlloc intType (int_2_U |m#5@0|) Tclass._System.nat $Heap@2) (|_module.__default.Num#canCall| |m#5@0|)) (and (=> (= (ControlFlow 0 22) 20) anon36_Then_correct) (=> (= (ControlFlow 0 22) 21) anon36_Else_correct))))))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 25) (- 0 27)) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (exists ((|$as#m0_0#0_0| Int) ) (!  (and (<= (LitInt 0) |$as#m0_0#0_0|) (and ($Is intType (int_2_U |$as#m0_0#0_0|) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0|))) (<= |$as#m0_0#0_0| |$as#m0_0#0_0|))))
 :qid |Leqdfy.62:9|
 :skolemid |679|
)) (or (and (and ($Is intType (int_2_U (LitInt (- (+ 0 1) 1))) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt (- (+ 0 1) 1)))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt (- (+ 0 1) 1)) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (exists ((|$as#m0_0#0_0@@0| Int) ) (!  (and (<= (LitInt 0) |$as#m0_0#0_0@@0|) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0@@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= |$as#m0_0#0_0@@0| (LitInt 0)))))
 :qid |Leqdfy.62:9|
 :skolemid |678|
)) (or (and (and ($Is intType (int_2_U (LitInt (- (+ 0 1) 1))) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt (- (+ 0 1) 1)))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt (- (+ 0 1) 1)) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (exists ((|$as#m0_0#0_0@@1| Int) ) (!  (and (<= (LitInt 0) |$as#m0_0#0_0@@1|) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0@@1|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= |$as#m0_0#0_0@@1| (LitInt 0)))))
 :qid |Leqdfy.62:9|
 :skolemid |677|
)) (or (exists ((|$as#n0_0#0_0| Int) ) (!  (and (<= (LitInt 0) |$as#n0_0#0_0|) (and ($Is intType (int_2_U (- (+ |$as#n0_0#0_0| 1) 1)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (- (+ |$as#n0_0#0_0| 1) 1))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#n0_0#0_0|))) (<= (- (+ |$as#n0_0#0_0| 1) 1) |$as#n0_0#0_0|))))
 :qid |Leqdfy.62:15|
 :skolemid |676|
)) (or (exists ((|$as#n0_0#0_0@@0| Int) ) (!  (and (<= (LitInt 0) |$as#n0_0#0_0@@0|) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#n0_0#0_0@@0|))) (<= (LitInt 0) |$as#n0_0#0_0@@0|))))
 :qid |Leqdfy.62:15|
 :skolemid |675|
)) (or (exists ((|$as#n0_0#0_0@@1| Int) ) (!  (and (<= (LitInt 0) |$as#n0_0#0_0@@1|) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#n0_0#0_0@@1|))) (<= (LitInt 0) |$as#n0_0#0_0@@1|))))
 :qid |Leqdfy.62:15|
 :skolemid |674|
)) (exists ((|$as#m0_0#0_0@@2| Int) (|$as#n0_0#0_0@@2| Int) ) (!  (and (and (<= (LitInt 0) |$as#m0_0#0_0@@2|) (<= (LitInt 0) |$as#n0_0#0_0@@2|)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0@@2|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#n0_0#0_0@@2|))) (<= |$as#m0_0#0_0@@2| |$as#n0_0#0_0@@2|)))
 :qid |Leqdfy.62:9|
 :skolemid |673|
))))))))))))))))) (=> (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (exists ((|$as#m0_0#0_0@@3| Int) ) (!  (and (<= (LitInt 0) |$as#m0_0#0_0@@3|) (and ($Is intType (int_2_U |$as#m0_0#0_0@@3|) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0@@3|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0@@3|))) (<= |$as#m0_0#0_0@@3| |$as#m0_0#0_0@@3|))))
 :qid |Leqdfy.62:9|
 :skolemid |679|
)) (or (and (and ($Is intType (int_2_U (LitInt (- (+ 0 1) 1))) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt (- (+ 0 1) 1)))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt (- (+ 0 1) 1)) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (exists ((|$as#m0_0#0_0@@4| Int) ) (!  (and (<= (LitInt 0) |$as#m0_0#0_0@@4|) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0@@4|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= |$as#m0_0#0_0@@4| (LitInt 0)))))
 :qid |Leqdfy.62:9|
 :skolemid |678|
)) (or (and (and ($Is intType (int_2_U (LitInt (- (+ 0 1) 1))) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt (- (+ 0 1) 1)))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt (- (+ 0 1) 1)) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= (LitInt 0) (LitInt 0)))) (or (exists ((|$as#m0_0#0_0@@5| Int) ) (!  (and (<= (LitInt 0) |$as#m0_0#0_0@@5|) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0@@5|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) (LitInt 0)))) (<= |$as#m0_0#0_0@@5| (LitInt 0)))))
 :qid |Leqdfy.62:9|
 :skolemid |677|
)) (or (exists ((|$as#n0_0#0_0@@3| Int) ) (!  (and (<= (LitInt 0) |$as#n0_0#0_0@@3|) (and ($Is intType (int_2_U (- (+ |$as#n0_0#0_0@@3| 1) 1)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (- (+ |$as#n0_0#0_0@@3| 1) 1))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#n0_0#0_0@@3|))) (<= (- (+ |$as#n0_0#0_0@@3| 1) 1) |$as#n0_0#0_0@@3|))))
 :qid |Leqdfy.62:15|
 :skolemid |676|
)) (or (exists ((|$as#n0_0#0_0@@4| Int) ) (!  (and (<= (LitInt 0) |$as#n0_0#0_0@@4|) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#n0_0#0_0@@4|))) (<= (LitInt 0) |$as#n0_0#0_0@@4|))))
 :qid |Leqdfy.62:15|
 :skolemid |675|
)) (or (exists ((|$as#n0_0#0_0@@5| Int) ) (!  (and (<= (LitInt 0) |$as#n0_0#0_0@@5|) (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) (LitInt 0))) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#n0_0#0_0@@5|))) (<= (LitInt 0) |$as#n0_0#0_0@@5|))))
 :qid |Leqdfy.62:15|
 :skolemid |674|
)) (exists ((|$as#m0_0#0_0@@6| Int) (|$as#n0_0#0_0@@6| Int) ) (!  (and (and (<= (LitInt 0) |$as#m0_0#0_0@@6|) (<= (LitInt 0) |$as#n0_0#0_0@@6|)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |$as#m0_0#0_0@@6|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |$as#n0_0#0_0@@6|))) (<= |$as#m0_0#0_0@@6| |$as#n0_0#0_0@@6|)))
 :qid |Leqdfy.62:9|
 :skolemid |673|
)))))))))))))))) (=> (and (<= (LitInt 0) |m#0_0@0|) (<= (LitInt 0) |n#0_0@0|)) (=> (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#0_0@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |n#0_0@0|))) (<= |m#0_0@0| |n#0_0@0|)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (<= |m#0_0@0| |n#0_0@0|)) (=> (<= |m#0_0@0| |n#0_0@0|) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|_module.__default.Num#canCall| |m#0_0@0|) (|_module.__default.Num#canCall| |n#0_0@0|)) (|_module.__default.Leq#canCall| (_module.__default.Num ($LS $LZ) |m#0_0@0|) (_module.__default.Num ($LS $LZ) |n#0_0@0|))) (and (and (|_module.__default.Leq#canCall| (_module.__default.Num ($LS $LZ) |m#0_0@0|) (_module.__default.Num ($LS $LZ) |n#0_0@0|)) (and (_module.__default.Leq ($LS $LZ) (_module.__default.Num ($LS $LZ) |m#0_0@0|) (_module.__default.Num ($LS $LZ) |n#0_0@0|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) (_module.__default.Num ($LS $LZ) |m#0_0@0|) |#_module.Nat.Z|) (and (and (_module.Nat.S_q (_module.__default.Num ($LS $LZ) |m#0_0@0|)) (_module.Nat.S_q (_module.__default.Num ($LS $LZ) |n#0_0@0|))) (_module.__default.Leq ($LS $LZ) (_module.Nat.pred (_module.__default.Num ($LS $LZ) |m#0_0@0|)) (_module.Nat.pred (_module.__default.Num ($LS $LZ) |n#0_0@0|))))))) (and (= $Heap@0 $Heap@1) (= $Heap@2 $Heap@1)))) (and (=> (= (ControlFlow 0 25) 22) anon35_Then_correct) (=> (= (ControlFlow 0 25) 23) anon35_Else_correct))))))))))))
(let ((anon11_correct  (=> (and (and (and (and (|$IsA#_module.Nat| |a#0@@18|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |m#0_1@0|))) (|_module.__default.Num#canCall| |m#0_1@0|)) (=> (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#0_1@0|)) (and (and (|$IsA#_module.Nat| |b#0@@9|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |n#0_1@0|))) (|_module.__default.Num#canCall| |n#0_1@0|)))) (= (ControlFlow 0 29) 25)) anon12_correct)))
(let ((anon34_Else_correct  (=> (and (not (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#0_1@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |n#0_1@0|)))) (= (ControlFlow 0 31) 29)) anon11_correct)))
(let ((anon34_Then_correct  (=> (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#0_1@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |n#0_1@0|))) (= (ControlFlow 0 30) 29)) anon11_correct)))
(let ((anon33_Else_correct  (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#0_1@0|))) (and (=> (= (ControlFlow 0 33) 30) anon34_Then_correct) (=> (= (ControlFlow 0 33) 31) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#0_1@0|)) (=> (and ($IsAlloc intType (int_2_U |n#0_1@0|) Tclass._System.nat $Heap@0) (|_module.__default.Num#canCall| |n#0_1@0|)) (and (=> (= (ControlFlow 0 32) 30) anon34_Then_correct) (=> (= (ControlFlow 0 32) 31) anon34_Else_correct))))))
(let ((anon32_Then_correct  (=> (and (and (<= (LitInt 0) |m#0_1@0|) (<= (LitInt 0) |n#0_1@0|)) (and ($IsAlloc intType (int_2_U |m#0_1@0|) Tclass._System.nat $Heap@0) (|_module.__default.Num#canCall| |m#0_1@0|))) (and (=> (= (ControlFlow 0 34) 32) anon33_Then_correct) (=> (= (ControlFlow 0 34) 33) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not (and (<= (LitInt 0) |m#0_1@0|) (<= (LitInt 0) |n#0_1@0|))) (= (ControlFlow 0 28) 25)) anon12_correct)))
(let ((anon31_Then_correct  (=> (exists ((|n#4| Int) (|m#4| Int) ) (!  (and (and (<= (LitInt 0) |n#4|) (<= (LitInt 0) |m#4|)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#4|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |n#4|))) (<= |m#4| |n#4|)))
 :qid |Leqdfy.61:19|
 :skolemid |681|
 :pattern ( (_module.__default.Num ($LS $LZ) |n#4|) (_module.__default.Num ($LS $LZ) |m#4|))
)) (and (=> (= (ControlFlow 0 35) 34) anon32_Then_correct) (=> (= (ControlFlow 0 35) 28) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (not (exists ((|n#4@@0| Int) (|m#4@@0| Int) ) (!  (and (and (<= (LitInt 0) |n#4@@0|) (<= (LitInt 0) |m#4@@0|)) (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#4@@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |n#4@@0|))) (<= |m#4@@0| |n#4@@0|)))
 :qid |Leqdfy.61:19|
 :skolemid |681|
 :pattern ( (_module.__default.Num ($LS $LZ) |n#4@@0|) (_module.__default.Num ($LS $LZ) |m#4@@0|))
))) (= $Heap@2 $Heap@0)) (and (=> (= (ControlFlow 0 24) 22) anon35_Then_correct) (=> (= (ControlFlow 0 24) 23) anon35_Else_correct)))))
(let ((anon5_correct  (=> (forall ((|n#4@@1| Int) (|m#4@@1| Int) ) (!  (=> (and (<= (LitInt 0) |n#4@@1|) (<= (LitInt 0) |m#4@@1|)) (and (and (and (|$IsA#_module.Nat| |a#0@@18|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |m#4@@1|))) (|_module.__default.Num#canCall| |m#4@@1|)) (=> (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#4@@1|)) (and (and (|$IsA#_module.Nat| |b#0@@9|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |n#4@@1|))) (|_module.__default.Num#canCall| |n#4@@1|)))))
 :qid |Leqdfy.61:19|
 :skolemid |672|
 :pattern ( (_module.__default.Num ($LS $LZ) |n#4@@1|) (_module.__default.Num ($LS $LZ) |m#4@@1|))
)) (and (=> (= (ControlFlow 0 36) 35) anon31_Then_correct) (=> (= (ControlFlow 0 36) 24) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#3@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |n#3@0|)))) (= (ControlFlow 0 39) 36)) anon5_correct)))
(let ((anon30_Then_correct  (=> (and (and (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#3@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |b#0@@9| (_module.__default.Num ($LS $LZ) |n#3@0|))) (= (ControlFlow 0 38) 36)) anon5_correct)))
(let ((anon29_Else_correct  (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#3@0|))) (and (=> (= (ControlFlow 0 41) 38) anon30_Then_correct) (=> (= (ControlFlow 0 41) 39) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@18| (_module.__default.Num ($LS $LZ) |m#3@0|)) (=> (and ($IsAlloc intType (int_2_U |n#3@0|) Tclass._System.nat $Heap@0) (|_module.__default.Num#canCall| |n#3@0|)) (and (=> (= (ControlFlow 0 40) 38) anon30_Then_correct) (=> (= (ControlFlow 0 40) 39) anon30_Else_correct))))))
(let ((anon28_Then_correct  (=> (and (and (<= (LitInt 0) |n#3@0|) (<= (LitInt 0) |m#3@0|)) (and ($IsAlloc intType (int_2_U |m#3@0|) Tclass._System.nat $Heap@0) (|_module.__default.Num#canCall| |m#3@0|))) (and (=> (= (ControlFlow 0 42) 40) anon29_Then_correct) (=> (= (ControlFlow 0 42) 41) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not (and (<= (LitInt 0) |n#3@0|) (<= (LitInt 0) |m#3@0|))) (= (ControlFlow 0 37) 36)) anon5_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (|$IsA#_module.Nat| |a#0@@18|) (|$IsA#_module.Nat| |b#0@@9|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#a0#0| T@U) (|$ih#b0#0| T@U) ) (! true
 :qid |Leqdfy.56:18|
 :skolemid |671|
 :pattern ( (_module.__default.Leq ($LS $LZ) |$ih#a0#0| |$ih#b0#0|))
)))) (and (=> (= (ControlFlow 0 43) 42) anon28_Then_correct) (=> (= (ControlFlow 0 43) 37) anon28_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |a#0@@18| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |a#0@@18| Tclass._module.Nat $Heap)) (|$IsA#_module.Nat| |a#0@@18|)) (=> (and (and (and (and ($Is DatatypeTypeType |b#0@@9| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |b#0@@9| Tclass._module.Nat $Heap)) (|$IsA#_module.Nat| |b#0@@9|)) (and (and (<= (LitInt 0) |m#0_0|) true) (and (<= (LitInt 0) |n#0_0|) true))) (and (and (and (<= (LitInt 0) |m#1_0|) true) (and (<= (LitInt 0) |m#2_0|) true)) (and (and (<= (LitInt 0) |n#2_0|) true) (and (= 6 $FunctionContextHeight) (= (ControlFlow 0 44) 43))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
