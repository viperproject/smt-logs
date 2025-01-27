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
(declare-fun _module.__default.CoLeq (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Nat () T@U)
(declare-fun _module.__default.CoLeq_h (T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.Num (T@U Int) T@U)
(declare-fun |_module.__default.Num#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |$PrefixEq#_module.Nat| (T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Nat.Z_q (T@U) Bool)
(declare-fun _module.Nat.S_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Nat.pred (T@U) T@U)
(declare-fun |#_module.Nat.S| (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |_module.__default.CoLeq#canCall| (T@U T@U) Bool)
(declare-fun |$IsA#_module.Nat| (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |_module.__default.CoLeq_h#canCall| (T@U T@U T@U) Bool)
(declare-fun BoxType () T@T)
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
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat Tagclass._module.Nat |##_module.Nat.Z| |##_module.Nat.S| tytagFamily$nat tytagFamily$Nat)
)
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0| Tclass._module.Nat) ($Is DatatypeTypeType |b#0| Tclass._module.Nat)) (_module.__default.CoLeq ($LS $ly) |a#0| |b#0|)) (forall ((|_k#0| T@U) ) (! (_module.__default.CoLeq_h ($LS $ly) |_k#0| |a#0| |b#0|)
 :qid |Leqdfy.112:20|
 :skolemid |708|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly) |_k#0| |a#0| |b#0|))
)))
 :qid |Leqdfy.112:20|
 :skolemid |709|
 :pattern ( (_module.__default.CoLeq ($LS $ly) |a#0| |b#0|))
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
(assert (forall ((k@@1 T@U) (ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 Tclass._module.Nat) ($Is DatatypeTypeType d1@@2 Tclass._module.Nat)) (= (|$PrefixEq#_module.Nat| k@@1 ($LS ly@@2) d0@@2 d1@@2)  (and (=> (< 0 (|ORD#Offset| k@@1)) (or (and (_module.Nat.Z_q d0@@2) (_module.Nat.Z_q d1@@2)) (and (and (_module.Nat.S_q d0@@2) (_module.Nat.S_q d1@@2)) (=> (and (_module.Nat.S_q d0@@2) (_module.Nat.S_q d1@@2)) (|$PrefixEq#_module.Nat| (|ORD#Minus| k@@1 (|ORD#FromNat| 1)) ly@@2 (_module.Nat.pred d0@@2) (_module.Nat.pred d1@@2)))))) (=> (and (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@1) 0)) (|$Eq#_module.Nat| ly@@2 d0@@2 d1@@2)))))
 :qid |unknown.0:0|
 :skolemid |780|
 :pattern ( (|$PrefixEq#_module.Nat| k@@1 ($LS ly@@2) d0@@2 d1@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@0| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@0| Tclass._module.Nat)) (forall ((|_k#0@@0| T@U) ) (! (_module.__default.CoLeq_h ($LS $ly@@1) |_k#0@@0| |a#0@@0| |b#0@@0|)
 :qid |Leqdfy.112:20|
 :skolemid |708|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@1) |_k#0@@0| |a#0@@0| |b#0@@0|))
))) (_module.__default.CoLeq ($LS $ly@@1) |a#0@@0| |b#0@@0|))
 :qid |Leqdfy.112:20|
 :skolemid |710|
 :pattern ( (_module.__default.CoLeq ($LS $ly@@1) |a#0@@0| |b#0@@0|))
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
(assert (forall (($ly@@2 T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (! (= (_module.__default.CoLeq ($LS $ly@@2) |a#0@@1| |b#0@@1|) (_module.__default.CoLeq $ly@@2 |a#0@@1| |b#0@@1|))
 :qid |Leqdfy.112:20|
 :skolemid |703|
 :pattern ( (_module.__default.CoLeq ($LS $ly@@2) |a#0@@1| |b#0@@1|))
)))
(assert (forall ((ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) ) (! (= (|$Eq#_module.Nat| ($LS ly@@5) d0@@5 d1@@5) (|$Eq#_module.Nat| ly@@5 d0@@5 d1@@5))
 :qid |unknown.0:0|
 :skolemid |778|
 :pattern ( (|$Eq#_module.Nat| ($LS ly@@5) d0@@5 d1@@5))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (or (|_module.__default.CoLeq#canCall| |a#0@@2| |b#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@2| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@2| Tclass._module.Nat)))) (and (and (|$IsA#_module.Nat| |a#0@@2|) (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@2| |#_module.Nat.Z|)) (=> (_module.Nat.S_q |a#0@@2|) (=> (_module.Nat.S_q |b#0@@2|) (|_module.__default.CoLeq#canCall| (_module.Nat.pred |a#0@@2|) (_module.Nat.pred |b#0@@2|)))))) (= (_module.__default.CoLeq ($LS $ly@@3) |a#0@@2| |b#0@@2|)  (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@2| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@2|) (_module.Nat.S_q |b#0@@2|)) (_module.__default.CoLeq $ly@@3 (_module.Nat.pred |a#0@@2|) (_module.Nat.pred |b#0@@2|)))))))
 :qid |Leqdfy.112:20|
 :skolemid |707|
 :pattern ( (_module.__default.CoLeq ($LS $ly@@3) |a#0@@2| |b#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@1| T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.__default.CoLeq_h#canCall| |_k#0@@1| |a#0@@3| |b#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@3| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@3| Tclass._module.Nat)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (and (|$IsA#_module.Nat| |a#0@@3|) (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@3| |#_module.Nat.Z|)) (=> (_module.Nat.S_q |a#0@@3|) (=> (_module.Nat.S_q |b#0@@3|) (|_module.__default.CoLeq_h#canCall| (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@3|) (_module.Nat.pred |b#0@@3|))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@3| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@3|) (_module.Nat.S_q |b#0@@3|)) (_module.__default.CoLeq_h $ly@@4 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@3|) (_module.Nat.pred |b#0@@3|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@1|) (|_module.__default.CoLeq_h#canCall| |_k'#0| |a#0@@3| |b#0@@3|))
 :qid |Leqdfy.112:20|
 :skolemid |718|
 :pattern ( (_module.__default.CoLeq_h $ly@@4 |_k'#0| |a#0@@3| |b#0@@3|))
))))) (= (_module.__default.CoLeq_h ($LS $ly@@4) |_k#0@@1| |a#0@@3| |b#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@1|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@3| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@3|) (_module.Nat.S_q |b#0@@3|)) (_module.__default.CoLeq_h $ly@@4 (|ORD#Minus| |_k#0@@1| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@3|) (_module.Nat.pred |b#0@@3|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@1|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@1|) (_module.__default.CoLeq_h $ly@@4 |_k'#0@@0| |a#0@@3| |b#0@@3|))
 :qid |Leqdfy.112:20|
 :skolemid |717|
 :pattern ( (_module.__default.CoLeq_h $ly@@4 |_k'#0@@0| |a#0@@3| |b#0@@3|))
)))))))
 :qid |Leqdfy.112:20|
 :skolemid |719|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@4) |_k#0@@1| |a#0@@3| |b#0@@3|))
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
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Nat) (or (_module.Nat.Z_q d@@4) (_module.Nat.S_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |776|
 :pattern ( (_module.Nat.S_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Nat))
 :pattern ( (_module.Nat.Z_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Nat))
)))
(assert (forall (($ly@@5 T@U) (|_k#0@@2| T@U) (|a#0@@4| T@U) (|b#0@@4| T@U) ) (! (= (_module.__default.CoLeq_h ($LS $ly@@5) |_k#0@@2| |a#0@@4| |b#0@@4|) (_module.__default.CoLeq_h $ly@@5 |_k#0@@2| |a#0@@4| |b#0@@4|))
 :qid |Leqdfy.112:20|
 :skolemid |713|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@5) |_k#0@@2| |a#0@@4| |b#0@@4|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Num#canCall| |n#0@@0|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |n#0@@0|))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (|_module.__default.Num#canCall| (- |n#0@@0| 1))) (= (_module.__default.Num ($LS $ly@@6) |n#0@@0|) (ite (= |n#0@@0| (LitInt 0)) |#_module.Nat.Z| (|#_module.Nat.S| (_module.__default.Num $ly@@6 (- |n#0@@0| 1)))))))
 :qid |Leqdfy.11:16|
 :skolemid |586|
 :pattern ( (_module.__default.Num ($LS $ly@@6) |n#0@@0|))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|_k#0@@3| T@U) (|a#0@@5| T@U) (|b#0@@5| T@U) ) (!  (=> (or (|_module.__default.CoLeq_h#canCall| (Lit BoxType |_k#0@@3|) |a#0@@5| |b#0@@5|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@5| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@5| Tclass._module.Nat)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (and (|$IsA#_module.Nat| |a#0@@5|) (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@5| |#_module.Nat.Z|)) (=> (_module.Nat.S_q |a#0@@5|) (=> (_module.Nat.S_q |b#0@@5|) (|_module.__default.CoLeq_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@5|) (_module.Nat.pred |b#0@@5|))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@5| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@5|) (_module.Nat.S_q |b#0@@5|)) (_module.__default.CoLeq_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@5|) (_module.Nat.pred |b#0@@5|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@3|) (|_module.__default.CoLeq_h#canCall| |_k'#1| |a#0@@5| |b#0@@5|))
 :qid |Leqdfy.112:20|
 :skolemid |721|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@7) |_k'#1| |a#0@@5| |b#0@@5|))
))))) (= (_module.__default.CoLeq_h ($LS $ly@@7) (Lit BoxType |_k#0@@3|) |a#0@@5| |b#0@@5|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@5| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@5|) (_module.Nat.S_q |b#0@@5|)) (_module.__default.CoLeq_h ($LS $ly@@7) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (_module.Nat.pred |a#0@@5|) (_module.Nat.pred |b#0@@5|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@3|) (_module.__default.CoLeq_h ($LS $ly@@7) |_k'#1@@0| |a#0@@5| |b#0@@5|))
 :qid |Leqdfy.112:20|
 :skolemid |720|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@7) |_k'#1@@0| |a#0@@5| |b#0@@5|))
)))))))
 :qid |Leqdfy.112:20|
 :weight 3
 :skolemid |722|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@7) (Lit BoxType |_k#0@@3|) |a#0@@5| |b#0@@5|))
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
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall (($ly@@8 T@U) (|n#0@@1| Int) ) (! (= (_module.__default.Num ($LS $ly@@8) |n#0@@1|) (_module.__default.Num $ly@@8 |n#0@@1|))
 :qid |Leqdfy.11:16|
 :skolemid |581|
 :pattern ( (_module.__default.Num ($LS $ly@@8) |n#0@@1|))
)))
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
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|a#0@@6| T@U) (|b#0@@6| T@U) (|_k#0@@4| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@6| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@6| Tclass._module.Nat)) (= |_k#0@@4| (|ORD#FromNat| 0))) (_module.__default.CoLeq_h $ly@@9 |_k#0@@4| |a#0@@6| |b#0@@6|))
 :qid |Leqdfy.112:20|
 :skolemid |711|
 :pattern ( (_module.__default.CoLeq_h $ly@@9 |_k#0@@4| |a#0@@6| |b#0@@6|))
))))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) (|_k#0@@5| T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (or (|_module.__default.CoLeq_h#canCall| (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |a#0@@7|) (Lit DatatypeTypeType |b#0@@7|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@7| Tclass._module.Nat) ($Is DatatypeTypeType |b#0@@7| Tclass._module.Nat)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (and (|$IsA#_module.Nat| (Lit DatatypeTypeType |a#0@@7|)) (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@7| |#_module.Nat.Z|)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@7|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Nat.S_q (Lit DatatypeTypeType |b#0@@7|))))) (|_module.__default.CoLeq_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@7|))) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |b#0@@7|))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@7| |#_module.Nat.Z|) (and (and (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@7|)) (_module.Nat.S_q (Lit DatatypeTypeType |b#0@@7|))) (_module.__default.CoLeq_h ($LS $ly@@10) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@7|))) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |b#0@@7|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@5|) (|_module.__default.CoLeq_h#canCall| |_k'#2| |a#0@@7| |b#0@@7|))
 :qid |Leqdfy.112:20|
 :skolemid |724|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@10) |_k'#2| |a#0@@7| |b#0@@7|))
))))) (= (_module.__default.CoLeq_h ($LS $ly@@10) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |a#0@@7|) (Lit DatatypeTypeType |b#0@@7|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@7| |#_module.Nat.Z|) (and (and (_module.Nat.S_q (Lit DatatypeTypeType |a#0@@7|)) (_module.Nat.S_q (Lit DatatypeTypeType |b#0@@7|))) (_module.__default.CoLeq_h ($LS $ly@@10) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |a#0@@7|))) (Lit DatatypeTypeType (_module.Nat.pred (Lit DatatypeTypeType |b#0@@7|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@5|) (_module.__default.CoLeq_h ($LS $ly@@10) |_k'#2@@0| |a#0@@7| |b#0@@7|))
 :qid |Leqdfy.112:20|
 :skolemid |723|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@10) |_k'#2@@0| |a#0@@7| |b#0@@7|))
)))))))
 :qid |Leqdfy.112:20|
 :weight 3
 :skolemid |725|
 :pattern ( (_module.__default.CoLeq_h ($LS $ly@@10) (Lit BoxType |_k#0@@5|) (Lit DatatypeTypeType |a#0@@7|) (Lit DatatypeTypeType |b#0@@7|)))
))))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Nat.S_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Nat $h@@1))) ($IsAlloc DatatypeTypeType (_module.Nat.pred d@@6) Tclass._module.Nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Nat.pred d@@6) Tclass._module.Nat $h@@1))
)))
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
(assert (forall ((k@@4 T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (= d0@@7 d1@@7) (|$PrefixEq#_module.Nat| k@@4 ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( (|$PrefixEq#_module.Nat| k@@4 ($LS ly@@7) d0@@7 d1@@7))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#0@@8| () T@U)
(declare-fun |m#0@2| () Int)
(declare-fun |n#0@@2| () Int)
(declare-fun |a##1_0@0| () T@U)
(declare-fun |n##1_0@0| () Int)
(declare-fun |call3formal@m#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call3formal@m#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |m#0@1| () Int)
(declare-fun |m#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |m#0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.CoLeq1Aux)
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
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@8| (_module.__default.Num ($LS ($LS $LZ)) |m#0@2|))) (=> (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@8| (_module.__default.Num ($LS ($LS $LZ)) |m#0@2|)) (=> (= (ControlFlow 0 2) (- 0 1)) (<= |m#0@2| |n#0@@2|))))))
(let ((anon3_Else_correct  (=> (not (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@8| |#_module.Nat.Z|)) (and (=> (= (ControlFlow 0 6) (- 0 12)) (_module.Nat.S_q |a#0@@8|)) (=> (_module.Nat.S_q |a#0@@8|) (=> (= |a##1_0@0| (_module.Nat.pred |a#0@@8|)) (and (=> (= (ControlFlow 0 6) (- 0 11)) ($Is intType (int_2_U (- |n#0@@2| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@2| 1)) Tclass._System.nat) (=> (= |n##1_0@0| (- |n#0@@2| 1)) (and (=> (= (ControlFlow 0 6) (- 0 10)) (or (<= 0 |n#0@@2|) (= |n##1_0@0| |n#0@@2|))) (=> (or (<= 0 |n#0@@2|) (= |n##1_0@0| |n#0@@2|)) (and (=> (= (ControlFlow 0 6) (- 0 9)) (< |n##1_0@0| |n#0@@2|)) (=> (< |n##1_0@0| |n#0@@2|) (=> (<= (LitInt 0) |call3formal@m#0|) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (|_module.__default.CoLeq#canCall| |a##1_0@0| (_module.__default.Num ($LS $LZ) |n##1_0@0|)) (or (_module.__default.CoLeq ($LS $LZ) |a##1_0@0| (_module.__default.Num ($LS $LZ) |n##1_0@0|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a##1_0@0| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a##1_0@0|) (_module.Nat.S_q (_module.__default.Num ($LS ($LS $LZ)) |n##1_0@0|))) (_module.__default.CoLeq ($LS ($LS $LZ)) (_module.Nat.pred |a##1_0@0|) (_module.Nat.pred (_module.__default.Num ($LS ($LS $LZ)) |n##1_0@0|)))))))) (=> (=> (|_module.__default.CoLeq#canCall| |a##1_0@0| (_module.__default.Num ($LS $LZ) |n##1_0@0|)) (or (_module.__default.CoLeq ($LS $LZ) |a##1_0@0| (_module.__default.Num ($LS $LZ) |n##1_0@0|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a##1_0@0| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a##1_0@0|) (_module.Nat.S_q (_module.__default.Num ($LS ($LS $LZ)) |n##1_0@0|))) (_module.__default.CoLeq ($LS ($LS $LZ)) (_module.Nat.pred |a##1_0@0|) (_module.Nat.pred (_module.__default.Num ($LS ($LS $LZ)) |n##1_0@0|))))))) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (<= (LitInt 0) |call3formal@m#0@0|)) (=> (and (and (and (and (|$IsA#_module.Nat| |a##1_0@0|) (|$IsA#_module.Nat| (_module.__default.Num ($LS $LZ) |call3formal@m#0@0|))) (|_module.__default.Num#canCall| |call3formal@m#0@0|)) (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a##1_0@0| (_module.__default.Num ($LS ($LS $LZ)) |call3formal@m#0@0|))) (and (<= |call3formal@m#0@0| |n##1_0@0|) (= $Heap $Heap@0))) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($Is intType (int_2_U (+ |call3formal@m#0@0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |call3formal@m#0@0| 1)) Tclass._System.nat) (=> (= |m#0@1| (+ |call3formal@m#0@0| 1)) (=> (and (= |m#0@2| |m#0@1|) (= (ControlFlow 0 6) 2)) GeneratedUnifiedExit_correct))))))))))))))))))))))
(let ((anon3_Then_correct  (=> (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@8| |#_module.Nat.Z|) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |m#0@0| (LitInt 0)) (=> (and (= |m#0@2| |m#0@0|) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.Nat| |a#0@@8|)) (and (=> (= (ControlFlow 0 13) 4) anon3_Then_correct) (=> (= (ControlFlow 0 13) 6) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and ($Is DatatypeTypeType |a#0@@8| Tclass._module.Nat) ($IsAlloc DatatypeTypeType |a#0@@8| Tclass._module.Nat $Heap)) (|$IsA#_module.Nat| |a#0@@8|)) (<= (LitInt 0) |n#0@@2|)) (and (<= (LitInt 0) |m#0|) (= 2 $FunctionContextHeight))) (and (and (|_module.__default.CoLeq#canCall| |a#0@@8| (_module.__default.Num ($LS $LZ) |n#0@@2|)) (and (_module.__default.CoLeq ($LS $LZ) |a#0@@8| (_module.__default.Num ($LS $LZ) |n#0@@2|)) (or (|$Eq#_module.Nat| ($LS ($LS $LZ)) |a#0@@8| |#_module.Nat.Z|) (and (and (_module.Nat.S_q |a#0@@8|) (_module.Nat.S_q (_module.__default.Num ($LS $LZ) |n#0@@2|))) (_module.__default.CoLeq ($LS $LZ) (_module.Nat.pred |a#0@@8|) (_module.Nat.pred (_module.__default.Num ($LS $LZ) |n#0@@2|))))))) (= (ControlFlow 0 14) 13))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
