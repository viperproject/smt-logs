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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.NatOutcome () T@U)
(declare-fun |##_module.NatOutcome.NatSuccess| () T@U)
(declare-fun |##_module.NatOutcome.NatFailure| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$NatOutcome () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.NatOutcome.NatFailure| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun _module.NatOutcome.Extract (T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.NatOutcome.Extract#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.NatOutcome () T@U)
(declare-fun _module.NatOutcome.IsFailure (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.NatOutcome.value (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.SafeDivide (Int Int) T@U)
(declare-fun |_module.__default.SafeDivide#canCall| (Int Int) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.NatOutcome.IsFailure#canCall| (T@U) Bool)
(declare-fun _module.NatOutcome.NatFailure_q (T@U) Bool)
(declare-fun _module.NatOutcome.NatSuccess_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.NatOutcome.NatSuccess| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun Div (Int Int) Int)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun _module.NatOutcome.error (T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass._System.nat Tagclass._module.NatOutcome |##_module.NatOutcome.NatSuccess| |##_module.NatOutcome.NatFailure| tytagFamily$nat tytagFamily$NatOutcome)
)
(assert (= (Tag TChar) TagChar))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#10#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i))) (DtRank (|#_module.NatOutcome.NatFailure| |a#10#0#0|))))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |794|
 :pattern ( (|Seq#Index| |a#10#0#0| i) (|#_module.NatOutcome.NatFailure| |a#10#0#0|))
)))
(assert (forall ((this T@U) ) (!  (=> (or (|_module.NatOutcome.Extract#canCall| (Lit DatatypeTypeType this)) (and ($Is DatatypeTypeType this Tclass._module.NatOutcome) (not (U_2_bool (Lit boolType (bool_2_U (_module.NatOutcome.IsFailure (Lit DatatypeTypeType this)))))))) (= (_module.NatOutcome.Extract (Lit DatatypeTypeType this)) (LitInt (_module.NatOutcome.value (Lit DatatypeTypeType this)))))
 :qid |NatOutcomeDtdfy.15:14|
 :weight 3
 :skolemid |813|
 :pattern ( (_module.NatOutcome.Extract (Lit DatatypeTypeType this)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0| Int) (|b#0| Int) ) (!  (=> (or (|_module.__default.SafeDivide#canCall| |a#0| |b#0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |a#0|) (<= (LitInt 0) |b#0|)))) ($Is DatatypeTypeType (_module.__default.SafeDivide |a#0| |b#0|) Tclass._module.NatOutcome))
 :qid |TestAttributedfy.19:21|
 :skolemid |582|
 :pattern ( (_module.__default.SafeDivide |a#0| |b#0|))
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
(assert (= (Ctor SeqType) 4))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((this@@0 T@U) ) (!  (=> (or (|_module.NatOutcome.IsFailure#canCall| (Lit DatatypeTypeType this@@0)) ($Is DatatypeTypeType this@@0 Tclass._module.NatOutcome)) (= (_module.NatOutcome.IsFailure (Lit DatatypeTypeType this@@0)) (U_2_bool (Lit boolType (bool_2_U (_module.NatOutcome.NatFailure_q (Lit DatatypeTypeType this@@0)))))))
 :qid |NatOutcomeDtdfy.9:15|
 :weight 3
 :skolemid |805|
 :pattern ( (_module.NatOutcome.IsFailure (Lit DatatypeTypeType this@@0)))
)))
(assert (forall ((d T@U) ) (! (= (_module.NatOutcome.NatSuccess_q d) (= (DatatypeCtorId d) |##_module.NatOutcome.NatSuccess|))
 :qid |unknown.0:0|
 :skolemid |779|
 :pattern ( (_module.NatOutcome.NatSuccess_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.NatOutcome.NatFailure_q d@@0) (= (DatatypeCtorId d@@0) |##_module.NatOutcome.NatFailure|))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( (_module.NatOutcome.NatFailure_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.NatOutcome.NatSuccess_q d@@1) (exists ((|a#1#0#0| Int) ) (! (= d@@1 (|#_module.NatOutcome.NatSuccess| |a#1#0#0|))
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |780|
)))
 :qid |unknown.0:0|
 :skolemid |781|
 :pattern ( (_module.NatOutcome.NatSuccess_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.NatOutcome.NatFailure_q d@@2) (exists ((|a#6#0#0| T@U) ) (! (= d@@2 (|#_module.NatOutcome.NatFailure| |a#6#0#0|))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |788|
)))
 :qid |unknown.0:0|
 :skolemid |789|
 :pattern ( (_module.NatOutcome.NatFailure_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert (= (Ctor charType) 5))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@0| Int) (|b#0@@0| Int) ) (!  (=> (or (|_module.__default.SafeDivide#canCall| |a#0@@0| |b#0@@0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |a#0@@0|) (<= (LitInt 0) |b#0@@0|)))) (= (_module.__default.SafeDivide |a#0@@0| |b#0@@0|) (ite (= |b#0@@0| (LitInt 0)) (|#_module.NatOutcome.NatFailure| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 68))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 122))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))))) (|#_module.NatOutcome.NatSuccess| (Div |a#0@@0| |b#0@@0|)))))
 :qid |TestAttributedfy.19:21|
 :skolemid |584|
 :pattern ( (_module.__default.SafeDivide |a#0@@0| |b#0@@0|))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.NatOutcome) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.NatOutcome)))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($IsBox bx@@1 Tclass._module.NatOutcome))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.NatOutcome.NatSuccess| |a#2#0#0|) Tclass._module.NatOutcome) ($Is intType (int_2_U |a#2#0#0|) Tclass._System.nat))
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |782|
 :pattern ( ($Is DatatypeTypeType (|#_module.NatOutcome.NatSuccess| |a#2#0#0|) Tclass._module.NatOutcome))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@1 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0) v@@1)) (=> (or (not (= i@@0 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0) (|Seq#Index| s@@1 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.NatOutcome) (or (_module.NatOutcome.NatSuccess_q d@@3) (_module.NatOutcome.NatFailure_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |798|
 :pattern ( (_module.NatOutcome.NatFailure_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.NatOutcome))
 :pattern ( (_module.NatOutcome.NatSuccess_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.NatOutcome))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|a#0@@1| Int) (|b#0@@1| Int) ) (!  (=> (or (|_module.__default.SafeDivide#canCall| (LitInt |a#0@@1|) (LitInt |b#0@@1|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |a#0@@1|) (<= (LitInt 0) |b#0@@1|)))) (= (_module.__default.SafeDivide (LitInt |a#0@@1|) (LitInt |b#0@@1|)) (ite (= (LitInt |b#0@@1|) (LitInt 0)) (|#_module.NatOutcome.NatFailure| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 68))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 122))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))))) (|#_module.NatOutcome.NatSuccess| (LitInt (Div |a#0@@1| (LitInt |b#0@@1|)))))))
 :qid |TestAttributedfy.19:21|
 :weight 3
 :skolemid |585|
 :pattern ( (_module.__default.SafeDivide (LitInt |a#0@@1|) (LitInt |b#0@@1|)))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TChar) (and (= ($Box charType ($Unbox charType bx@@2)) bx@@2) ($Is charType ($Unbox charType bx@@2) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@2 TChar))
)))
(assert (forall ((this@@1 T@U) ) (!  (=> (or (|_module.NatOutcome.Extract#canCall| this@@1) (and ($Is DatatypeTypeType this@@1 Tclass._module.NatOutcome) (not (_module.NatOutcome.IsFailure this@@1)))) (= (_module.NatOutcome.Extract this@@1) (_module.NatOutcome.value this@@1)))
 :qid |NatOutcomeDtdfy.15:14|
 :skolemid |812|
 :pattern ( (_module.NatOutcome.Extract this@@1))
)))
(assert (forall ((this@@2 T@U) ) (!  (=> (or (|_module.NatOutcome.Extract#canCall| this@@2) (and ($Is DatatypeTypeType this@@2 Tclass._module.NatOutcome) (not (_module.NatOutcome.IsFailure this@@2)))) (<= (LitInt 0) (_module.NatOutcome.Extract this@@2)))
 :qid |NatOutcomeDtdfy.15:14|
 :skolemid |810|
 :pattern ( (_module.NatOutcome.Extract this@@2))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@1) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.NatOutcome.NatSuccess| |a#0#0#0|)) |##_module.NatOutcome.NatSuccess|)
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |778|
 :pattern ( (|#_module.NatOutcome.NatSuccess| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.NatOutcome.value (|#_module.NatOutcome.NatSuccess| |a#4#0#0|)) |a#4#0#0|)
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |785|
 :pattern ( (|#_module.NatOutcome.NatSuccess| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.NatOutcome.NatFailure| |a#5#0#0|)) |##_module.NatOutcome.NatFailure|)
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |786|
 :pattern ( (|#_module.NatOutcome.NatFailure| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (_module.NatOutcome.error (|#_module.NatOutcome.NatFailure| |a#9#0#0|)) |a#9#0#0|)
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |793|
 :pattern ( (|#_module.NatOutcome.NatFailure| |a#9#0#0|))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (|Seq#Rank| |a#11#0#0|) (DtRank (|#_module.NatOutcome.NatFailure| |a#11#0#0|)))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |795|
 :pattern ( (|#_module.NatOutcome.NatFailure| |a#11#0#0|))
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
 :skolemid |840|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@3 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@3 (TSeq t@@4)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@4 Tclass._module.NatOutcome)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.NatOutcome $h@@0))
 :qid |unknown.0:0|
 :skolemid |796|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.NatOutcome $h@@0))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.NatOutcome) Tagclass._module.NatOutcome))
(assert (= (TagFamily Tclass._module.NatOutcome) tytagFamily$NatOutcome))
(assert (forall ((|a#7#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.NatOutcome.NatFailure| |a#7#0#0|) Tclass._module.NatOutcome) ($Is SeqType |a#7#0#0| (TSeq TChar)))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |790|
 :pattern ( ($Is DatatypeTypeType (|#_module.NatOutcome.NatFailure| |a#7#0#0|) Tclass._module.NatOutcome))
)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.NatOutcome.NatFailure_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.NatOutcome $h@@1))) ($IsAlloc SeqType (_module.NatOutcome.error d@@5) (TSeq TChar) $h@@1))
 :qid |unknown.0:0|
 :skolemid |791|
 :pattern ( ($IsAlloc SeqType (_module.NatOutcome.error d@@5) (TSeq TChar) $h@@1))
)))
(assert (forall ((d@@6 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.NatOutcome.NatSuccess_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.NatOutcome $h@@2))) ($IsAlloc intType (int_2_U (_module.NatOutcome.value d@@6)) Tclass._System.nat $h@@2))
 :qid |unknown.0:0|
 :skolemid |783|
 :pattern ( ($IsAlloc intType (int_2_U (_module.NatOutcome.value d@@6)) Tclass._System.nat $h@@2))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#3#0#0| Int) ) (! (= (|#_module.NatOutcome.NatSuccess| (LitInt |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.NatOutcome.NatSuccess| |a#3#0#0|)))
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |784|
 :pattern ( (|#_module.NatOutcome.NatSuccess| (LitInt |a#3#0#0|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#_module.NatOutcome.NatFailure| (Lit SeqType |a#8#0#0|)) (Lit DatatypeTypeType (|#_module.NatOutcome.NatFailure| |a#8#0#0|)))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |792|
 :pattern ( (|#_module.NatOutcome.NatFailure| (Lit SeqType |a#8#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((this@@3 T@U) ) (!  (=> (or (|_module.NatOutcome.IsFailure#canCall| this@@3) ($Is DatatypeTypeType this@@3 Tclass._module.NatOutcome)) (= (_module.NatOutcome.IsFailure this@@3) (_module.NatOutcome.NatFailure_q this@@3)))
 :qid |NatOutcomeDtdfy.9:15|
 :skolemid |804|
 :pattern ( (_module.NatOutcome.IsFailure this@@3))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@1)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@1))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |valueOrError0#0@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |q#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun |valueOrError0#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |q#0| () Int)
(declare-fun |valueOrError0#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.PassingTestUsingAssignOrHalt)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon5_Else_correct true))
(let ((anon5_Then_correct true))
(let ((anon4_Else_correct  (=> (and (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|)) ($IsAllocBox ($Box DatatypeTypeType |valueOrError0#0@1|) Tclass._module.NatOutcome $Heap)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|))) (=> (and (and (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|)) (|_module.NatOutcome.Extract#canCall| |valueOrError0#0@1|)) (and (|_module.NatOutcome.Extract#canCall| |valueOrError0#0@1|) (= |q#0@0| (_module.NatOutcome.Extract |valueOrError0#0@1|)))) (and (=> (= (ControlFlow 0 4) 2) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))))
(let ((anon4_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |x#0@0| (LitInt 5)) (= |y#0@0| (LitInt 2))) (and ($Is DatatypeTypeType |valueOrError0#0@0| Tclass._module.NatOutcome) ($IsAlloc DatatypeTypeType |valueOrError0#0@0| Tclass._module.NatOutcome $Heap))) (and (=> (= (ControlFlow 0 6) (- 0 8)) ($Is intType (int_2_U |x#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |x#0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |x#0@0|) Tclass._System.nat $Heap) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($Is intType (int_2_U |y#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |y#0@0|) Tclass._System.nat) (=> ($IsAlloc intType (int_2_U |y#0@0|) Tclass._System.nat $Heap) (=> (and (|_module.__default.SafeDivide#canCall| |x#0@0| |y#0@0|) (|_module.__default.SafeDivide#canCall| |x#0@0| |y#0@0|)) (=> (and (and (= |valueOrError0#0@1| (_module.__default.SafeDivide |x#0@0| |y#0@0|)) ($IsAllocBox ($Box DatatypeTypeType |valueOrError0#0@1|) Tclass._module.NatOutcome $Heap)) (and (|_module.NatOutcome.IsFailure#canCall| |valueOrError0#0@1|) (|_module.NatOutcome.IsFailure#canCall| |valueOrError0#0@1|))) (and (=> (= (ControlFlow 0 6) 1) anon4_Then_correct) (=> (= (ControlFlow 0 6) 4) anon4_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (<= (LitInt 0) |q#0|) true)) (=> (and (and (and ($Is DatatypeTypeType |valueOrError0#0| Tclass._module.NatOutcome) ($IsAlloc DatatypeTypeType |valueOrError0#0| Tclass._module.NatOutcome $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 6))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
