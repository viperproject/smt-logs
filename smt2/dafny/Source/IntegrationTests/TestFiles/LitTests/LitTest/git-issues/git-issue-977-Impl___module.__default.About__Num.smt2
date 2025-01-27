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
(declare-fun Tagclass._module.Number () T@U)
(declare-fun |##_module.Number.Succ| () T@U)
(declare-fun |##_module.Number.Zero| () T@U)
(declare-fun tytagFamily$Number () T@U)
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
(declare-fun _module.__default.GreatestPredNat (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Number () T@U)
(declare-fun _module.__default.GreatestPredNat_h (T@U Int T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun _module.__default.GreatestPredOrd_h (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.GreatestPredOrd_h#canCall| (T@U T@U) Bool)
(declare-fun _module.Number.Succ_q (T@U) Bool)
(declare-fun _module.Number.prev (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Number.Zero| () T@U)
(declare-fun _module.Number.Zero_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.GreatestPredOrd (T@U T@U) Bool)
(declare-fun |_module.__default.GreatestPredNat_h#canCall| (Int T@U) Bool)
(declare-fun |#_module.Number.Succ| (T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |$IsA#_module.Number| (T@U) Bool)
(declare-fun _module.__default.Pred (T@U T@U) Bool)
(declare-fun |_module.__default.Pred#canCall| (T@U) Bool)
(declare-fun |_module.__default.GreatestPredOrd#canCall| (T@U) Bool)
(declare-fun |_module.__default.GreatestPredNat#canCall| (T@U) Bool)
(declare-fun DtRank (T@U) Int)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (distinct alloc Tagclass._module.Number |##_module.Number.Succ| |##_module.Number.Zero| tytagFamily$Number)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|num#0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |num#0| Tclass._module.Number) (_module.__default.GreatestPredNat ($LS $ly) |num#0|)) (forall ((|_k#0| Int) ) (!  (=> (<= (LitInt 0) |_k#0|) (_module.__default.GreatestPredNat_h ($LS $ly) |_k#0| |num#0|))
 :qid |gitissue977dfy.113:20|
 :skolemid |1242|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly) |_k#0| |num#0|))
)))
 :qid |gitissue977dfy.113:20|
 :skolemid |1243|
 :pattern ( (_module.__default.GreatestPredNat ($LS $ly) |num#0|))
))))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |709|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |717|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|num#0@@0| T@U) ) (!  (=> (or (|_module.__default.GreatestPredOrd_h#canCall| (Lit BoxType |_k#0@@0|) |num#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@0| Tclass._module.Number))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (_module.Number.Succ_q |num#0@@0|) (let ((|prev#6| (_module.Number.prev |num#0@@0|)))
(|_module.__default.GreatestPredOrd_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |prev#6|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Number.Succ_q |num#0@@0|) (let ((|prev#7| (_module.Number.prev |num#0@@0|)))
(_module.__default.GreatestPredOrd_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |prev#7|)) true)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@0|) (|_module.__default.GreatestPredOrd_h#canCall| |_k'#1| |num#0@@0|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1230|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@0) |_k'#1| |num#0@@0|))
))))) (= (_module.__default.GreatestPredOrd_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) |num#0@@0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (ite (_module.Number.Succ_q |num#0@@0|) (let ((|prev#5| (_module.Number.prev |num#0@@0|)))
(_module.__default.GreatestPredOrd_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) |prev#5|)) true)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@0|) (_module.__default.GreatestPredOrd_h ($LS $ly@@0) |_k'#1@@0| |num#0@@0|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1229|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@0) |_k'#1@@0| |num#0@@0|))
)))))))
 :qid |gitissue977dfy.95:20|
 :weight 3
 :skolemid |1231|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) |num#0@@0|))
))))
(assert (= (DatatypeCtorId |#_module.Number.Zero|) |##_module.Number.Zero|))
(assert ($Is DatatypeTypeType |#_module.Number.Zero| Tclass._module.Number))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |636|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |634|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|num#0@@1| T@U) (|_k#0@@1| Int) ) (!  (=> (and ($Is DatatypeTypeType |num#0@@1| Tclass._module.Number) (= |_k#0@@1| 0)) (_module.__default.GreatestPredNat_h $ly@@1 |_k#0@@1| |num#0@@1|))
 :qid |gitissue977dfy.113:20|
 :skolemid |1245|
 :pattern ( (_module.__default.GreatestPredNat_h $ly@@1 |_k#0@@1| |num#0@@1|))
))))
(assert (forall ((d T@U) ) (! (= (_module.Number.Succ_q d) (= (DatatypeCtorId d) |##_module.Number.Succ|))
 :qid |unknown.0:0|
 :skolemid |1312|
 :pattern ( (_module.Number.Succ_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Number.Zero_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Number.Zero|))
 :qid |unknown.0:0|
 :skolemid |1320|
 :pattern ( (_module.Number.Zero_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |645|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|num#0@@2| T@U) (|_k#0@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |num#0@@2| Tclass._module.Number) (= |_k#0@@2| (|ORD#FromNat| 0))) (_module.__default.GreatestPredOrd_h $ly@@2 |_k#0@@2| |num#0@@2|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1220|
 :pattern ( (_module.__default.GreatestPredOrd_h $ly@@2 |_k#0@@2| |num#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|num#0@@3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |num#0@@3| Tclass._module.Number) (forall ((|_k#0@@3| T@U) ) (! (_module.__default.GreatestPredOrd_h ($LS $ly@@3) |_k#0@@3| |num#0@@3|)
 :qid |gitissue977dfy.95:20|
 :skolemid |1217|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@3) |_k#0@@3| |num#0@@3|))
))) (_module.__default.GreatestPredOrd ($LS $ly@@3) |num#0@@3|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1219|
 :pattern ( (_module.__default.GreatestPredOrd ($LS $ly@@3) |num#0@@3|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@4| T@U) (|num#0@@4| T@U) ) (!  (=> (or (|_module.__default.GreatestPredOrd_h#canCall| |_k#0@@4| |num#0@@4|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@4| Tclass._module.Number))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (_module.Number.Succ_q |num#0@@4|) (let ((|prev#3| (_module.Number.prev |num#0@@4|)))
(|_module.__default.GreatestPredOrd_h#canCall| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |prev#3|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (ite (_module.Number.Succ_q |num#0@@4|) (let ((|prev#4| (_module.Number.prev |num#0@@4|)))
(_module.__default.GreatestPredOrd_h $ly@@4 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |prev#4|)) true)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@4|) (|_module.__default.GreatestPredOrd_h#canCall| |_k'#0| |num#0@@4|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1227|
 :pattern ( (_module.__default.GreatestPredOrd_h $ly@@4 |_k'#0| |num#0@@4|))
))))) (= (_module.__default.GreatestPredOrd_h ($LS $ly@@4) |_k#0@@4| |num#0@@4|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (ite (_module.Number.Succ_q |num#0@@4|) (let ((|prev#2| (_module.Number.prev |num#0@@4|)))
(_module.__default.GreatestPredOrd_h $ly@@4 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |prev#2|)) true)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@4|) (_module.__default.GreatestPredOrd_h $ly@@4 |_k'#0@@0| |num#0@@4|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1226|
 :pattern ( (_module.__default.GreatestPredOrd_h $ly@@4 |_k'#0@@0| |num#0@@4|))
)))))))
 :qid |gitissue977dfy.95:20|
 :skolemid |1228|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@4) |_k#0@@4| |num#0@@4|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Number.Zero_q d@@1) (= d@@1 |#_module.Number.Zero|))
 :qid |unknown.0:0|
 :skolemid |1321|
 :pattern ( (_module.Number.Zero_q d@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) (|_k#0@@5| Int) (|num#0@@5| T@U) ) (!  (=> (or (|_module.__default.GreatestPredNat_h#canCall| (LitInt |_k#0@@5|) |num#0@@5|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |_k#0@@5|) ($Is DatatypeTypeType |num#0@@5| Tclass._module.Number)))) (and (=> (< 0 |_k#0@@5|) (=> (_module.Number.Succ_q |num#0@@5|) (let ((|prev#5@@0| (_module.Number.prev |num#0@@5|)))
(|_module.__default.GreatestPredNat_h#canCall| (- |_k#0@@5| 1) |prev#5@@0|)))) (= (_module.__default.GreatestPredNat_h ($LS $ly@@5) (LitInt |_k#0@@5|) |num#0@@5|)  (=> (< 0 |_k#0@@5|) (ite (_module.Number.Succ_q |num#0@@5|) (let ((|prev#4@@0| (_module.Number.prev |num#0@@5|)))
(_module.__default.GreatestPredNat_h ($LS $ly@@5) (- |_k#0@@5| 1) |prev#4@@0|)) true)))))
 :qid |gitissue977dfy.113:20|
 :weight 3
 :skolemid |1252|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@5) (LitInt |_k#0@@5|) |num#0@@5|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Number.Succ_q d@@2) (exists ((|a#11#0#0| T@U) ) (! (= d@@2 (|#_module.Number.Succ| |a#11#0#0|))
 :qid |gitissue977dfy.48:24|
 :skolemid |1313|
)))
 :qid |unknown.0:0|
 :skolemid |1314|
 :pattern ( (_module.Number.Succ_q d@@2))
)))
(assert (forall (($ly@@6 T@U) (|_k#0@@6| T@U) (|num#0@@6| T@U) ) (! (= (_module.__default.GreatestPredOrd_h ($LS $ly@@6) |_k#0@@6| |num#0@@6|) (_module.__default.GreatestPredOrd_h $ly@@6 |_k#0@@6| |num#0@@6|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1222|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@6) |_k#0@@6| |num#0@@6|))
)))
(assert (forall (($ly@@7 T@U) (|_k#0@@7| Int) (|num#0@@7| T@U) ) (! (= (_module.__default.GreatestPredNat_h ($LS $ly@@7) |_k#0@@7| |num#0@@7|) (_module.__default.GreatestPredNat_h $ly@@7 |_k#0@@7| |num#0@@7|))
 :qid |gitissue977dfy.113:20|
 :skolemid |1247|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@7) |_k#0@@7| |num#0@@7|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) (|num#0@@8| T@U) ) (!  (=> (and ($Is DatatypeTypeType |num#0@@8| Tclass._module.Number) (_module.__default.GreatestPredOrd ($LS $ly@@8) |num#0@@8|)) (forall ((|_k#0@@8| T@U) ) (! (_module.__default.GreatestPredOrd_h ($LS $ly@@8) |_k#0@@8| |num#0@@8|)
 :qid |gitissue977dfy.95:20|
 :skolemid |1217|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@8) |_k#0@@8| |num#0@@8|))
)))
 :qid |gitissue977dfy.95:20|
 :skolemid |1218|
 :pattern ( (_module.__default.GreatestPredOrd ($LS $ly@@8) |num#0@@8|))
))))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |714|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |705|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Number.Succ| |a#12#0#0|) Tclass._module.Number) ($Is DatatypeTypeType |a#12#0#0| Tclass._module.Number))
 :qid |gitissue977dfy.48:24|
 :skolemid |1315|
 :pattern ( ($Is DatatypeTypeType (|#_module.Number.Succ| |a#12#0#0|) Tclass._module.Number))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) (|_k#0@@9| Int) (|num#0@@9| T@U) ) (!  (=> (or (|_module.__default.GreatestPredNat_h#canCall| |_k#0@@9| |num#0@@9|) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |_k#0@@9|) ($Is DatatypeTypeType |num#0@@9| Tclass._module.Number)))) (and (=> (< 0 |_k#0@@9|) (=> (_module.Number.Succ_q |num#0@@9|) (let ((|prev#3@@0| (_module.Number.prev |num#0@@9|)))
(|_module.__default.GreatestPredNat_h#canCall| (- |_k#0@@9| 1) |prev#3@@0|)))) (= (_module.__default.GreatestPredNat_h ($LS $ly@@9) |_k#0@@9| |num#0@@9|)  (=> (< 0 |_k#0@@9|) (ite (_module.Number.Succ_q |num#0@@9|) (let ((|prev#2@@0| (_module.Number.prev |num#0@@9|)))
(_module.__default.GreatestPredNat_h $ly@@9 (- |_k#0@@9| 1) |prev#2@@0|)) true)))))
 :qid |gitissue977dfy.113:20|
 :skolemid |1251|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@9) |_k#0@@9| |num#0@@9|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Number| d@@3) (or (_module.Number.Succ_q d@@3) (_module.Number.Zero_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1323|
 :pattern ( (|$IsA#_module.Number| d@@3))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |708|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|num#0@@10| T@U) ) (!  (=> (or (|_module.__default.Pred#canCall| (Lit DatatypeTypeType |num#0@@10|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@10| Tclass._module.Number))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@10|))))) (let ((|prev#3@@1| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@10|)))))
(|_module.__default.Pred#canCall| |prev#3@@1|))) (= (_module.__default.Pred ($LS $ly@@10) (Lit DatatypeTypeType |num#0@@10|)) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@10|)) (U_2_bool (let ((|prev#2@@1| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@10|)))))
(Lit boolType (bool_2_U (_module.__default.Pred ($LS $ly@@10) |prev#2@@1|))))) true))))
 :qid |gitissue977dfy.84:17|
 :weight 3
 :skolemid |1209|
 :pattern ( (_module.__default.Pred ($LS $ly@@10) (Lit DatatypeTypeType |num#0@@10|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@11 T@U) (|num#0@@11| T@U) ) (!  (=> (or (|_module.__default.Pred#canCall| |num#0@@11|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@11| Tclass._module.Number))) (and (=> (_module.Number.Succ_q |num#0@@11|) (let ((|prev#1| (_module.Number.prev |num#0@@11|)))
(|_module.__default.Pred#canCall| |prev#1|))) (= (_module.__default.Pred ($LS $ly@@11) |num#0@@11|) (ite (_module.Number.Succ_q |num#0@@11|) (let ((|prev#0| (_module.Number.prev |num#0@@11|)))
(_module.__default.Pred $ly@@11 |prev#0|)) true))))
 :qid |gitissue977dfy.84:17|
 :skolemid |1208|
 :pattern ( (_module.__default.Pred ($LS $ly@@11) |num#0@@11|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@12 T@U) (|num#0@@12| T@U) ) (!  (=> (or (|_module.__default.GreatestPredOrd#canCall| |num#0@@12|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@12| Tclass._module.Number))) (and (=> (_module.Number.Succ_q |num#0@@12|) (let ((|prev#1@@0| (_module.Number.prev |num#0@@12|)))
(|_module.__default.GreatestPredOrd#canCall| |prev#1@@0|))) (= (_module.__default.GreatestPredOrd ($LS $ly@@12) |num#0@@12|) (ite (_module.Number.Succ_q |num#0@@12|) (let ((|prev#0@@0| (_module.Number.prev |num#0@@12|)))
(_module.__default.GreatestPredOrd $ly@@12 |prev#0@@0|)) true))))
 :qid |gitissue977dfy.95:20|
 :skolemid |1216|
 :pattern ( (_module.__default.GreatestPredOrd ($LS $ly@@12) |num#0@@12|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@13 T@U) (|num#0@@13| T@U) ) (!  (=> (or (|_module.__default.GreatestPredNat#canCall| |num#0@@13|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@13| Tclass._module.Number))) (and (=> (_module.Number.Succ_q |num#0@@13|) (let ((|prev#1@@1| (_module.Number.prev |num#0@@13|)))
(|_module.__default.GreatestPredNat#canCall| |prev#1@@1|))) (= (_module.__default.GreatestPredNat ($LS $ly@@13) |num#0@@13|) (ite (_module.Number.Succ_q |num#0@@13|) (let ((|prev#0@@1| (_module.Number.prev |num#0@@13|)))
(_module.__default.GreatestPredNat $ly@@13 |prev#0@@1|)) true))))
 :qid |gitissue977dfy.113:20|
 :skolemid |1241|
 :pattern ( (_module.__default.GreatestPredNat ($LS $ly@@13) |num#0@@13|))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Number) (or (_module.Number.Succ_q d@@4) (_module.Number.Zero_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( (_module.Number.Zero_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Number))
 :pattern ( (_module.Number.Succ_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Number))
)))
(assert (forall (($ly@@14 T@U) (|num#0@@14| T@U) ) (! (= (_module.__default.Pred ($LS $ly@@14) |num#0@@14|) (_module.__default.Pred $ly@@14 |num#0@@14|))
 :qid |gitissue977dfy.84:17|
 :skolemid |1204|
 :pattern ( (_module.__default.Pred ($LS $ly@@14) |num#0@@14|))
)))
(assert (forall (($ly@@15 T@U) (|num#0@@15| T@U) ) (! (= (_module.__default.GreatestPredOrd ($LS $ly@@15) |num#0@@15|) (_module.__default.GreatestPredOrd $ly@@15 |num#0@@15|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1212|
 :pattern ( (_module.__default.GreatestPredOrd ($LS $ly@@15) |num#0@@15|))
)))
(assert (forall (($ly@@16 T@U) (|num#0@@16| T@U) ) (! (= (_module.__default.GreatestPredNat ($LS $ly@@16) |num#0@@16|) (_module.__default.GreatestPredNat $ly@@16 |num#0@@16|))
 :qid |gitissue977dfy.113:20|
 :skolemid |1237|
 :pattern ( (_module.__default.GreatestPredNat ($LS $ly@@16) |num#0@@16|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |704|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Number.Succ| |a#10#0#0|)) |##_module.Number.Succ|)
 :qid |gitissue977dfy.48:24|
 :skolemid |1311|
 :pattern ( (|#_module.Number.Succ| |a#10#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (_module.Number.prev (|#_module.Number.Succ| |a#14#0#0|)) |a#14#0#0|)
 :qid |gitissue977dfy.48:24|
 :skolemid |1318|
 :pattern ( (|#_module.Number.Succ| |a#14#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |644|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@4 p@@2) (or (not (= o@@4 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@4) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@4 p@@2))) (=> (and (|ORD#IsNat| o@@4) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@4 p@@2) (< (|ORD#Offset| o@@4) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@4 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@4)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |707|
 :pattern ( (|ORD#Less| o@@4 p@@2))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (< (DtRank |a#15#0#0|) (DtRank (|#_module.Number.Succ| |a#15#0#0|)))
 :qid |gitissue977dfy.48:24|
 :skolemid |1319|
 :pattern ( (|#_module.Number.Succ| |a#15#0#0|))
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
 :skolemid |1406|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |706|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass._module.Number)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Number $h))
 :qid |unknown.0:0|
 :skolemid |1322|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Number $h))
)))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
(assert (= |#_module.Number.Zero| (Lit DatatypeTypeType |#_module.Number.Zero|)))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |715|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@17 T@U) (|_k#0@@10| Int) (|num#0@@17| T@U) ) (!  (=> (or (|_module.__default.GreatestPredNat_h#canCall| (LitInt |_k#0@@10|) (Lit DatatypeTypeType |num#0@@17|)) (and (< 2 $FunctionContextHeight) (and (<= (LitInt 0) |_k#0@@10|) ($Is DatatypeTypeType |num#0@@17| Tclass._module.Number)))) (and (=> (< 0 |_k#0@@10|) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@17|))))) (let ((|prev#7@@0| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@17|)))))
(|_module.__default.GreatestPredNat_h#canCall| (- |_k#0@@10| 1) |prev#7@@0|)))) (= (_module.__default.GreatestPredNat_h ($LS $ly@@17) (LitInt |_k#0@@10|) (Lit DatatypeTypeType |num#0@@17|))  (=> (< 0 |_k#0@@10|) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@17|)) (let ((|prev#6@@0| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@17|)))))
(_module.__default.GreatestPredNat_h ($LS $ly@@17) (- |_k#0@@10| 1) |prev#6@@0|)) true)))))
 :qid |gitissue977dfy.113:20|
 :weight 3
 :skolemid |1253|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@17) (LitInt |_k#0@@10|) (Lit DatatypeTypeType |num#0@@17|)))
))))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Number.Succ_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Number $h@@0))) ($IsAlloc DatatypeTypeType (_module.Number.prev d@@6) Tclass._module.Number $h@@0))
 :qid |unknown.0:0|
 :skolemid |1316|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Number.prev d@@6) Tclass._module.Number $h@@0))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |637|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (|#_module.Number.Succ| (Lit DatatypeTypeType |a#13#0#0|)) (Lit DatatypeTypeType (|#_module.Number.Succ| |a#13#0#0|)))
 :qid |gitissue977dfy.48:24|
 :skolemid |1317|
 :pattern ( (|#_module.Number.Succ| (Lit DatatypeTypeType |a#13#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |635|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@18 T@U) (|_k#0@@11| T@U) (|num#0@@18| T@U) ) (!  (=> (or (|_module.__default.GreatestPredOrd_h#canCall| (Lit BoxType |_k#0@@11|) (Lit DatatypeTypeType |num#0@@18|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |num#0@@18| Tclass._module.Number))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@18|))))) (let ((|prev#9| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@18|)))))
(|_module.__default.GreatestPredOrd_h#canCall| (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) |prev#9|)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@18|)) (let ((|prev#10| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@18|)))))
(_module.__default.GreatestPredOrd_h ($LS $ly@@18) (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) |prev#10|)) true)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@11|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@11|) (|_module.__default.GreatestPredOrd_h#canCall| |_k'#2| |num#0@@18|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1233|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@18) |_k'#2| |num#0@@18|))
))))) (= (_module.__default.GreatestPredOrd_h ($LS $ly@@18) (Lit BoxType |_k#0@@11|) (Lit DatatypeTypeType |num#0@@18|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@11|)) (ite (_module.Number.Succ_q (Lit DatatypeTypeType |num#0@@18|)) (let ((|prev#8| (Lit DatatypeTypeType (_module.Number.prev (Lit DatatypeTypeType |num#0@@18|)))))
(_module.__default.GreatestPredOrd_h ($LS $ly@@18) (|ORD#Minus| |_k#0@@11| (|ORD#FromNat| 1)) |prev#8|)) true)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@11|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@11|) (_module.__default.GreatestPredOrd_h ($LS $ly@@18) |_k'#2@@0| |num#0@@18|))
 :qid |gitissue977dfy.95:20|
 :skolemid |1232|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@18) |_k'#2@@0| |num#0@@18|))
)))))))
 :qid |gitissue977dfy.95:20|
 :weight 3
 :skolemid |1234|
 :pattern ( (_module.__default.GreatestPredOrd_h ($LS $ly@@18) (Lit BoxType |_k#0@@11|) (Lit DatatypeTypeType |num#0@@18|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@19 T@U) (|num#0@@19| T@U) ) (!  (=> (and ($Is DatatypeTypeType |num#0@@19| Tclass._module.Number) (forall ((|_k#0@@12| Int) ) (!  (=> (<= (LitInt 0) |_k#0@@12|) (_module.__default.GreatestPredNat_h ($LS $ly@@19) |_k#0@@12| |num#0@@19|))
 :qid |gitissue977dfy.113:20|
 :skolemid |1242|
 :pattern ( (_module.__default.GreatestPredNat_h ($LS $ly@@19) |_k#0@@12| |num#0@@19|))
))) (_module.__default.GreatestPredNat ($LS $ly@@19) |num#0@@19|))
 :qid |gitissue977dfy.113:20|
 :skolemid |1244|
 :pattern ( (_module.__default.GreatestPredNat ($LS $ly@@19) |num#0@@19|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |num#0@@20| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $LZ () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.About__Num)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.Number| |num#0@@20|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#num0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#num0#0| Tclass._module.Number) (U_2_bool (Lit boolType (bool_2_U true)))) (< (DtRank |$ih#num0#0|) (DtRank |num#0@@20|))) (and (and (_module.__default.Pred ($LS $LZ) |$ih#num0#0|) (_module.__default.GreatestPredOrd ($LS $LZ) |$ih#num0#0|)) (_module.__default.GreatestPredNat ($LS $LZ) |$ih#num0#0|)))
 :qid |gitissue977dfy.54:17|
 :skolemid |1180|
 :pattern ( (_module.__default.GreatestPredNat ($LS $LZ) |$ih#num0#0|))
 :pattern ( (_module.__default.GreatestPredOrd ($LS $LZ) |$ih#num0#0|))
 :pattern ( (_module.__default.Pred ($LS $LZ) |$ih#num0#0|))
)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.__default.Pred#canCall| |num#0@@20|) (or (_module.__default.Pred ($LS $LZ) |num#0@@20|) (=> (_module.Number.Succ_q |num#0@@20|) (let ((|prev#6@@1| (_module.Number.prev |num#0@@20|)))
(_module.__default.Pred ($LS ($LS $LZ)) |prev#6@@1|)))))) (=> (=> (|_module.__default.Pred#canCall| |num#0@@20|) (or (_module.__default.Pred ($LS $LZ) |num#0@@20|) (=> (_module.Number.Succ_q |num#0@@20|) (let ((|prev#6@@2| (_module.Number.prev |num#0@@20|)))
(_module.__default.Pred ($LS ($LS $LZ)) |prev#6@@2|))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.__default.Pred#canCall| |num#0@@20|) (or (_module.__default.Pred ($LS $LZ) |num#0@@20|) (=> (not (_module.Number.Succ_q |num#0@@20|)) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.Pred#canCall| |num#0@@20|) (or (_module.__default.Pred ($LS $LZ) |num#0@@20|) (=> (not (_module.Number.Succ_q |num#0@@20|)) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.GreatestPredOrd#canCall| |num#0@@20|) (or (_module.__default.GreatestPredOrd ($LS $LZ) |num#0@@20|) (=> (_module.Number.Succ_q |num#0@@20|) (let ((|prev#8@@0| (_module.Number.prev |num#0@@20|)))
(_module.__default.GreatestPredOrd ($LS ($LS $LZ)) |prev#8@@0|)))))) (=> (=> (|_module.__default.GreatestPredOrd#canCall| |num#0@@20|) (or (_module.__default.GreatestPredOrd ($LS $LZ) |num#0@@20|) (=> (_module.Number.Succ_q |num#0@@20|) (let ((|prev#8@@1| (_module.Number.prev |num#0@@20|)))
(_module.__default.GreatestPredOrd ($LS ($LS $LZ)) |prev#8@@1|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.GreatestPredOrd#canCall| |num#0@@20|) (or (_module.__default.GreatestPredOrd ($LS $LZ) |num#0@@20|) (=> (not (_module.Number.Succ_q |num#0@@20|)) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (=> (|_module.__default.GreatestPredOrd#canCall| |num#0@@20|) (or (_module.__default.GreatestPredOrd ($LS $LZ) |num#0@@20|) (=> (not (_module.Number.Succ_q |num#0@@20|)) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.GreatestPredNat#canCall| |num#0@@20|) (or (_module.__default.GreatestPredNat ($LS $LZ) |num#0@@20|) (=> (_module.Number.Succ_q |num#0@@20|) (let ((|prev#10@@0| (_module.Number.prev |num#0@@20|)))
(_module.__default.GreatestPredNat ($LS ($LS $LZ)) |prev#10@@0|)))))) (=> (=> (|_module.__default.GreatestPredNat#canCall| |num#0@@20|) (or (_module.__default.GreatestPredNat ($LS $LZ) |num#0@@20|) (=> (_module.Number.Succ_q |num#0@@20|) (let ((|prev#10@@1| (_module.Number.prev |num#0@@20|)))
(_module.__default.GreatestPredNat ($LS ($LS $LZ)) |prev#10@@1|))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.GreatestPredNat#canCall| |num#0@@20|) (or (_module.__default.GreatestPredNat ($LS $LZ) |num#0@@20|) (=> (not (_module.Number.Succ_q |num#0@@20|)) (U_2_bool (Lit boolType (bool_2_U true)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |num#0@@20| Tclass._module.Number) ($IsAlloc DatatypeTypeType |num#0@@20| Tclass._module.Number $Heap)) (|$IsA#_module.Number| |num#0@@20|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 2))) anon0_correct))))
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
