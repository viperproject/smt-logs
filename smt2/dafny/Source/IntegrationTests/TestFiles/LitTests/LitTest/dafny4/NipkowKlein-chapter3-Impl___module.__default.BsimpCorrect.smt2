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
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.aexp () T@U)
(declare-fun Tagclass._module.bexp () T@U)
(declare-fun |##_module.aexp.N| () T@U)
(declare-fun |##_module.aexp.V| () T@U)
(declare-fun |##_module.aexp.Plus| () T@U)
(declare-fun |##_module.bexp.Bc| () T@U)
(declare-fun |##_module.bexp.Not| () T@U)
(declare-fun |##_module.bexp.And| () T@U)
(declare-fun |##_module.bexp.Less| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun _module.__default.aval (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.aval#canCall| (T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun _module.aexp.N_q (T@U) Bool)
(declare-fun _module.aexp.V_q (T@U) Bool)
(declare-fun _module.aexp._h2 (T@U) T@U)
(declare-fun _module.aexp._h1 (T@U) T@U)
(declare-fun _module.aexp.n (T@U) Int)
(declare-fun _module.aexp._h0 (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
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
(declare-fun _module.__default.plus (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.plus#canCall| (T@U T@U) Bool)
(declare-fun |#_module.aexp.N| (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.__default.and (T@U T@U) T@U)
(declare-fun |_module.__default.and#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.less (T@U T@U) T@U)
(declare-fun |_module.__default.less#canCall| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.__default.asimp (T@U T@U) T@U)
(declare-fun |_module.__default.asimp#canCall| (T@U) Bool)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.__default.bval (T@U T@U T@U) Bool)
(declare-fun |_module.__default.bval#canCall| (T@U T@U) Bool)
(declare-fun _module.bexp._h5 (T@U) T@U)
(declare-fun _module.bexp._h4 (T@U) T@U)
(declare-fun _module.bexp._h7 (T@U) T@U)
(declare-fun _module.bexp._h6 (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.aexp.Plus_q (T@U) Bool)
(declare-fun _module.bexp.Less_q (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.bsimp (T@U T@U) T@U)
(declare-fun |_module.__default.bsimp#canCall| (T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#_module.bexp| (T@U) Bool)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSeq alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.aexp Tagclass._module.bexp |##_module.aexp.N| |##_module.aexp.V| |##_module.aexp.Plus| |##_module.bexp.Bc| |##_module.bexp.Not| |##_module.bexp.And| |##_module.bexp.Less| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$aexp tytagFamily$bexp)
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
(assert  (and (= (Ctor HandleTypeType) 4) (= (Ctor SeqType) 5)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|a#0| T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.aval#canCall| |a#0| |s#0|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |a#0| Tclass._module.aexp)) ($Is HandleTypeType |s#0| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))))) (and (=> (not (_module.aexp.N_q |a#0|)) (=> (not (_module.aexp.V_q |a#0|)) (let ((|a1#1| (_module.aexp._h2 |a#0|)))
(let ((|a0#1| (_module.aexp._h1 |a#0|)))
 (and (|_module.__default.aval#canCall| |a0#1| |s#0|) (|_module.__default.aval#canCall| |a1#1| |s#0|)))))) (= (_module.__default.aval ($LS $ly) |a#0| |s#0|) (ite (_module.aexp.N_q |a#0|) (let ((|n#0| (_module.aexp.n |a#0|)))
|n#0|) (ite (_module.aexp.V_q |a#0|) (U_2_int (let ((|x#0| (_module.aexp._h0 |a#0|)))
($Unbox intType (Apply1 (TSeq TChar) TInt $Heap |s#0| ($Box SeqType |x#0|))))) (let ((|a1#0| (_module.aexp._h2 |a#0|)))
(let ((|a0#0| (_module.aexp._h1 |a#0|)))
(+ (_module.__default.aval $ly |a0#0| |s#0|) (_module.__default.aval $ly |a1#0| |s#0|)))))))))
 :qid |NipkowKleinchapter3dfy.26:16|
 :skolemid |597|
 :pattern ( (_module.__default.aval ($LS $ly) |a#0| |s#0|) ($IsGoodHeap $Heap))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0@@0| T@U) (|a1#0@@0| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| (Lit DatatypeTypeType |a0#0@@0|) (Lit DatatypeTypeType |a1#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@0| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@0| Tclass._module.aexp)))) (= (_module.__default.plus (Lit DatatypeTypeType |a0#0@@0|) (Lit DatatypeTypeType |a1#0@@0|)) (ite  (and (_module.aexp.N_q (Lit DatatypeTypeType |a0#0@@0|)) (_module.aexp.N_q (Lit DatatypeTypeType |a1#0@@0|))) (|#_module.aexp.N| (LitInt (+ (_module.aexp.n (Lit DatatypeTypeType |a0#0@@0|)) (_module.aexp.n (Lit DatatypeTypeType |a1#0@@0|))))) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a0#0@@0|)) (ite (= (LitInt (_module.aexp.n (Lit DatatypeTypeType |a0#0@@0|))) (LitInt 0)) |a1#0@@0| (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0@@0|) (Lit DatatypeTypeType |a1#0@@0|))) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a1#0@@0|)) (ite (= (LitInt (_module.aexp.n (Lit DatatypeTypeType |a1#0@@0|))) (LitInt 0)) |a0#0@@0| (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0@@0|) (Lit DatatypeTypeType |a1#0@@0|))) (|#_module.aexp.Plus| (Lit DatatypeTypeType |a0#0@@0|) (Lit DatatypeTypeType |a1#0@@0|)))))))
 :qid |NipkowKleinchapter3dfy.85:21|
 :weight 3
 :skolemid |616|
 :pattern ( (_module.__default.plus (Lit DatatypeTypeType |a0#0@@0|) (Lit DatatypeTypeType |a1#0@@0|)))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0@@1| T@U) (|a1#0@@1| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| |a0#0@@1| |a1#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@1| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@1| Tclass._module.aexp)))) ($Is DatatypeTypeType (_module.__default.plus |a0#0@@1| |a1#0@@1|) Tclass._module.aexp))
 :qid |NipkowKleinchapter3dfy.85:21|
 :skolemid |613|
 :pattern ( (_module.__default.plus |a0#0@@1| |a1#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b0#0@@0| T@U) (|b1#0| T@U) ) (!  (=> (or (|_module.__default.and#canCall| |b0#0@@0| |b1#0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b0#0@@0| Tclass._module.bexp) ($Is DatatypeTypeType |b1#0| Tclass._module.bexp)))) ($Is DatatypeTypeType (_module.__default.and |b0#0@@0| |b1#0|) Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.148:20|
 :skolemid |648|
 :pattern ( (_module.__default.and |b0#0@@0| |b1#0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|a0#0@@2| T@U) (|a1#0@@2| T@U) ) (!  (=> (or (|_module.__default.less#canCall| |a0#0@@2| |a1#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@2| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@2| Tclass._module.aexp)))) ($Is DatatypeTypeType (_module.__default.less |a0#0@@2| |a1#0@@2|) Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.158:21|
 :skolemid |652|
 :pattern ( (_module.__default.less |a0#0@@2| |a1#0@@2|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|a#0@@0| T@U) ) (!  (=> (or (|_module.__default.asimp#canCall| (Lit DatatypeTypeType |a#0@@0|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@0| Tclass._module.aexp))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.N_q (Lit DatatypeTypeType |a#0@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.V_q (Lit DatatypeTypeType |a#0@@0|)))))) (let ((|a1#3| (Lit DatatypeTypeType (_module.aexp._h2 (Lit DatatypeTypeType |a#0@@0|)))))
(let ((|a0#3| (Lit DatatypeTypeType (_module.aexp._h1 (Lit DatatypeTypeType |a#0@@0|)))))
 (and (and (|_module.__default.asimp#canCall| |a0#3|) (|_module.__default.asimp#canCall| |a1#3|)) (|_module.__default.plus#canCall| (_module.__default.asimp ($LS $ly@@0) |a0#3|) (_module.__default.asimp ($LS $ly@@0) |a1#3|))))))) (= (_module.__default.asimp ($LS $ly@@0) (Lit DatatypeTypeType |a#0@@0|)) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a#0@@0|)) (Lit DatatypeTypeType |a#0@@0|) (ite (_module.aexp.V_q (Lit DatatypeTypeType |a#0@@0|)) (Lit DatatypeTypeType |a#0@@0|) (let ((|a1#2| (Lit DatatypeTypeType (_module.aexp._h2 (Lit DatatypeTypeType |a#0@@0|)))))
(let ((|a0#2| (Lit DatatypeTypeType (_module.aexp._h1 (Lit DatatypeTypeType |a#0@@0|)))))
(Lit DatatypeTypeType (_module.__default.plus (Lit DatatypeTypeType (_module.__default.asimp ($LS $ly@@0) |a0#2|)) (Lit DatatypeTypeType (_module.__default.asimp ($LS $ly@@0) |a1#2|)))))))))))
 :qid |NipkowKleinchapter3dfy.103:16|
 :weight 3
 :skolemid |623|
 :pattern ( (_module.__default.asimp ($LS $ly@@0) (Lit DatatypeTypeType |a#0@@0|)))
))))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|a0#0@@3| T@U) (|a1#0@@3| T@U) ) (!  (=> (or (|_module.__default.less#canCall| |a0#0@@3| |a1#0@@3|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@3| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@3| Tclass._module.aexp)))) (= (_module.__default.less |a0#0@@3| |a1#0@@3|) (ite  (and (_module.aexp.N_q |a0#0@@3|) (_module.aexp.N_q |a1#0@@3|)) (|#_module.bexp.Bc| (< (_module.aexp.n |a0#0@@3|) (_module.aexp.n |a1#0@@3|))) (|#_module.bexp.Less| |a0#0@@3| |a1#0@@3|))))
 :qid |NipkowKleinchapter3dfy.158:21|
 :skolemid |654|
 :pattern ( (_module.__default.less |a0#0@@3| |a1#0@@3|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|b#0@@0| T@U) (|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.bval#canCall| (Lit DatatypeTypeType |b#0@@0|) (Lit HandleTypeType |s#0@@0|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b#0@@0| Tclass._module.bexp) ($Is HandleTypeType |s#0@@0| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@0|))))) (let ((|b#6| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@0|)))))
(|_module.__default.bval#canCall| |b#6| (Lit HandleTypeType |s#0@@0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@0|))))) (let ((|b1#5| (Lit DatatypeTypeType (_module.bexp._h5 (Lit DatatypeTypeType |b#0@@0|)))))
(let ((|b0#5| (Lit DatatypeTypeType (_module.bexp._h4 (Lit DatatypeTypeType |b#0@@0|)))))
 (and (|_module.__default.bval#canCall| |b0#5| (Lit HandleTypeType |s#0@@0|)) (=> (_module.__default.bval ($LS $ly@@1) |b0#5| (Lit HandleTypeType |s#0@@0|)) (|_module.__default.bval#canCall| |b1#5| (Lit HandleTypeType |s#0@@0|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@0|)))))) (let ((|a1#5| (Lit DatatypeTypeType (_module.bexp._h7 (Lit DatatypeTypeType |b#0@@0|)))))
(let ((|a0#5| (Lit DatatypeTypeType (_module.bexp._h6 (Lit DatatypeTypeType |b#0@@0|)))))
 (and (|_module.__default.aval#canCall| |a0#5| (Lit HandleTypeType |s#0@@0|)) (|_module.__default.aval#canCall| |a1#5| (Lit HandleTypeType |s#0@@0|)))))))))) (= (_module.__default.bval ($LS $ly@@1) (Lit DatatypeTypeType |b#0@@0|) (Lit HandleTypeType |s#0@@0|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@0|)) (let ((|v#4| (U_2_bool (Lit boolType (bool_2_U (_module.bexp.v (Lit DatatypeTypeType |b#0@@0|)))))))
|v#4|) (ite (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@0|)) (let ((|b#5| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@0|)))))
 (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.bval ($LS $ly@@1) |b#5| (Lit HandleTypeType |s#0@@0|))))))) (ite (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@0|)) (U_2_bool (let ((|b1#4| (Lit DatatypeTypeType (_module.bexp._h5 (Lit DatatypeTypeType |b#0@@0|)))))
(let ((|b0#4| (Lit DatatypeTypeType (_module.bexp._h4 (Lit DatatypeTypeType |b#0@@0|)))))
(Lit boolType (bool_2_U  (and (_module.__default.bval ($LS $ly@@1) |b0#4| (Lit HandleTypeType |s#0@@0|)) (_module.__default.bval ($LS $ly@@1) |b1#4| (Lit HandleTypeType |s#0@@0|)))))))) (U_2_bool (let ((|a1#4| (Lit DatatypeTypeType (_module.bexp._h7 (Lit DatatypeTypeType |b#0@@0|)))))
(let ((|a0#4| (Lit DatatypeTypeType (_module.bexp._h6 (Lit DatatypeTypeType |b#0@@0|)))))
(Lit boolType (bool_2_U (< (_module.__default.aval ($LS $LZ) |a0#4| (Lit HandleTypeType |s#0@@0|)) (_module.__default.aval ($LS $LZ) |a1#4| (Lit HandleTypeType |s#0@@0|))))))))))))))
 :qid |NipkowKleinchapter3dfy.128:16|
 :weight 3
 :skolemid |638|
 :pattern ( (_module.__default.bval ($LS $ly@@1) (Lit DatatypeTypeType |b#0@@0|) (Lit HandleTypeType |s#0@@0|)))
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
(assert (forall ((t0@@0 T@U) (t1@@0 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@0 t1@@0)))) (= (|Set#Equal| (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@0 t1@@0 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@0 t1@@0 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@0 t1@@0 heap f@@0 bx0))
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
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($ly@@2 T@U) (|b#0@@1| T@U) (|s#0@@1| T@U) ) (! (= (_module.__default.bval ($LS $ly@@2) |b#0@@1| |s#0@@1|) (_module.__default.bval $ly@@2 |b#0@@1| |s#0@@1|))
 :qid |NipkowKleinchapter3dfy.128:16|
 :skolemid |631|
 :pattern ( (_module.__default.bval ($LS $ly@@2) |b#0@@1| |s#0@@1|))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@0 T@U) (|a#0@@1| T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.aval#canCall| (Lit DatatypeTypeType |a#0@@1|) (Lit HandleTypeType |s#0@@2|)) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |a#0@@1| Tclass._module.aexp)) ($Is HandleTypeType |s#0@@2| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.N_q (Lit DatatypeTypeType |a#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.V_q (Lit DatatypeTypeType |a#0@@1|)))))) (let ((|a1#5@@0| (Lit DatatypeTypeType (_module.aexp._h2 (Lit DatatypeTypeType |a#0@@1|)))))
(let ((|a0#5@@0| (Lit DatatypeTypeType (_module.aexp._h1 (Lit DatatypeTypeType |a#0@@1|)))))
 (and (|_module.__default.aval#canCall| |a0#5@@0| (Lit HandleTypeType |s#0@@2|)) (|_module.__default.aval#canCall| |a1#5@@0| (Lit HandleTypeType |s#0@@2|))))))) (= (_module.__default.aval ($LS $ly@@3) (Lit DatatypeTypeType |a#0@@1|) (Lit HandleTypeType |s#0@@2|)) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a#0@@1|)) (let ((|n#4| (LitInt (_module.aexp.n (Lit DatatypeTypeType |a#0@@1|)))))
|n#4|) (ite (_module.aexp.V_q (Lit DatatypeTypeType |a#0@@1|)) (U_2_int (let ((|x#4| (Lit SeqType (_module.aexp._h0 (Lit DatatypeTypeType |a#0@@1|)))))
($Unbox intType (Apply1 (TSeq TChar) TInt $Heap@@0 (Lit HandleTypeType |s#0@@2|) ($Box SeqType |x#4|))))) (let ((|a1#4@@0| (Lit DatatypeTypeType (_module.aexp._h2 (Lit DatatypeTypeType |a#0@@1|)))))
(let ((|a0#4@@0| (Lit DatatypeTypeType (_module.aexp._h1 (Lit DatatypeTypeType |a#0@@1|)))))
(LitInt (+ (_module.__default.aval ($LS $ly@@3) |a0#4@@0| (Lit HandleTypeType |s#0@@2|)) (_module.__default.aval ($LS $ly@@3) |a1#4@@0| (Lit HandleTypeType |s#0@@2|)))))))))))
 :qid |NipkowKleinchapter3dfy.26:16|
 :weight 3
 :skolemid |599|
 :pattern ( (_module.__default.aval ($LS $ly@@3) (Lit DatatypeTypeType |a#0@@1|) (Lit HandleTypeType |s#0@@2|)) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b0#0@@1| T@U) (|b1#0@@0| T@U) ) (!  (=> (or (|_module.__default.and#canCall| (Lit DatatypeTypeType |b0#0@@1|) (Lit DatatypeTypeType |b1#0@@0|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b0#0@@1| Tclass._module.bexp) ($Is DatatypeTypeType |b1#0@@0| Tclass._module.bexp)))) (= (_module.__default.and (Lit DatatypeTypeType |b0#0@@1|) (Lit DatatypeTypeType |b1#0@@0|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b0#0@@1|)) (ite (_module.bexp.v (Lit DatatypeTypeType |b0#0@@1|)) |b1#0@@0| |b0#0@@1|) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b1#0@@0|)) (ite (_module.bexp.v (Lit DatatypeTypeType |b1#0@@0|)) |b0#0@@1| |b1#0@@0|) (|#_module.bexp.And| (Lit DatatypeTypeType |b0#0@@1|) (Lit DatatypeTypeType |b1#0@@0|))))))
 :qid |NipkowKleinchapter3dfy.148:20|
 :weight 3
 :skolemid |651|
 :pattern ( (_module.__default.and (Lit DatatypeTypeType |b0#0@@1|) (Lit DatatypeTypeType |b1#0@@0|)))
))))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@0) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@0))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.aexp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.aexp)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsBox bx@@1 Tclass._module.aexp))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.bexp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.bexp)))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($IsBox bx@@2 Tclass._module.bexp))
)))
(assert (forall ((|a#39#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.bexp.Not| |a#39#0#0|) Tclass._module.bexp) ($Is DatatypeTypeType |a#39#0#0| Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.126:35|
 :skolemid |778|
 :pattern ( ($Is DatatypeTypeType (|#_module.bexp.Not| |a#39#0#0|) Tclass._module.bexp))
)))
(assert (forall (($ly@@4 T@U) (|a#0@@2| T@U) (|s#0@@3| T@U) ) (! (= (_module.__default.aval ($LS $ly@@4) |a#0@@2| |s#0@@3|) (_module.__default.aval $ly@@4 |a#0@@2| |s#0@@3|))
 :qid |NipkowKleinchapter3dfy.26:16|
 :skolemid |592|
 :pattern ( (_module.__default.aval ($LS $ly@@4) |a#0@@2| |s#0@@3|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@5 T@U) (|b#0@@2| T@U) (|s#0@@4| T@U) ) (!  (=> (or (|_module.__default.bval#canCall| (Lit DatatypeTypeType |b#0@@2|) |s#0@@4|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b#0@@2| Tclass._module.bexp) ($Is HandleTypeType |s#0@@4| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@2|))))) (let ((|b#4| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@2|)))))
(|_module.__default.bval#canCall| |b#4| |s#0@@4|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@2|))))) (let ((|b1#3| (Lit DatatypeTypeType (_module.bexp._h5 (Lit DatatypeTypeType |b#0@@2|)))))
(let ((|b0#3| (Lit DatatypeTypeType (_module.bexp._h4 (Lit DatatypeTypeType |b#0@@2|)))))
 (and (|_module.__default.bval#canCall| |b0#3| |s#0@@4|) (=> (_module.__default.bval ($LS $ly@@5) |b0#3| |s#0@@4|) (|_module.__default.bval#canCall| |b1#3| |s#0@@4|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@2|)))))) (let ((|a1#3@@0| (Lit DatatypeTypeType (_module.bexp._h7 (Lit DatatypeTypeType |b#0@@2|)))))
(let ((|a0#3@@0| (Lit DatatypeTypeType (_module.bexp._h6 (Lit DatatypeTypeType |b#0@@2|)))))
 (and (|_module.__default.aval#canCall| |a0#3@@0| |s#0@@4|) (|_module.__default.aval#canCall| |a1#3@@0| |s#0@@4|))))))))) (= (_module.__default.bval ($LS $ly@@5) (Lit DatatypeTypeType |b#0@@2|) |s#0@@4|) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@2|)) (let ((|v#2| (U_2_bool (Lit boolType (bool_2_U (_module.bexp.v (Lit DatatypeTypeType |b#0@@2|)))))))
|v#2|) (ite (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@2|)) (let ((|b#3| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@2|)))))
 (not (_module.__default.bval ($LS $ly@@5) |b#3| |s#0@@4|))) (ite (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@2|)) (let ((|b1#2| (Lit DatatypeTypeType (_module.bexp._h5 (Lit DatatypeTypeType |b#0@@2|)))))
(let ((|b0#2| (Lit DatatypeTypeType (_module.bexp._h4 (Lit DatatypeTypeType |b#0@@2|)))))
 (and (_module.__default.bval ($LS $ly@@5) |b0#2| |s#0@@4|) (_module.__default.bval ($LS $ly@@5) |b1#2| |s#0@@4|)))) (let ((|a1#2@@0| (Lit DatatypeTypeType (_module.bexp._h7 (Lit DatatypeTypeType |b#0@@2|)))))
(let ((|a0#2@@0| (Lit DatatypeTypeType (_module.bexp._h6 (Lit DatatypeTypeType |b#0@@2|)))))
(< (_module.__default.aval ($LS $LZ) |a0#2@@0| |s#0@@4|) (_module.__default.aval ($LS $LZ) |a1#2@@0| |s#0@@4|))))))))))
 :qid |NipkowKleinchapter3dfy.128:16|
 :weight 3
 :skolemid |637|
 :pattern ( (_module.__default.bval ($LS $ly@@5) (Lit DatatypeTypeType |b#0@@2|) |s#0@@4|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@6 T@U) (|b#0@@3| T@U) (|s#0@@5| T@U) ) (!  (=> (or (|_module.__default.bval#canCall| |b#0@@3| |s#0@@5|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b#0@@3| Tclass._module.bexp) ($Is HandleTypeType |s#0@@5| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))))) (and (=> (not (_module.bexp.Bc_q |b#0@@3|)) (and (=> (_module.bexp.Not_q |b#0@@3|) (let ((|b#2| (_module.bexp._h3 |b#0@@3|)))
(|_module.__default.bval#canCall| |b#2| |s#0@@5|))) (=> (not (_module.bexp.Not_q |b#0@@3|)) (and (=> (_module.bexp.And_q |b#0@@3|) (let ((|b1#1| (_module.bexp._h5 |b#0@@3|)))
(let ((|b0#1@@0| (_module.bexp._h4 |b#0@@3|)))
 (and (|_module.__default.bval#canCall| |b0#1@@0| |s#0@@5|) (=> (_module.__default.bval $ly@@6 |b0#1@@0| |s#0@@5|) (|_module.__default.bval#canCall| |b1#1| |s#0@@5|)))))) (=> (not (_module.bexp.And_q |b#0@@3|)) (let ((|a1#1@@0| (_module.bexp._h7 |b#0@@3|)))
(let ((|a0#1@@0| (_module.bexp._h6 |b#0@@3|)))
 (and (|_module.__default.aval#canCall| |a0#1@@0| |s#0@@5|) (|_module.__default.aval#canCall| |a1#1@@0| |s#0@@5|))))))))) (= (_module.__default.bval ($LS $ly@@6) |b#0@@3| |s#0@@5|) (ite (_module.bexp.Bc_q |b#0@@3|) (let ((|v#0| (_module.bexp.v |b#0@@3|)))
|v#0|) (ite (_module.bexp.Not_q |b#0@@3|) (let ((|b#1| (_module.bexp._h3 |b#0@@3|)))
 (not (_module.__default.bval $ly@@6 |b#1| |s#0@@5|))) (ite (_module.bexp.And_q |b#0@@3|) (let ((|b1#0@@1| (_module.bexp._h5 |b#0@@3|)))
(let ((|b0#0@@2| (_module.bexp._h4 |b#0@@3|)))
 (and (_module.__default.bval $ly@@6 |b0#0@@2| |s#0@@5|) (_module.__default.bval $ly@@6 |b1#0@@1| |s#0@@5|)))) (let ((|a1#0@@4| (_module.bexp._h7 |b#0@@3|)))
(let ((|a0#0@@4| (_module.bexp._h6 |b#0@@3|)))
(< (_module.__default.aval ($LS $LZ) |a0#0@@4| |s#0@@5|) (_module.__default.aval ($LS $LZ) |a1#0@@4| |s#0@@5|))))))))))
 :qid |NipkowKleinchapter3dfy.128:16|
 :skolemid |636|
 :pattern ( (_module.__default.bval ($LS $ly@@6) |b#0@@3| |s#0@@5|))
))))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@1 h@@0) (Requires1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0) t1@@1 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@1 t1@@1 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@1 t1@@1) h@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|a#0@@3| T@U) ) (!  (=> (or (|_module.__default.asimp#canCall| |a#0@@3|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@3| Tclass._module.aexp))) (and (=> (not (_module.aexp.N_q |a#0@@3|)) (=> (not (_module.aexp.V_q |a#0@@3|)) (let ((|a1#1@@1| (_module.aexp._h2 |a#0@@3|)))
(let ((|a0#1@@1| (_module.aexp._h1 |a#0@@3|)))
 (and (and (|_module.__default.asimp#canCall| |a0#1@@1|) (|_module.__default.asimp#canCall| |a1#1@@1|)) (|_module.__default.plus#canCall| (_module.__default.asimp $ly@@7 |a0#1@@1|) (_module.__default.asimp $ly@@7 |a1#1@@1|))))))) (= (_module.__default.asimp ($LS $ly@@7) |a#0@@3|) (ite (_module.aexp.N_q |a#0@@3|) |a#0@@3| (ite (_module.aexp.V_q |a#0@@3|) |a#0@@3| (let ((|a1#0@@5| (_module.aexp._h2 |a#0@@3|)))
(let ((|a0#0@@5| (_module.aexp._h1 |a#0@@3|)))
(_module.__default.plus (_module.__default.asimp $ly@@7 |a0#0@@5|) (_module.__default.asimp $ly@@7 |a1#0@@5|)))))))))
 :qid |NipkowKleinchapter3dfy.103:16|
 :skolemid |622|
 :pattern ( (_module.__default.asimp ($LS $ly@@7) |a#0@@3|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@8 T@U) ($Heap@@1 T@U) (|a#0@@4| T@U) (|s#0@@6| T@U) ) (!  (=> (or (|_module.__default.aval#canCall| (Lit DatatypeTypeType |a#0@@4|) |s#0@@6|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |a#0@@4| Tclass._module.aexp)) ($Is HandleTypeType |s#0@@6| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.N_q (Lit DatatypeTypeType |a#0@@4|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.aexp.V_q (Lit DatatypeTypeType |a#0@@4|)))))) (let ((|a1#3@@1| (Lit DatatypeTypeType (_module.aexp._h2 (Lit DatatypeTypeType |a#0@@4|)))))
(let ((|a0#3@@1| (Lit DatatypeTypeType (_module.aexp._h1 (Lit DatatypeTypeType |a#0@@4|)))))
 (and (|_module.__default.aval#canCall| |a0#3@@1| |s#0@@6|) (|_module.__default.aval#canCall| |a1#3@@1| |s#0@@6|)))))) (= (_module.__default.aval ($LS $ly@@8) (Lit DatatypeTypeType |a#0@@4|) |s#0@@6|) (ite (_module.aexp.N_q (Lit DatatypeTypeType |a#0@@4|)) (let ((|n#2| (LitInt (_module.aexp.n (Lit DatatypeTypeType |a#0@@4|)))))
|n#2|) (ite (_module.aexp.V_q (Lit DatatypeTypeType |a#0@@4|)) (U_2_int (let ((|x#2| (Lit SeqType (_module.aexp._h0 (Lit DatatypeTypeType |a#0@@4|)))))
($Unbox intType (Apply1 (TSeq TChar) TInt $Heap@@1 |s#0@@6| ($Box SeqType |x#2|))))) (let ((|a1#2@@1| (Lit DatatypeTypeType (_module.aexp._h2 (Lit DatatypeTypeType |a#0@@4|)))))
(let ((|a0#2@@1| (Lit DatatypeTypeType (_module.aexp._h1 (Lit DatatypeTypeType |a#0@@4|)))))
(+ (_module.__default.aval ($LS $ly@@8) |a0#2@@1| |s#0@@6|) (_module.__default.aval ($LS $ly@@8) |a1#2@@1| |s#0@@6|)))))))))
 :qid |NipkowKleinchapter3dfy.26:16|
 :weight 3
 :skolemid |598|
 :pattern ( (_module.__default.aval ($LS $ly@@8) (Lit DatatypeTypeType |a#0@@4|) |s#0@@6|) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|a0#0@@6| T@U) (|a1#0@@6| T@U) ) (!  (=> (or (|_module.__default.less#canCall| (Lit DatatypeTypeType |a0#0@@6|) (Lit DatatypeTypeType |a1#0@@6|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@6| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@6| Tclass._module.aexp)))) (= (_module.__default.less (Lit DatatypeTypeType |a0#0@@6|) (Lit DatatypeTypeType |a1#0@@6|)) (ite  (and (_module.aexp.N_q (Lit DatatypeTypeType |a0#0@@6|)) (_module.aexp.N_q (Lit DatatypeTypeType |a1#0@@6|))) (|#_module.bexp.Bc| (U_2_bool (Lit boolType (bool_2_U (< (_module.aexp.n (Lit DatatypeTypeType |a0#0@@6|)) (_module.aexp.n (Lit DatatypeTypeType |a1#0@@6|))))))) (|#_module.bexp.Less| (Lit DatatypeTypeType |a0#0@@6|) (Lit DatatypeTypeType |a1#0@@6|)))))
 :qid |NipkowKleinchapter3dfy.158:21|
 :weight 3
 :skolemid |655|
 :pattern ( (_module.__default.less (Lit DatatypeTypeType |a0#0@@6|) (Lit DatatypeTypeType |a1#0@@6|)))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@9 T@U) (|a#0@@5| T@U) ) (!  (=> (or (|_module.__default.asimp#canCall| |a#0@@5|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |a#0@@5| Tclass._module.aexp))) ($Is DatatypeTypeType (_module.__default.asimp $ly@@9 |a#0@@5|) Tclass._module.aexp))
 :qid |NipkowKleinchapter3dfy.103:16|
 :skolemid |620|
 :pattern ( (_module.__default.asimp $ly@@9 |a#0@@5|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@10 T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.__default.bsimp#canCall| |b#0@@4|) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@4| Tclass._module.bexp))) ($Is DatatypeTypeType (_module.__default.bsimp $ly@@10 |b#0@@4|) Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.166:16|
 :skolemid |658|
 :pattern ( (_module.__default.bsimp $ly@@10 |b#0@@4|))
))))
(assert (forall ((|a#36#0#0| Bool) ) (! (= (_module.bexp.v (|#_module.bexp.Bc| |a#36#0#0|)) |a#36#0#0|)
 :qid |NipkowKleinchapter3dfy.126:20|
 :skolemid |773|
 :pattern ( (|#_module.bexp.Bc| |a#36#0#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b#0@@5| T@U) ) (!  (=> (or (|_module.__default.not#canCall| |b#0@@5|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@5| Tclass._module.bexp))) ($Is DatatypeTypeType (_module.__default.not |b#0@@5|) Tclass._module.bexp))
 :qid |NipkowKleinchapter3dfy.139:20|
 :skolemid |644|
 :pattern ( (_module.__default.not |b#0@@5|))
))))
(assert (forall ((f@@2 T@U) (t0@@2 T@U) (t1@@2 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@2)) (Requires1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1) t1@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@2 t1@@2 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@2 t1@@2)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TBool) (and (= ($Box boolType ($Unbox boolType bx@@4)) bx@@4) ($Is boolType ($Unbox boolType bx@@4) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@4 TBool))
)))
(assert (= (Ctor charType) 6))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@5 TChar))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@11 T@U) (|b#0@@6| T@U) ) (!  (=> (or (|_module.__default.bsimp#canCall| |b#0@@6|) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@6| Tclass._module.bexp))) (and (=> (not (_module.bexp.Bc_q |b#0@@6|)) (and (=> (_module.bexp.Not_q |b#0@@6|) (let ((|b0#2@@0| (_module.bexp._h3 |b#0@@6|)))
 (and (|_module.__default.bsimp#canCall| |b0#2@@0|) (|_module.__default.not#canCall| (_module.__default.bsimp $ly@@11 |b0#2@@0|))))) (=> (not (_module.bexp.Not_q |b#0@@6|)) (and (=> (_module.bexp.And_q |b#0@@6|) (let ((|b1#1@@0| (_module.bexp._h5 |b#0@@6|)))
(let ((|b0#3@@0| (_module.bexp._h4 |b#0@@6|)))
 (and (and (|_module.__default.bsimp#canCall| |b0#3@@0|) (|_module.__default.bsimp#canCall| |b1#1@@0|)) (|_module.__default.and#canCall| (_module.__default.bsimp $ly@@11 |b0#3@@0|) (_module.__default.bsimp $ly@@11 |b1#1@@0|)))))) (=> (not (_module.bexp.And_q |b#0@@6|)) (let ((|a1#1@@2| (_module.bexp._h7 |b#0@@6|)))
(let ((|a0#1@@2| (_module.bexp._h6 |b#0@@6|)))
 (and (and (|_module.__default.asimp#canCall| |a0#1@@2|) (|_module.__default.asimp#canCall| |a1#1@@2|)) (|_module.__default.less#canCall| (_module.__default.asimp ($LS $LZ) |a0#1@@2|) (_module.__default.asimp ($LS $LZ) |a1#1@@2|)))))))))) (= (_module.__default.bsimp ($LS $ly@@11) |b#0@@6|) (ite (_module.bexp.Bc_q |b#0@@6|) |b#0@@6| (ite (_module.bexp.Not_q |b#0@@6|) (let ((|b0#0@@3| (_module.bexp._h3 |b#0@@6|)))
(_module.__default.not (_module.__default.bsimp $ly@@11 |b0#0@@3|))) (ite (_module.bexp.And_q |b#0@@6|) (let ((|b1#0@@2| (_module.bexp._h5 |b#0@@6|)))
(let ((|b0#1@@1| (_module.bexp._h4 |b#0@@6|)))
(_module.__default.and (_module.__default.bsimp $ly@@11 |b0#1@@1|) (_module.__default.bsimp $ly@@11 |b1#0@@2|)))) (let ((|a1#0@@7| (_module.bexp._h7 |b#0@@6|)))
(let ((|a0#0@@7| (_module.bexp._h6 |b#0@@6|)))
(_module.__default.less (_module.__default.asimp ($LS $LZ) |a0#0@@7|) (_module.__default.asimp ($LS $LZ) |a1#0@@7|))))))))))
 :qid |NipkowKleinchapter3dfy.166:16|
 :skolemid |660|
 :pattern ( (_module.__default.bsimp ($LS $ly@@11) |b#0@@6|))
))))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
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
(assert (forall ((v@@1 T@U) (t0@@3 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@3) h@@2) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0@@3 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@3) h@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b0#0@@4| T@U) (|b1#0@@3| T@U) ) (!  (=> (or (|_module.__default.and#canCall| |b0#0@@4| |b1#0@@3|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |b0#0@@4| Tclass._module.bexp) ($Is DatatypeTypeType |b1#0@@3| Tclass._module.bexp)))) (= (_module.__default.and |b0#0@@4| |b1#0@@3|) (ite (_module.bexp.Bc_q |b0#0@@4|) (ite (_module.bexp.v |b0#0@@4|) |b1#0@@3| |b0#0@@4|) (ite (_module.bexp.Bc_q |b1#0@@3|) (ite (_module.bexp.v |b1#0@@3|) |b0#0@@4| |b1#0@@3|) (|#_module.bexp.And| |b0#0@@4| |b1#0@@3|)))))
 :qid |NipkowKleinchapter3dfy.148:20|
 :skolemid |650|
 :pattern ( (_module.__default.and |b0#0@@4| |b1#0@@3|))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|b#0@@7| T@U) ) (!  (=> (or (|_module.__default.not#canCall| (Lit DatatypeTypeType |b#0@@7|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@7| Tclass._module.bexp))) (= (_module.__default.not (Lit DatatypeTypeType |b#0@@7|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@7|)) (let ((|b0#4@@0| (U_2_bool (Lit boolType (bool_2_U (_module.bexp.v (Lit DatatypeTypeType |b#0@@7|)))))))
(|#_module.bexp.Bc|  (not |b0#4@@0|))) (ite (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@7|)) (let ((|b0#5@@0| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@7|)))))
|b0#5@@0|) (ite (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@7|)) (|#_module.bexp.Not| (Lit DatatypeTypeType |b#0@@7|)) (|#_module.bexp.Not| (Lit DatatypeTypeType |b#0@@7|)))))))
 :qid |NipkowKleinchapter3dfy.139:20|
 :weight 3
 :skolemid |647|
 :pattern ( (_module.__default.not (Lit DatatypeTypeType |b#0@@7|)))
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
(assert (forall (($ly@@12 T@U) (|a#0@@6| T@U) ) (! (= (_module.__default.asimp ($LS $ly@@12) |a#0@@6|) (_module.__default.asimp $ly@@12 |a#0@@6|))
 :qid |NipkowKleinchapter3dfy.103:16|
 :skolemid |618|
 :pattern ( (_module.__default.asimp ($LS $ly@@12) |a#0@@6|))
)))
(assert (forall (($ly@@13 T@U) (|b#0@@8| T@U) ) (! (= (_module.__default.bsimp ($LS $ly@@13) |b#0@@8|) (_module.__default.bsimp $ly@@13 |b#0@@8|))
 :qid |NipkowKleinchapter3dfy.166:16|
 :skolemid |656|
 :pattern ( (_module.__default.bsimp ($LS $ly@@13) |b#0@@8|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
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
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 7) (forall ((t0@@4 T@T) (t1@@3 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@4 t1@@3 (MapType0Store t0@@4 t1@@3 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 8)) (= (Ctor BoxType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (t1@@4 T@U) (h@@3 T@U) ) (!  (=> ($IsGoodHeap h@@3) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4) h@@3) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@5) ($IsAllocBox bx0@@2 t0@@5 h@@3)) (Requires1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@5 t1@@4 h@@3 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@5 t1@@4) h@@3))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@7)) bx@@7) ($Is HandleTypeType ($Unbox HandleTypeType bx@@7) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@7 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
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
(assert  (and (forall ((t0@@6 T@T) (t1@@5 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@5 t2 (MapType1Store t0@@6 t1@@5 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |842|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((d@@13 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.aexp.N_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.aexp $h@@1))) ($IsAlloc intType (int_2_U (_module.aexp.n d@@13)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( ($IsAlloc intType (int_2_U (_module.aexp.n d@@13)) TInt $h@@1))
)))
(assert (forall ((d@@14 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.bexp.Bc_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.bexp $h@@2))) ($IsAlloc boolType (bool_2_U (_module.bexp.v d@@14)) TBool $h@@2))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.bexp.v d@@14)) TBool $h@@2))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 Tclass._module.aexp) (or (or (_module.aexp.N_q d@@15) (_module.aexp.V_q d@@15)) (_module.aexp.Plus_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (_module.aexp.Plus_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.aexp))
 :pattern ( (_module.aexp.V_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.aexp))
 :pattern ( (_module.aexp.N_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.aexp))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (|Set#Equal| (Reads1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) (Requires1 t0@@7 t1@@6 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@7 t1@@6 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@7 t1@@6 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((bx@@9 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@9 (TSeq t@@3)))
)))
(assert (forall ((d@@16 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@16 Tclass._module.aexp)) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.aexp $h@@3))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass._module.aexp $h@@3))
)))
(assert (forall ((d@@17 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@17 Tclass._module.bexp)) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.bexp $h@@4))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 Tclass._module.bexp $h@@4))
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
(assert (forall ((d@@18 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.aexp.V_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.aexp $h@@5))) ($IsAlloc SeqType (_module.aexp._h0 d@@18) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |742|
 :pattern ( ($IsAlloc SeqType (_module.aexp._h0 d@@18) (TSeq TChar) $h@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|a0#0@@8| T@U) (|a1#0@@8| T@U) ) (!  (=> (or (|_module.__default.plus#canCall| |a0#0@@8| |a1#0@@8|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |a0#0@@8| Tclass._module.aexp) ($Is DatatypeTypeType |a1#0@@8| Tclass._module.aexp)))) (= (_module.__default.plus |a0#0@@8| |a1#0@@8|) (ite  (and (_module.aexp.N_q |a0#0@@8|) (_module.aexp.N_q |a1#0@@8|)) (|#_module.aexp.N| (+ (_module.aexp.n |a0#0@@8|) (_module.aexp.n |a1#0@@8|))) (ite (_module.aexp.N_q |a0#0@@8|) (ite (= (_module.aexp.n |a0#0@@8|) (LitInt 0)) |a1#0@@8| (|#_module.aexp.Plus| |a0#0@@8| |a1#0@@8|)) (ite (_module.aexp.N_q |a1#0@@8|) (ite (= (_module.aexp.n |a1#0@@8|) (LitInt 0)) |a0#0@@8| (|#_module.aexp.Plus| |a0#0@@8| |a1#0@@8|)) (|#_module.aexp.Plus| |a0#0@@8| |a1#0@@8|))))))
 :qid |NipkowKleinchapter3dfy.85:21|
 :skolemid |615|
 :pattern ( (_module.__default.plus |a0#0@@8| |a1#0@@8|))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (|$IsA#_module.bexp| d@@19) (or (or (or (_module.bexp.Bc_q d@@19) (_module.bexp.Not_q d@@19)) (_module.bexp.And_q d@@19)) (_module.bexp.Less_q d@@19)))
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( (|$IsA#_module.bexp| d@@19))
)))
(assert (forall ((d@@20 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.aexp.Plus_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.aexp $h@@6))) ($IsAlloc DatatypeTypeType (_module.aexp._h1 d@@20) Tclass._module.aexp $h@@6))
 :qid |unknown.0:0|
 :skolemid |752|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.aexp._h1 d@@20) Tclass._module.aexp $h@@6))
)))
(assert (forall ((d@@21 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.aexp.Plus_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.aexp $h@@7))) ($IsAlloc DatatypeTypeType (_module.aexp._h2 d@@21) Tclass._module.aexp $h@@7))
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.aexp._h2 d@@21) Tclass._module.aexp $h@@7))
)))
(assert (forall ((d@@22 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.bexp.Not_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.bexp $h@@8))) ($IsAlloc DatatypeTypeType (_module.bexp._h3 d@@22) Tclass._module.bexp $h@@8))
 :qid |unknown.0:0|
 :skolemid |779|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h3 d@@22) Tclass._module.bexp $h@@8))
)))
(assert (forall ((d@@23 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.bexp.And_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass._module.bexp $h@@9))) ($IsAlloc DatatypeTypeType (_module.bexp._h4 d@@23) Tclass._module.bexp $h@@9))
 :qid |unknown.0:0|
 :skolemid |788|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h4 d@@23) Tclass._module.bexp $h@@9))
)))
(assert (forall ((d@@24 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.bexp.And_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass._module.bexp $h@@10))) ($IsAlloc DatatypeTypeType (_module.bexp._h5 d@@24) Tclass._module.bexp $h@@10))
 :qid |unknown.0:0|
 :skolemid |789|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h5 d@@24) Tclass._module.bexp $h@@10))
)))
(assert (forall ((d@@25 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.bexp.Less_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass._module.bexp $h@@11))) ($IsAlloc DatatypeTypeType (_module.bexp._h6 d@@25) Tclass._module.aexp $h@@11))
 :qid |unknown.0:0|
 :skolemid |800|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h6 d@@25) Tclass._module.aexp $h@@11))
)))
(assert (forall ((d@@26 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.bexp.Less_q d@@26) ($IsAlloc DatatypeTypeType d@@26 Tclass._module.bexp $h@@12))) ($IsAlloc DatatypeTypeType (_module.bexp._h7 d@@26) Tclass._module.aexp $h@@12))
 :qid |unknown.0:0|
 :skolemid |801|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.bexp._h7 d@@26) Tclass._module.aexp $h@@12))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@14 T@U) (|b#0@@9| T@U) ) (!  (=> (or (|_module.__default.bsimp#canCall| (Lit DatatypeTypeType |b#0@@9|)) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |b#0@@9| Tclass._module.bexp))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@9|))))) (let ((|b0#6| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@9|)))))
 (and (|_module.__default.bsimp#canCall| |b0#6|) (|_module.__default.not#canCall| (_module.__default.bsimp ($LS $ly@@14) |b0#6|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@9|))))) (let ((|b1#3@@0| (Lit DatatypeTypeType (_module.bexp._h5 (Lit DatatypeTypeType |b#0@@9|)))))
(let ((|b0#7| (Lit DatatypeTypeType (_module.bexp._h4 (Lit DatatypeTypeType |b#0@@9|)))))
 (and (and (|_module.__default.bsimp#canCall| |b0#7|) (|_module.__default.bsimp#canCall| |b1#3@@0|)) (|_module.__default.and#canCall| (_module.__default.bsimp ($LS $ly@@14) |b0#7|) (_module.__default.bsimp ($LS $ly@@14) |b1#3@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@9|)))))) (let ((|a1#3@@2| (Lit DatatypeTypeType (_module.bexp._h7 (Lit DatatypeTypeType |b#0@@9|)))))
(let ((|a0#3@@2| (Lit DatatypeTypeType (_module.bexp._h6 (Lit DatatypeTypeType |b#0@@9|)))))
 (and (and (|_module.__default.asimp#canCall| |a0#3@@2|) (|_module.__default.asimp#canCall| |a1#3@@2|)) (|_module.__default.less#canCall| (_module.__default.asimp ($LS $LZ) |a0#3@@2|) (_module.__default.asimp ($LS $LZ) |a1#3@@2|)))))))))) (= (_module.__default.bsimp ($LS $ly@@14) (Lit DatatypeTypeType |b#0@@9|)) (ite (_module.bexp.Bc_q (Lit DatatypeTypeType |b#0@@9|)) (Lit DatatypeTypeType |b#0@@9|) (ite (_module.bexp.Not_q (Lit DatatypeTypeType |b#0@@9|)) (let ((|b0#4@@1| (Lit DatatypeTypeType (_module.bexp._h3 (Lit DatatypeTypeType |b#0@@9|)))))
(Lit DatatypeTypeType (_module.__default.not (Lit DatatypeTypeType (_module.__default.bsimp ($LS $ly@@14) |b0#4@@1|))))) (ite (_module.bexp.And_q (Lit DatatypeTypeType |b#0@@9|)) (let ((|b1#2@@0| (Lit DatatypeTypeType (_module.bexp._h5 (Lit DatatypeTypeType |b#0@@9|)))))
(let ((|b0#5@@1| (Lit DatatypeTypeType (_module.bexp._h4 (Lit DatatypeTypeType |b#0@@9|)))))
(Lit DatatypeTypeType (_module.__default.and (Lit DatatypeTypeType (_module.__default.bsimp ($LS $ly@@14) |b0#5@@1|)) (Lit DatatypeTypeType (_module.__default.bsimp ($LS $ly@@14) |b1#2@@0|)))))) (let ((|a1#2@@2| (Lit DatatypeTypeType (_module.bexp._h7 (Lit DatatypeTypeType |b#0@@9|)))))
(let ((|a0#2@@2| (Lit DatatypeTypeType (_module.bexp._h6 (Lit DatatypeTypeType |b#0@@9|)))))
(Lit DatatypeTypeType (_module.__default.less (Lit DatatypeTypeType (_module.__default.asimp ($LS $LZ) |a0#2@@2|)) (Lit DatatypeTypeType (_module.__default.asimp ($LS $LZ) |a1#2@@2|))))))))))))
 :qid |NipkowKleinchapter3dfy.166:16|
 :weight 3
 :skolemid |661|
 :pattern ( (_module.__default.bsimp ($LS $ly@@14) (Lit DatatypeTypeType |b#0@@9|)))
))))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> ($Is DatatypeTypeType d@@27 Tclass._module.bexp) (or (or (or (_module.bexp.Bc_q d@@27) (_module.bexp.Not_q d@@27)) (_module.bexp.And_q d@@27)) (_module.bexp.Less_q d@@27)))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.bexp.Less_q d@@27) ($Is DatatypeTypeType d@@27 Tclass._module.bexp))
 :pattern ( (_module.bexp.And_q d@@27) ($Is DatatypeTypeType d@@27 Tclass._module.bexp))
 :pattern ( (_module.bexp.Not_q d@@27) ($Is DatatypeTypeType d@@27 Tclass._module.bexp))
 :pattern ( (_module.bexp.Bc_q d@@27) ($Is DatatypeTypeType d@@27 Tclass._module.bexp))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@6)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@6))
)))
(assert (forall ((v@@5 T@U) (t0@@8 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@8)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@8))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@8)))
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
(declare-fun |b#0@@10| () T@U)
(declare-fun |s#0@@7| () T@U)
(declare-fun |_mcc#4#0_0@0| () T@U)
(declare-fun |_mcc#5#0_0@0| () T@U)
(declare-fun |a1#0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |a0#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |_mcc#2#1_0@0| () T@U)
(declare-fun |_mcc#3#1_0@0| () T@U)
(declare-fun |b1#1_0@0| () T@U)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |b0#1_0@0| () T@U)
(declare-fun |let#1_1#0#0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |_mcc#1#2_0@0| () T@U)
(declare-fun |b0#2_0@0| () T@U)
(declare-fun |let#2_0#0#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |_mcc#0#3_0@0| () Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@2 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.BsimpCorrect)
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
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (= (_module.__default.bval ($LS ($LS $LZ)) (_module.__default.bsimp ($LS ($LS $LZ)) |b#0@@10|) |s#0@@7|) (_module.__default.bval ($LS ($LS $LZ)) |b#0@@10| |s#0@@7|)))))
(let ((anon9_Then_correct  (=> (= |b#0@@10| (|#_module.bexp.Less| |_mcc#4#0_0@0| |_mcc#5#0_0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#4#0_0@0| Tclass._module.aexp) ($Is DatatypeTypeType |_mcc#5#0_0@0| Tclass._module.aexp)) (=> (and (and (and ($Is DatatypeTypeType |a1#0_0@0| Tclass._module.aexp) ($IsAlloc DatatypeTypeType |a1#0_0@0| Tclass._module.aexp $Heap@0)) (= |let#0_0#0#0| |_mcc#5#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.aexp) (= |a1#0_0@0| |let#0_0#0#0|))) (=> (and (and (and (and (and ($Is DatatypeTypeType |a0#0_0@0| Tclass._module.aexp) ($IsAlloc DatatypeTypeType |a0#0_0@0| Tclass._module.aexp $Heap@0)) (= |let#0_1#0#0| |_mcc#4#0_0@0|)) (and (and ($Is DatatypeTypeType |let#0_1#0#0| Tclass._module.aexp) (= |a0#0_0@0| |let#0_1#0#0|)) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)))) (and (and (and (|_module.__default.asimp#canCall| |a0#0_0@0|) (|_module.__default.aval#canCall| (_module.__default.asimp ($LS $LZ) |a0#0_0@0|) |s#0@@7|)) (|_module.__default.aval#canCall| |a0#0_0@0| |s#0@@7|)) (and (and (= (_module.__default.aval ($LS ($LS $LZ)) (_module.__default.asimp ($LS ($LS $LZ)) |a0#0_0@0|) |s#0@@7|) (_module.__default.aval ($LS ($LS $LZ)) |a0#0_0@0| |s#0@@7|)) (= $Heap@0 $Heap@4)) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))))) (and (and (and (and (|_module.__default.asimp#canCall| |a1#0_0@0|) (|_module.__default.aval#canCall| (_module.__default.asimp ($LS $LZ) |a1#0_0@0|) |s#0@@7|)) (|_module.__default.aval#canCall| |a1#0_0@0| |s#0@@7|)) (= (_module.__default.aval ($LS ($LS $LZ)) (_module.__default.asimp ($LS ($LS $LZ)) |a1#0_0@0|) |s#0@@7|) (_module.__default.aval ($LS ($LS $LZ)) |a1#0_0@0| |s#0@@7|))) (and (= $Heap@4 $Heap@5) (= (ControlFlow 0 10) 3)))) GeneratedUnifiedExit_correct))))))
(let ((anon8_Then_correct  (=> (= |b#0@@10| (|#_module.bexp.And| |_mcc#2#1_0@0| |_mcc#3#1_0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#2#1_0@0| Tclass._module.bexp) ($Is DatatypeTypeType |_mcc#3#1_0@0| Tclass._module.bexp)) (=> (and (and (and (and ($Is DatatypeTypeType |b1#1_0@0| Tclass._module.bexp) ($IsAlloc DatatypeTypeType |b1#1_0@0| Tclass._module.bexp $Heap@0)) (= |let#1_0#0#0| |_mcc#3#1_0@0|)) (and ($Is DatatypeTypeType |let#1_0#0#0| Tclass._module.bexp) (= |b1#1_0@0| |let#1_0#0#0|))) (and (and (and ($Is DatatypeTypeType |b0#1_0@0| Tclass._module.bexp) ($IsAlloc DatatypeTypeType |b0#1_0@0| Tclass._module.bexp $Heap@0)) (= |let#1_1#0#0| |_mcc#2#1_0@0|)) (and ($Is DatatypeTypeType |let#1_1#0#0| Tclass._module.bexp) (= |b0#1_0@0| |let#1_1#0#0|)))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (< (DtRank |b0#1_0@0|) (DtRank |b#0@@10|))) (=> (< (DtRank |b0#1_0@0|) (DtRank |b#0@@10|)) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (|_module.__default.bsimp#canCall| |b0#1_0@0|) (|_module.__default.bval#canCall| (_module.__default.bsimp ($LS $LZ) |b0#1_0@0|) |s#0@@7|)) (|_module.__default.bval#canCall| |b0#1_0@0| |s#0@@7|)) (and (= (_module.__default.bval ($LS ($LS $LZ)) (_module.__default.bsimp ($LS ($LS $LZ)) |b0#1_0@0|) |s#0@@7|) (_module.__default.bval ($LS ($LS $LZ)) |b0#1_0@0| |s#0@@7|)) (= $Heap@0 $Heap@2))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (< (DtRank |b1#1_0@0|) (DtRank |b#0@@10|))) (=> (< (DtRank |b1#1_0@0|) (DtRank |b#0@@10|)) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (and (|_module.__default.bsimp#canCall| |b1#1_0@0|) (|_module.__default.bval#canCall| (_module.__default.bsimp ($LS $LZ) |b1#1_0@0|) |s#0@@7|)) (|_module.__default.bval#canCall| |b1#1_0@0| |s#0@@7|)) (= (_module.__default.bval ($LS ($LS $LZ)) (_module.__default.bsimp ($LS ($LS $LZ)) |b1#1_0@0|) |s#0@@7|) (_module.__default.bval ($LS ($LS $LZ)) |b1#1_0@0| |s#0@@7|))) (and (= $Heap@2 $Heap@3) (= (ControlFlow 0 7) 3))) GeneratedUnifiedExit_correct)))))))))))))
(let ((anon7_Then_correct  (=> (and (= |b#0@@10| (|#_module.bexp.Not| |_mcc#1#2_0@0|)) ($Is DatatypeTypeType |_mcc#1#2_0@0| Tclass._module.bexp)) (=> (and (and (and ($Is DatatypeTypeType |b0#2_0@0| Tclass._module.bexp) ($IsAlloc DatatypeTypeType |b0#2_0@0| Tclass._module.bexp $Heap@0)) (= |let#2_0#0#0| |_mcc#1#2_0@0|)) (and ($Is DatatypeTypeType |let#2_0#0#0| Tclass._module.bexp) (= |b0#2_0@0| |let#2_0#0#0|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< (DtRank |b0#2_0@0|) (DtRank |b#0@@10|))) (=> (< (DtRank |b0#2_0@0|) (DtRank |b#0@@10|)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (and (|_module.__default.bsimp#canCall| |b0#2_0@0|) (|_module.__default.bval#canCall| (_module.__default.bsimp ($LS $LZ) |b0#2_0@0|) |s#0@@7|)) (|_module.__default.bval#canCall| |b0#2_0@0| |s#0@@7|)) (= (_module.__default.bval ($LS ($LS $LZ)) (_module.__default.bsimp ($LS ($LS $LZ)) |b0#2_0@0|) |s#0@@7|) (_module.__default.bval ($LS ($LS $LZ)) |b0#2_0@0| |s#0@@7|))) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 5) 3))) GeneratedUnifiedExit_correct))))))))
(let ((anon6_Then_correct  (=> (and (= |b#0@@10| (|#_module.bexp.Bc| |_mcc#0#3_0@0|)) (= (ControlFlow 0 4) 3)) GeneratedUnifiedExit_correct)))
(let ((anon9_Else_correct true))
(let ((anon8_Else_correct  (=> (or (not (= |b#0@@10| (|#_module.bexp.And| |_mcc#2#1_0@0| |_mcc#3#1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 11) 10) anon9_Then_correct) (=> (= (ControlFlow 0 11) 1) anon9_Else_correct)))))
(let ((anon7_Else_correct  (=> (or (not (= |b#0@@10| (|#_module.bexp.Not| |_mcc#1#2_0@0|))) (not true)) (and (=> (= (ControlFlow 0 12) 7) anon8_Then_correct) (=> (= (ControlFlow 0 12) 11) anon8_Else_correct)))))
(let ((anon6_Else_correct  (=> (or (not (= |b#0@@10| (|#_module.bexp.Bc| |_mcc#0#3_0@0|))) (not true)) (and (=> (= (ControlFlow 0 13) 5) anon7_Then_correct) (=> (= (ControlFlow 0 13) 12) anon7_Else_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (|$IsA#_module.bexp| |b#0@@10|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@2 $Heap@0) (forall ((|$ih#b0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#b0#0| Tclass._module.bexp) (U_2_bool (Lit boolType (bool_2_U true)))) (< (DtRank |$ih#b0#0|) (DtRank |b#0@@10|))) (= (_module.__default.bval ($LS $LZ) (_module.__default.bsimp ($LS $LZ) |$ih#b0#0|) |s#0@@7|) (_module.__default.bval ($LS $LZ) |$ih#b0#0| |s#0@@7|)))
 :qid |NipkowKleinchapter3dfy.175:20|
 :skolemid |670|
 :pattern ( (_module.__default.bsimp ($LS $LZ) |$ih#b0#0|))
)))) (and (=> (= (ControlFlow 0 14) 4) anon6_Then_correct) (=> (= (ControlFlow 0 14) 13) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and ($Is DatatypeTypeType |b#0@@10| Tclass._module.bexp) ($IsAlloc DatatypeTypeType |b#0@@10| Tclass._module.bexp $Heap@@2)) (|$IsA#_module.bexp| |b#0@@10|)) (and (and ($Is HandleTypeType |s#0@@7| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt)) ($IsAlloc HandleTypeType |s#0@@7| (Tclass._System.___hTotalFunc1 (TSeq TChar) TInt) $Heap@@2)) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 15) 14)))) anon0_correct))))
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
