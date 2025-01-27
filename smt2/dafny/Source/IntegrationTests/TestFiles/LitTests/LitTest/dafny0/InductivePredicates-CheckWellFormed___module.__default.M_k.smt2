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
(declare-fun Tagclass._module.natinf () T@U)
(declare-fun |##_module.natinf.N| () T@U)
(declare-fun |##_module.natinf.Inf| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$natinf () T@U)
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
(declare-fun _module.__default.Even_h (T@U T@U T@U) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.natinf.Inf| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.natinf () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.natinf.N_q (T@U) Bool)
(declare-fun _module.natinf.Inf_q (T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Even_h#canCall| (T@U T@U) Bool)
(declare-fun _module.natinf.n (T@U) Int)
(declare-fun |#_module.natinf.N| (Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |$IsA#_module.natinf| (T@U) Bool)
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
(declare-fun Mod (Int Int) Int)
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
(assert (distinct TORDINAL TagORDINAL alloc Tagclass._System.nat Tagclass._module.natinf |##_module.natinf.N| |##_module.natinf.Inf| tytagFamily$nat tytagFamily$natinf)
)
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) (|x#0| T@U) (|_k#0| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0| _m) (=> (_module.__default.Even_h $ly |_k#0| |x#0|) (_module.__default.Even_h $ly _m |x#0|)))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2825|
 :pattern ( (_module.__default.Even_h $ly |_k#0| |x#0|) (|ORD#LessThanLimit| |_k#0| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |2267|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((|x#0@@0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |2522|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._System.nat $h))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |2275|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (= (DatatypeCtorId |#_module.natinf.Inf|) |##_module.natinf.Inf|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.natinf.Inf| Tclass._module.natinf))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2194|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2192|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (_module.natinf.N_q d) (= (DatatypeCtorId d) |##_module.natinf.N|))
 :qid |unknown.0:0|
 :skolemid |2892|
 :pattern ( (_module.natinf.N_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.natinf.Inf_q d@@0) (= (DatatypeCtorId d@@0) |##_module.natinf.Inf|))
 :qid |unknown.0:0|
 :skolemid |2899|
 :pattern ( (_module.natinf.Inf_q d@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.__default.Even_h#canCall| |_k#0@@0| |x#0@@1|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@1| Tclass._module.natinf))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (not (and (_module.natinf.N_q |x#0@@1|) (= (_module.natinf.n |x#0@@1|) (LitInt 0)))) (=> (_module.natinf.N_q |x#0@@1|) (=> (<= (LitInt 2) (_module.natinf.n |x#0@@1|)) (|_module.__default.Even_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (|#_module.natinf.N| (- (_module.natinf.n |x#0@@1|) 2))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (and (_module.natinf.N_q |x#0@@1|) (= (_module.natinf.n |x#0@@1|) (LitInt 0))) (and (and (_module.natinf.N_q |x#0@@1|) (<= (LitInt 2) (_module.natinf.n |x#0@@1|))) (_module.__default.Even_h $ly@@0 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (|#_module.natinf.N| (- (_module.natinf.n |x#0@@1|) 2)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0| |_k#0@@0|) (|_module.__default.Even_h#canCall| |_k'#0| |x#0@@1|))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2832|
 :pattern ( (_module.__default.Even_h $ly@@0 |_k'#0| |x#0@@1|))
))))) (= (_module.__default.Even_h ($LS $ly@@0) |_k#0@@0| |x#0@@1|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (and (_module.natinf.N_q |x#0@@1|) (= (_module.natinf.n |x#0@@1|) (LitInt 0))) (and (and (_module.natinf.N_q |x#0@@1|) (<= (LitInt 2) (_module.natinf.n |x#0@@1|))) (_module.__default.Even_h $ly@@0 (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (|#_module.natinf.N| (- (_module.natinf.n |x#0@@1|) 2)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k#0@@0|) (_module.__default.Even_h $ly@@0 |_k'#0@@0| |x#0@@1|))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2831|
 :pattern ( (_module.__default.Even_h $ly@@0 |_k'#0@@0| |x#0@@1|))
)))))))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2833|
 :pattern ( (_module.__default.Even_h ($LS $ly@@0) |_k#0@@0| |x#0@@1|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2203|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@2| T@U) (|_k#0@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |x#0@@2| Tclass._module.natinf) (= |_k#0@@1| (|ORD#FromNat| 0))) (not (_module.__default.Even_h $ly@@1 |_k#0@@1| |x#0@@2|)))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2824|
 :pattern ( (_module.__default.Even_h $ly@@1 |_k#0@@1| |x#0@@2|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.natinf.Inf_q d@@1) (= d@@1 |#_module.natinf.Inf|))
 :qid |unknown.0:0|
 :skolemid |2900|
 :pattern ( (_module.natinf.Inf_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.natinf.N_q d@@2) (exists ((|a#1#0#0| Int) ) (! (= d@@2 (|#_module.natinf.N| |a#1#0#0|))
 :qid |InductivePredicatesdfy.4:21|
 :skolemid |2893|
)))
 :qid |unknown.0:0|
 :skolemid |2894|
 :pattern ( (_module.natinf.N_q d@@2))
)))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |2521|
 :pattern ( ($Is intType |x#0@@3| Tclass._System.nat))
)))
(assert (forall (($ly@@2 T@U) (|_k#0@@2| T@U) (|x#0@@4| T@U) ) (! (= (_module.__default.Even_h ($LS $ly@@2) |_k#0@@2| |x#0@@4|) (_module.__default.Even_h $ly@@2 |_k#0@@2| |x#0@@4|))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2827|
 :pattern ( (_module.__default.Even_h ($LS $ly@@2) |_k#0@@2| |x#0@@4|))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |2272|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |2263|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.natinf.N| |a#2#0#0|) Tclass._module.natinf) ($Is intType (int_2_U |a#2#0#0|) Tclass._System.nat))
 :qid |InductivePredicatesdfy.4:21|
 :skolemid |2895|
 :pattern ( ($Is DatatypeTypeType (|#_module.natinf.N| |a#2#0#0|) Tclass._module.natinf))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.natinf| d@@3) (or (_module.natinf.N_q d@@3) (_module.natinf.Inf_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2902|
 :pattern ( (|$IsA#_module.natinf| d@@3))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |2266|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |2268|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@3| T@U) (|x#0@@5| T@U) ) (!  (=> (or (|_module.__default.Even_h#canCall| (Lit BoxType |_k#0@@3|) |x#0@@5|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@5| Tclass._module.natinf))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (=> (not (and (_module.natinf.N_q |x#0@@5|) (= (_module.natinf.n |x#0@@5|) (LitInt 0)))) (=> (_module.natinf.N_q |x#0@@5|) (=> (<= (LitInt 2) (_module.natinf.n |x#0@@5|)) (|_module.__default.Even_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (|#_module.natinf.N| (- (_module.natinf.n |x#0@@5|) 2))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (and (_module.natinf.N_q |x#0@@5|) (= (_module.natinf.n |x#0@@5|) (LitInt 0))) (and (and (_module.natinf.N_q |x#0@@5|) (<= (LitInt 2) (_module.natinf.n |x#0@@5|))) (_module.__default.Even_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (|#_module.natinf.N| (- (_module.natinf.n |x#0@@5|) 2)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@3|) (|_module.__default.Even_h#canCall| |_k'#1| |x#0@@5|))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2835|
 :pattern ( (_module.__default.Even_h ($LS $ly@@3) |_k'#1| |x#0@@5|))
))))) (= (_module.__default.Even_h ($LS $ly@@3) (Lit BoxType |_k#0@@3|) |x#0@@5|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (and (_module.natinf.N_q |x#0@@5|) (= (_module.natinf.n |x#0@@5|) (LitInt 0))) (and (and (_module.natinf.N_q |x#0@@5|) (<= (LitInt 2) (_module.natinf.n |x#0@@5|))) (_module.__default.Even_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (|#_module.natinf.N| (- (_module.natinf.n |x#0@@5|) 2)))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@3|) (_module.__default.Even_h ($LS $ly@@3) |_k'#1@@0| |x#0@@5|))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2834|
 :pattern ( (_module.__default.Even_h ($LS $ly@@3) |_k'#1@@0| |x#0@@5|))
)))))))
 :qid |InductivePredicatesdfy.6:17|
 :weight 3
 :skolemid |2836|
 :pattern ( (_module.__default.Even_h ($LS $ly@@3) (Lit BoxType |_k#0@@3|) |x#0@@5|))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.natinf) (or (_module.natinf.N_q d@@4) (_module.natinf.Inf_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |2903|
 :pattern ( (_module.natinf.Inf_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.natinf))
 :pattern ( (_module.natinf.N_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.natinf))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |2262|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.natinf.N| |a#0#0#0|)) |##_module.natinf.N|)
 :qid |InductivePredicatesdfy.4:21|
 :skolemid |2891|
 :pattern ( (|#_module.natinf.N| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.natinf.n (|#_module.natinf.N| |a#4#0#0|)) |a#4#0#0|)
 :qid |InductivePredicatesdfy.4:21|
 :skolemid |2898|
 :pattern ( (|#_module.natinf.N| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2202|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |2265|
 :pattern ( (|ORD#Less| o@@5 p@@3))
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
 :skolemid |3068|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |2517|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |2264|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass._module.natinf)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.natinf $h@@0))
 :qid |unknown.0:0|
 :skolemid |2901|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.natinf $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.natinf) Tagclass._module.natinf))
(assert (= (TagFamily Tclass._module.natinf) tytagFamily$natinf))
(assert (= |#_module.natinf.Inf| (Lit DatatypeTypeType |#_module.natinf.Inf|)))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |2273|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.natinf.N_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.natinf $h@@1))) ($IsAlloc intType (int_2_U (_module.natinf.n d@@6)) Tclass._System.nat $h@@1))
 :qid |unknown.0:0|
 :skolemid |2896|
 :pattern ( ($IsAlloc intType (int_2_U (_module.natinf.n d@@6)) Tclass._System.nat $h@@1))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2195|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#_module.natinf.N| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.natinf.N| |a#3#0#0|)))
 :qid |InductivePredicatesdfy.4:21|
 :skolemid |2897|
 :pattern ( (|#_module.natinf.N| (LitInt |a#3#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2193|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc BoxType v TORDINAL h)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |2242|
 :pattern ( ($IsAlloc BoxType v TORDINAL h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@4| T@U) (|x#0@@6| T@U) ) (!  (=> (or (|_module.__default.Even_h#canCall| (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |x#0@@6|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |x#0@@6| Tclass._module.natinf))) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (not (and (_module.natinf.N_q (Lit DatatypeTypeType |x#0@@6|)) (= (LitInt (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|))) (LitInt 0)))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.natinf.N_q (Lit DatatypeTypeType |x#0@@6|))))) (=> (<= (LitInt 2) (LitInt (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|)))) (|_module.__default.Even_h#canCall| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (|#_module.natinf.N| (LitInt (- (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|)) 2))))))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (and (_module.natinf.N_q (Lit DatatypeTypeType |x#0@@6|)) (= (LitInt (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|))) (LitInt 0))) (and (and (_module.natinf.N_q (Lit DatatypeTypeType |x#0@@6|)) (<= (LitInt 2) (LitInt (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|))))) (_module.__default.Even_h ($LS $ly@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (|#_module.natinf.N| (LitInt (- (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|)) 2)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2| |_k#0@@4|) (|_module.__default.Even_h#canCall| |_k'#2| |x#0@@6|))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2838|
 :pattern ( (_module.__default.Even_h ($LS $ly@@4) |_k'#2| |x#0@@6|))
))))) (= (_module.__default.Even_h ($LS $ly@@4) (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |x#0@@6|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (and (_module.natinf.N_q (Lit DatatypeTypeType |x#0@@6|)) (= (LitInt (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|))) (LitInt 0))) (and (and (_module.natinf.N_q (Lit DatatypeTypeType |x#0@@6|)) (<= (LitInt 2) (LitInt (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|))))) (_module.__default.Even_h ($LS $ly@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (Lit DatatypeTypeType (|#_module.natinf.N| (LitInt (- (_module.natinf.n (Lit DatatypeTypeType |x#0@@6|)) 2)))))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (exists ((|_k'#2@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@0| |_k#0@@4|) (_module.__default.Even_h ($LS $ly@@4) |_k'#2@@0| |x#0@@6|))
 :qid |InductivePredicatesdfy.6:17|
 :skolemid |2837|
 :pattern ( (_module.__default.Even_h ($LS $ly@@4) |_k'#2@@0| |x#0@@6|))
)))))))
 :qid |InductivePredicatesdfy.6:17|
 :weight 3
 :skolemid |2839|
 :pattern ( (_module.__default.Even_h ($LS $ly@@4) (Lit BoxType |_k#0@@4|) (Lit DatatypeTypeType |x#0@@6|)))
))))
(assert (forall ((v@@0 T@U) ) (! ($Is BoxType v@@0 TORDINAL)
 :qid |DafnyPreludebpl.232:14|
 :skolemid |2221|
 :pattern ( ($Is BoxType v@@0 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |k#0| () T@U)
(declare-fun |x#0@@7| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.M_k)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and ($IsAlloc BoxType |k#0| TORDINAL $Heap) ($IsAlloc DatatypeTypeType |x#0@@7| Tclass._module.natinf $Heap)) (and (|_module.__default.Even_h#canCall| |k#0| |x#0@@7|) (_module.__default.Even_h ($LS $LZ) |k#0| |x#0@@7|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (_module.natinf.N_q |x#0@@7|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (_module.natinf.N_q |x#0@@7|)) (=> (_module.natinf.N_q |x#0@@7|) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= (LitInt 2) 0)) (not true)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |x#0@@7| Tclass._module.natinf) ($IsAlloc DatatypeTypeType |x#0@@7| Tclass._module.natinf $Heap)) (|$IsA#_module.natinf| |x#0@@7|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
