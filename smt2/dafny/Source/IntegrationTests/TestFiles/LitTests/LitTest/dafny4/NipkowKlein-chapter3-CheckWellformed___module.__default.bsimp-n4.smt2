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
(declare-fun TBool () T@U)
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.aexp () T@U)
(declare-fun Tagclass._module.bexp () T@U)
(declare-fun |##_module.aexp.N| () T@U)
(declare-fun |##_module.aexp.V| () T@U)
(declare-fun |##_module.aexp.Plus| () T@U)
(declare-fun |##_module.bexp.Bc| () T@U)
(declare-fun |##_module.bexp.Not| () T@U)
(declare-fun |##_module.bexp.And| () T@U)
(declare-fun |##_module.bexp.Less| () T@U)
(declare-fun tytagFamily$aexp () T@U)
(declare-fun tytagFamily$bexp () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.aexp.Plus| (T@U T@U) T@U)
(declare-fun Tclass._module.aexp () T@U)
(declare-fun |#_module.bexp.And| (T@U T@U) T@U)
(declare-fun Tclass._module.bexp () T@U)
(declare-fun |#_module.bexp.Less| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.not (T@U) T@U)
(declare-fun |_module.__default.not#canCall| (T@U) Bool)
(declare-fun _module.bexp.Bc_q (T@U) Bool)
(declare-fun _module.bexp.v (T@U) Bool)
(declare-fun |#_module.bexp.Bc| (Bool) T@U)
(declare-fun _module.bexp.Not_q (T@U) Bool)
(declare-fun _module.bexp._h3 (T@U) T@U)
(declare-fun _module.bexp.And_q (T@U) Bool)
(declare-fun |#_module.bexp.Not| (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.aexp.V| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.__default.plus (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.plus#canCall| (T@U T@U) Bool)
(declare-fun _module.aexp.N_q (T@U) Bool)
(declare-fun |#_module.aexp.N| (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _module.aexp.n (T@U) Int)
(declare-fun _module.__default.and (T@U T@U) T@U)
(declare-fun |_module.__default.and#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.less (T@U T@U) T@U)
(declare-fun |_module.__default.less#canCall| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.__default.asimp (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.asimp#canCall| (T@U) Bool)
(declare-fun _module.aexp.V_q (T@U) Bool)
(declare-fun _module.aexp._h2 (T@U) T@U)
(declare-fun _module.aexp._h1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.aexp.Plus_q (T@U) Bool)
(declare-fun _module.bexp.Less_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.__default.bsimp (T@U T@U) T@U)
(declare-fun |_module.__default.bsimp#canCall| (T@U) Bool)
(declare-fun charType () T@T)
(declare-fun _module.bexp._h5 (T@U) T@U)
(declare-fun _module.bexp._h4 (T@U) T@U)
(declare-fun _module.bexp._h7 (T@U) T@U)
(declare-fun _module.bexp._h6 (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun _module.aexp._h0 (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSeq alloc Tagclass._module.aexp Tagclass._module.bexp |##_module.aexp.N| |##_module.aexp.V| |##_module.aexp.Plus| |##_module.bexp.Bc| |##_module.bexp.Not| |##_module.bexp.And| |##_module.bexp.Less| tytagFamily$aexp tytagFamily$bexp)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.Plus| |a#26#0#0| |a#26#1#0|) Tclass._module.aexp)  (and ($Is DatatypeTypeType |a#26#0#0| Tclass._module.aexp) ($Is DatatypeTypeType |a#26#1#0| Tclass._module.aexp)))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |751|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.Plus| |a#26#0#0| |a#26#1#0|) Tclass._module.aexp))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.And| |a#45#0#0| |a#45#1#0|) Tclass._module.bexp)  (and ($Is DatatypeTypeType |a#45#0#0| Tclass._module.bexp) ($Is DatatypeTypeType |a#45#1#0| Tclass._module.bexp)))
 :qid |NipkowKleinchapter3dfy.126:47|
 :skolemid |787|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.And| |a#45#0#0| |a#45#1#0|) Tclass._module.bexp))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.Less| |a#53#0#0| |a#53#1#0|) Tclass._module.bexp)  (and ($Is DatatypeTypeType |a#53#0#0| Tclass._module.aexp) ($Is DatatypeTypeType |a#53#1#0| Tclass._module.aexp)))
 :qid |NipkowKleinchapter3dfy.126:66|
 :skolemid |799|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.Less| |a#53#0#0| |a#53#1#0|) Tclass._module.bexp))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b#0| T@U) ) (!  (=> (or (|_module.__default.not#canCall| |b#0|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |b#0| Tclass._module.bexp))) (= (_module.__default.not |b#0|) (ite (_module.bexp.Bc_q |b#0|) (let ((|b0#0| (_module.bexp.v |b#0|)))
(|#_module.bexp.Bc|  (not |b0#0|))) (ite (_module.bexp.Not_q |b#0|) (let ((|b0#1| (_module.bexp._h3 |b#0|)))
|b0#1|) (ite (_module.bexp.And_q |b#0|) (|#_module.bexp.Not| |b#0|) (|#_module.bexp.Not| |b#0|))))))
 :qid |NipkowKleinchapter3dfy.139:20|
 :skolemid |646|
 :pattern ( (_module.__default.not |b#0|))
))))
(assert (forall ((|a#22#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#22#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#22#0#0| i))) (DtRank (|#_module.aexp.V| |a#22#0#0|))))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |745|
 :pattern ( (|Seq#Index| |a#22#0#0| i) (|#_module.aexp.V| |a#22#0#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0| T@U) (|a1#0| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0| Tclass._module.aexp)))) (= (_module.__default.plus (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|)) (ite  (and (_module.aexp.N_q (Lit DatatypeTypeType |a0#0|)) (_module.aexp.N_q (Lit DatatypeTypeType |a1#0|))) (|#_module.aexp.N| (LitInt (+ (_module.aexp.n (Lit DatatypeTypeType |a0#0|)) (_module.aexp.n (Lit DatatypeTypeType |a1#0|))))) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a0#0|)) (ite (= (LitInt (_module.aexp.n (Lit DatatypeTypeType |a0#0|))) (LitInt 0)) |a1#0| (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|))) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a1#0|)) (ite (= (LitInt (_module.aexp.n (Lit DatatypeTypeType |a1#0|))) (LitInt 0)) |a0#0| (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|))) (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|)))))))
 :qid |NipkowKleinchapter3dfy.85:21|
 :weight 3
 :skolemid |616|
 :pattern ( (_module.__default.plus (Lit DatatypeTypeType |a0#0|) (Lit DatatypeTypeType |a1#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0@@0| T@U) (|a1#0@@0| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| |a0#0@@0| |a1#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@0| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@0| Tclass._module.aexp)))) ($Is DatatypeTypeType (_module.__default.plus |a0#0@@0| |a1#0@@0|) Tclass._module.aexp))
 :qid |NipkowKleinchapter3dfy.85:21|
 :skolemid |613|
 :pattern ( (_module.__default.plus |a0#0@@0| |a1#0@@0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b0#0@@0| T@U) (|b1#0| T@U) ) (!  (=> (or (|_module.__default.and#canCall| |b0#0@@0| |b1#0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b0#0@@0| Tclass._module.bexp) ($Is DatatypeTypeType |b1#0| Tclass._module.bexp)))) ($Is DatatypeTypeType (_module.__default.and |b0#0@@0| |b1#0|) Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.148:20|
 :skolemid |648|
 :pattern ( (_module.__default.and |b0#0@@0| |b1#0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|a0#0@@1| T@U) (|a1#0@@1| T@U) ) (!  (=> (or (|_module.__default.less#canCall| |a0#0@@1| |a1#0@@1|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@1| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@1| Tclass._module.aexp)))) ($Is DatatypeTypeType (_module.__default.less |a0#0@@1| |a1#0@@1|) Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.158:21|
 :skolemid |652|
 :pattern ( (_module.__default.less |a0#0@@1| |a1#0@@1|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|a#0| T@U) ) (!  (=> (or (|_module.__default.asimp#canCall| (Lit DatatypeTypeType |a#0|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |a#0| Tclass._module.aexp))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.N_q (Lit DatatypeTypeType |a#0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.V_q (Lit DatatypeTypeType |a#0|)))))) (let ((|a1#3| (Lit DatatypeTypeType (_module.aexp._h2 (Lit DatatypeTypeType |a#0|)))))
(let ((|a0#3| (Lit DatatypeTypeType (_module.aexp._h1 (Lit DatatypeTypeType |a#0|)))))
 (and (and (|_module.__default.asimp#canCall| |a0#3|) (|_module.__default.asimp#canCall| |a1#3|)) (|_module.__default.plus#canCall| (_module.__default.asimp ($LS $ly) |a0#3|) (_module.__default.asimp ($LS $ly) |a1#3|))))))) (= (_module.__default.asimp ($LS $ly) (Lit DatatypeTypeType |a#0|)) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a#0|)) (Lit DatatypeTypeType |a#0|) (ite (_module.aexp.V_q (Lit DatatypeTypeType |a#0|)) (Lit DatatypeTypeType |a#0|) (let ((|a1#2| (Lit DatatypeTypeType (_module.aexp._h2 (Lit DatatypeTypeType |a#0|)))))
(let ((|a0#2| (Lit DatatypeTypeType (_module.aexp._h1 (Lit DatatypeTypeType |a#0|)))))
(Lit DatatypeTypeType (_module.__default.plus (Lit DatatypeTypeType (_module.__default.asimp ($LS $ly) |a0#2|)) (Lit DatatypeTypeType (_module.__default.asimp ($LS $ly) |a1#2|)))))))))))
 :qid |NipkowKleinchapter3dfy.103:16|
 :weight 3
 :skolemid |623|
 :pattern ( (_module.__default.asimp ($LS $ly) (Lit DatatypeTypeType |a#0|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|a0#0@@2| T@U) (|a1#0@@2| T@U) ) (!  (=> (or (|_module.__default.less#canCall| |a0#0@@2| |a1#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@2| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@2| Tclass._module.aexp)))) (= (_module.__default.less |a0#0@@2| |a1#0@@2|) (ite  (and (_module.aexp.N_q |a0#0@@2|) (_module.aexp.N_q |a1#0@@2|)) (|#_module.bexp.Bc| (< (_module.aexp.n |a0#0@@2|) (_module.aexp.n |a1#0@@2|))) (|#_module.bexp.Less| |a0#0@@2| |a1#0@@2|))))
 :qid |NipkowKleinchapter3dfy.158:21|
 :skolemid |654|
 :pattern ( (_module.__default.less |a0#0@@2| |a1#0@@2|))
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
(assert (forall ((d T@U) ) (! (= (_module.aexp.N_q d) (= (DatatypeCtorId d) |##_module.aexp.N|))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (_module.aexp.N_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.aexp.V_q d@@0) (= (DatatypeCtorId d@@0) |##_module.aexp.V|))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( (_module.aexp.V_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.aexp.Plus_q d@@1) (= (DatatypeCtorId d@@1) |##_module.aexp.Plus|))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( (_module.aexp.Plus_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.bexp.Bc_q d@@2) (= (DatatypeCtorId d@@2) |##_module.bexp.Bc|))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( (_module.bexp.Bc_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.bexp.Not_q d@@3) (= (DatatypeCtorId d@@3) |##_module.bexp.Not|))
 :qid |unknown.0:0|
 :skolemid |775|
 :pattern ( (_module.bexp.Not_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.bexp.And_q d@@4) (= (DatatypeCtorId d@@4) |##_module.bexp.And|))
 :qid |unknown.0:0|
 :skolemid |784|
 :pattern ( (_module.bexp.And_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.bexp.Less_q d@@5) (= (DatatypeCtorId d@@5) |##_module.bexp.Less|))
 :qid |unknown.0:0|
 :skolemid |796|
 :pattern ( (_module.bexp.Less_q d@@5))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.aexp.Plus_q d@@6) (exists ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= d@@6 (|#_module.aexp.Plus| |a#25#0#0| |a#25#1#0|))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |749|
)))
 :qid |unknown.0:0|
 :skolemid |750|
 :pattern ( (_module.aexp.Plus_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.bexp.And_q d@@7) (exists ((|a#44#0#0| T@U) (|a#44#1#0| T@U) ) (! (= d@@7 (|#_module.bexp.And| |a#44#0#0| |a#44#1#0|))
 :qid |NipkowKleinchapter3dfy.126:47|
 :skolemid |785|
)))
 :qid |unknown.0:0|
 :skolemid |786|
 :pattern ( (_module.bexp.And_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.bexp.Less_q d@@8) (exists ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= d@@8 (|#_module.bexp.Less| |a#52#0#0| |a#52#1#0|))
 :qid |NipkowKleinchapter3dfy.126:66|
 :skolemid |797|
)))
 :qid |unknown.0:0|
 :skolemid |798|
 :pattern ( (_module.bexp.Less_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.aexp.N_q d@@9) (exists ((|a#13#0#0| Int) ) (! (= d@@9 (|#_module.aexp.N| |a#13#0#0|))
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |731|
)))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (_module.aexp.N_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.aexp.V_q d@@10) (exists ((|a#18#0#0| T@U) ) (! (= d@@10 (|#_module.aexp.V| |a#18#0#0|))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |739|
)))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (_module.aexp.V_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (_module.bexp.Bc_q d@@11) (exists ((|a#33#0#0| Bool) ) (! (= d@@11 (|#_module.bexp.Bc| |a#33#0#0|))
 :qid |NipkowKleinchapter3dfy.126:20|
 :skolemid |768|
)))
 :qid |unknown.0:0|
 :skolemid |769|
 :pattern ( (_module.bexp.Bc_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_module.bexp.Not_q d@@12) (exists ((|a#38#0#0| T@U) ) (! (= d@@12 (|#_module.bexp.Not| |a#38#0#0|))
 :qid |NipkowKleinchapter3dfy.126:35|
 :skolemid |776|
)))
 :qid |unknown.0:0|
 :skolemid |777|
 :pattern ( (_module.bexp.Not_q d@@12))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b0#0@@1| T@U) (|b1#0@@0| T@U) ) (!  (=> (or (|_module.__default.and#canCall| (Lit DatatypeTypeType |b0#0@@1|) (Lit DatatypeTypeType |b1#0@@0|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b0#0@@1| Tclass._module.bexp) ($Is DatatypeTypeType |b1#0@@0| Tclass._module.bexp)))) (= (_module.__default.and (Lit DatatypeTypeType |b0#0@@1|) (Lit DatatypeTypeType |b1#0@@0|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b0#0@@1|)) (ite (_module.bexp.v (Lit DatatypeTypeType |b0#0@@1|)) |b1#0@@0| |b0#0@@1|) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b1#0@@0|)) (ite (_module.bexp.v (Lit DatatypeTypeType |b1#0@@0|)) |b0#0@@1| |b1#0@@0|) (|#_module.bexp.And| (Lit DatatypeTypeType |b0#0@@1|) (Lit DatatypeTypeType |b1#0@@0|))))))
 :qid |NipkowKleinchapter3dfy.148:20|
 :weight 3
 :skolemid |651|
 :pattern ( (_module.__default.and (Lit DatatypeTypeType |b0#0@@1|) (Lit DatatypeTypeType |b1#0@@0|)))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.aexp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._module.aexp)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsBox bx Tclass._module.aexp))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.bexp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.bexp)))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($IsBox bx@@0 Tclass._module.bexp))
)))
(assert (forall ((|a#39#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.Not| |a#39#0#0|) Tclass._module.bexp) ($Is DatatypeTypeType |a#39#0#0| Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.126:35|
 :skolemid |778|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.Not| |a#39#0#0|) Tclass._module.bexp))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|a#0@@0| T@U) ) (!  (=> (or (|_module.__default.asimp#canCall| |a#0@@0|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@0| Tclass._module.aexp))) (and (=> (not (_module.aexp.N_q |a#0@@0|)) (=> (not (_module.aexp.V_q |a#0@@0|)) (let ((|a1#1| (_module.aexp._h2 |a#0@@0|)))
(let ((|a0#1| (_module.aexp._h1 |a#0@@0|)))
 (and (and (|_module.__default.asimp#canCall| |a0#1|) (|_module.__default.asimp#canCall| |a1#1|)) (|_module.__default.plus#canCall| (_module.__default.asimp $ly@@0 |a0#1|) (_module.__default.asimp $ly@@0 |a1#1|))))))) (= (_module.__default.asimp ($LS $ly@@0) |a#0@@0|) (ite (_module.aexp.N_q |a#0@@0|) |a#0@@0| (ite (_module.aexp.V_q |a#0@@0|) |a#0@@0| (let ((|a1#0@@3| (_module.aexp._h2 |a#0@@0|)))
(let ((|a0#0@@3| (_module.aexp._h1 |a#0@@0|)))
(_module.__default.plus (_module.__default.asimp $ly@@0 |a0#0@@3|) (_module.__default.asimp $ly@@0 |a1#0@@3|)))))))))
 :qid |NipkowKleinchapter3dfy.103:16|
 :skolemid |622|
 :pattern ( (_module.__default.asimp ($LS $ly@@0) |a#0@@0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|a0#0@@4| T@U) (|a1#0@@4| T@U) ) (!  (=> (or (|_module.__default.less#canCall| (Lit DatatypeTypeType |a0#0@@4|) (Lit DatatypeTypeType |a1#0@@4|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@4| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@4| Tclass._module.aexp)))) (= (_module.__default.less (Lit DatatypeTypeType |a0#0@@4|) (Lit DatatypeTypeType |a1#0@@4|)) (ite  (and (_module.aexp.N_q (Lit DatatypeTypeType |a0#0@@4|)) (_module.aexp.N_q (Lit DatatypeTypeType |a1#0@@4|))) (|#_module.bexp.Bc| (U_2_bool (Lit boolType (bool_2_U (< (_module.aexp.n (Lit DatatypeTypeType |a0#0@@4|)) (_module.aexp.n (Lit DatatypeTypeType |a1#0@@4|))))))) (|#_module.bexp.Less| (Lit DatatypeTypeType |a0#0@@4|) (Lit DatatypeTypeType |a1#0@@4|)))))
 :qid |NipkowKleinchapter3dfy.158:21|
 :weight 3
 :skolemid |655|
 :pattern ( (_module.__default.less (Lit DatatypeTypeType |a0#0@@4|) (Lit DatatypeTypeType |a1#0@@4|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|a#0@@1| T@U) ) (!  (=> (or (|_module.__default.asimp#canCall| |a#0@@1|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@1| Tclass._module.aexp))) ($Is DatatypeTypeType (_module.__default.asimp $ly@@1 |a#0@@1|) Tclass._module.aexp))
 :qid |NipkowKleinchapter3dfy.103:16|
 :skolemid |620|
 :pattern ( (_module.__default.asimp $ly@@1 |a#0@@1|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@2 T@U) (|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.bsimp#canCall| |b#0@@0|) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@0| Tclass._module.bexp))) ($Is DatatypeTypeType (_module.__default.bsimp $ly@@2 |b#0@@0|) Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.166:16|
 :skolemid |658|
 :pattern ( (_module.__default.bsimp $ly@@2 |b#0@@0|))
))))
(assert (forall ((|a#36#0#0| Bool) ) (! (= (_module.bexp.v (|#_module.bexp.Bc| |a#36#0#0|)) |a#36#0#0|)
 :qid |NipkowKleinchapter3dfy.126:20|
 :skolemid |773|
 :pattern ( (|#_module.bexp.Bc| |a#36#0#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b#0@@1| T@U) ) (!  (=> (or (|_module.__default.not#canCall| |b#0@@1|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@1| Tclass._module.bexp))) ($Is DatatypeTypeType (_module.__default.not |b#0@@1|) Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.139:20|
 :skolemid |644|
 :pattern ( (_module.__default.not |b#0@@1|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (= (Ctor charType) 5))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@3 T@U) (|b#0@@2| T@U) ) (!  (=> (or (|_module.__default.bsimp#canCall| |b#0@@2|) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@2| Tclass._module.bexp))) (and (=> (not (_module.bexp.Bc_q |b#0@@2|)) (and (=> (_module.bexp.Not_q |b#0@@2|) (let ((|b0#2| (_module.bexp._h3 |b#0@@2|)))
 (and (|_module.__default.bsimp#canCall| |b0#2|) (|_module.__default.not#canCall| (_module.__default.bsimp $ly@@3 |b0#2|))))) (=> (not (_module.bexp.Not_q |b#0@@2|)) (and (=> (_module.bexp.And_q |b#0@@2|) (let ((|b1#1| (_module.bexp._h5 |b#0@@2|)))
(let ((|b0#3| (_module.bexp._h4 |b#0@@2|)))
 (and (and (|_module.__default.bsimp#canCall| |b0#3|) (|_module.__default.bsimp#canCall| |b1#1|)) (|_module.__default.and#canCall| (_module.__default.bsimp $ly@@3 |b0#3|) (_module.__default.bsimp $ly@@3 |b1#1|)))))) (=> (not (_module.bexp.And_q |b#0@@2|)) (let ((|a1#1@@0| (_module.bexp._h7 |b#0@@2|)))
(let ((|a0#1@@0| (_module.bexp._h6 |b#0@@2|)))
 (and (and (|_module.__default.asimp#canCall| |a0#1@@0|) (|_module.__default.asimp#canCall| |a1#1@@0|)) (|_module.__default.less#canCall| (_module.__default.asimp ($LS $LZ) |a0#1@@0|) (_module.__default.asimp ($LS $LZ) |a1#1@@0|)))))))))) (= (_module.__default.bsimp ($LS $ly@@3) |b#0@@2|) (ite (_module.bexp.Bc_q |b#0@@2|) |b#0@@2| (ite (_module.bexp.Not_q |b#0@@2|) (let ((|b0#0@@2| (_module.bexp._h3 |b#0@@2|)))
(_module.__default.not (_module.__default.bsimp $ly@@3 |b0#0@@2|))) (ite (_module.bexp.And_q |b#0@@2|) (let ((|b1#0@@1| (_module.bexp._h5 |b#0@@2|)))
(let ((|b0#1@@0| (_module.bexp._h4 |b#0@@2|)))
(_module.__default.and (_module.__default.bsimp $ly@@3 |b0#1@@0|) (_module.__default.bsimp $ly@@3 |b1#0@@1|)))) (let ((|a1#0@@5| (_module.bexp._h7 |b#0@@2|)))
(let ((|a0#0@@5| (_module.bexp._h6 |b#0@@2|)))
(_module.__default.less (_module.__default.asimp ($LS $LZ) |a0#0@@5|) (_module.__default.asimp ($LS $LZ) |a1#0@@5|))))))))))
 :qid |NipkowKleinchapter3dfy.166:16|
 :skolemid |660|
 :pattern ( (_module.__default.bsimp ($LS $ly@@3) |b#0@@2|))
))))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.aexp.Plus| |a#24#0#0| |a#24#1#0|)) |##_module.aexp.Plus|)
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |747|
 :pattern ( (|#_module.aexp.Plus| |a#24#0#0| |a#24#1#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) ) (! (= (_module.aexp._h1 (|#_module.aexp.Plus| |a#28#0#0| |a#28#1#0|)) |a#28#0#0|)
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |755|
 :pattern ( (|#_module.aexp.Plus| |a#28#0#0| |a#28#1#0|))
)))
(assert (forall ((|a#30#0#0| T@U) (|a#30#1#0| T@U) ) (! (= (_module.aexp._h2 (|#_module.aexp.Plus| |a#30#0#0| |a#30#1#0|)) |a#30#1#0|)
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |757|
 :pattern ( (|#_module.aexp.Plus| |a#30#0#0| |a#30#1#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.bexp.And| |a#43#0#0| |a#43#1#0|)) |##_module.bexp.And|)
 :qid |NipkowKleinchapter3dfy.126:47|
 :skolemid |783|
 :pattern ( (|#_module.bexp.And| |a#43#0#0| |a#43#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (_module.bexp._h4 (|#_module.bexp.And| |a#47#0#0| |a#47#1#0|)) |a#47#0#0|)
 :qid |NipkowKleinchapter3dfy.126:47|
 :skolemid |791|
 :pattern ( (|#_module.bexp.And| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (_module.bexp._h5 (|#_module.bexp.And| |a#49#0#0| |a#49#1#0|)) |a#49#1#0|)
 :qid |NipkowKleinchapter3dfy.126:47|
 :skolemid |793|
 :pattern ( (|#_module.bexp.And| |a#49#0#0| |a#49#1#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.bexp.Less| |a#51#0#0| |a#51#1#0|)) |##_module.bexp.Less|)
 :qid |NipkowKleinchapter3dfy.126:66|
 :skolemid |795|
 :pattern ( (|#_module.bexp.Less| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (_module.bexp._h6 (|#_module.bexp.Less| |a#55#0#0| |a#55#1#0|)) |a#55#0#0|)
 :qid |NipkowKleinchapter3dfy.126:66|
 :skolemid |803|
 :pattern ( (|#_module.bexp.Less| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= (_module.bexp._h7 (|#_module.bexp.Less| |a#57#0#0| |a#57#1#0|)) |a#57#1#0|)
 :qid |NipkowKleinchapter3dfy.126:66|
 :skolemid |805|
 :pattern ( (|#_module.bexp.Less| |a#57#0#0| |a#57#1#0|))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b0#0@@3| T@U) (|b1#0@@2| T@U) ) (!  (=> (or (|_module.__default.and#canCall| |b0#0@@3| |b1#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b0#0@@3| Tclass._module.bexp) ($Is DatatypeTypeType |b1#0@@2| Tclass._module.bexp)))) (= (_module.__default.and |b0#0@@3| |b1#0@@2|) (ite (_module.bexp.Bc_q |b0#0@@3|) (ite (_module.bexp.v |b0#0@@3|) |b1#0@@2| |b0#0@@3|) (ite (_module.bexp.Bc_q |b1#0@@2|) (ite (_module.bexp.v |b1#0@@2|) |b0#0@@3| |b1#0@@2|) (|#_module.bexp.And| |b0#0@@3| |b1#0@@2|)))))
 :qid |NipkowKleinchapter3dfy.148:20|
 :skolemid |650|
 :pattern ( (_module.__default.and |b0#0@@3| |b1#0@@2|))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((|a#12#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.aexp.N| |a#12#0#0|)) |##_module.aexp.N|)
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |729|
 :pattern ( (|#_module.aexp.N| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| Int) ) (! (= (_module.aexp.n (|#_module.aexp.N| |a#16#0#0|)) |a#16#0#0|)
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |736|
 :pattern ( (|#_module.aexp.N| |a#16#0#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.aexp.V| |a#17#0#0|)) |##_module.aexp.V|)
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |737|
 :pattern ( (|#_module.aexp.V| |a#17#0#0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (_module.aexp._h0 (|#_module.aexp.V| |a#21#0#0|)) |a#21#0#0|)
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |744|
 :pattern ( (|#_module.aexp.V| |a#21#0#0|))
)))
(assert (forall ((|a#32#0#0| Bool) ) (! (= (DatatypeCtorId (|#_module.bexp.Bc| |a#32#0#0|)) |##_module.bexp.Bc|)
 :qid |NipkowKleinchapter3dfy.126:20|
 :skolemid |766|
 :pattern ( (|#_module.bexp.Bc| |a#32#0#0|))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.bexp.Not| |a#37#0#0|)) |##_module.bexp.Not|)
 :qid |NipkowKleinchapter3dfy.126:35|
 :skolemid |774|
 :pattern ( (|#_module.bexp.Not| |a#37#0#0|))
)))
(assert (forall ((|a#41#0#0| T@U) ) (! (= (_module.bexp._h3 (|#_module.bexp.Not| |a#41#0#0|)) |a#41#0#0|)
 :qid |NipkowKleinchapter3dfy.126:35|
 :skolemid |781|
 :pattern ( (|#_module.bexp.Not| |a#41#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b#0@@3| T@U) ) (!  (=> (or (|_module.__default.not#canCall| (Lit DatatypeTypeType |b#0@@3|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@3| Tclass._module.bexp))) (= (_module.__default.not (Lit DatatypeTypeType |b#0@@3|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@3|)) (let ((|b0#4| (U_2_bool (Lit boolType (bool_2_U (_module.bexp.v (Lit DatatypeTypeType |b#0@@3|)))))))
(|#_module.bexp.Bc|  (not |b0#4|))) (ite (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@3|)) (let ((|b0#5| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@3|)))))
|b0#5|) (ite (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@3|)) (|#_module.bexp.Not| (Lit DatatypeTypeType |b#0@@3|)) (|#_module.bexp.Not| (Lit DatatypeTypeType |b#0@@3|)))))))
 :qid |NipkowKleinchapter3dfy.139:20|
 :weight 3
 :skolemid |647|
 :pattern ( (_module.__default.not (Lit DatatypeTypeType |b#0@@3|)))
))))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) ) (! (< (DtRank |a#29#0#0|) (DtRank (|#_module.aexp.Plus| |a#29#0#0| |a#29#1#0|)))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |756|
 :pattern ( (|#_module.aexp.Plus| |a#29#0#0| |a#29#1#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) ) (! (< (DtRank |a#31#1#0|) (DtRank (|#_module.aexp.Plus| |a#31#0#0| |a#31#1#0|)))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |758|
 :pattern ( (|#_module.aexp.Plus| |a#31#0#0| |a#31#1#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (< (DtRank |a#48#0#0|) (DtRank (|#_module.bexp.And| |a#48#0#0| |a#48#1#0|)))
 :qid |NipkowKleinchapter3dfy.126:47|
 :skolemid |792|
 :pattern ( (|#_module.bexp.And| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (< (DtRank |a#50#1#0|) (DtRank (|#_module.bexp.And| |a#50#0#0| |a#50#1#0|)))
 :qid |NipkowKleinchapter3dfy.126:47|
 :skolemid |794|
 :pattern ( (|#_module.bexp.And| |a#50#0#0| |a#50#1#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (< (DtRank |a#56#0#0|) (DtRank (|#_module.bexp.Less| |a#56#0#0| |a#56#1#0|)))
 :qid |NipkowKleinchapter3dfy.126:66|
 :skolemid |804|
 :pattern ( (|#_module.bexp.Less| |a#56#0#0| |a#56#1#0|))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (< (DtRank |a#58#1#0|) (DtRank (|#_module.bexp.Less| |a#58#0#0| |a#58#1#0|)))
 :qid |NipkowKleinchapter3dfy.126:66|
 :skolemid |806|
 :pattern ( (|#_module.bexp.Less| |a#58#0#0| |a#58#1#0|))
)))
(assert (forall (($ly@@4 T@U) (|a#0@@2| T@U) ) (! (= (_module.__default.asimp ($LS $ly@@4) |a#0@@2|) (_module.__default.asimp $ly@@4 |a#0@@2|))
 :qid |NipkowKleinchapter3dfy.103:16|
 :skolemid |618|
 :pattern ( (_module.__default.asimp ($LS $ly@@4) |a#0@@2|))
)))
(assert (forall (($ly@@5 T@U) (|b#0@@4| T@U) ) (! (= (_module.__default.bsimp ($LS $ly@@5) |b#0@@4|) (_module.__default.bsimp $ly@@5 |b#0@@4|))
 :qid |NipkowKleinchapter3dfy.166:16|
 :skolemid |656|
 :pattern ( (_module.__default.bsimp ($LS $ly@@5) |b#0@@4|))
)))
(assert (forall ((|a#14#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.N| |a#14#0#0|) Tclass._module.aexp) ($Is intType (int_2_U |a#14#0#0|) TInt))
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |733|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.N| |a#14#0#0|) Tclass._module.aexp))
)))
(assert (forall ((|a#34#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.Bc| |a#34#0#0|) Tclass._module.bexp) ($Is boolType (bool_2_U |a#34#0#0|) TBool))
 :qid |NipkowKleinchapter3dfy.126:20|
 :skolemid |770|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.Bc| |a#34#0#0|) Tclass._module.bexp))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (< (|Seq#Rank| |a#23#0#0|) (DtRank (|#_module.aexp.V| |a#23#0#0|)))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |746|
 :pattern ( (|#_module.aexp.V| |a#23#0#0|))
)))
(assert (forall ((|a#42#0#0| T@U) ) (! (< (DtRank |a#42#0#0|) (DtRank (|#_module.bexp.Not| |a#42#0#0|)))
 :qid |NipkowKleinchapter3dfy.126:35|
 :skolemid |782|
 :pattern ( (|#_module.bexp.Not| |a#42#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 9)
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
 :skolemid |842|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@13 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.aexp.N_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.aexp $h))) ($IsAlloc intType (int_2_U (_module.aexp.n d@@13)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( ($IsAlloc intType (int_2_U (_module.aexp.n d@@13)) TInt $h))
)))
(assert (forall ((d@@14 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.bexp.Bc_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.bexp $h@@0))) ($IsAlloc boolType (bool_2_U (_module.bexp.v d@@14)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.bexp.v d@@14)) TBool $h@@0))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 Tclass._module.aexp) (or (or (_module.aexp.N_q d@@15) (_module.aexp.V_q d@@15)) (_module.aexp.Plus_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (_module.aexp.Plus_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.aexp))
 :pattern ( (_module.aexp.V_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.aexp))
 :pattern ( (_module.aexp.N_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.aexp))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@4 (TSeq t@@3)))
)))
(assert (forall ((d@@16 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@16 Tclass._module.aexp)) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.aexp $h@@1))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass._module.aexp $h@@1))
)))
(assert (forall ((d@@17 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@17 Tclass._module.bexp)) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.bexp $h@@2))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 Tclass._module.bexp $h@@2))
)))
(assert (= (Tag Tclass._module.aexp) Tagclass._module.aexp))
(assert (= (TagFamily Tclass._module.aexp) tytagFamily$aexp))
(assert (= (Tag Tclass._module.bexp) Tagclass._module.bexp))
(assert (= (TagFamily Tclass._module.bexp) tytagFamily$bexp))
(assert (forall ((|a#19#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.aexp.V| |a#19#0#0|) Tclass._module.aexp) ($Is SeqType |a#19#0#0| (TSeq TChar)))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |741|
 :pattern ( ($Is DatatypeTypeType (|#_module.aexp.V| |a#19#0#0|) Tclass._module.aexp))
)))
(assert (forall ((d@@18 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.aexp.V_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.aexp $h@@3))) ($IsAlloc SeqType (_module.aexp._h0 d@@18) (TSeq TChar) $h@@3))
 :qid |unknown.0:0|
 :skolemid |742|
 :pattern ( ($IsAlloc SeqType (_module.aexp._h0 d@@18) (TSeq TChar) $h@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0@@6| T@U) (|a1#0@@6| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| |a0#0@@6| |a1#0@@6|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@6| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@6| Tclass._module.aexp)))) (= (_module.__default.plus |a0#0@@6| |a1#0@@6|) (ite  (and (_module.aexp.N_q |a0#0@@6|) (_module.aexp.N_q |a1#0@@6|)) (|#_module.aexp.N| (+ (_module.aexp.n |a0#0@@6|) (_module.aexp.n |a1#0@@6|))) (ite (_module.aexp.N_q |a0#0@@6|) (ite (= (_module.aexp.n |a0#0@@6|) (LitInt 0)) |a1#0@@6| (|#_module.aexp.Plus| |a0#0@@6| |a1#0@@6|)) (ite (_module.aexp.N_q |a1#0@@6|) (ite (= (_module.aexp.n |a1#0@@6|) (LitInt 0)) |a0#0@@6| (|#_module.aexp.Plus| |a0#0@@6| |a1#0@@6|)) (|#_module.aexp.Plus| |a0#0@@6| |a1#0@@6|))))))
 :qid |NipkowKleinchapter3dfy.85:21|
 :skolemid |615|
 :pattern ( (_module.__default.plus |a0#0@@6| |a1#0@@6|))
))))
(assert (forall ((d@@19 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.aexp.Plus_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.aexp $h@@4))) ($IsAlloc DatatypeTypeType (_module.aexp._h1 d@@19) Tclass._module.aexp $h@@4))
 :qid |unknown.0:0|
 :skolemid |752|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.aexp._h1 d@@19) Tclass._module.aexp $h@@4))
)))
(assert (forall ((d@@20 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.aexp.Plus_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.aexp $h@@5))) ($IsAlloc DatatypeTypeType (_module.aexp._h2 d@@20) Tclass._module.aexp $h@@5))
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.aexp._h2 d@@20) Tclass._module.aexp $h@@5))
)))
(assert (forall ((d@@21 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.bexp.Not_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.bexp $h@@6))) ($IsAlloc DatatypeTypeType (_module.bexp._h3 d@@21) Tclass._module.bexp $h@@6))
 :qid |unknown.0:0|
 :skolemid |779|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h3 d@@21) Tclass._module.bexp $h@@6))
)))
(assert (forall ((d@@22 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.bexp.And_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.bexp $h@@7))) ($IsAlloc DatatypeTypeType (_module.bexp._h4 d@@22) Tclass._module.bexp $h@@7))
 :qid |unknown.0:0|
 :skolemid |788|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h4 d@@22) Tclass._module.bexp $h@@7))
)))
(assert (forall ((d@@23 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.bexp.And_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass._module.bexp $h@@8))) ($IsAlloc DatatypeTypeType (_module.bexp._h5 d@@23) Tclass._module.bexp $h@@8))
 :qid |unknown.0:0|
 :skolemid |789|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h5 d@@23) Tclass._module.bexp $h@@8))
)))
(assert (forall ((d@@24 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.bexp.Less_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass._module.bexp $h@@9))) ($IsAlloc DatatypeTypeType (_module.bexp._h6 d@@24) Tclass._module.aexp $h@@9))
 :qid |unknown.0:0|
 :skolemid |800|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h6 d@@24) Tclass._module.aexp $h@@9))
)))
(assert (forall ((d@@25 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.bexp.Less_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass._module.bexp $h@@10))) ($IsAlloc DatatypeTypeType (_module.bexp._h7 d@@25) Tclass._module.aexp $h@@10))
 :qid |unknown.0:0|
 :skolemid |801|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h7 d@@25) Tclass._module.aexp $h@@10))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) ) (! (= (|#_module.aexp.Plus| (Lit DatatypeTypeType |a#27#0#0|) (Lit DatatypeTypeType |a#27#1#0|)) (Lit DatatypeTypeType (|#_module.aexp.Plus| |a#27#0#0| |a#27#1#0|)))
 :qid |NipkowKleinchapter3dfy.21:45|
 :skolemid |754|
 :pattern ( (|#_module.aexp.Plus| (Lit DatatypeTypeType |a#27#0#0|) (Lit DatatypeTypeType |a#27#1#0|)))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (= (|#_module.bexp.And| (Lit DatatypeTypeType |a#46#0#0|) (Lit DatatypeTypeType |a#46#1#0|)) (Lit DatatypeTypeType (|#_module.bexp.And| |a#46#0#0| |a#46#1#0|)))
 :qid |NipkowKleinchapter3dfy.126:47|
 :skolemid |790|
 :pattern ( (|#_module.bexp.And| (Lit DatatypeTypeType |a#46#0#0|) (Lit DatatypeTypeType |a#46#1#0|)))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (= (|#_module.bexp.Less| (Lit DatatypeTypeType |a#54#0#0|) (Lit DatatypeTypeType |a#54#1#0|)) (Lit DatatypeTypeType (|#_module.bexp.Less| |a#54#0#0| |a#54#1#0|)))
 :qid |NipkowKleinchapter3dfy.126:66|
 :skolemid |802|
 :pattern ( (|#_module.bexp.Less| (Lit DatatypeTypeType |a#54#0#0|) (Lit DatatypeTypeType |a#54#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#15#0#0| Int) ) (! (= (|#_module.aexp.N| (LitInt |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.aexp.N| |a#15#0#0|)))
 :qid |NipkowKleinchapter3dfy.21:19|
 :skolemid |735|
 :pattern ( (|#_module.aexp.N| (LitInt |a#15#0#0|)))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (|#_module.aexp.V| (Lit SeqType |a#20#0#0|)) (Lit DatatypeTypeType (|#_module.aexp.V| |a#20#0#0|)))
 :qid |NipkowKleinchapter3dfy.21:31|
 :skolemid |743|
 :pattern ( (|#_module.aexp.V| (Lit SeqType |a#20#0#0|)))
)))
(assert (forall ((|a#35#0#0| T@U) ) (! (= (|#_module.bexp.Bc| (U_2_bool (Lit boolType |a#35#0#0|))) (Lit DatatypeTypeType (|#_module.bexp.Bc| (U_2_bool |a#35#0#0|))))
 :qid |NipkowKleinchapter3dfy.126:20|
 :skolemid |772|
 :pattern ( (|#_module.bexp.Bc| (U_2_bool (Lit boolType |a#35#0#0|))))
)))
(assert (forall ((|a#40#0#0| T@U) ) (! (= (|#_module.bexp.Not| (Lit DatatypeTypeType |a#40#0#0|)) (Lit DatatypeTypeType (|#_module.bexp.Not| |a#40#0#0|)))
 :qid |NipkowKleinchapter3dfy.126:35|
 :skolemid |780|
 :pattern ( (|#_module.bexp.Not| (Lit DatatypeTypeType |a#40#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@6 T@U) (|b#0@@5| T@U) ) (!  (=> (or (|_module.__default.bsimp#canCall| (Lit DatatypeTypeType |b#0@@5|)) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@5| Tclass._module.bexp))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@5|))))) (let ((|b0#6| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@5|)))))
 (and (|_module.__default.bsimp#canCall| |b0#6|) (|_module.__default.not#canCall| (_module.__default.bsimp ($LS $ly@@6) |b0#6|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@5|))))) (let ((|b1#3| (Lit DatatypeTypeType (_module.bexp._h5 (Lit DatatypeTypeType |b#0@@5|)))))
(let ((|b0#7| (Lit DatatypeTypeType (_module.bexp._h4 (Lit DatatypeTypeType |b#0@@5|)))))
 (and (and (|_module.__default.bsimp#canCall| |b0#7|) (|_module.__default.bsimp#canCall| |b1#3|)) (|_module.__default.and#canCall| (_module.__default.bsimp ($LS $ly@@6) |b0#7|) (_module.__default.bsimp ($LS $ly@@6) |b1#3|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@5|)))))) (let ((|a1#3@@0| (Lit DatatypeTypeType (_module.bexp._h7 (Lit DatatypeTypeType |b#0@@5|)))))
(let ((|a0#3@@0| (Lit DatatypeTypeType (_module.bexp._h6 (Lit DatatypeTypeType |b#0@@5|)))))
 (and (and (|_module.__default.asimp#canCall| |a0#3@@0|) (|_module.__default.asimp#canCall| |a1#3@@0|)) (|_module.__default.less#canCall| (_module.__default.asimp ($LS $LZ) |a0#3@@0|) (_module.__default.asimp ($LS $LZ) |a1#3@@0|)))))))))) (= (_module.__default.bsimp ($LS $ly@@6) (Lit DatatypeTypeType |b#0@@5|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@5|)) (Lit DatatypeTypeType |b#0@@5|) (ite (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@5|)) (let ((|b0#4@@0| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@5|)))))
(Lit DatatypeTypeType (_module.__default.not (Lit DatatypeTypeType (_module.__default.bsimp ($LS $ly@@6) |b0#4@@0|))))) (ite (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@5|)) (let ((|b1#2| (Lit DatatypeTypeType (_module.bexp._h5 (Lit DatatypeTypeType |b#0@@5|)))))
(let ((|b0#5@@0| (Lit DatatypeTypeType (_module.bexp._h4 (Lit DatatypeTypeType |b#0@@5|)))))
(Lit DatatypeTypeType (_module.__default.and (Lit DatatypeTypeType (_module.__default.bsimp ($LS $ly@@6) |b0#5@@0|)) (Lit DatatypeTypeType (_module.__default.bsimp ($LS $ly@@6) |b1#2|)))))) (let ((|a1#2@@0| (Lit DatatypeTypeType (_module.bexp._h7 (Lit DatatypeTypeType |b#0@@5|)))))
(let ((|a0#2@@0| (Lit DatatypeTypeType (_module.bexp._h6 (Lit DatatypeTypeType |b#0@@5|)))))
(Lit DatatypeTypeType (_module.__default.less (Lit DatatypeTypeType (_module.__default.asimp ($LS $LZ) |a0#2@@0|)) (Lit DatatypeTypeType (_module.__default.asimp ($LS $LZ) |a1#2@@0|))))))))))))
 :qid |NipkowKleinchapter3dfy.166:16|
 :weight 3
 :skolemid |661|
 :pattern ( (_module.__default.bsimp ($LS $ly@@6) (Lit DatatypeTypeType |b#0@@5|)))
))))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> ($Is DatatypeTypeType d@@26 Tclass._module.bexp) (or (or (or (_module.bexp.Bc_q d@@26) (_module.bexp.Not_q d@@26)) (_module.bexp.And_q d@@26)) (_module.bexp.Less_q d@@26)))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.bexp.Less_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.bexp))
 :pattern ( (_module.bexp.And_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.bexp))
 :pattern ( (_module.bexp.Not_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.bexp))
 :pattern ( (_module.bexp.Bc_q d@@26) ($Is DatatypeTypeType d@@26 Tclass._module.bexp))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@3)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is charType v@@8 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@8 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0@@6| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |b1#Z#0@0| () T@U)
(declare-fun |let#3#0#0| () T@U)
(declare-fun |b0#Z#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##b0#0@0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#4#0#0| () T@U)
(declare-fun |b0#Z#1@0| () T@U)
(declare-fun |_mcc#0#0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.bsimp)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon14_Else_correct true))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |b#0@@6| (|#_module.bexp.And| |_mcc#2#0| |_mcc#3#0|))) (not true)) (and (=> (= (ControlFlow 0 10) 8) anon14_Then_correct) (=> (= (ControlFlow 0 10) 9) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (and (= |b#0@@6| (|#_module.bexp.And| |_mcc#2#0| |_mcc#3#0|)) ($Is DatatypeTypeType |_mcc#2#0| Tclass._module.bexp)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#3#0| Tclass._module.bexp) (= |let#2#0#0| |_mcc#3#0|)) (and ($Is DatatypeTypeType |let#2#0#0| Tclass._module.bexp) (= |b1#Z#0@0| |let#2#0#0|))) (and (and (= |let#3#0#0| |_mcc#2#0|) ($Is DatatypeTypeType |let#3#0#0| Tclass._module.bexp)) (and (= |b0#Z#0@0| |let#3#0#0|) ($IsAlloc DatatypeTypeType |b0#Z#0@0| Tclass._module.bexp $Heap)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (< (DtRank |b0#Z#0@0|) (DtRank |b#0@@6|))) (=> (< (DtRank |b0#Z#0@0|) (DtRank |b#0@@6|)) (=> (|_module.__default.bsimp#canCall| |b0#Z#0@0|) (=> (and (and (= |##b0#0@0| (_module.__default.bsimp ($LS $LZ) |b0#Z#0@0|)) ($IsAlloc DatatypeTypeType |##b0#0@0| Tclass._module.bexp $Heap)) (and ($IsAlloc DatatypeTypeType |b1#Z#0@0| Tclass._module.bexp $Heap) (= (ControlFlow 0 6) (- 0 5)))) (< (DtRank |b1#Z#0@0|) (DtRank |b#0@@6|))))))))))
(let ((anon12_Else_correct  (=> (or (not (= |b#0@@6| (|#_module.bexp.Not| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 11) 6) anon13_Then_correct) (=> (= (ControlFlow 0 11) 10) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (= |b#0@@6| (|#_module.bexp.Not| |_mcc#1#0|)) (=> (and ($Is DatatypeTypeType |_mcc#1#0| Tclass._module.bexp) (= |let#4#0#0| |_mcc#1#0|)) (=> (and (and ($Is DatatypeTypeType |let#4#0#0| Tclass._module.bexp) (= |b0#Z#1@0| |let#4#0#0|)) (and ($IsAlloc DatatypeTypeType |b0#Z#1@0| Tclass._module.bexp $Heap) (= (ControlFlow 0 4) (- 0 3)))) (< (DtRank |b0#Z#1@0|) (DtRank |b#0@@6|)))))))
(let ((anon11_Else_correct  (=> (or (not (= |b#0@@6| (|#_module.bexp.Bc| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 12) 4) anon12_Then_correct) (=> (= (ControlFlow 0 12) 11) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 13) 1) anon10_Then_correct) (=> (= (ControlFlow 0 13) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |b#0@@6| Tclass._module.bexp)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
