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
(declare-fun Tagclass._module.Outcome () T@U)
(declare-fun |##_module.Outcome.Success| () T@U)
(declare-fun |##_module.Outcome.Failure| () T@U)
(declare-fun |##_module.NatOutcome.NatSuccess| () T@U)
(declare-fun |##_module.NatOutcome.NatFailure| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$NatOutcome () T@U)
(declare-fun tytagFamily$Outcome () T@U)
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
(declare-fun |#_module.Outcome.Failure| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.NatOutcome.NatFailure| (T@U) T@U)
(declare-fun _module.NatOutcome.Extract (T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.NatOutcome.Extract#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.NatOutcome () T@U)
(declare-fun _module.NatOutcome.IsFailure (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.NatOutcome.value (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.NatOutcome.IsFailure#canCall| (T@U) Bool)
(declare-fun _module.NatOutcome.NatFailure_q (T@U) Bool)
(declare-fun _module.Outcome.Extract (T@U T@U) T@U)
(declare-fun |_module.Outcome.Extract#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Outcome (T@U) T@U)
(declare-fun _module.Outcome.IsFailure (T@U T@U) Bool)
(declare-fun |_module.Outcome.IsFailure#canCall| (T@U T@U) Bool)
(declare-fun _module.Outcome.Failure_q (T@U) Bool)
(declare-fun _module.Outcome.Success_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.NatOutcome.NatSuccess_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Outcome.Success| (T@U) T@U)
(declare-fun |#_module.NatOutcome.NatSuccess| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun _module.Outcome.value (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.Outcome.error (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Outcome_0 (T@U) T@U)
(declare-fun _module.NatOutcome.error (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass._System.nat Tagclass._module.NatOutcome Tagclass._module.Outcome |##_module.Outcome.Success| |##_module.Outcome.Failure| |##_module.NatOutcome.NatSuccess| |##_module.NatOutcome.NatFailure| tytagFamily$nat tytagFamily$NatOutcome tytagFamily$Outcome)
)
(assert (= (Tag TChar) TagChar))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#11#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#0#0| i))) (DtRank (|#_module.Outcome.Failure| |a#11#0#0|))))
 :qid |GenericOutcomeDtdfy.7:11|
 :skolemid |510|
 :pattern ( (|Seq#Index| |a#11#0#0| i) (|#_module.Outcome.Failure| |a#11#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i@@0))) (DtRank (|#_module.NatOutcome.NatFailure| |a#10#0#0|))))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |547|
 :pattern ( (|Seq#Index| |a#10#0#0| i@@0) (|#_module.NatOutcome.NatFailure| |a#10#0#0|))
)))
(assert (forall ((this T@U) ) (!  (=> (or (|_module.NatOutcome.Extract#canCall| (Lit DatatypeTypeType this)) (and ($Is DatatypeTypeType this Tclass._module.NatOutcome) (not (U_2_bool (Lit boolType (bool_2_U (_module.NatOutcome.IsFailure (Lit DatatypeTypeType this)))))))) (= (_module.NatOutcome.Extract (Lit DatatypeTypeType this)) (LitInt (_module.NatOutcome.value (Lit DatatypeTypeType this)))))
 :qid |NatOutcomeDtdfy.15:14|
 :weight 3
 :skolemid |566|
 :pattern ( (_module.NatOutcome.Extract (Lit DatatypeTypeType this)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
 :skolemid |558|
 :pattern ( (_module.NatOutcome.IsFailure (Lit DatatypeTypeType this@@0)))
)))
(assert (forall ((_module.Outcome$T T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Outcome.Extract#canCall| _module.Outcome$T this@@1) (and ($Is DatatypeTypeType this@@1 (Tclass._module.Outcome _module.Outcome$T)) (not (_module.Outcome.IsFailure _module.Outcome$T this@@1)))) ($IsBox (_module.Outcome.Extract _module.Outcome$T this@@1) _module.Outcome$T))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Outcome.Extract _module.Outcome$T this@@1))
)))
(assert (forall ((_module.Outcome$T@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Outcome.IsFailure#canCall| _module.Outcome$T@@0 this@@2) ($Is DatatypeTypeType this@@2 (Tclass._module.Outcome _module.Outcome$T@@0))) (= (_module.Outcome.IsFailure _module.Outcome$T@@0 this@@2) (_module.Outcome.Failure_q this@@2)))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( (_module.Outcome.IsFailure _module.Outcome$T@@0 this@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Outcome.Success_q d) (= (DatatypeCtorId d) |##_module.Outcome.Success|))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_module.Outcome.Success_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Outcome.Failure_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Outcome.Failure|))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (_module.Outcome.Failure_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.NatOutcome.NatSuccess_q d@@1) (= (DatatypeCtorId d@@1) |##_module.NatOutcome.NatSuccess|))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.NatOutcome.NatSuccess_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.NatOutcome.NatFailure_q d@@2) (= (DatatypeCtorId d@@2) |##_module.NatOutcome.NatFailure|))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.NatOutcome.NatFailure_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Outcome.Success_q d@@3) (exists ((|a#1#0#0| T@U) ) (! (= d@@3 (|#_module.Outcome.Success| |a#1#0#0|))
 :qid |GenericOutcomeDtdfy.6:11|
 :skolemid |492|
)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (_module.Outcome.Success_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Outcome.Failure_q d@@4) (exists ((|a#7#0#0| T@U) ) (! (= d@@4 (|#_module.Outcome.Failure| |a#7#0#0|))
 :qid |GenericOutcomeDtdfy.7:11|
 :skolemid |502|
)))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (_module.Outcome.Failure_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.NatOutcome.NatSuccess_q d@@5) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@5 (|#_module.NatOutcome.NatSuccess| |a#1#0#0@@0|))
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |533|
)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (_module.NatOutcome.NatSuccess_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.NatOutcome.NatFailure_q d@@6) (exists ((|a#6#0#0| T@U) ) (! (= d@@6 (|#_module.NatOutcome.NatFailure| |a#6#0#0|))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |541|
)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (_module.NatOutcome.NatFailure_q d@@6))
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
(assert (= (Ctor BoxType) 5))
(assert (forall ((_module.Outcome$T@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Outcome.Extract#canCall| _module.Outcome$T@@1 (Lit DatatypeTypeType this@@3)) (and ($Is DatatypeTypeType this@@3 (Tclass._module.Outcome _module.Outcome$T@@1)) (not (U_2_bool (Lit boolType (bool_2_U (_module.Outcome.IsFailure _module.Outcome$T@@1 (Lit DatatypeTypeType this@@3)))))))) (= (_module.Outcome.Extract _module.Outcome$T@@1 (Lit DatatypeTypeType this@@3)) (Lit BoxType (_module.Outcome.value (Lit DatatypeTypeType this@@3)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |530|
 :pattern ( (_module.Outcome.Extract _module.Outcome$T@@1 (Lit DatatypeTypeType this@@3)))
)))
(assert (forall ((_module.Outcome$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Outcome _module.Outcome$T@@2)) Tagclass._module.Outcome) (= (TagFamily (Tclass._module.Outcome _module.Outcome$T@@2)) tytagFamily$Outcome))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.Outcome _module.Outcome$T@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.NatOutcome) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.NatOutcome)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@1 Tclass._module.NatOutcome))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.NatOutcome.NatSuccess| |a#2#0#0|) Tclass._module.NatOutcome) ($Is intType (int_2_U |a#2#0#0|) Tclass._System.nat))
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |535|
 :pattern ( ($Is DatatypeTypeType (|#_module.NatOutcome.NatSuccess| |a#2#0#0|) Tclass._module.NatOutcome))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) (v@@1 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@1) v@@1)) (=> (or (not (= i@@1 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@1) (|Seq#Index| s@@1 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@1))
)))
(assert (forall ((_module.Outcome$T@@3 T@U) (|a#2#0#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Outcome.Success| |a#2#0#0@@0|) (Tclass._module.Outcome _module.Outcome$T@@3) $h@@0) ($IsAllocBox |a#2#0#0@@0| _module.Outcome$T@@3 $h@@0)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Outcome.Success| |a#2#0#0@@0|) (Tclass._module.Outcome _module.Outcome$T@@3) $h@@0))
)))
(assert (forall (($Heap T@U) (_module.Outcome$T@@4 T@U) (this@@4 T@U) ) (!  (=> (and (or (|_module.Outcome.Extract#canCall| _module.Outcome$T@@4 this@@4) (and ($IsAlloc DatatypeTypeType this@@4 (Tclass._module.Outcome _module.Outcome$T@@4) $Heap) (not (_module.Outcome.IsFailure _module.Outcome$T@@4 this@@4)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.Outcome.Extract _module.Outcome$T@@4 this@@4) _module.Outcome$T@@4 $Heap))
 :qid |GenericOutcomeDtdfy.15:14|
 :skolemid |527|
 :pattern ( ($IsAllocBox (_module.Outcome.Extract _module.Outcome$T@@4 this@@4) _module.Outcome$T@@4 $Heap))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Outcome.Failure_q d@@7) (exists ((_module.Outcome$T@@5 T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Outcome _module.Outcome$T@@5) $h@@1)
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.Outcome _module.Outcome$T@@5) $h@@1))
)))) ($IsAlloc SeqType (_module.Outcome.error d@@7) (TSeq TChar) $h@@1))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc SeqType (_module.Outcome.error d@@7) (TSeq TChar) $h@@1))
)))
(assert (forall ((_module.Outcome$T@@6 T@U) (|a#8#0#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_module.Outcome.Failure| |a#8#0#0|) (Tclass._module.Outcome _module.Outcome$T@@6) $h@@2) ($IsAlloc SeqType |a#8#0#0| (TSeq TChar) $h@@2)))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Outcome.Failure| |a#8#0#0|) (Tclass._module.Outcome _module.Outcome$T@@6) $h@@2))
)))
(assert (forall ((_module.Outcome$T@@7 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass._module.Outcome _module.Outcome$T@@7)) (or (_module.Outcome.Success_q d@@8) (_module.Outcome.Failure_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (_module.Outcome.Failure_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.Outcome _module.Outcome$T@@7)))
 :pattern ( (_module.Outcome.Success_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._module.Outcome _module.Outcome$T@@7)))
)))
(assert (forall ((_module.Outcome$T@@8 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Outcome.IsFailure#canCall| _module.Outcome$T@@8 (Lit DatatypeTypeType this@@5)) ($Is DatatypeTypeType this@@5 (Tclass._module.Outcome _module.Outcome$T@@8))) (= (_module.Outcome.IsFailure _module.Outcome$T@@8 (Lit DatatypeTypeType this@@5)) (U_2_bool (Lit boolType (bool_2_U (_module.Outcome.Failure_q (Lit DatatypeTypeType this@@5)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |520|
 :pattern ( (_module.Outcome.IsFailure _module.Outcome$T@@8 (Lit DatatypeTypeType this@@5)))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass._module.NatOutcome) (or (_module.NatOutcome.NatSuccess_q d@@9) (_module.NatOutcome.NatFailure_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (_module.NatOutcome.NatFailure_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.NatOutcome))
 :pattern ( (_module.NatOutcome.NatSuccess_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.NatOutcome))
)))
(assert (= (Ctor charType) 6))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TChar) (and (= ($Box charType ($Unbox charType bx@@2)) bx@@2) ($Is charType ($Unbox charType bx@@2) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@2 TChar))
)))
(assert (forall ((this@@6 T@U) ) (!  (=> (or (|_module.NatOutcome.Extract#canCall| this@@6) (and ($Is DatatypeTypeType this@@6 Tclass._module.NatOutcome) (not (_module.NatOutcome.IsFailure this@@6)))) (= (_module.NatOutcome.Extract this@@6) (_module.NatOutcome.value this@@6)))
 :qid |NatOutcomeDtdfy.15:14|
 :skolemid |565|
 :pattern ( (_module.NatOutcome.Extract this@@6))
)))
(assert (forall ((this@@7 T@U) ) (!  (=> (or (|_module.NatOutcome.Extract#canCall| this@@7) (and ($Is DatatypeTypeType this@@7 Tclass._module.NatOutcome) (not (_module.NatOutcome.IsFailure this@@7)))) (<= (LitInt 0) (_module.NatOutcome.Extract this@@7)))
 :qid |NatOutcomeDtdfy.15:14|
 :skolemid |563|
 :pattern ( (_module.NatOutcome.Extract this@@7))
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
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@2) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@2))
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
(assert (forall ((_module.Outcome$T@@9 T@U) ) (! (= (Tclass._module.Outcome_0 (Tclass._module.Outcome _module.Outcome$T@@9)) _module.Outcome$T@@9)
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.Outcome _module.Outcome$T@@9))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Outcome.Success| |a#0#0#0|)) |##_module.Outcome.Success|)
 :qid |GenericOutcomeDtdfy.6:11|
 :skolemid |490|
 :pattern ( (|#_module.Outcome.Success| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Outcome.value (|#_module.Outcome.Success| |a#4#0#0|)) |a#4#0#0|)
 :qid |GenericOutcomeDtdfy.6:11|
 :skolemid |498|
 :pattern ( (|#_module.Outcome.Success| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.Outcome.Failure| |a#6#0#0@@0|)) |##_module.Outcome.Failure|)
 :qid |GenericOutcomeDtdfy.7:11|
 :skolemid |500|
 :pattern ( (|#_module.Outcome.Failure| |a#6#0#0@@0|))
)))
(assert (forall ((|a#10#0#0@@0| T@U) ) (! (= (_module.Outcome.error (|#_module.Outcome.Failure| |a#10#0#0@@0|)) |a#10#0#0@@0|)
 :qid |GenericOutcomeDtdfy.7:11|
 :skolemid |509|
 :pattern ( (|#_module.Outcome.Failure| |a#10#0#0@@0|))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#_module.NatOutcome.NatSuccess| |a#0#0#0@@0|)) |##_module.NatOutcome.NatSuccess|)
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |531|
 :pattern ( (|#_module.NatOutcome.NatSuccess| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (_module.NatOutcome.value (|#_module.NatOutcome.NatSuccess| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |538|
 :pattern ( (|#_module.NatOutcome.NatSuccess| |a#4#0#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.NatOutcome.NatFailure| |a#5#0#0|)) |##_module.NatOutcome.NatFailure|)
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |539|
 :pattern ( (|#_module.NatOutcome.NatFailure| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (_module.NatOutcome.error (|#_module.NatOutcome.NatFailure| |a#9#0#0|)) |a#9#0#0|)
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |546|
 :pattern ( (|#_module.NatOutcome.NatFailure| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Outcome$T@@10 T@U) (|a#2#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Outcome.Success| |a#2#0#0@@1|) (Tclass._module.Outcome _module.Outcome$T@@10)) ($IsBox |a#2#0#0@@1| _module.Outcome$T@@10))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Is DatatypeTypeType (|#_module.Outcome.Success| |a#2#0#0@@1|) (Tclass._module.Outcome _module.Outcome$T@@10)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((|a#5#0#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_module.Outcome.Success| |a#5#0#0@@0|)))
 :qid |GenericOutcomeDtdfy.6:11|
 :skolemid |499|
 :pattern ( (|#_module.Outcome.Success| |a#5#0#0@@0|))
)))
(assert (forall ((|a#12#0#0| T@U) ) (! (< (|Seq#Rank| |a#12#0#0|) (DtRank (|#_module.Outcome.Failure| |a#12#0#0|)))
 :qid |GenericOutcomeDtdfy.7:11|
 :skolemid |511|
 :pattern ( (|#_module.Outcome.Failure| |a#12#0#0|))
)))
(assert (forall ((|a#11#0#0@@0| T@U) ) (! (< (|Seq#Rank| |a#11#0#0@@0|) (DtRank (|#_module.NatOutcome.NatFailure| |a#11#0#0@@0|)))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |548|
 :pattern ( (|#_module.NatOutcome.NatFailure| |a#11#0#0@@0|))
)))
(assert (forall ((d@@10 T@U) (_module.Outcome$T@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Outcome.Success_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.Outcome _module.Outcome$T@@11) $h@@3))) ($IsAllocBox (_module.Outcome.value d@@10) _module.Outcome$T@@11 $h@@3))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAllocBox (_module.Outcome.value d@@10) _module.Outcome$T@@11 $h@@3))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 9)
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
 :skolemid |567|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((d@@11 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@11)) (DtRank d@@11))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@11)))
)))
(assert (forall ((bx@@3 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@3 (TSeq t@@4)))
)))
(assert (forall ((_module.Outcome$T@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.Outcome _module.Outcome$T@@12)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._module.Outcome _module.Outcome$T@@12))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@4 (Tclass._module.Outcome _module.Outcome$T@@12)))
)))
(assert (forall ((_module.Outcome$T@@13 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Outcome.Failure| |a#8#0#0@@0|) (Tclass._module.Outcome _module.Outcome$T@@13)) ($Is SeqType |a#8#0#0@@0| (TSeq TChar)))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is DatatypeTypeType (|#_module.Outcome.Failure| |a#8#0#0@@0|) (Tclass._module.Outcome _module.Outcome$T@@13)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d@@12 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@12 Tclass._module.NatOutcome)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.NatOutcome $h@@4))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.NatOutcome $h@@4))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.NatOutcome) Tagclass._module.NatOutcome))
(assert (= (TagFamily Tclass._module.NatOutcome) tytagFamily$NatOutcome))
(assert (forall ((|a#7#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.NatOutcome.NatFailure| |a#7#0#0@@0|) Tclass._module.NatOutcome) ($Is SeqType |a#7#0#0@@0| (TSeq TChar)))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |543|
 :pattern ( ($Is DatatypeTypeType (|#_module.NatOutcome.NatFailure| |a#7#0#0@@0|) Tclass._module.NatOutcome))
)))
(assert (forall ((d@@13 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.NatOutcome.NatFailure_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.NatOutcome $h@@5))) ($IsAlloc SeqType (_module.NatOutcome.error d@@13) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAlloc SeqType (_module.NatOutcome.error d@@13) (TSeq TChar) $h@@5))
)))
(assert (forall ((d@@14 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.NatOutcome.NatSuccess_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.NatOutcome $h@@6))) ($IsAlloc intType (int_2_U (_module.NatOutcome.value d@@14)) Tclass._System.nat $h@@6))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsAlloc intType (int_2_U (_module.NatOutcome.value d@@14)) Tclass._System.nat $h@@6))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.Outcome.Success| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.Outcome.Success| |a#3#0#0|)))
 :qid |GenericOutcomeDtdfy.6:11|
 :skolemid |497|
 :pattern ( (|#_module.Outcome.Success| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ) (! (= (|#_module.Outcome.Failure| (Lit SeqType |a#9#0#0@@0|)) (Lit DatatypeTypeType (|#_module.Outcome.Failure| |a#9#0#0@@0|)))
 :qid |GenericOutcomeDtdfy.7:11|
 :skolemid |508|
 :pattern ( (|#_module.Outcome.Failure| (Lit SeqType |a#9#0#0@@0|)))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#_module.NatOutcome.NatSuccess| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#_module.NatOutcome.NatSuccess| |a#3#0#0@@0|)))
 :qid |NatOutcomeDtdfy.6:14|
 :skolemid |537|
 :pattern ( (|#_module.NatOutcome.NatSuccess| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#8#0#0@@1| T@U) ) (! (= (|#_module.NatOutcome.NatFailure| (Lit SeqType |a#8#0#0@@1|)) (Lit DatatypeTypeType (|#_module.NatOutcome.NatFailure| |a#8#0#0@@1|)))
 :qid |NatOutcomeDtdfy.7:14|
 :skolemid |545|
 :pattern ( (|#_module.NatOutcome.NatFailure| (Lit SeqType |a#8#0#0@@1|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((this@@8 T@U) ) (!  (=> (or (|_module.NatOutcome.IsFailure#canCall| this@@8) ($Is DatatypeTypeType this@@8 Tclass._module.NatOutcome)) (= (_module.NatOutcome.IsFailure this@@8) (_module.NatOutcome.NatFailure_q this@@8)))
 :qid |NatOutcomeDtdfy.9:15|
 :skolemid |557|
 :pattern ( (_module.NatOutcome.IsFailure this@@8))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@1)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@1))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@3) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@4))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@4))))
)))
(assert (forall ((_module.Outcome$T@@14 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Outcome.Extract#canCall| _module.Outcome$T@@14 this@@9) (and ($Is DatatypeTypeType this@@9 (Tclass._module.Outcome _module.Outcome$T@@14)) (not (_module.Outcome.IsFailure _module.Outcome$T@@14 this@@9)))) (= (_module.Outcome.Extract _module.Outcome$T@@14 this@@9) (_module.Outcome.value this@@9)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (_module.Outcome.Extract _module.Outcome$T@@14 this@@9))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |valueOrError2#0@1| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |valueOrError1#0@1| () T@U)
(declare-fun |stmt2#0@0| () T@U)
(declare-fun |valueOrError2#0@0| () T@U)
(declare-fun |valueOrError0#0@1| () T@U)
(declare-fun |stmt1#0@0| () Int)
(declare-fun |valueOrError1#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |valueOrError0#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |stmt1#0| () Int)
(declare-fun |valueOrError0#0| () T@U)
(declare-fun |stmt2#0| () T@U)
(declare-fun |valueOrError1#0| () T@U)
(declare-fun |stmt3#0| () Int)
(declare-fun |valueOrError2#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestAssignOrHalt)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon9_Else_correct  (=> (not (_module.NatOutcome.IsFailure |valueOrError2#0@1|)) (=> (and ($IsAllocBox ($Box DatatypeTypeType |valueOrError2#0@1|) Tclass._module.NatOutcome $Heap@@0) (= (ControlFlow 0 5) (- 0 4))) (not (_module.NatOutcome.IsFailure |valueOrError2#0@1|))))))
(let ((anon9_Then_correct true))
(let ((anon8_Else_correct  (=> (and (not (_module.Outcome.IsFailure (TSeq TChar) |valueOrError1#0@1|)) ($IsAllocBox ($Box DatatypeTypeType |valueOrError1#0@1|) (Tclass._module.Outcome (TSeq TChar)) $Heap@@0)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not (_module.Outcome.IsFailure (TSeq TChar) |valueOrError1#0@1|))) (=> (and (not (_module.Outcome.IsFailure (TSeq TChar) |valueOrError1#0@1|)) (|_module.Outcome.Extract#canCall| (TSeq TChar) |valueOrError1#0@1|)) (=> (and (and (and (|_module.Outcome.Extract#canCall| (TSeq TChar) |valueOrError1#0@1|) (= |stmt2#0@0| ($Unbox SeqType (_module.Outcome.Extract (TSeq TChar) |valueOrError1#0@1|)))) (and ($Is DatatypeTypeType |valueOrError2#0@0| Tclass._module.NatOutcome) ($IsAlloc DatatypeTypeType |valueOrError2#0@0| Tclass._module.NatOutcome $Heap@@0))) (and (and (= |valueOrError2#0@1| (Lit DatatypeTypeType (|#_module.NatOutcome.NatFailure| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 75))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 33))))))) ($IsAllocBox ($Box DatatypeTypeType |valueOrError2#0@1|) Tclass._module.NatOutcome $Heap@@0)) (and (|_module.NatOutcome.IsFailure#canCall| |valueOrError2#0@1|) (|_module.NatOutcome.IsFailure#canCall| |valueOrError2#0@1|)))) (and (=> (= (ControlFlow 0 6) 3) anon9_Then_correct) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Else_correct  (=> (and (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|)) ($IsAllocBox ($Box DatatypeTypeType |valueOrError0#0@1|) Tclass._module.NatOutcome $Heap@@0)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|))) (=> (and (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|)) (|_module.NatOutcome.Extract#canCall| |valueOrError0#0@1|)) (=> (and (and (and (|_module.NatOutcome.Extract#canCall| |valueOrError0#0@1|) (= |stmt1#0@0| (_module.NatOutcome.Extract |valueOrError0#0@1|))) (and ($Is DatatypeTypeType |valueOrError1#0@0| (Tclass._module.Outcome (TSeq TChar))) ($IsAlloc DatatypeTypeType |valueOrError1#0@0| (Tclass._module.Outcome (TSeq TChar)) $Heap@@0))) (and (and (= |valueOrError1#0@1| (Lit DatatypeTypeType (|#_module.Outcome.Success| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 72))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 33)))))))) ($IsAllocBox ($Box DatatypeTypeType |valueOrError1#0@1|) (Tclass._module.Outcome (TSeq TChar)) $Heap@@0)) (and (|_module.Outcome.IsFailure#canCall| (TSeq TChar) |valueOrError1#0@1|) (|_module.Outcome.IsFailure#canCall| (TSeq TChar) |valueOrError1#0@1|)))) (and (=> (= (ControlFlow 0 8) 2) anon8_Then_correct) (=> (= (ControlFlow 0 8) 6) anon8_Else_correct))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and ($Is DatatypeTypeType |valueOrError0#0@0| Tclass._module.NatOutcome) ($IsAlloc DatatypeTypeType |valueOrError0#0@0| Tclass._module.NatOutcome $Heap@@0)) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($Is intType (int_2_U (LitInt 42)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 42)) Tclass._System.nat) (=> (and (and (= |valueOrError0#0@1| (Lit DatatypeTypeType (|#_module.NatOutcome.NatSuccess| (LitInt 42)))) ($IsAllocBox ($Box DatatypeTypeType |valueOrError0#0@1|) Tclass._module.NatOutcome $Heap@@0)) (and (|_module.NatOutcome.IsFailure#canCall| |valueOrError0#0@1|) (|_module.NatOutcome.IsFailure#canCall| |valueOrError0#0@1|))) (and (=> (= (ControlFlow 0 10) 1) anon7_Then_correct) (=> (= (ControlFlow 0 10) 8) anon7_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (<= (LitInt 0) |stmt1#0|) true)) (=> (and (and (and ($Is DatatypeTypeType |valueOrError0#0| Tclass._module.NatOutcome) ($IsAlloc DatatypeTypeType |valueOrError0#0| Tclass._module.NatOutcome $Heap@@0)) true) (and (and ($Is SeqType |stmt2#0| (TSeq TChar)) ($IsAlloc SeqType |stmt2#0| (TSeq TChar) $Heap@@0)) true)) (=> (and (and (and (and ($Is DatatypeTypeType |valueOrError1#0| (Tclass._module.Outcome (TSeq TChar))) ($IsAlloc DatatypeTypeType |valueOrError1#0| (Tclass._module.Outcome (TSeq TChar)) $Heap@@0)) true) (and (<= (LitInt 0) |stmt3#0|) true)) (and (and (and ($Is DatatypeTypeType |valueOrError2#0| Tclass._module.NatOutcome) ($IsAlloc DatatypeTypeType |valueOrError2#0| Tclass._module.NatOutcome $Heap@@0)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 12) 10)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
