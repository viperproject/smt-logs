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
(declare-fun Tagclass._module.RecType () T@U)
(declare-fun |##_module.RecType.Bottom| () T@U)
(declare-fun |##_module.RecType.Top| () T@U)
(declare-fun |##_module.RecType.Arrow| () T@U)
(declare-fun tytagFamily$RecType () T@U)
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
(declare-fun _module.__default.Subtype (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Subtype#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.RecType () T@U)
(declare-fun |$IsA#_module.RecType| (T@U) Bool)
(declare-fun |$Eq#_module.RecType| (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |#_module.RecType.Bottom| () T@U)
(declare-fun |#_module.RecType.Top| () T@U)
(declare-fun _module.RecType.Arrow_q (T@U) Bool)
(declare-fun _module.RecType.dom (T@U) T@U)
(declare-fun _module.RecType.ran (T@U) T@U)
(declare-fun |#_module.RecType.Arrow| (T@U T@U) T@U)
(declare-fun _module.__default.Subtype_h (T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.Subtype_h#canCall| (T@U T@U T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |$PrefixEq#_module.RecType| (T@U T@U T@U T@U) Bool)
(declare-fun _module.RecType.Bottom_q (T@U) Bool)
(declare-fun _module.RecType.Top_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
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
(assert (distinct alloc Tagclass._module.RecType |##_module.RecType.Bottom| |##_module.RecType.Top| |##_module.RecType.Arrow| tytagFamily$RecType)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|_module.__default.Subtype#canCall| |a#0| |b#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0| Tclass._module.RecType) ($Is DatatypeTypeType |b#0| Tclass._module.RecType)))) (and (and (|$IsA#_module.RecType| |a#0|) (=> (not (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0| |#_module.RecType.Bottom|)) (and (|$IsA#_module.RecType| |b#0|) (=> (not (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0| |#_module.RecType.Top|)) (=> (_module.RecType.Arrow_q |a#0|) (=> (_module.RecType.Arrow_q |b#0|) (and (|_module.__default.Subtype#canCall| (_module.RecType.dom |b#0|) (_module.RecType.dom |a#0|)) (=> (_module.__default.Subtype $ly (_module.RecType.dom |b#0|) (_module.RecType.dom |a#0|)) (|_module.__default.Subtype#canCall| (_module.RecType.ran |a#0|) (_module.RecType.ran |b#0|)))))))))) (= (_module.__default.Subtype ($LS $ly) |a#0| |b#0|)  (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |a#0|) (_module.RecType.Arrow_q |b#0|)) (_module.__default.Subtype $ly (_module.RecType.dom |b#0|) (_module.RecType.dom |a#0|))) (_module.__default.Subtype $ly (_module.RecType.ran |a#0|) (_module.RecType.ran |b#0|)))))))
 :qid |KozenSilvadfy.151:20|
 :skolemid |655|
 :pattern ( (_module.__default.Subtype ($LS $ly) |a#0| |b#0|))
))))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.RecType.Arrow| |a#13#0#0| |a#13#1#0|) Tclass._module.RecType)  (and ($Is DatatypeTypeType |a#13#0#0| Tclass._module.RecType) ($Is DatatypeTypeType |a#13#1#0| Tclass._module.RecType)))
 :qid |KozenSilvadfy.149:43|
 :skolemid |905|
 :pattern ( ($Is DatatypeTypeType (|#_module.RecType.Arrow| |a#13#0#0| |a#13#1#0|) Tclass._module.RecType))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0| T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.Subtype_h#canCall| (Lit BoxType |_k#0|) (Lit DatatypeTypeType |a#0@@0|) (Lit DatatypeTypeType |b#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@0| Tclass._module.RecType) ($Is DatatypeTypeType |b#0@@0| Tclass._module.RecType)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (and (|$IsA#_module.RecType| (Lit DatatypeTypeType |a#0@@0|)) (=> (not (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@0| |#_module.RecType.Bottom|)) (and (|$IsA#_module.RecType| (Lit DatatypeTypeType |b#0@@0|)) (=> (not (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@0| |#_module.RecType.Top|)) (=> (U_2_bool (Lit boolType (bool_2_U (_module.RecType.Arrow_q (Lit DatatypeTypeType |a#0@@0|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.RecType.Arrow_q (Lit DatatypeTypeType |b#0@@0|))))) (and (|_module.__default.Subtype_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.RecType.dom (Lit DatatypeTypeType |b#0@@0|))) (Lit DatatypeTypeType (_module.RecType.dom (Lit DatatypeTypeType |a#0@@0|)))) (=> (_module.__default.Subtype_h ($LS $ly@@0) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.RecType.dom (Lit DatatypeTypeType |b#0@@0|))) (Lit DatatypeTypeType (_module.RecType.dom (Lit DatatypeTypeType |a#0@@0|)))) (|_module.__default.Subtype_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.RecType.ran (Lit DatatypeTypeType |a#0@@0|))) (Lit DatatypeTypeType (_module.RecType.ran (Lit DatatypeTypeType |b#0@@0|))))))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@0| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@0| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q (Lit DatatypeTypeType |a#0@@0|)) (_module.RecType.Arrow_q (Lit DatatypeTypeType |b#0@@0|))) (_module.__default.Subtype_h ($LS $ly@@0) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.RecType.dom (Lit DatatypeTypeType |b#0@@0|))) (Lit DatatypeTypeType (_module.RecType.dom (Lit DatatypeTypeType |a#0@@0|))))) (_module.__default.Subtype_h ($LS $ly@@0) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.RecType.ran (Lit DatatypeTypeType |a#0@@0|))) (Lit DatatypeTypeType (_module.RecType.ran (Lit DatatypeTypeType |b#0@@0|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0|) (|_module.__default.Subtype_h#canCall| |_k'#2| |a#0@@0| |b#0@@0|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |673|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@0) |_k'#2| |a#0@@0| |b#0@@0|))
))))) (= (_module.__default.Subtype_h ($LS $ly@@0) (Lit BoxType |_k#0|) (Lit DatatypeTypeType |a#0@@0|) (Lit DatatypeTypeType |b#0@@0|))  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@0| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@0| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q (Lit DatatypeTypeType |a#0@@0|)) (_module.RecType.Arrow_q (Lit DatatypeTypeType |b#0@@0|))) (_module.__default.Subtype_h ($LS $ly@@0) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.RecType.dom (Lit DatatypeTypeType |b#0@@0|))) (Lit DatatypeTypeType (_module.RecType.dom (Lit DatatypeTypeType |a#0@@0|))))) (_module.__default.Subtype_h ($LS $ly@@0) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (_module.RecType.ran (Lit DatatypeTypeType |a#0@@0|))) (Lit DatatypeTypeType (_module.RecType.ran (Lit DatatypeTypeType |b#0@@0|))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0|) (_module.__default.Subtype_h ($LS $ly@@0) |_k'#2@@0| |a#0@@0| |b#0@@0|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |672|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@0) |_k'#2@@0| |a#0@@0| |b#0@@0|))
)))))))
 :qid |KozenSilvadfy.151:20|
 :weight 3
 :skolemid |674|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@0) (Lit BoxType |_k#0|) (Lit DatatypeTypeType |a#0@@0|) (Lit DatatypeTypeType |b#0@@0|)))
))))
(assert (forall ((ly T@U) (d0 T@U) (d1 T@U) ) (! (= (|$Eq#_module.RecType| ($LS ly) d0 d1) (= d0 d1))
 :qid |unknown.0:0|
 :skolemid |915|
 :pattern ( (|$Eq#_module.RecType| ($LS ly) d0 d1))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|_k#0@@0| T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.__default.Subtype_h#canCall| |_k#0@@0| |a#0@@1| |b#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@1| Tclass._module.RecType) ($Is DatatypeTypeType |b#0@@1| Tclass._module.RecType)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (and (|$IsA#_module.RecType| |a#0@@1|) (=> (not (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@1| |#_module.RecType.Bottom|)) (and (|$IsA#_module.RecType| |b#0@@1|) (=> (not (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@1| |#_module.RecType.Top|)) (=> (_module.RecType.Arrow_q |a#0@@1|) (=> (_module.RecType.Arrow_q |b#0@@1|) (and (|_module.__default.Subtype_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.RecType.dom |b#0@@1|) (_module.RecType.dom |a#0@@1|)) (=> (_module.__default.Subtype_h $ly@@1 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.RecType.dom |b#0@@1|) (_module.RecType.dom |a#0@@1|)) (|_module.__default.Subtype_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.RecType.ran |a#0@@1|) (_module.RecType.ran |b#0@@1|))))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@1| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@1| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |a#0@@1|) (_module.RecType.Arrow_q |b#0@@1|)) (_module.__default.Subtype_h $ly@@1 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.RecType.dom |b#0@@1|) (_module.RecType.dom |a#0@@1|))) (_module.__default.Subtype_h $ly@@1 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.RecType.ran |a#0@@1|) (_module.RecType.ran |b#0@@1|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@0|) (|_module.__default.Subtype_h#canCall| |_k'#0| |a#0@@1| |b#0@@1|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |667|
 :pattern ( (_module.__default.Subtype_h $ly@@1 |_k'#0| |a#0@@1| |b#0@@1|))
))))) (= (_module.__default.Subtype_h ($LS $ly@@1) |_k#0@@0| |a#0@@1| |b#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@1| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@1| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |a#0@@1|) (_module.RecType.Arrow_q |b#0@@1|)) (_module.__default.Subtype_h $ly@@1 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.RecType.dom |b#0@@1|) (_module.RecType.dom |a#0@@1|))) (_module.__default.Subtype_h $ly@@1 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (_module.RecType.ran |a#0@@1|) (_module.RecType.ran |b#0@@1|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@0|) (_module.__default.Subtype_h $ly@@1 |_k'#0@@0| |a#0@@1| |b#0@@1|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |666|
 :pattern ( (_module.__default.Subtype_h $ly@@1 |_k'#0@@0| |a#0@@1| |b#0@@1|))
)))))))
 :qid |KozenSilvadfy.151:20|
 :skolemid |668|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@1) |_k#0@@0| |a#0@@1| |b#0@@1|))
))))
(assert (= (DatatypeCtorId |#_module.RecType.Bottom|) |##_module.RecType.Bottom|))
(assert (= (DatatypeCtorId |#_module.RecType.Top|) |##_module.RecType.Top|))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@2| Tclass._module.RecType) ($Is DatatypeTypeType |b#0@@2| Tclass._module.RecType)) (_module.__default.Subtype ($LS $ly@@2) |a#0@@2| |b#0@@2|)) (forall ((|_k#0@@1| T@U) ) (! (_module.__default.Subtype_h ($LS $ly@@2) |_k#0@@1| |a#0@@2| |b#0@@2|)
 :qid |KozenSilvadfy.151:20|
 :skolemid |656|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@2) |_k#0@@1| |a#0@@2| |b#0@@2|))
)))
 :qid |KozenSilvadfy.151:20|
 :skolemid |657|
 :pattern ( (_module.__default.Subtype ($LS $ly@@2) |a#0@@2| |b#0@@2|))
))))
(assert (forall ((ly@@0 T@U) (d0@@0 T@U) (d1@@0 T@U) ) (!  (=> (forall ((k Int) ) (!  (=> (<= 0 k) (|$PrefixEq#_module.RecType| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (|$PrefixEq#_module.RecType| (|ORD#FromNat| k) ($LS ly@@0) d0@@0 d1@@0))
)) (|$Eq#_module.RecType| ($LS ly@@0) d0@@0 d1@@0))
 :qid |unknown.0:0|
 :skolemid |921|
 :pattern ( (|$Eq#_module.RecType| ($LS ly@@0) d0@@0 d1@@0))
)))
(assert ($Is DatatypeTypeType |#_module.RecType.Bottom| Tclass._module.RecType))
(assert ($Is DatatypeTypeType |#_module.RecType.Top| Tclass._module.RecType))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@2| T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.__default.Subtype_h#canCall| (Lit BoxType |_k#0@@2|) |a#0@@3| |b#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a#0@@3| Tclass._module.RecType) ($Is DatatypeTypeType |b#0@@3| Tclass._module.RecType)))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (and (|$IsA#_module.RecType| |a#0@@3|) (=> (not (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@3| |#_module.RecType.Bottom|)) (and (|$IsA#_module.RecType| |b#0@@3|) (=> (not (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@3| |#_module.RecType.Top|)) (=> (_module.RecType.Arrow_q |a#0@@3|) (=> (_module.RecType.Arrow_q |b#0@@3|) (and (|_module.__default.Subtype_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.RecType.dom |b#0@@3|) (_module.RecType.dom |a#0@@3|)) (=> (_module.__default.Subtype_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.RecType.dom |b#0@@3|) (_module.RecType.dom |a#0@@3|)) (|_module.__default.Subtype_h#canCall| (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.RecType.ran |a#0@@3|) (_module.RecType.ran |b#0@@3|))))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@3| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@3| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |a#0@@3|) (_module.RecType.Arrow_q |b#0@@3|)) (_module.__default.Subtype_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.RecType.dom |b#0@@3|) (_module.RecType.dom |a#0@@3|))) (_module.__default.Subtype_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.RecType.ran |a#0@@3|) (_module.RecType.ran |b#0@@3|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@2|) (|_module.__default.Subtype_h#canCall| |_k'#1| |a#0@@3| |b#0@@3|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |670|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@3) |_k'#1| |a#0@@3| |b#0@@3|))
))))) (= (_module.__default.Subtype_h ($LS $ly@@3) (Lit BoxType |_k#0@@2|) |a#0@@3| |b#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@2|)) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#0@@3| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#0@@3| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |a#0@@3|) (_module.RecType.Arrow_q |b#0@@3|)) (_module.__default.Subtype_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.RecType.dom |b#0@@3|) (_module.RecType.dom |a#0@@3|))) (_module.__default.Subtype_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@2| (|ORD#FromNat| 1)) (_module.RecType.ran |a#0@@3|) (_module.RecType.ran |b#0@@3|))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@2|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@2|) (_module.__default.Subtype_h ($LS $ly@@3) |_k'#1@@0| |a#0@@3| |b#0@@3|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |669|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@3) |_k'#1@@0| |a#0@@3| |b#0@@3|))
)))))))
 :qid |KozenSilvadfy.151:20|
 :weight 3
 :skolemid |671|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@3) (Lit BoxType |_k#0@@2|) |a#0@@3| |b#0@@3|))
))))
(assert (forall ((k@@0 T@U) (ly@@1 T@U) (d0@@1 T@U) (d1@@1 T@U) (m@@0 T@U) ) (!  (=> (and (|ORD#Less| k@@0 m@@0) (|$PrefixEq#_module.RecType| m@@0 ($LS ly@@1) d0@@1 d1@@1)) (|$PrefixEq#_module.RecType| k@@0 ($LS ly@@1) d0@@1 d1@@1))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( (|$PrefixEq#_module.RecType| k@@0 ($LS ly@@1) d0@@1 d1@@1) (|$PrefixEq#_module.RecType| m@@0 ($LS ly@@1) d0@@1 d1@@1))
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
(assert (forall ((ly@@2 T@U) (d0@@2 T@U) (d1@@2 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@2 Tclass._module.RecType) ($Is DatatypeTypeType d1@@2 Tclass._module.RecType)) (= (|$Eq#_module.RecType| ($LS ly@@2) d0@@2 d1@@2)  (or (or (and (_module.RecType.Bottom_q d0@@2) (_module.RecType.Bottom_q d1@@2)) (and (_module.RecType.Top_q d0@@2) (_module.RecType.Top_q d1@@2))) (and (and (_module.RecType.Arrow_q d0@@2) (_module.RecType.Arrow_q d1@@2)) (=> (and (_module.RecType.Arrow_q d0@@2) (_module.RecType.Arrow_q d1@@2)) (and (|$Eq#_module.RecType| ly@@2 (_module.RecType.dom d0@@2) (_module.RecType.dom d1@@2)) (|$Eq#_module.RecType| ly@@2 (_module.RecType.ran d0@@2) (_module.RecType.ran d1@@2))))))))
 :qid |unknown.0:0|
 :skolemid |913|
 :pattern ( (|$Eq#_module.RecType| ($LS ly@@2) d0@@2 d1@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.RecType.Bottom_q d) (= (DatatypeCtorId d) |##_module.RecType.Bottom|))
 :qid |unknown.0:0|
 :skolemid |897|
 :pattern ( (_module.RecType.Bottom_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.RecType.Top_q d@@0) (= (DatatypeCtorId d@@0) |##_module.RecType.Top|))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( (_module.RecType.Top_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.RecType.Arrow_q d@@1) (= (DatatypeCtorId d@@1) |##_module.RecType.Arrow|))
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( (_module.RecType.Arrow_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|a#0@@4| T@U) (|b#0@@4| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@4| Tclass._module.RecType) ($Is DatatypeTypeType |b#0@@4| Tclass._module.RecType)) (forall ((|_k#0@@3| T@U) ) (! (_module.__default.Subtype_h ($LS $ly@@4) |_k#0@@3| |a#0@@4| |b#0@@4|)
 :qid |KozenSilvadfy.151:20|
 :skolemid |656|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@4) |_k#0@@3| |a#0@@4| |b#0@@4|))
))) (_module.__default.Subtype ($LS $ly@@4) |a#0@@4| |b#0@@4|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |658|
 :pattern ( (_module.__default.Subtype ($LS $ly@@4) |a#0@@4| |b#0@@4|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.RecType.Arrow_q d@@2) (exists ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= d@@2 (|#_module.RecType.Arrow| |a#12#0#0| |a#12#1#0|))
 :qid |KozenSilvadfy.149:43|
 :skolemid |903|
)))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( (_module.RecType.Arrow_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.RecType.Bottom_q d@@3) (= d@@3 |#_module.RecType.Bottom|))
 :qid |unknown.0:0|
 :skolemid |898|
 :pattern ( (_module.RecType.Bottom_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.RecType.Top_q d@@4) (= d@@4 |#_module.RecType.Top|))
 :qid |unknown.0:0|
 :skolemid |900|
 :pattern ( (_module.RecType.Top_q d@@4))
)))
(assert (forall ((k@@1 T@U) (ly@@3 T@U) (d0@@3 T@U) (d1@@3 T@U) ) (!  (=> (or (not (= k@@1 (|ORD#FromNat| 0))) (not true)) (= (|$PrefixEq#_module.RecType| k@@1 ($LS ly@@3) d0@@3 d1@@3) (|$PrefixEq#_module.RecType| k@@1 ly@@3 d0@@3 d1@@3)))
 :qid |unknown.0:0|
 :skolemid |917|
 :pattern ( (|$PrefixEq#_module.RecType| k@@1 ($LS ly@@3) d0@@3 d1@@3))
)))
(assert (forall (($ly@@5 T@U) (|a#0@@5| T@U) (|b#0@@5| T@U) ) (! (= (_module.__default.Subtype ($LS $ly@@5) |a#0@@5| |b#0@@5|) (_module.__default.Subtype $ly@@5 |a#0@@5| |b#0@@5|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |650|
 :pattern ( (_module.__default.Subtype ($LS $ly@@5) |a#0@@5| |b#0@@5|))
)))
(assert (forall ((ly@@4 T@U) (d0@@4 T@U) (d1@@4 T@U) ) (! (= (|$Eq#_module.RecType| ($LS ly@@4) d0@@4 d1@@4) (|$Eq#_module.RecType| ly@@4 d0@@4 d1@@4))
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( (|$Eq#_module.RecType| ($LS ly@@4) d0@@4 d1@@4))
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
(assert (forall ((ly@@5 T@U) (d0@@5 T@U) (d1@@5 T@U) ) (! (= (|$Eq#_module.RecType| ($LS ly@@5) d0@@5 d1@@5) (forall ((k@@2 T@U) ) (! (|$PrefixEq#_module.RecType| k@@2 ($LS ly@@5) d0@@5 d1@@5)
 :qid |unknown.0:0|
 :skolemid |918|
 :pattern ( (|$PrefixEq#_module.RecType| k@@2 ($LS ly@@5) d0@@5 d1@@5))
)))
 :qid |unknown.0:0|
 :skolemid |919|
 :pattern ( (|$Eq#_module.RecType| ($LS ly@@5) d0@@5 d1@@5))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall (($ly@@6 T@U) (|_k#0@@4| T@U) (|a#0@@6| T@U) (|b#0@@6| T@U) ) (! (= (_module.__default.Subtype_h ($LS $ly@@6) |_k#0@@4| |a#0@@6| |b#0@@6|) (_module.__default.Subtype_h $ly@@6 |_k#0@@4| |a#0@@6| |b#0@@6|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |662|
 :pattern ( (_module.__default.Subtype_h ($LS $ly@@6) |_k#0@@4| |a#0@@6| |b#0@@6|))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (|ORD#Offset| o@@3))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@3))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.RecType.Arrow| |a#11#0#0| |a#11#1#0|)) |##_module.RecType.Arrow|)
 :qid |KozenSilvadfy.149:43|
 :skolemid |901|
 :pattern ( (|#_module.RecType.Arrow| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= (_module.RecType.dom (|#_module.RecType.Arrow| |a#14#0#0| |a#14#1#0|)) |a#14#0#0|)
 :qid |KozenSilvadfy.149:43|
 :skolemid |908|
 :pattern ( (|#_module.RecType.Arrow| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (_module.RecType.ran (|#_module.RecType.Arrow| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |KozenSilvadfy.149:43|
 :skolemid |909|
 :pattern ( (|#_module.RecType.Arrow| |a#15#0#0| |a#15#1#0|))
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
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.RecType| d@@5) (or (or (_module.RecType.Bottom_q d@@5) (_module.RecType.Top_q d@@5)) (_module.RecType.Arrow_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |911|
 :pattern ( (|$IsA#_module.RecType| d@@5))
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
 :skolemid |1087|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.RecType) (or (or (_module.RecType.Bottom_q d@@6) (_module.RecType.Top_q d@@6)) (_module.RecType.Arrow_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |912|
 :pattern ( (_module.RecType.Arrow_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.RecType))
 :pattern ( (_module.RecType.Top_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.RecType))
 :pattern ( (_module.RecType.Bottom_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.RecType))
)))
(assert (forall ((o@@5 T@U) ) (!  (=> (|ORD#IsNat| o@@5) (= o@@5 (|ORD#FromNat| (|ORD#Offset| o@@5))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@5))
 :pattern ( (|ORD#IsNat| o@@5))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@7 Tclass._module.RecType)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.RecType $h))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.RecType $h))
)))
(assert (= (Tag Tclass._module.RecType) Tagclass._module.RecType))
(assert (= (TagFamily Tclass._module.RecType) tytagFamily$RecType))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) (|_k#0@@5| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |a#0@@7| Tclass._module.RecType) ($Is DatatypeTypeType |b#0@@7| Tclass._module.RecType)) (= |_k#0@@5| (|ORD#FromNat| 0))) (_module.__default.Subtype_h $ly@@7 |_k#0@@5| |a#0@@7| |b#0@@7|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |659|
 :pattern ( (_module.__default.Subtype_h $ly@@7 |_k#0@@5| |a#0@@7| |b#0@@7|))
))))
(assert (forall ((o@@6 T@U) (p@@3 T@U) ) (!  (=> (and (|ORD#IsNat| p@@3) (<= (|ORD#Offset| p@@3) (|ORD#Offset| o@@6))) (or (and (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@6 p@@3) o@@6)) (and (or (not (= p@@3 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@6 p@@3) o@@6))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@6 p@@3))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.RecType.Arrow_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.RecType $h@@0))) ($IsAlloc DatatypeTypeType (_module.RecType.dom d@@8) Tclass._module.RecType $h@@0))
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.RecType.dom d@@8) Tclass._module.RecType $h@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.RecType.Arrow_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.RecType $h@@1))) ($IsAlloc DatatypeTypeType (_module.RecType.ran d@@9) Tclass._module.RecType $h@@1))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.RecType.ran d@@9) Tclass._module.RecType $h@@1))
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
(assert (forall ((k@@3 T@U) (ly@@6 T@U) (d0@@6 T@U) (d1@@6 T@U) ) (!  (=> (and ($Is DatatypeTypeType d0@@6 Tclass._module.RecType) ($Is DatatypeTypeType d1@@6 Tclass._module.RecType)) (= (|$PrefixEq#_module.RecType| k@@3 ($LS ly@@6) d0@@6 d1@@6)  (and (=> (< 0 (|ORD#Offset| k@@3)) (or (or (and (_module.RecType.Bottom_q d0@@6) (_module.RecType.Bottom_q d1@@6)) (and (_module.RecType.Top_q d0@@6) (_module.RecType.Top_q d1@@6))) (and (and (_module.RecType.Arrow_q d0@@6) (_module.RecType.Arrow_q d1@@6)) (=> (and (_module.RecType.Arrow_q d0@@6) (_module.RecType.Arrow_q d1@@6)) (and (|$PrefixEq#_module.RecType| (|ORD#Minus| k@@3 (|ORD#FromNat| 1)) ly@@6 (_module.RecType.dom d0@@6) (_module.RecType.dom d1@@6)) (|$PrefixEq#_module.RecType| (|ORD#Minus| k@@3 (|ORD#FromNat| 1)) ly@@6 (_module.RecType.ran d0@@6) (_module.RecType.ran d1@@6))))))) (=> (and (or (not (= k@@3 (|ORD#FromNat| 0))) (not true)) (= (|ORD#Offset| k@@3) 0)) (|$Eq#_module.RecType| ly@@6 d0@@6 d1@@6)))))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (|$PrefixEq#_module.RecType| k@@3 ($LS ly@@6) d0@@6 d1@@6))
)))
(assert (forall ((k@@4 T@U) (ly@@7 T@U) (d0@@7 T@U) (d1@@7 T@U) ) (!  (=> (= d0@@7 d1@@7) (|$PrefixEq#_module.RecType| k@@4 ($LS ly@@7) d0@@7 d1@@7))
 :qid |unknown.0:0|
 :skolemid |923|
 :pattern ( (|$PrefixEq#_module.RecType| k@@4 ($LS ly@@7) d0@@7 d1@@7))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_k#0@@6| () T@U)
(declare-fun |a#1| () T@U)
(declare-fun |c#1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |b#1| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Theorem3__Subtype__Is__Transitive_h)
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
 (=> (= (ControlFlow 0 0) 7) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.Subtype_h#canCall| |_k#0@@6| |a#1| |c#1|) (or (_module.__default.Subtype_h ($LS $LZ) |_k#0@@6| |a#1| |c#1|) (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#1| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |c#1| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |a#1|) (_module.RecType.Arrow_q |c#1|)) (_module.__default.Subtype_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.RecType.dom |c#1|) (_module.RecType.dom |a#1|))) (_module.__default.Subtype_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.RecType.ran |a#1|) (_module.RecType.ran |c#1|)))))))) (=> (=> (|_module.__default.Subtype_h#canCall| |_k#0@@6| |a#1| |c#1|) (or (_module.__default.Subtype_h ($LS $LZ) |_k#0@@6| |a#1| |c#1|) (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#1| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |c#1| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |a#1|) (_module.RecType.Arrow_q |c#1|)) (_module.__default.Subtype_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.RecType.dom |c#1|) (_module.RecType.dom |a#1|))) (_module.__default.Subtype_h ($LS ($LS $LZ)) (|ORD#Minus| |_k#0@@6| (|ORD#FromNat| 1)) (_module.RecType.ran |a#1|) (_module.RecType.ran |c#1|))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.Subtype_h#canCall| |_k#0@@6| |a#1| |c#1|) (or (_module.__default.Subtype_h ($LS $LZ) |_k#0@@6| |a#1| |c#1|) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@1| |_k#0@@6|) (_module.__default.Subtype_h ($LS ($LS $LZ)) |_k'#1@@1| |a#1| |c#1|))
 :qid |KozenSilvadfy.151:20|
 :skolemid |678|
 :pattern ( (_module.__default.Subtype_h ($LS ($LS $LZ)) |_k'#1@@1| |a#1| |c#1|))
))))))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@6|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#2@@1| T@U) (|a#2| T@U) (|b#2| T@U) (|c#2| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |a#2| Tclass._module.RecType) ($Is DatatypeTypeType |b#2| Tclass._module.RecType)) ($Is DatatypeTypeType |c#2| Tclass._module.RecType)) (and (|ORD#Less| |_k'#2@@1| |_k#0@@6|) (and (_module.__default.Subtype ($LS $LZ) |a#2| |b#2|) (_module.__default.Subtype ($LS $LZ) |b#2| |c#2|)))) (_module.__default.Subtype_h ($LS $LZ) |_k'#2@@1| |a#2| |c#2|))
 :qid |KozenSilvadfy.158:16|
 :skolemid |682|
 :pattern ( (_module.__default.Subtype_h ($LS $LZ) |_k'#2@@1| |a#2| |c#2|) (_module.__default.Subtype ($LS $LZ) |b#2| |c#2|))
 :pattern ( (_module.__default.Subtype ($LS $LZ) |b#2| |c#2|) (_module.__default.Subtype ($LS $LZ) |a#2| |b#2|) (|ORD#Less| |_k'#2@@1| |_k#0@@6|))
)) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (< 0 (|ORD#Offset| |_k#0@@6|)) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|$IsA#_module.RecType| |a#1|)) (and (|$IsA#_module.RecType| |b#1|) (|$IsA#_module.RecType| |c#1|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#a0#0| T@U) (|$ih#b0#0| T@U) (|$ih#c0#0| T@U) ) (!  (=> (and (and (and (and ($Is DatatypeTypeType |$ih#a0#0| Tclass._module.RecType) ($Is DatatypeTypeType |$ih#b0#0| Tclass._module.RecType)) ($Is DatatypeTypeType |$ih#c0#0| Tclass._module.RecType)) (and (_module.__default.Subtype ($LS $LZ) |$ih#a0#0| |$ih#b0#0|) (_module.__default.Subtype ($LS $LZ) |$ih#b0#0| |$ih#c0#0|))) (|ORD#Less| |$ih#_k0#0| |_k#0@@6|)) (_module.__default.Subtype_h ($LS $LZ) |$ih#_k0#0| |$ih#a0#0| |$ih#c0#0|))
 :qid |KozenSilvadfy.158:16|
 :skolemid |681|
 :pattern ( (_module.__default.Subtype_h ($LS $LZ) |$ih#_k0#0| |$ih#a0#0| |$ih#c0#0|) (_module.__default.Subtype ($LS $LZ) |$ih#b0#0| |$ih#c0#0|))
 :pattern ( (_module.__default.Subtype_h ($LS $LZ) |$ih#_k0#0| |$ih#a0#0| |$ih#c0#0|) (_module.__default.Subtype ($LS $LZ) |$ih#a0#0| |$ih#b0#0|))
))))) (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |a#1| Tclass._module.RecType) ($IsAlloc DatatypeTypeType |a#1| Tclass._module.RecType $Heap)) (|$IsA#_module.RecType| |a#1|)) (and (and ($Is DatatypeTypeType |b#1| Tclass._module.RecType) ($IsAlloc DatatypeTypeType |b#1| Tclass._module.RecType $Heap)) (|$IsA#_module.RecType| |b#1|))) (=> (and (and (and (and (and ($Is DatatypeTypeType |c#1| Tclass._module.RecType) ($IsAlloc DatatypeTypeType |c#1| Tclass._module.RecType $Heap)) (|$IsA#_module.RecType| |c#1|)) (= 3 $FunctionContextHeight)) (and (|_module.__default.Subtype#canCall| |a#1| |b#1|) (and (_module.__default.Subtype ($LS $LZ) |a#1| |b#1|) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |a#1| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#1| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |a#1|) (_module.RecType.Arrow_q |b#1|)) (_module.__default.Subtype ($LS $LZ) (_module.RecType.dom |b#1|) (_module.RecType.dom |a#1|))) (_module.__default.Subtype ($LS $LZ) (_module.RecType.ran |a#1|) (_module.RecType.ran |b#1|))))))) (and (and (|_module.__default.Subtype#canCall| |b#1| |c#1|) (and (_module.__default.Subtype ($LS $LZ) |b#1| |c#1|) (or (or (|$Eq#_module.RecType| ($LS ($LS $LZ)) |b#1| |#_module.RecType.Bottom|) (|$Eq#_module.RecType| ($LS ($LS $LZ)) |c#1| |#_module.RecType.Top|)) (and (and (and (_module.RecType.Arrow_q |b#1|) (_module.RecType.Arrow_q |c#1|)) (_module.__default.Subtype ($LS $LZ) (_module.RecType.dom |c#1|) (_module.RecType.dom |b#1|))) (_module.__default.Subtype ($LS $LZ) (_module.RecType.ran |b#1|) (_module.RecType.ran |c#1|)))))) (= (ControlFlow 0 7) 6))) anon0_correct)))))
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
