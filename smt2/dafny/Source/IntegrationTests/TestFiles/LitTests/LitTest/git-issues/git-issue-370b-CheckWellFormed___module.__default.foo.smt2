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
(declare-fun Tagclass._module.T () T@U)
(declare-fun Tagclass._module.S () T@U)
(declare-fun |##_module.T.T| () T@U)
(declare-fun |##_module.S.S| () T@U)
(declare-fun tytagFamily$T () T@U)
(declare-fun tytagFamily$S () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Func (T@U) T@U)
(declare-fun |_module.__default.Func#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.T () T@U)
(declare-fun _module.__default.WellFormed (T@U) Bool)
(declare-fun _module.T.T_q (T@U) Bool)
(declare-fun |#_module.S.S| (Int Int Int Int Int Int) T@U)
(declare-fun _module.T.x (T@U) Int)
(declare-fun _module.S.S_q (T@U) Bool)
(declare-fun Tclass._module.S () T@U)
(declare-fun _module.__default.Good (T@U) Bool)
(declare-fun |_module.__default.Good#canCall| (T@U) Bool)
(declare-fun _module.S.u (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun _module.S.v (T@U) Int)
(declare-fun _module.S.w (T@U) Int)
(declare-fun _module.S.x (T@U) Int)
(declare-fun _module.S.y (T@U) Int)
(declare-fun _module.S.z (T@U) Int)
(declare-fun |_module.__default.WellFormed#canCall| (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.a#canCall| (T@U) Bool)
(declare-fun _module.__default.a (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.__default.GetT#canCall| () Bool)
(declare-fun _module.__default.GetT (Bool) T@U)
(declare-fun |#_module.T.T| (Int) T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.T Tagclass._module.S |##_module.T.T| |##_module.S.S| tytagFamily$T tytagFamily$S)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|t#0| T@U) ) (!  (=> (or (|_module.__default.Func#canCall| |t#0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0| Tclass._module.T) (_module.__default.WellFormed |t#0|)))) (and (and (and (and (and (and (_module.T.T_q |t#0|) (_module.T.T_q |t#0|)) (_module.T.T_q |t#0|)) (_module.T.T_q |t#0|)) (_module.T.T_q |t#0|)) (_module.T.T_q |t#0|)) (= (_module.__default.Func |t#0|) (|#_module.S.S| (_module.T.x |t#0|) (_module.T.x |t#0|) (_module.T.x |t#0|) (_module.T.x |t#0|) (_module.T.x |t#0|) (_module.T.x |t#0|)))))
 :qid |gitissue370bdfy.22:15|
 :skolemid |490|
 :pattern ( (_module.__default.Func |t#0|))
))))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.T) (_module.T.T_q d))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( (_module.T.T_q d) ($Is DatatypeTypeType d Tclass._module.T))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.S) (_module.S.S_q d@@0))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.S.S_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.S))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0| T@U) ) (!  (=> (or (|_module.__default.Good#canCall| |s#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| Tclass._module.S))) (and (and (_module.S.S_q |s#0|) (=> (= (_module.S.u |s#0|) (LitInt 5)) (and (_module.S.S_q |s#0|) (=> (= (_module.S.v |s#0|) (LitInt 5)) (and (_module.S.S_q |s#0|) (=> (= (_module.S.w |s#0|) (LitInt 5)) (and (_module.S.S_q |s#0|) (=> (= (_module.S.x |s#0|) (LitInt 5)) (and (_module.S.S_q |s#0|) (=> (= (_module.S.y |s#0|) (LitInt 5)) (_module.S.S_q |s#0|))))))))))) (= (_module.__default.Good |s#0|)  (and (and (and (and (and (= (_module.S.u |s#0|) (LitInt 5)) (= (_module.S.v |s#0|) (LitInt 5))) (= (_module.S.w |s#0|) (LitInt 5))) (= (_module.S.x |s#0|) (LitInt 5))) (= (_module.S.y |s#0|) (LitInt 5))) (= (_module.S.z |s#0|) (LitInt 5))))))
 :qid |gitissue370bdfy.28:16|
 :skolemid |495|
 :pattern ( (_module.__default.Good |s#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@0| T@U) ) (!  (=> (or (|_module.__default.WellFormed#canCall| |t#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@0| Tclass._module.T))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.__default.a#canCall| |t#0@@0|)) (= (_module.__default.WellFormed |t#0@@0|)  (and true (_module.__default.a |t#0@@0|)))))
 :qid |gitissue370bdfy.18:22|
 :skolemid |484|
 :pattern ( (_module.__default.WellFormed |t#0@@0|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.Good#canCall| (Lit DatatypeTypeType |s#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@0| Tclass._module.S))) (and (and (_module.S.S_q (Lit DatatypeTypeType |s#0@@0|)) (=> (= (LitInt (_module.S.u (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5)) (and (_module.S.S_q (Lit DatatypeTypeType |s#0@@0|)) (=> (= (LitInt (_module.S.v (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5)) (and (_module.S.S_q (Lit DatatypeTypeType |s#0@@0|)) (=> (= (LitInt (_module.S.w (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5)) (and (_module.S.S_q (Lit DatatypeTypeType |s#0@@0|)) (=> (= (LitInt (_module.S.x (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5)) (and (_module.S.S_q (Lit DatatypeTypeType |s#0@@0|)) (=> (= (LitInt (_module.S.y (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5)) (_module.S.S_q (Lit DatatypeTypeType |s#0@@0|)))))))))))) (= (_module.__default.Good (Lit DatatypeTypeType |s#0@@0|))  (and (and (and (and (and (= (LitInt (_module.S.u (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5)) (= (LitInt (_module.S.v (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5))) (= (LitInt (_module.S.w (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5))) (= (LitInt (_module.S.x (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5))) (= (LitInt (_module.S.y (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5))) (= (LitInt (_module.S.z (Lit DatatypeTypeType |s#0@@0|))) (LitInt 5))))))
 :qid |gitissue370bdfy.28:16|
 :weight 3
 :skolemid |496|
 :pattern ( (_module.__default.Good (Lit DatatypeTypeType |s#0@@0|)))
))))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| Int) (|a#8#2#0| Int) (|a#8#3#0| Int) (|a#8#4#0| Int) (|a#8#5#0| Int) ) (! (= (|#_module.S.S| (LitInt |a#8#0#0|) (LitInt |a#8#1#0|) (LitInt |a#8#2#0|) (LitInt |a#8#3#0|) (LitInt |a#8#4#0|) (LitInt |a#8#5#0|)) (Lit DatatypeTypeType (|#_module.S.S| |a#8#0#0| |a#8#1#0| |a#8#2#0| |a#8#3#0| |a#8#4#0| |a#8#5#0|)))
 :qid |gitissue370bdfy.14:16|
 :skolemid |523|
 :pattern ( (|#_module.S.S| (LitInt |a#8#0#0|) (LitInt |a#8#1#0|) (LitInt |a#8#2#0|) (LitInt |a#8#3#0|) (LitInt |a#8#4#0|) (LitInt |a#8#5#0|)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.T.T_q d@@1) (= (DatatypeCtorId d@@1) |##_module.T.T|))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (_module.T.T_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.S.S_q d@@2) (= (DatatypeCtorId d@@2) |##_module.S.S|))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (_module.S.S_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|a#7#0#0| Int) (|a#7#1#0| Int) (|a#7#2#0| Int) (|a#7#3#0| Int) (|a#7#4#0| Int) (|a#7#5#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.S.S| |a#7#0#0| |a#7#1#0| |a#7#2#0| |a#7#3#0| |a#7#4#0| |a#7#5#0|) Tclass._module.S)  (and (and (and (and (and ($Is intType (int_2_U |a#7#0#0|) TInt) ($Is intType (int_2_U |a#7#1#0|) TInt)) ($Is intType (int_2_U |a#7#2#0|) TInt)) ($Is intType (int_2_U |a#7#3#0|) TInt)) ($Is intType (int_2_U |a#7#4#0|) TInt)) ($Is intType (int_2_U |a#7#5#0|) TInt)))
 :qid |gitissue370bdfy.14:16|
 :skolemid |516|
 :pattern ( ($Is DatatypeTypeType (|#_module.S.S| |a#7#0#0| |a#7#1#0| |a#7#2#0| |a#7#3#0| |a#7#4#0| |a#7#5#0|) Tclass._module.S))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.GetT#canCall| (< 1 $FunctionContextHeight)) (= (_module.__default.GetT true) (Lit DatatypeTypeType (|#_module.T.T| (LitInt 5)))))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.GetT#canCall| (< 1 $FunctionContextHeight)) (= (_module.__default.GetT true) (Lit DatatypeTypeType (|#_module.T.T| (LitInt 5)))))))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.T.T_q d@@3) (exists ((|a#1#0#0| Int) ) (! (= d@@3 (|#_module.T.T| |a#1#0#0|))
 :qid |gitissue370bdfy.13:16|
 :skolemid |501|
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (_module.T.T_q d@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@1| T@U) ) (!  (=> (or (|_module.__default.WellFormed#canCall| (Lit DatatypeTypeType |t#0@@1|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |t#0@@1| Tclass._module.T))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.__default.a#canCall| (Lit DatatypeTypeType |t#0@@1|))) (= (_module.__default.WellFormed (Lit DatatypeTypeType |t#0@@1|))  (and true (_module.__default.a (Lit DatatypeTypeType |t#0@@1|))))))
 :qid |gitissue370bdfy.18:22|
 :weight 3
 :skolemid |485|
 :pattern ( (_module.__default.WellFormed (Lit DatatypeTypeType |t#0@@1|)))
))))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Int) (|a#5#2#0| Int) (|a#5#3#0| Int) (|a#5#4#0| Int) (|a#5#5#0| Int) ) (! (= (DatatypeCtorId (|#_module.S.S| |a#5#0#0| |a#5#1#0| |a#5#2#0| |a#5#3#0| |a#5#4#0| |a#5#5#0|)) |##_module.S.S|)
 :qid |gitissue370bdfy.14:16|
 :skolemid |512|
 :pattern ( (|#_module.S.S| |a#5#0#0| |a#5#1#0| |a#5#2#0| |a#5#3#0| |a#5#4#0| |a#5#5#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| Int) (|a#9#2#0| Int) (|a#9#3#0| Int) (|a#9#4#0| Int) (|a#9#5#0| Int) ) (! (= (_module.S.u (|#_module.S.S| |a#9#0#0| |a#9#1#0| |a#9#2#0| |a#9#3#0| |a#9#4#0| |a#9#5#0|)) |a#9#0#0|)
 :qid |gitissue370bdfy.14:16|
 :skolemid |524|
 :pattern ( (|#_module.S.S| |a#9#0#0| |a#9#1#0| |a#9#2#0| |a#9#3#0| |a#9#4#0| |a#9#5#0|))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| Int) (|a#10#2#0| Int) (|a#10#3#0| Int) (|a#10#4#0| Int) (|a#10#5#0| Int) ) (! (= (_module.S.v (|#_module.S.S| |a#10#0#0| |a#10#1#0| |a#10#2#0| |a#10#3#0| |a#10#4#0| |a#10#5#0|)) |a#10#1#0|)
 :qid |gitissue370bdfy.14:16|
 :skolemid |525|
 :pattern ( (|#_module.S.S| |a#10#0#0| |a#10#1#0| |a#10#2#0| |a#10#3#0| |a#10#4#0| |a#10#5#0|))
)))
(assert (forall ((|a#11#0#0| Int) (|a#11#1#0| Int) (|a#11#2#0| Int) (|a#11#3#0| Int) (|a#11#4#0| Int) (|a#11#5#0| Int) ) (! (= (_module.S.w (|#_module.S.S| |a#11#0#0| |a#11#1#0| |a#11#2#0| |a#11#3#0| |a#11#4#0| |a#11#5#0|)) |a#11#2#0|)
 :qid |gitissue370bdfy.14:16|
 :skolemid |526|
 :pattern ( (|#_module.S.S| |a#11#0#0| |a#11#1#0| |a#11#2#0| |a#11#3#0| |a#11#4#0| |a#11#5#0|))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| Int) (|a#12#2#0| Int) (|a#12#3#0| Int) (|a#12#4#0| Int) (|a#12#5#0| Int) ) (! (= (_module.S.x (|#_module.S.S| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0|)) |a#12#3#0|)
 :qid |gitissue370bdfy.14:16|
 :skolemid |527|
 :pattern ( (|#_module.S.S| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0|))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| Int) (|a#13#2#0| Int) (|a#13#3#0| Int) (|a#13#4#0| Int) (|a#13#5#0| Int) ) (! (= (_module.S.y (|#_module.S.S| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0|)) |a#13#4#0|)
 :qid |gitissue370bdfy.14:16|
 :skolemid |528|
 :pattern ( (|#_module.S.S| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0|))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| Int) (|a#14#2#0| Int) (|a#14#3#0| Int) (|a#14#4#0| Int) (|a#14#5#0| Int) ) (! (= (_module.S.z (|#_module.S.S| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0|)) |a#14#5#0|)
 :qid |gitissue370bdfy.14:16|
 :skolemid |529|
 :pattern ( (|#_module.S.S| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|t#0@@2| T@U) ) (!  (=> (or (|_module.__default.Func#canCall| |t#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@2| Tclass._module.T) (_module.__default.WellFormed |t#0@@2|)))) ($Is DatatypeTypeType (_module.__default.Func |t#0@@2|) Tclass._module.S))
 :qid |gitissue370bdfy.22:15|
 :skolemid |488|
 :pattern ( (_module.__default.Func |t#0@@2|))
))))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.T.T| |a#0#0#0|)) |##_module.T.T|)
 :qid |gitissue370bdfy.13:16|
 :skolemid |499|
 :pattern ( (|#_module.T.T| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.T.x (|#_module.T.T| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue370bdfy.13:16|
 :skolemid |506|
 :pattern ( (|#_module.T.T| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|t#0@@3| T@U) ) (!  (=> (or (|_module.__default.Func#canCall| (Lit DatatypeTypeType |t#0@@3|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@3| Tclass._module.T) (U_2_bool (Lit boolType (bool_2_U (_module.__default.WellFormed (Lit DatatypeTypeType |t#0@@3|)))))))) (and (and (and (and (and (and (_module.T.T_q (Lit DatatypeTypeType |t#0@@3|)) (_module.T.T_q (Lit DatatypeTypeType |t#0@@3|))) (_module.T.T_q (Lit DatatypeTypeType |t#0@@3|))) (_module.T.T_q (Lit DatatypeTypeType |t#0@@3|))) (_module.T.T_q (Lit DatatypeTypeType |t#0@@3|))) (_module.T.T_q (Lit DatatypeTypeType |t#0@@3|))) (= (_module.__default.Func (Lit DatatypeTypeType |t#0@@3|)) (Lit DatatypeTypeType (|#_module.S.S| (LitInt (_module.T.x (Lit DatatypeTypeType |t#0@@3|))) (LitInt (_module.T.x (Lit DatatypeTypeType |t#0@@3|))) (LitInt (_module.T.x (Lit DatatypeTypeType |t#0@@3|))) (LitInt (_module.T.x (Lit DatatypeTypeType |t#0@@3|))) (LitInt (_module.T.x (Lit DatatypeTypeType |t#0@@3|))) (LitInt (_module.T.x (Lit DatatypeTypeType |t#0@@3|))))))))
 :qid |gitissue370bdfy.22:15|
 :weight 3
 :skolemid |491|
 :pattern ( (_module.__default.Func (Lit DatatypeTypeType |t#0@@3|)))
))))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.T.T| |a#2#0#0|) Tclass._module.T) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |gitissue370bdfy.13:16|
 :skolemid |503|
 :pattern ( ($Is DatatypeTypeType (|#_module.T.T| |a#2#0#0|) Tclass._module.T))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
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
 :skolemid |535|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($reveal Bool) ) (!  (=> (or |_module.__default.GetT#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.GetT $reveal) Tclass._module.T))
 :qid |gitissue370bdfy.37:17|
 :skolemid |497|
 :pattern ( (_module.__default.GetT $reveal))
))))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.T.T_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.T $h))) ($IsAlloc intType (int_2_U (_module.T.x d@@4)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsAlloc intType (int_2_U (_module.T.x d@@4)) TInt $h))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.S.S_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.S $h@@0))) ($IsAlloc intType (int_2_U (_module.S.u d@@5)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($IsAlloc intType (int_2_U (_module.S.u d@@5)) TInt $h@@0))
)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.S.S_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.S $h@@1))) ($IsAlloc intType (int_2_U (_module.S.v d@@6)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc intType (int_2_U (_module.S.v d@@6)) TInt $h@@1))
)))
(assert (forall ((d@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.S.S_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.S $h@@2))) ($IsAlloc intType (int_2_U (_module.S.w d@@7)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc intType (int_2_U (_module.S.w d@@7)) TInt $h@@2))
)))
(assert (forall ((d@@8 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.S.S_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.S $h@@3))) ($IsAlloc intType (int_2_U (_module.S.x d@@8)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc intType (int_2_U (_module.S.x d@@8)) TInt $h@@3))
)))
(assert (forall ((d@@9 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.S.S_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.S $h@@4))) ($IsAlloc intType (int_2_U (_module.S.y d@@9)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc intType (int_2_U (_module.S.y d@@9)) TInt $h@@4))
)))
(assert (forall ((d@@10 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.S.S_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.S $h@@5))) ($IsAlloc intType (int_2_U (_module.S.z d@@10)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsAlloc intType (int_2_U (_module.S.z d@@10)) TInt $h@@5))
)))
(assert (forall ((d@@11 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@11 Tclass._module.T)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.T $h@@6))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.T $h@@6))
)))
(assert (forall ((d@@12 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@12 Tclass._module.S)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.S $h@@7))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.S $h@@7))
)))
(assert (= (Tag Tclass._module.T) Tagclass._module.T))
(assert (= (TagFamily Tclass._module.T) tytagFamily$T))
(assert (= (Tag Tclass._module.S) Tagclass._module.S))
(assert (= (TagFamily Tclass._module.S) tytagFamily$S))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.S.S_q d@@13) (exists ((|a#6#0#0| Int) (|a#6#1#0| Int) (|a#6#2#0| Int) (|a#6#3#0| Int) (|a#6#4#0| Int) (|a#6#5#0| Int) ) (! (= d@@13 (|#_module.S.S| |a#6#0#0| |a#6#1#0| |a#6#2#0| |a#6#3#0| |a#6#4#0| |a#6#5#0|))
 :qid |gitissue370bdfy.14:16|
 :skolemid |514|
)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (_module.S.S_q d@@13))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#_module.T.T| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.T.T| |a#3#0#0|)))
 :qid |gitissue370bdfy.13:16|
 :skolemid |505|
 :pattern ( (|#_module.T.T| (LitInt |a#3#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun reveal__module._default.GetT () Bool)
(declare-fun |let#0#0#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.foo)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_correct true))
(let ((anon4_Else_correct  (=> (and (not (_module.__default.WellFormed |t#Z#0@0|)) (= (ControlFlow 0 5) 1)) anon3_correct)))
(let ((anon4_Then_correct  (=> (and (_module.__default.WellFormed |t#Z#0@0|) ($IsAlloc DatatypeTypeType |t#Z#0@0| Tclass._module.T $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.WellFormed#canCall| |t#Z#0@0|) (or (_module.__default.WellFormed |t#Z#0@0|) (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.WellFormed#canCall| |t#Z#0@0|) (or (_module.__default.WellFormed |t#Z#0@0|) (_module.__default.a |t#Z#0@0|)))) (=> (_module.__default.WellFormed |t#Z#0@0|) (=> (and (|_module.__default.Func#canCall| |t#Z#0@0|) (_module.S.S_q (_module.__default.Func |t#Z#0@0|))) (=> (and (and (= |##s#0@0| (_module.__default.Func |t#Z#0@0|)) ($IsAlloc DatatypeTypeType |##s#0@0| Tclass._module.S $Heap@0)) (and (|_module.__default.Good#canCall| (_module.__default.Func |t#Z#0@0|)) (= (ControlFlow 0 2) 1))) anon3_correct))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (=> (and (and (and |_module.__default.GetT#canCall| (_module.T.T_q (_module.__default.GetT reveal__module._default.GetT))) (and (= |let#0#0#0| (_module.__default.GetT reveal__module._default.GetT)) |_module.__default.GetT#canCall|)) (and (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.T) (= |t#Z#0@0| |let#0#0#0|)) (and ($IsAlloc DatatypeTypeType |t#Z#0@0| Tclass._module.T $Heap@0) (|_module.__default.WellFormed#canCall| |t#Z#0@0|)))) (and (=> (= (ControlFlow 0 6) 2) anon4_Then_correct) (=> (= (ControlFlow 0 6) 5) anon4_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct)))
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
