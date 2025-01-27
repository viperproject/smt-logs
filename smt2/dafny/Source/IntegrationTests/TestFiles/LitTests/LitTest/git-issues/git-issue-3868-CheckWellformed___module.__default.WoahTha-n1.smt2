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
(declare-fun Tagclass._module.AB () T@U)
(declare-fun Tagclass._module.Option () T@U)
(declare-fun |##_module.AB.AA| () T@U)
(declare-fun |##_module.AB.BB| () T@U)
(declare-fun |##_module.Option.None| () T@U)
(declare-fun |##_module.Option.Some| () T@U)
(declare-fun tytagFamily$AB () T@U)
(declare-fun tytagFamily$Option () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.AB.AA| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tag (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Option.PropagateFailure (T@U T@U T@U) T@U)
(declare-fun |_module.Option.PropagateFailure#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Option (T@U) T@U)
(declare-fun _module.Option.None_q (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.Option.None| () T@U)
(declare-fun _module.__default.WoahThat_ksDeepToo (T@U T@U) T@U)
(declare-fun |_module.__default.WoahThat_ksDeepToo#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.AB () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun _module.AB.AA_q (T@U) Bool)
(declare-fun _module.AB.x10 (T@U) T@U)
(declare-fun |#_module.Option.Some| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |_module.Option.IsFailure#canCall| (T@U T@U) Bool)
(declare-fun _module.Option.IsFailure (T@U T@U) Bool)
(declare-fun |_module.Option.Extract#canCall| (T@U T@U) Bool)
(declare-fun _module.Option.Extract (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.Option.Some_q (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.AB.BB| () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.AB.BB_q (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun _module.Option.value (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Option_0 (T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun BoxRank (T@U) Int)
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
(declare-fun _module.AB.x1 (T@U) T@U)
(declare-fun _module.AB.x2 (T@U) T@U)
(declare-fun _module.AB.x3 (T@U) T@U)
(declare-fun _module.AB.x4 (T@U) T@U)
(declare-fun _module.AB.x5 (T@U) T@U)
(declare-fun _module.AB.x6 (T@U) T@U)
(declare-fun _module.AB.x7 (T@U) T@U)
(declare-fun _module.AB.x8 (T@U) T@U)
(declare-fun _module.AB.x9 (T@U) T@U)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass._module.AB Tagclass._module.Option |##_module.AB.AA| |##_module.AB.BB| |##_module.Option.None| |##_module.Option.Some| tytagFamily$AB tytagFamily$Option)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) (|a#13#3#0| T@U) (|a#13#4#0| T@U) (|a#13#5#0| T@U) (|a#13#6#0| T@U) (|a#13#7#0| T@U) (|a#13#8#0| T@U) (|a#13#9#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#13#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#13#0#0| i))) (DtRank (|#_module.AB.AA| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0| |a#13#6#0| |a#13#7#0| |a#13#8#0| |a#13#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1313|
 :pattern ( (|Seq#Index| |a#13#0#0| i) (|#_module.AB.AA| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0| |a#13#6#0| |a#13#7#0| |a#13#8#0| |a#13#9#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) (|a#16#3#0| T@U) (|a#16#4#0| T@U) (|a#16#5#0| T@U) (|a#16#6#0| T@U) (|a#16#7#0| T@U) (|a#16#8#0| T@U) (|a#16#9#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#16#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#16#1#0| i@@0))) (DtRank (|#_module.AB.AA| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0| |a#16#4#0| |a#16#5#0| |a#16#6#0| |a#16#7#0| |a#16#8#0| |a#16#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1316|
 :pattern ( (|Seq#Index| |a#16#1#0| i@@0) (|#_module.AB.AA| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0| |a#16#4#0| |a#16#5#0| |a#16#6#0| |a#16#7#0| |a#16#8#0| |a#16#9#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) (|a#19#3#0| T@U) (|a#19#4#0| T@U) (|a#19#5#0| T@U) (|a#19#6#0| T@U) (|a#19#7#0| T@U) (|a#19#8#0| T@U) (|a#19#9#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#19#2#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#19#2#0| i@@1))) (DtRank (|#_module.AB.AA| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0| |a#19#4#0| |a#19#5#0| |a#19#6#0| |a#19#7#0| |a#19#8#0| |a#19#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1319|
 :pattern ( (|Seq#Index| |a#19#2#0| i@@1) (|#_module.AB.AA| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0| |a#19#4#0| |a#19#5#0| |a#19#6#0| |a#19#7#0| |a#19#8#0| |a#19#9#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) (|a#22#3#0| T@U) (|a#22#4#0| T@U) (|a#22#5#0| T@U) (|a#22#6#0| T@U) (|a#22#7#0| T@U) (|a#22#8#0| T@U) (|a#22#9#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#22#3#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#22#3#0| i@@2))) (DtRank (|#_module.AB.AA| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0| |a#22#4#0| |a#22#5#0| |a#22#6#0| |a#22#7#0| |a#22#8#0| |a#22#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1322|
 :pattern ( (|Seq#Index| |a#22#3#0| i@@2) (|#_module.AB.AA| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0| |a#22#4#0| |a#22#5#0| |a#22#6#0| |a#22#7#0| |a#22#8#0| |a#22#9#0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) (|a#25#3#0| T@U) (|a#25#4#0| T@U) (|a#25#5#0| T@U) (|a#25#6#0| T@U) (|a#25#7#0| T@U) (|a#25#8#0| T@U) (|a#25#9#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#25#4#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#25#4#0| i@@3))) (DtRank (|#_module.AB.AA| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0| |a#25#4#0| |a#25#5#0| |a#25#6#0| |a#25#7#0| |a#25#8#0| |a#25#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1325|
 :pattern ( (|Seq#Index| |a#25#4#0| i@@3) (|#_module.AB.AA| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0| |a#25#4#0| |a#25#5#0| |a#25#6#0| |a#25#7#0| |a#25#8#0| |a#25#9#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) (|a#28#3#0| T@U) (|a#28#4#0| T@U) (|a#28#5#0| T@U) (|a#28#6#0| T@U) (|a#28#7#0| T@U) (|a#28#8#0| T@U) (|a#28#9#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#28#5#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#28#5#0| i@@4))) (DtRank (|#_module.AB.AA| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0| |a#28#4#0| |a#28#5#0| |a#28#6#0| |a#28#7#0| |a#28#8#0| |a#28#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1328|
 :pattern ( (|Seq#Index| |a#28#5#0| i@@4) (|#_module.AB.AA| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0| |a#28#4#0| |a#28#5#0| |a#28#6#0| |a#28#7#0| |a#28#8#0| |a#28#9#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) (|a#31#2#0| T@U) (|a#31#3#0| T@U) (|a#31#4#0| T@U) (|a#31#5#0| T@U) (|a#31#6#0| T@U) (|a#31#7#0| T@U) (|a#31#8#0| T@U) (|a#31#9#0| T@U) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| |a#31#6#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#31#6#0| i@@5))) (DtRank (|#_module.AB.AA| |a#31#0#0| |a#31#1#0| |a#31#2#0| |a#31#3#0| |a#31#4#0| |a#31#5#0| |a#31#6#0| |a#31#7#0| |a#31#8#0| |a#31#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1331|
 :pattern ( (|Seq#Index| |a#31#6#0| i@@5) (|#_module.AB.AA| |a#31#0#0| |a#31#1#0| |a#31#2#0| |a#31#3#0| |a#31#4#0| |a#31#5#0| |a#31#6#0| |a#31#7#0| |a#31#8#0| |a#31#9#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) (|a#34#3#0| T@U) (|a#34#4#0| T@U) (|a#34#5#0| T@U) (|a#34#6#0| T@U) (|a#34#7#0| T@U) (|a#34#8#0| T@U) (|a#34#9#0| T@U) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| |a#34#7#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#34#7#0| i@@6))) (DtRank (|#_module.AB.AA| |a#34#0#0| |a#34#1#0| |a#34#2#0| |a#34#3#0| |a#34#4#0| |a#34#5#0| |a#34#6#0| |a#34#7#0| |a#34#8#0| |a#34#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1334|
 :pattern ( (|Seq#Index| |a#34#7#0| i@@6) (|#_module.AB.AA| |a#34#0#0| |a#34#1#0| |a#34#2#0| |a#34#3#0| |a#34#4#0| |a#34#5#0| |a#34#6#0| |a#34#7#0| |a#34#8#0| |a#34#9#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) (|a#37#3#0| T@U) (|a#37#4#0| T@U) (|a#37#5#0| T@U) (|a#37#6#0| T@U) (|a#37#7#0| T@U) (|a#37#8#0| T@U) (|a#37#9#0| T@U) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| |a#37#8#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#37#8#0| i@@7))) (DtRank (|#_module.AB.AA| |a#37#0#0| |a#37#1#0| |a#37#2#0| |a#37#3#0| |a#37#4#0| |a#37#5#0| |a#37#6#0| |a#37#7#0| |a#37#8#0| |a#37#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1337|
 :pattern ( (|Seq#Index| |a#37#8#0| i@@7) (|#_module.AB.AA| |a#37#0#0| |a#37#1#0| |a#37#2#0| |a#37#3#0| |a#37#4#0| |a#37#5#0| |a#37#6#0| |a#37#7#0| |a#37#8#0| |a#37#9#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) (|a#40#3#0| T@U) (|a#40#4#0| T@U) (|a#40#5#0| T@U) (|a#40#6#0| T@U) (|a#40#7#0| T@U) (|a#40#8#0| T@U) (|a#40#9#0| T@U) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| |a#40#9#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#40#9#0| i@@8))) (DtRank (|#_module.AB.AA| |a#40#0#0| |a#40#1#0| |a#40#2#0| |a#40#3#0| |a#40#4#0| |a#40#5#0| |a#40#6#0| |a#40#7#0| |a#40#8#0| |a#40#9#0|))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1340|
 :pattern ( (|Seq#Index| |a#40#9#0| i@@8) (|#_module.AB.AA| |a#40#0#0| |a#40#1#0| |a#40#2#0| |a#40#3#0| |a#40#4#0| |a#40#5#0| |a#40#6#0| |a#40#7#0| |a#40#8#0| |a#40#9#0|))
)))
(assert (= (Tag TChar) TagChar))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Option$T T@U) (_module.Option.PropagateFailure$U T@U) (this T@U) ) (!  (=> (or (|_module.Option.PropagateFailure#canCall| _module.Option$T _module.Option.PropagateFailure$U this) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this (Tclass._module.Option _module.Option$T)) (_module.Option.None_q this)))) (= (_module.Option.PropagateFailure _module.Option$T _module.Option.PropagateFailure$U this) (Lit DatatypeTypeType |#_module.Option.None|)))
 :qid |unknown.0:0|
 :skolemid |1404|
 :pattern ( (_module.Option.PropagateFailure _module.Option$T _module.Option.PropagateFailure$U this))
))))
(assert  (and (= (Ctor SeqType) 4) (= (Ctor charType) 5)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|ab#0| T@U) (|x#0| T@U) ) (!  (=> (or (|_module.__default.WoahThat_ksDeepToo#canCall| |ab#0| |x#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |ab#0| Tclass._module.AB) ($Is SeqType |x#0| (TSeq TChar))))) (and (let ((|valueOrError0#0| (ite (_module.AB.AA_q |ab#0|) (let ((|x10#2| (_module.AB.x10 |ab#0|)))
(|#_module.Option.Some| ($Box SeqType |x10#2|))) (|#_module.Option.Some| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111)))))))))
 (and (and (|_module.Option.IsFailure#canCall| (TSeq TChar) |valueOrError0#0|) (=> (_module.Option.IsFailure (TSeq TChar) |valueOrError0#0|) (|_module.Option.PropagateFailure#canCall| (TSeq TChar) (TSeq TChar) |valueOrError0#0|))) (=> (not (_module.Option.IsFailure (TSeq TChar) |valueOrError0#0|)) (|_module.Option.Extract#canCall| (TSeq TChar) |valueOrError0#0|)))) (= (_module.__default.WoahThat_ksDeepToo |ab#0| |x#0|) (let ((|valueOrError0#0@@0| (ite (_module.AB.AA_q |ab#0|) (let ((|x10#0| (_module.AB.x10 |ab#0|)))
(|#_module.Option.Some| ($Box SeqType |x10#0|))) (|#_module.Option.Some| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111)))))))))
(ite (_module.Option.IsFailure (TSeq TChar) |valueOrError0#0@@0|) (_module.Option.PropagateFailure (TSeq TChar) (TSeq TChar) |valueOrError0#0@@0|) (let ((|r#0| ($Unbox SeqType (_module.Option.Extract (TSeq TChar) |valueOrError0#0@@0|))))
(|#_module.Option.Some| ($Box SeqType |r#0|))))))))
 :qid |gitissue3868dfy.61:28|
 :skolemid |1278|
 :pattern ( (_module.__default.WoahThat_ksDeepToo |ab#0| |x#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module.Option$T@@0 T@U) (this@@0 T@U) ) (!  (=> (and (or (|_module.Option.Extract#canCall| _module.Option$T@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this@@0 (Tclass._module.Option _module.Option$T@@0) $Heap) (_module.Option.Some_q this@@0)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.Option.Extract _module.Option$T@@0 this@@0) _module.Option$T@@0 $Heap))
 :qid |gitissue3868dfy.163:12|
 :skolemid |1407|
 :pattern ( ($IsAllocBox (_module.Option.Extract _module.Option$T@@0 this@@0) _module.Option$T@@0 $Heap))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.AB.BB|) |##_module.AB.BB|))
(assert (= (DatatypeCtorId |#_module.Option.None|) |##_module.Option.None|))
(assert (forall ((_module.Option$T@@1 T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T@@1) $h))
 :qid |unknown.0:0|
 :skolemid |1381|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T@@1) $h))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (|a#11#2#0| T@U) (|a#11#3#0| T@U) (|a#11#4#0| T@U) (|a#11#5#0| T@U) (|a#11#6#0| T@U) (|a#11#7#0| T@U) (|a#11#8#0| T@U) (|a#11#9#0| T@U) ) (! (= (|#_module.AB.AA| (Lit SeqType |a#11#0#0|) (Lit SeqType |a#11#1#0|) (Lit SeqType |a#11#2#0|) (Lit SeqType |a#11#3#0|) (Lit SeqType |a#11#4#0|) (Lit SeqType |a#11#5#0|) (Lit SeqType |a#11#6#0|) (Lit SeqType |a#11#7#0|) (Lit SeqType |a#11#8#0|) (Lit SeqType |a#11#9#0|)) (Lit DatatypeTypeType (|#_module.AB.AA| |a#11#0#0| |a#11#1#0| |a#11#2#0| |a#11#3#0| |a#11#4#0| |a#11#5#0| |a#11#6#0| |a#11#7#0| |a#11#8#0| |a#11#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1311|
 :pattern ( (|#_module.AB.AA| (Lit SeqType |a#11#0#0|) (Lit SeqType |a#11#1#0|) (Lit SeqType |a#11#2#0|) (Lit SeqType |a#11#3#0|) (Lit SeqType |a#11#4#0|) (Lit SeqType |a#11#5#0|) (Lit SeqType |a#11#6#0|) (Lit SeqType |a#11#7#0|) (Lit SeqType |a#11#8#0|) (Lit SeqType |a#11#9#0|)))
)))
(assert ($Is DatatypeTypeType |#_module.AB.BB| Tclass._module.AB))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Option$T@@2 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Option.IsFailure#canCall| _module.Option$T@@2 (Lit DatatypeTypeType this@@1)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@1 (Tclass._module.Option _module.Option$T@@2)))) (= (_module.Option.IsFailure _module.Option$T@@2 (Lit DatatypeTypeType this@@1)) (U_2_bool (Lit boolType (bool_2_U (_module.Option.None_q (Lit DatatypeTypeType this@@1)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1400|
 :pattern ( (_module.Option.IsFailure _module.Option$T@@2 (Lit DatatypeTypeType this@@1)))
))))
(assert (forall ((_module.Option$T@@3 T@U) ) (! ($Is DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T@@3))
 :qid |unknown.0:0|
 :skolemid |1380|
 :pattern ( ($Is DatatypeTypeType |#_module.Option.None| (Tclass._module.Option _module.Option$T@@3)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |682|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |925|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Option$T@@4 T@U) (_module.Option.PropagateFailure$U@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Option.PropagateFailure#canCall| _module.Option$T@@4 _module.Option.PropagateFailure$U@@0 (Lit DatatypeTypeType this@@2)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@2 (Tclass._module.Option _module.Option$T@@4)) (U_2_bool (Lit boolType (bool_2_U (_module.Option.None_q (Lit DatatypeTypeType this@@2)))))))) (= (_module.Option.PropagateFailure _module.Option$T@@4 _module.Option.PropagateFailure$U@@0 (Lit DatatypeTypeType this@@2)) (Lit DatatypeTypeType |#_module.Option.None|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1405|
 :pattern ( (_module.Option.PropagateFailure _module.Option$T@@4 _module.Option.PropagateFailure$U@@0 (Lit DatatypeTypeType this@@2)))
))))
(assert (forall ((d T@U) ) (!  (=> (_module.AB.AA_q d) (exists ((|a#9#0#0| T@U) (|a#9#1#0| T@U) (|a#9#2#0| T@U) (|a#9#3#0| T@U) (|a#9#4#0| T@U) (|a#9#5#0| T@U) (|a#9#6#0| T@U) (|a#9#7#0| T@U) (|a#9#8#0| T@U) (|a#9#9#0| T@U) ) (! (= d (|#_module.AB.AA| |a#9#0#0| |a#9#1#0| |a#9#2#0| |a#9#3#0| |a#9#4#0| |a#9#5#0| |a#9#6#0| |a#9#7#0| |a#9#8#0| |a#9#9#0|))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1298|
)))
 :qid |unknown.0:0|
 :skolemid |1299|
 :pattern ( (_module.AB.AA_q d))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Option$T@@5 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Option.Extract#canCall| _module.Option$T@@5 this@@3) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@3 (Tclass._module.Option _module.Option$T@@5)) (_module.Option.Some_q this@@3)))) ($IsBox (_module.Option.Extract _module.Option$T@@5 this@@3) _module.Option$T@@5))
 :qid |unknown.0:0|
 :skolemid |1406|
 :pattern ( (_module.Option.Extract _module.Option$T@@5 this@@3))
))))
(assert (forall ((d@@0 T@U) ) (! (= (_module.AB.AA_q d@@0) (= (DatatypeCtorId d@@0) |##_module.AB.AA|))
 :qid |unknown.0:0|
 :skolemid |1297|
 :pattern ( (_module.AB.AA_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.AB.BB_q d@@1) (= (DatatypeCtorId d@@1) |##_module.AB.BB|))
 :qid |unknown.0:0|
 :skolemid |1342|
 :pattern ( (_module.AB.BB_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Option.None_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1378|
 :pattern ( (_module.Option.None_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Option.Some_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Option.Some|))
 :qid |unknown.0:0|
 :skolemid |1383|
 :pattern ( (_module.Option.Some_q d@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.Option$T@@6 T@U) (_module.Option.PropagateFailure$U@@1 T@U) (this@@4 T@U) ) (!  (=> (and (or (|_module.Option.PropagateFailure#canCall| _module.Option$T@@6 _module.Option.PropagateFailure$U@@1 this@@4) (and (< 1 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this@@4 (Tclass._module.Option _module.Option$T@@6) $Heap@@0) (_module.Option.None_q this@@4)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.Option.PropagateFailure _module.Option$T@@6 _module.Option.PropagateFailure$U@@1 this@@4) (Tclass._module.Option _module.Option.PropagateFailure$U@@1) $Heap@@0))
 :qid |gitissue3868dfy.157:12|
 :skolemid |1402|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Option.PropagateFailure _module.Option$T@@6 _module.Option.PropagateFailure$U@@1 this@@4) (Tclass._module.Option _module.Option.PropagateFailure$U@@1) $Heap@@0))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |693|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.AB.BB_q d@@4) (= d@@4 |#_module.AB.BB|))
 :qid |unknown.0:0|
 :skolemid |1343|
 :pattern ( (_module.AB.BB_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Option.None_q d@@5) (= d@@5 |#_module.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1379|
 :pattern ( (_module.Option.None_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Option.Some_q d@@6) (exists ((|a#5#0#0| T@U) ) (! (= d@@6 (|#_module.Option.Some| |a#5#0#0|))
 :qid |gitissue3868dfy.152:35|
 :skolemid |1384|
)))
 :qid |unknown.0:0|
 :skolemid |1385|
 :pattern ( (_module.Option.Some_q d@@6))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |891|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |706|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert (forall ((_module.Option$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.Option _module.Option$T@@7)) Tagclass._module.Option) (= (TagFamily (Tclass._module.Option _module.Option$T@@7)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |1262|
 :pattern ( (Tclass._module.Option _module.Option$T@@7))
)))
(assert (= (Ctor BoxType) 6))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Option$T@@8 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Option.Extract#canCall| _module.Option$T@@8 (Lit DatatypeTypeType this@@5)) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@5 (Tclass._module.Option _module.Option$T@@8)) (U_2_bool (Lit boolType (bool_2_U (_module.Option.Some_q (Lit DatatypeTypeType this@@5)))))))) (= (_module.Option.Extract _module.Option$T@@8 (Lit DatatypeTypeType this@@5)) (Lit BoxType (_module.Option.value (Lit DatatypeTypeType this@@5)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1410|
 :pattern ( (_module.Option.Extract _module.Option$T@@8 (Lit DatatypeTypeType this@@5)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.AB) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.AB)))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( ($IsBox bx@@0 Tclass._module.AB))
)))
(assert (forall ((s@@1 T@U) (i@@9 Int) (v@@1 T@U) ) (!  (and (=> (= i@@9 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@9) v@@1)) (=> (or (not (= i@@9 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@9) (|Seq#Index| s@@1 i@@9))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |892|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@9))
)))
(assert (forall ((_module.Option$T@@9 T@U) (|a#6#0#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Option.Some| |a#6#0#0|) (Tclass._module.Option _module.Option$T@@9) $h@@0) ($IsAllocBox |a#6#0#0| _module.Option$T@@9 $h@@0)))
 :qid |unknown.0:0|
 :skolemid |1387|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Option.Some| |a#6#0#0|) (Tclass._module.Option _module.Option$T@@9) $h@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|ab#0@@0| T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.WoahThat_ksDeepToo#canCall| (Lit DatatypeTypeType |ab#0@@0|) (Lit SeqType |x#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |ab#0@@0| Tclass._module.AB) ($Is SeqType |x#0@@0| (TSeq TChar))))) (and (let ((|valueOrError0#1| (ite (_module.AB.AA_q (Lit DatatypeTypeType |ab#0@@0|)) (let ((|x10#5| (Lit SeqType (_module.AB.x10 (Lit DatatypeTypeType |ab#0@@0|)))))
(Lit DatatypeTypeType (|#_module.Option.Some| ($Box SeqType |x10#5|)))) (|#_module.Option.Some| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111)))))))))
 (and (and (|_module.Option.IsFailure#canCall| (TSeq TChar) |valueOrError0#1|) (=> (_module.Option.IsFailure (TSeq TChar) |valueOrError0#1|) (|_module.Option.PropagateFailure#canCall| (TSeq TChar) (TSeq TChar) |valueOrError0#1|))) (=> (not (_module.Option.IsFailure (TSeq TChar) |valueOrError0#1|)) (|_module.Option.Extract#canCall| (TSeq TChar) |valueOrError0#1|)))) (= (_module.__default.WoahThat_ksDeepToo (Lit DatatypeTypeType |ab#0@@0|) (Lit SeqType |x#0@@0|)) (let ((|valueOrError0#1@@0| (ite (_module.AB.AA_q (Lit DatatypeTypeType |ab#0@@0|)) (let ((|x10#3| (Lit SeqType (_module.AB.x10 (Lit DatatypeTypeType |ab#0@@0|)))))
(Lit DatatypeTypeType (|#_module.Option.Some| ($Box SeqType |x10#3|)))) (|#_module.Option.Some| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111)))))))))
(ite (_module.Option.IsFailure (TSeq TChar) |valueOrError0#1@@0|) (_module.Option.PropagateFailure (TSeq TChar) (TSeq TChar) |valueOrError0#1@@0|) (let ((|r#1| ($Unbox SeqType (_module.Option.Extract (TSeq TChar) |valueOrError0#1@@0|))))
(|#_module.Option.Some| ($Box SeqType |r#1|))))))))
 :qid |gitissue3868dfy.61:28|
 :weight 3
 :skolemid |1279|
 :pattern ( (_module.__default.WoahThat_ksDeepToo (Lit DatatypeTypeType |ab#0@@0|) (Lit SeqType |x#0@@0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|ab#0@@1| T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.__default.WoahThat_ksDeepToo#canCall| |ab#0@@1| |x#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |ab#0@@1| Tclass._module.AB) ($Is SeqType |x#0@@1| (TSeq TChar))))) ($Is DatatypeTypeType (_module.__default.WoahThat_ksDeepToo |ab#0@@1| |x#0@@1|) (Tclass._module.Option (TSeq TChar))))
 :qid |gitissue3868dfy.61:28|
 :skolemid |1276|
 :pattern ( (_module.__default.WoahThat_ksDeepToo |ab#0@@1| |x#0@@1|))
))))
(assert (forall ((_module.Option$T@@10 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass._module.Option _module.Option$T@@10)) (or (_module.Option.None_q d@@7) (_module.Option.Some_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1393|
 :pattern ( (_module.Option.Some_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Option _module.Option$T@@10)))
 :pattern ( (_module.Option.None_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass._module.Option _module.Option$T@@10)))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 Tclass._module.AB) (or (_module.AB.AA_q d@@8) (_module.AB.BB_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |1346|
 :pattern ( (_module.AB.BB_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.AB))
 :pattern ( (_module.AB.AA_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.AB))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |697|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |705|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |888|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) (|a#14#3#0| T@U) (|a#14#4#0| T@U) (|a#14#5#0| T@U) (|a#14#6#0| T@U) (|a#14#7#0| T@U) (|a#14#8#0| T@U) (|a#14#9#0| T@U) ) (! (< (|Seq#Rank| |a#14#0#0|) (DtRank (|#_module.AB.AA| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0| |a#14#6#0| |a#14#7#0| |a#14#8#0| |a#14#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1314|
 :pattern ( (|#_module.AB.AA| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0| |a#14#6#0| |a#14#7#0| |a#14#8#0| |a#14#9#0|))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) (|a#17#3#0| T@U) (|a#17#4#0| T@U) (|a#17#5#0| T@U) (|a#17#6#0| T@U) (|a#17#7#0| T@U) (|a#17#8#0| T@U) (|a#17#9#0| T@U) ) (! (< (|Seq#Rank| |a#17#1#0|) (DtRank (|#_module.AB.AA| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0| |a#17#4#0| |a#17#5#0| |a#17#6#0| |a#17#7#0| |a#17#8#0| |a#17#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1317|
 :pattern ( (|#_module.AB.AA| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0| |a#17#4#0| |a#17#5#0| |a#17#6#0| |a#17#7#0| |a#17#8#0| |a#17#9#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) (|a#20#3#0| T@U) (|a#20#4#0| T@U) (|a#20#5#0| T@U) (|a#20#6#0| T@U) (|a#20#7#0| T@U) (|a#20#8#0| T@U) (|a#20#9#0| T@U) ) (! (< (|Seq#Rank| |a#20#2#0|) (DtRank (|#_module.AB.AA| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0| |a#20#4#0| |a#20#5#0| |a#20#6#0| |a#20#7#0| |a#20#8#0| |a#20#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1320|
 :pattern ( (|#_module.AB.AA| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0| |a#20#4#0| |a#20#5#0| |a#20#6#0| |a#20#7#0| |a#20#8#0| |a#20#9#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) (|a#23#3#0| T@U) (|a#23#4#0| T@U) (|a#23#5#0| T@U) (|a#23#6#0| T@U) (|a#23#7#0| T@U) (|a#23#8#0| T@U) (|a#23#9#0| T@U) ) (! (< (|Seq#Rank| |a#23#3#0|) (DtRank (|#_module.AB.AA| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0| |a#23#4#0| |a#23#5#0| |a#23#6#0| |a#23#7#0| |a#23#8#0| |a#23#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1323|
 :pattern ( (|#_module.AB.AA| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0| |a#23#4#0| |a#23#5#0| |a#23#6#0| |a#23#7#0| |a#23#8#0| |a#23#9#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) (|a#26#3#0| T@U) (|a#26#4#0| T@U) (|a#26#5#0| T@U) (|a#26#6#0| T@U) (|a#26#7#0| T@U) (|a#26#8#0| T@U) (|a#26#9#0| T@U) ) (! (< (|Seq#Rank| |a#26#4#0|) (DtRank (|#_module.AB.AA| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0| |a#26#4#0| |a#26#5#0| |a#26#6#0| |a#26#7#0| |a#26#8#0| |a#26#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1326|
 :pattern ( (|#_module.AB.AA| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0| |a#26#4#0| |a#26#5#0| |a#26#6#0| |a#26#7#0| |a#26#8#0| |a#26#9#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) (|a#29#3#0| T@U) (|a#29#4#0| T@U) (|a#29#5#0| T@U) (|a#29#6#0| T@U) (|a#29#7#0| T@U) (|a#29#8#0| T@U) (|a#29#9#0| T@U) ) (! (< (|Seq#Rank| |a#29#5#0|) (DtRank (|#_module.AB.AA| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0| |a#29#4#0| |a#29#5#0| |a#29#6#0| |a#29#7#0| |a#29#8#0| |a#29#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1329|
 :pattern ( (|#_module.AB.AA| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0| |a#29#4#0| |a#29#5#0| |a#29#6#0| |a#29#7#0| |a#29#8#0| |a#29#9#0|))
)))
(assert (forall ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) (|a#32#3#0| T@U) (|a#32#4#0| T@U) (|a#32#5#0| T@U) (|a#32#6#0| T@U) (|a#32#7#0| T@U) (|a#32#8#0| T@U) (|a#32#9#0| T@U) ) (! (< (|Seq#Rank| |a#32#6#0|) (DtRank (|#_module.AB.AA| |a#32#0#0| |a#32#1#0| |a#32#2#0| |a#32#3#0| |a#32#4#0| |a#32#5#0| |a#32#6#0| |a#32#7#0| |a#32#8#0| |a#32#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1332|
 :pattern ( (|#_module.AB.AA| |a#32#0#0| |a#32#1#0| |a#32#2#0| |a#32#3#0| |a#32#4#0| |a#32#5#0| |a#32#6#0| |a#32#7#0| |a#32#8#0| |a#32#9#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) (|a#35#3#0| T@U) (|a#35#4#0| T@U) (|a#35#5#0| T@U) (|a#35#6#0| T@U) (|a#35#7#0| T@U) (|a#35#8#0| T@U) (|a#35#9#0| T@U) ) (! (< (|Seq#Rank| |a#35#7#0|) (DtRank (|#_module.AB.AA| |a#35#0#0| |a#35#1#0| |a#35#2#0| |a#35#3#0| |a#35#4#0| |a#35#5#0| |a#35#6#0| |a#35#7#0| |a#35#8#0| |a#35#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1335|
 :pattern ( (|#_module.AB.AA| |a#35#0#0| |a#35#1#0| |a#35#2#0| |a#35#3#0| |a#35#4#0| |a#35#5#0| |a#35#6#0| |a#35#7#0| |a#35#8#0| |a#35#9#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) (|a#38#3#0| T@U) (|a#38#4#0| T@U) (|a#38#5#0| T@U) (|a#38#6#0| T@U) (|a#38#7#0| T@U) (|a#38#8#0| T@U) (|a#38#9#0| T@U) ) (! (< (|Seq#Rank| |a#38#8#0|) (DtRank (|#_module.AB.AA| |a#38#0#0| |a#38#1#0| |a#38#2#0| |a#38#3#0| |a#38#4#0| |a#38#5#0| |a#38#6#0| |a#38#7#0| |a#38#8#0| |a#38#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1338|
 :pattern ( (|#_module.AB.AA| |a#38#0#0| |a#38#1#0| |a#38#2#0| |a#38#3#0| |a#38#4#0| |a#38#5#0| |a#38#6#0| |a#38#7#0| |a#38#8#0| |a#38#9#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) (|a#41#3#0| T@U) (|a#41#4#0| T@U) (|a#41#5#0| T@U) (|a#41#6#0| T@U) (|a#41#7#0| T@U) (|a#41#8#0| T@U) (|a#41#9#0| T@U) ) (! (< (|Seq#Rank| |a#41#9#0|) (DtRank (|#_module.AB.AA| |a#41#0#0| |a#41#1#0| |a#41#2#0| |a#41#3#0| |a#41#4#0| |a#41#5#0| |a#41#6#0| |a#41#7#0| |a#41#8#0| |a#41#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1341|
 :pattern ( (|#_module.AB.AA| |a#41#0#0| |a#41#1#0| |a#41#2#0| |a#41#3#0| |a#41#4#0| |a#41#5#0| |a#41#6#0| |a#41#7#0| |a#41#8#0| |a#41#9#0|))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@10) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |740|
 :pattern ( (|Seq#Index| v@@3 i@@10))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |741|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |674|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |675|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((_module.Option$T@@11 T@U) ) (! (= (Tclass._module.Option_0 (Tclass._module.Option _module.Option$T@@11)) _module.Option$T@@11)
 :qid |unknown.0:0|
 :skolemid |1263|
 :pattern ( (Tclass._module.Option _module.Option$T@@11))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Option.Some| |a#4#0#0|)) |##_module.Option.Some|)
 :qid |gitissue3868dfy.152:35|
 :skolemid |1382|
 :pattern ( (|#_module.Option.Some| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.Option.value (|#_module.Option.Some| |a#8#0#0|)) |a#8#0#0|)
 :qid |gitissue3868dfy.152:35|
 :skolemid |1390|
 :pattern ( (|#_module.Option.Some| |a#8#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |692|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Option$T@@12 T@U) (_module.Option.PropagateFailure$U@@2 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Option.PropagateFailure#canCall| _module.Option$T@@12 _module.Option.PropagateFailure$U@@2 this@@6) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@6 (Tclass._module.Option _module.Option$T@@12)) (_module.Option.None_q this@@6)))) ($Is DatatypeTypeType (_module.Option.PropagateFailure _module.Option$T@@12 _module.Option.PropagateFailure$U@@2 this@@6) (Tclass._module.Option _module.Option.PropagateFailure$U@@2)))
 :qid |unknown.0:0|
 :skolemid |1401|
 :pattern ( (_module.Option.PropagateFailure _module.Option$T@@12 _module.Option.PropagateFailure$U@@2 this@@6))
))))
(assert (forall ((_module.Option$T@@13 T@U) (|a#6#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Option.Some| |a#6#0#0@@0|) (Tclass._module.Option _module.Option$T@@13)) ($IsBox |a#6#0#0@@0| _module.Option$T@@13))
 :qid |unknown.0:0|
 :skolemid |1386|
 :pattern ( ($Is DatatypeTypeType (|#_module.Option.Some| |a#6#0#0@@0|) (Tclass._module.Option _module.Option$T@@13)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |688|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ) (! (< (BoxRank |a#9#0#0@@0|) (DtRank (|#_module.Option.Some| |a#9#0#0@@0|)))
 :qid |gitissue3868dfy.152:35|
 :skolemid |1391|
 :pattern ( (|#_module.Option.Some| |a#9#0#0@@0|))
)))
(assert (forall ((d@@9 T@U) (_module.Option$T@@14 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Option.Some_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.Option _module.Option$T@@14) $h@@1))) ($IsAllocBox (_module.Option.value d@@9) _module.Option$T@@14 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1388|
 :pattern ( ($IsAllocBox (_module.Option.value d@@9) _module.Option$T@@14 $h@@1))
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
 :skolemid |1473|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) (|a#10#2#0| T@U) (|a#10#3#0| T@U) (|a#10#4#0| T@U) (|a#10#5#0| T@U) (|a#10#6#0| T@U) (|a#10#7#0| T@U) (|a#10#8#0| T@U) (|a#10#9#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.AB.AA| |a#10#0#0| |a#10#1#0| |a#10#2#0| |a#10#3#0| |a#10#4#0| |a#10#5#0| |a#10#6#0| |a#10#7#0| |a#10#8#0| |a#10#9#0|) Tclass._module.AB)  (and (and (and (and (and (and (and (and (and ($Is SeqType |a#10#0#0| (TSeq TChar)) ($Is SeqType |a#10#1#0| (TSeq TChar))) ($Is SeqType |a#10#2#0| (TSeq TChar))) ($Is SeqType |a#10#3#0| (TSeq TChar))) ($Is SeqType |a#10#4#0| (TSeq TChar))) ($Is SeqType |a#10#5#0| (TSeq TChar))) ($Is SeqType |a#10#6#0| (TSeq TChar))) ($Is SeqType |a#10#7#0| (TSeq TChar))) ($Is SeqType |a#10#8#0| (TSeq TChar))) ($Is SeqType |a#10#9#0| (TSeq TChar))))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1300|
 :pattern ( ($Is DatatypeTypeType (|#_module.AB.AA| |a#10#0#0| |a#10#1#0| |a#10#2#0| |a#10#3#0| |a#10#4#0| |a#10#5#0| |a#10#6#0| |a#10#7#0| |a#10#8#0| |a#10#9#0|) Tclass._module.AB))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |890|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |751|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((bx@@2 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |702|
 :pattern ( ($IsBox bx@@2 (TSeq t@@4)))
)))
(assert (forall ((_module.Option$T@@15 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.Option _module.Option$T@@15)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.Option _module.Option$T@@15))))
 :qid |unknown.0:0|
 :skolemid |1264|
 :pattern ( ($IsBox bx@@3 (Tclass._module.Option _module.Option$T@@15)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |689|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d@@11 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@11 Tclass._module.AB)) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.AB $h@@2))
 :qid |unknown.0:0|
 :skolemid |1344|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass._module.AB $h@@2))
)))
(assert (= (Tag Tclass._module.AB) Tagclass._module.AB))
(assert (= (TagFamily Tclass._module.AB) tytagFamily$AB))
(assert (= |#_module.AB.BB| (Lit DatatypeTypeType |#_module.AB.BB|)))
(assert (= |#_module.Option.None| (Lit DatatypeTypeType |#_module.Option.None|)))
(assert (forall ((d@@12 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.AB.AA_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.AB $h@@3))) ($IsAlloc SeqType (_module.AB.x1 d@@12) (TSeq TChar) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1301|
 :pattern ( ($IsAlloc SeqType (_module.AB.x1 d@@12) (TSeq TChar) $h@@3))
)))
(assert (forall ((d@@13 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.AB.AA_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.AB $h@@4))) ($IsAlloc SeqType (_module.AB.x2 d@@13) (TSeq TChar) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1302|
 :pattern ( ($IsAlloc SeqType (_module.AB.x2 d@@13) (TSeq TChar) $h@@4))
)))
(assert (forall ((d@@14 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.AB.AA_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.AB $h@@5))) ($IsAlloc SeqType (_module.AB.x3 d@@14) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1303|
 :pattern ( ($IsAlloc SeqType (_module.AB.x3 d@@14) (TSeq TChar) $h@@5))
)))
(assert (forall ((d@@15 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.AB.AA_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.AB $h@@6))) ($IsAlloc SeqType (_module.AB.x4 d@@15) (TSeq TChar) $h@@6))
 :qid |unknown.0:0|
 :skolemid |1304|
 :pattern ( ($IsAlloc SeqType (_module.AB.x4 d@@15) (TSeq TChar) $h@@6))
)))
(assert (forall ((d@@16 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.AB.AA_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.AB $h@@7))) ($IsAlloc SeqType (_module.AB.x5 d@@16) (TSeq TChar) $h@@7))
 :qid |unknown.0:0|
 :skolemid |1305|
 :pattern ( ($IsAlloc SeqType (_module.AB.x5 d@@16) (TSeq TChar) $h@@7))
)))
(assert (forall ((d@@17 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.AB.AA_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.AB $h@@8))) ($IsAlloc SeqType (_module.AB.x6 d@@17) (TSeq TChar) $h@@8))
 :qid |unknown.0:0|
 :skolemid |1306|
 :pattern ( ($IsAlloc SeqType (_module.AB.x6 d@@17) (TSeq TChar) $h@@8))
)))
(assert (forall ((d@@18 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.AB.AA_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.AB $h@@9))) ($IsAlloc SeqType (_module.AB.x7 d@@18) (TSeq TChar) $h@@9))
 :qid |unknown.0:0|
 :skolemid |1307|
 :pattern ( ($IsAlloc SeqType (_module.AB.x7 d@@18) (TSeq TChar) $h@@9))
)))
(assert (forall ((d@@19 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.AB.AA_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.AB $h@@10))) ($IsAlloc SeqType (_module.AB.x8 d@@19) (TSeq TChar) $h@@10))
 :qid |unknown.0:0|
 :skolemid |1308|
 :pattern ( ($IsAlloc SeqType (_module.AB.x8 d@@19) (TSeq TChar) $h@@10))
)))
(assert (forall ((d@@20 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.AB.AA_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.AB $h@@11))) ($IsAlloc SeqType (_module.AB.x9 d@@20) (TSeq TChar) $h@@11))
 :qid |unknown.0:0|
 :skolemid |1309|
 :pattern ( ($IsAlloc SeqType (_module.AB.x9 d@@20) (TSeq TChar) $h@@11))
)))
(assert (forall ((d@@21 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.AB.AA_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.AB $h@@12))) ($IsAlloc SeqType (_module.AB.x10 d@@21) (TSeq TChar) $h@@12))
 :qid |unknown.0:0|
 :skolemid |1310|
 :pattern ( ($IsAlloc SeqType (_module.AB.x10 d@@21) (TSeq TChar) $h@@12))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Option$T@@16 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Option.IsFailure#canCall| _module.Option$T@@16 this@@7) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@7 (Tclass._module.Option _module.Option$T@@16)))) (= (_module.Option.IsFailure _module.Option$T@@16 this@@7) (_module.Option.None_q this@@7)))
 :qid |unknown.0:0|
 :skolemid |1399|
 :pattern ( (_module.Option.IsFailure _module.Option$T@@16 this@@7))
))))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.Option.Some| (Lit BoxType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.Option.Some| |a#7#0#0|)))
 :qid |gitissue3868dfy.152:35|
 :skolemid |1389|
 :pattern ( (|#_module.Option.Some| (Lit BoxType |a#7#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |683|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |889|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@1)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |731|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@1))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@11) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |720|
 :pattern ( (|Seq#Index| v@@5 i@@11))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |721|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@12))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |934|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@12))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |710|
 :pattern ( ($Is charType v@@6 TChar))
)))
(assert (forall ((|a#8#0#0@@0| T@U) (|a#8#1#0| T@U) (|a#8#2#0| T@U) (|a#8#3#0| T@U) (|a#8#4#0| T@U) (|a#8#5#0| T@U) (|a#8#6#0| T@U) (|a#8#7#0| T@U) (|a#8#8#0| T@U) (|a#8#9#0| T@U) ) (! (= (DatatypeCtorId (|#_module.AB.AA| |a#8#0#0@@0| |a#8#1#0| |a#8#2#0| |a#8#3#0| |a#8#4#0| |a#8#5#0| |a#8#6#0| |a#8#7#0| |a#8#8#0| |a#8#9#0|)) |##_module.AB.AA|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1296|
 :pattern ( (|#_module.AB.AA| |a#8#0#0@@0| |a#8#1#0| |a#8#2#0| |a#8#3#0| |a#8#4#0| |a#8#5#0| |a#8#6#0| |a#8#7#0| |a#8#8#0| |a#8#9#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) (|a#12#3#0| T@U) (|a#12#4#0| T@U) (|a#12#5#0| T@U) (|a#12#6#0| T@U) (|a#12#7#0| T@U) (|a#12#8#0| T@U) (|a#12#9#0| T@U) ) (! (= (_module.AB.x1 (|#_module.AB.AA| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0| |a#12#7#0| |a#12#8#0| |a#12#9#0|)) |a#12#0#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1312|
 :pattern ( (|#_module.AB.AA| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0| |a#12#7#0| |a#12#8#0| |a#12#9#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) (|a#15#3#0| T@U) (|a#15#4#0| T@U) (|a#15#5#0| T@U) (|a#15#6#0| T@U) (|a#15#7#0| T@U) (|a#15#8#0| T@U) (|a#15#9#0| T@U) ) (! (= (_module.AB.x2 (|#_module.AB.AA| |a#15#0#0| |a#15#1#0| |a#15#2#0| |a#15#3#0| |a#15#4#0| |a#15#5#0| |a#15#6#0| |a#15#7#0| |a#15#8#0| |a#15#9#0|)) |a#15#1#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1315|
 :pattern ( (|#_module.AB.AA| |a#15#0#0| |a#15#1#0| |a#15#2#0| |a#15#3#0| |a#15#4#0| |a#15#5#0| |a#15#6#0| |a#15#7#0| |a#15#8#0| |a#15#9#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (|a#18#3#0| T@U) (|a#18#4#0| T@U) (|a#18#5#0| T@U) (|a#18#6#0| T@U) (|a#18#7#0| T@U) (|a#18#8#0| T@U) (|a#18#9#0| T@U) ) (! (= (_module.AB.x3 (|#_module.AB.AA| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0| |a#18#4#0| |a#18#5#0| |a#18#6#0| |a#18#7#0| |a#18#8#0| |a#18#9#0|)) |a#18#2#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1318|
 :pattern ( (|#_module.AB.AA| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0| |a#18#4#0| |a#18#5#0| |a#18#6#0| |a#18#7#0| |a#18#8#0| |a#18#9#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) (|a#21#3#0| T@U) (|a#21#4#0| T@U) (|a#21#5#0| T@U) (|a#21#6#0| T@U) (|a#21#7#0| T@U) (|a#21#8#0| T@U) (|a#21#9#0| T@U) ) (! (= (_module.AB.x4 (|#_module.AB.AA| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0| |a#21#4#0| |a#21#5#0| |a#21#6#0| |a#21#7#0| |a#21#8#0| |a#21#9#0|)) |a#21#3#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1321|
 :pattern ( (|#_module.AB.AA| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0| |a#21#4#0| |a#21#5#0| |a#21#6#0| |a#21#7#0| |a#21#8#0| |a#21#9#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) (|a#24#3#0| T@U) (|a#24#4#0| T@U) (|a#24#5#0| T@U) (|a#24#6#0| T@U) (|a#24#7#0| T@U) (|a#24#8#0| T@U) (|a#24#9#0| T@U) ) (! (= (_module.AB.x5 (|#_module.AB.AA| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0| |a#24#4#0| |a#24#5#0| |a#24#6#0| |a#24#7#0| |a#24#8#0| |a#24#9#0|)) |a#24#4#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1324|
 :pattern ( (|#_module.AB.AA| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0| |a#24#4#0| |a#24#5#0| |a#24#6#0| |a#24#7#0| |a#24#8#0| |a#24#9#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) (|a#27#3#0| T@U) (|a#27#4#0| T@U) (|a#27#5#0| T@U) (|a#27#6#0| T@U) (|a#27#7#0| T@U) (|a#27#8#0| T@U) (|a#27#9#0| T@U) ) (! (= (_module.AB.x6 (|#_module.AB.AA| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0| |a#27#4#0| |a#27#5#0| |a#27#6#0| |a#27#7#0| |a#27#8#0| |a#27#9#0|)) |a#27#5#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1327|
 :pattern ( (|#_module.AB.AA| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0| |a#27#4#0| |a#27#5#0| |a#27#6#0| |a#27#7#0| |a#27#8#0| |a#27#9#0|))
)))
(assert (forall ((|a#30#0#0| T@U) (|a#30#1#0| T@U) (|a#30#2#0| T@U) (|a#30#3#0| T@U) (|a#30#4#0| T@U) (|a#30#5#0| T@U) (|a#30#6#0| T@U) (|a#30#7#0| T@U) (|a#30#8#0| T@U) (|a#30#9#0| T@U) ) (! (= (_module.AB.x7 (|#_module.AB.AA| |a#30#0#0| |a#30#1#0| |a#30#2#0| |a#30#3#0| |a#30#4#0| |a#30#5#0| |a#30#6#0| |a#30#7#0| |a#30#8#0| |a#30#9#0|)) |a#30#6#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1330|
 :pattern ( (|#_module.AB.AA| |a#30#0#0| |a#30#1#0| |a#30#2#0| |a#30#3#0| |a#30#4#0| |a#30#5#0| |a#30#6#0| |a#30#7#0| |a#30#8#0| |a#30#9#0|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) (|a#33#3#0| T@U) (|a#33#4#0| T@U) (|a#33#5#0| T@U) (|a#33#6#0| T@U) (|a#33#7#0| T@U) (|a#33#8#0| T@U) (|a#33#9#0| T@U) ) (! (= (_module.AB.x8 (|#_module.AB.AA| |a#33#0#0| |a#33#1#0| |a#33#2#0| |a#33#3#0| |a#33#4#0| |a#33#5#0| |a#33#6#0| |a#33#7#0| |a#33#8#0| |a#33#9#0|)) |a#33#7#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1333|
 :pattern ( (|#_module.AB.AA| |a#33#0#0| |a#33#1#0| |a#33#2#0| |a#33#3#0| |a#33#4#0| |a#33#5#0| |a#33#6#0| |a#33#7#0| |a#33#8#0| |a#33#9#0|))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) (|a#36#3#0| T@U) (|a#36#4#0| T@U) (|a#36#5#0| T@U) (|a#36#6#0| T@U) (|a#36#7#0| T@U) (|a#36#8#0| T@U) (|a#36#9#0| T@U) ) (! (= (_module.AB.x9 (|#_module.AB.AA| |a#36#0#0| |a#36#1#0| |a#36#2#0| |a#36#3#0| |a#36#4#0| |a#36#5#0| |a#36#6#0| |a#36#7#0| |a#36#8#0| |a#36#9#0|)) |a#36#8#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1336|
 :pattern ( (|#_module.AB.AA| |a#36#0#0| |a#36#1#0| |a#36#2#0| |a#36#3#0| |a#36#4#0| |a#36#5#0| |a#36#6#0| |a#36#7#0| |a#36#8#0| |a#36#9#0|))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (|a#39#3#0| T@U) (|a#39#4#0| T@U) (|a#39#5#0| T@U) (|a#39#6#0| T@U) (|a#39#7#0| T@U) (|a#39#8#0| T@U) (|a#39#9#0| T@U) ) (! (= (_module.AB.x10 (|#_module.AB.AA| |a#39#0#0| |a#39#1#0| |a#39#2#0| |a#39#3#0| |a#39#4#0| |a#39#5#0| |a#39#6#0| |a#39#7#0| |a#39#8#0| |a#39#9#0|)) |a#39#9#0|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1339|
 :pattern ( (|#_module.AB.AA| |a#39#0#0| |a#39#1#0| |a#39#2#0| |a#39#3#0| |a#39#4#0| |a#39#5#0| |a#39#6#0| |a#39#7#0| |a#39#8#0| |a#39#9#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Option$T@@17 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Option.Extract#canCall| _module.Option$T@@17 this@@8) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@8 (Tclass._module.Option _module.Option$T@@17)) (_module.Option.Some_q this@@8)))) (= (_module.Option.Extract _module.Option$T@@17 this@@8) (_module.Option.value this@@8)))
 :qid |unknown.0:0|
 :skolemid |1409|
 :pattern ( (_module.Option.Extract _module.Option$T@@17 this@@8))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |valueOrError0#Z#0@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |ab#0@@2| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |_mcc#4#0| () T@U)
(declare-fun |_mcc#5#0| () T@U)
(declare-fun |_mcc#6#0| () T@U)
(declare-fun |_mcc#7#0| () T@U)
(declare-fun |_mcc#8#0| () T@U)
(declare-fun |_mcc#9#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |x10#Z#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |x9#Z#0@0| () T@U)
(declare-fun |let#3#0#0| () T@U)
(declare-fun |x8#Z#0@0| () T@U)
(declare-fun |let#4#0#0| () T@U)
(declare-fun |x7#Z#0@0| () T@U)
(declare-fun |let#5#0#0| () T@U)
(declare-fun |x6#Z#0@0| () T@U)
(declare-fun |let#6#0#0| () T@U)
(declare-fun |x5#Z#0@0| () T@U)
(declare-fun |let#7#0#0| () T@U)
(declare-fun |x4#Z#0@0| () T@U)
(declare-fun |let#8#0#0| () T@U)
(declare-fun |x3#Z#0@0| () T@U)
(declare-fun |let#9#0#0| () T@U)
(declare-fun |x2#Z#0@0| () T@U)
(declare-fun |let#10#0#0| () T@U)
(declare-fun |x1#Z#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0@@2| () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.WoahThat_ksDeepToo)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon14_Else_correct  (=> (not (_module.Option.IsFailure (TSeq TChar) |valueOrError0#Z#0@0|)) (=> (and ($IsAllocBox ($Box DatatypeTypeType |valueOrError0#Z#0@0|) (Tclass._module.Option (TSeq TChar)) $Heap@@1) (= (ControlFlow 0 6) (- 0 5))) (_module.Option.Some_q |valueOrError0#Z#0@0|)))))
(let ((anon14_Then_correct  (=> (_module.Option.IsFailure (TSeq TChar) |valueOrError0#Z#0@0|) (=> (and ($IsAllocBox ($Box DatatypeTypeType |valueOrError0#Z#0@0|) (Tclass._module.Option (TSeq TChar)) $Heap@@1) (= (ControlFlow 0 4) (- 0 3))) (_module.Option.None_q |valueOrError0#Z#0@0|)))))
(let ((anon7_correct  (=> (= |valueOrError0#Z#0@0| |let#0#0#0|) (=> (and ($IsAllocBox ($Box DatatypeTypeType |valueOrError0#Z#0@0|) (Tclass._module.Option (TSeq TChar)) $Heap@@1) (|_module.Option.IsFailure#canCall| (TSeq TChar) |valueOrError0#Z#0@0|)) (and (=> (= (ControlFlow 0 7) 4) anon14_Then_correct) (=> (= (ControlFlow 0 7) 6) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> (and (and (= |ab#0@@2| |#_module.AB.BB|) (= |let#0#0#0| (Lit DatatypeTypeType (|#_module.Option.Some| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111))))))))) (and ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.Option (TSeq TChar))) (= (ControlFlow 0 9) 7))) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (and (= |ab#0@@2| (|#_module.AB.AA| |_mcc#0#0| |_mcc#1#0| |_mcc#2#0| |_mcc#3#0| |_mcc#4#0| |_mcc#5#0| |_mcc#6#0| |_mcc#7#0| |_mcc#8#0| |_mcc#9#0|)) ($Is SeqType |_mcc#0#0| (TSeq TChar))) (and ($Is SeqType |_mcc#1#0| (TSeq TChar)) ($Is SeqType |_mcc#2#0| (TSeq TChar)))) (=> (and (and (and ($Is SeqType |_mcc#3#0| (TSeq TChar)) ($Is SeqType |_mcc#4#0| (TSeq TChar))) (and ($Is SeqType |_mcc#5#0| (TSeq TChar)) ($Is SeqType |_mcc#6#0| (TSeq TChar)))) (and (and ($Is SeqType |_mcc#7#0| (TSeq TChar)) ($Is SeqType |_mcc#8#0| (TSeq TChar))) (and ($Is SeqType |_mcc#9#0| (TSeq TChar)) (= |let#1#0#0| |_mcc#9#0|)))) (=> (and (and (and (and (and ($Is SeqType |let#1#0#0| (TSeq TChar)) (= |x10#Z#0@0| |let#1#0#0|)) (and (= |let#2#0#0| |_mcc#8#0|) ($Is SeqType |let#2#0#0| (TSeq TChar)))) (and (and (= |x9#Z#0@0| |let#2#0#0|) (= |let#3#0#0| |_mcc#7#0|)) (and ($Is SeqType |let#3#0#0| (TSeq TChar)) (= |x8#Z#0@0| |let#3#0#0|)))) (and (and (and (= |let#4#0#0| |_mcc#6#0|) ($Is SeqType |let#4#0#0| (TSeq TChar))) (and (= |x7#Z#0@0| |let#4#0#0|) (= |let#5#0#0| |_mcc#5#0|))) (and (and ($Is SeqType |let#5#0#0| (TSeq TChar)) (= |x6#Z#0@0| |let#5#0#0|)) (and (= |let#6#0#0| |_mcc#4#0|) ($Is SeqType |let#6#0#0| (TSeq TChar)))))) (and (and (and (and (= |x5#Z#0@0| |let#6#0#0|) (= |let#7#0#0| |_mcc#3#0|)) (and ($Is SeqType |let#7#0#0| (TSeq TChar)) (= |x4#Z#0@0| |let#7#0#0|))) (and (and (= |let#8#0#0| |_mcc#2#0|) ($Is SeqType |let#8#0#0| (TSeq TChar))) (and (= |x3#Z#0@0| |let#8#0#0|) (= |let#9#0#0| |_mcc#1#0|)))) (and (and (and ($Is SeqType |let#9#0#0| (TSeq TChar)) (= |x2#Z#0@0| |let#9#0#0|)) (and (= |let#10#0#0| |_mcc#0#0|) ($Is SeqType |let#10#0#0| (TSeq TChar)))) (and (and (= |x1#Z#0@0| |let#10#0#0|) (= |let#0#0#0| (|#_module.Option.Some| ($Box SeqType |x10#Z#0@0|)))) (and ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.Option (TSeq TChar))) (= (ControlFlow 0 8) 7)))))) anon7_correct)))))
(let ((anon13_Else_correct true))
(let ((anon12_Else_correct  (=> (or (not (= |ab#0@@2| (|#_module.AB.AA| |_mcc#0#0| |_mcc#1#0| |_mcc#2#0| |_mcc#3#0| |_mcc#4#0| |_mcc#5#0| |_mcc#6#0| |_mcc#7#0| |_mcc#8#0| |_mcc#9#0|))) (not true)) (and (=> (= (ControlFlow 0 10) 9) anon13_Then_correct) (=> (= (ControlFlow 0 10) 2) anon13_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (and (=> (= (ControlFlow 0 11) 1) anon11_Then_correct) (=> (= (ControlFlow 0 11) 8) anon12_Then_correct)) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($Is DatatypeTypeType |ab#0@@2| Tclass._module.AB) ($Is SeqType |x#0@@2| (TSeq TChar))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 12) 11))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
