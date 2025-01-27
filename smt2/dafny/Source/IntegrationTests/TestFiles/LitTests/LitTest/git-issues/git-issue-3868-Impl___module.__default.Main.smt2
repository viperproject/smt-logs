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
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Recur () T@U)
(declare-fun Tagclass._module.Or () T@U)
(declare-fun Tagclass._module.AB () T@U)
(declare-fun Tagclass._module.Recur? () T@U)
(declare-fun |##_module.Or.A| () T@U)
(declare-fun |##_module.AB.AA| () T@U)
(declare-fun |##_module.AB.BB| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Recur () T@U)
(declare-fun tytagFamily$Or () T@U)
(declare-fun tytagFamily$AB () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Or.A| () T@U)
(declare-fun |#_module.AB.BB| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Recur? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Recur () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun Tclass._module.Or () T@U)
(declare-fun Tclass._module.AB () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.AB.AA_q (T@U) Bool)
(declare-fun _module.AB.BB_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.AB.x1 (T@U) T@U)
(declare-fun _module.AB.x2 (T@U) T@U)
(declare-fun _module.AB.x3 (T@U) T@U)
(declare-fun _module.AB.x4 (T@U) T@U)
(declare-fun _module.AB.x5 (T@U) T@U)
(declare-fun _module.AB.x6 (T@U) T@U)
(declare-fun _module.AB.x7 (T@U) T@U)
(declare-fun _module.AB.x8 (T@U) T@U)
(declare-fun _module.AB.x9 (T@U) T@U)
(declare-fun _module.AB.x10 (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass._System.nat Tagclass._module.Recur Tagclass._module.Or Tagclass._module.AB Tagclass._module.Recur? |##_module.Or.A| |##_module.AB.AA| |##_module.AB.BB| tytagFamily$nat tytagFamily$Recur tytagFamily$Or tytagFamily$AB)
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
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Or.A|) |##_module.Or.A|))
(assert (= (DatatypeCtorId |#_module.AB.BB|) |##_module.AB.BB|))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Recur?)  (or (= $o null) (= (dtype $o) Tclass._module.Recur?)))
 :qid |unknown.0:0|
 :skolemid |1350|
 :pattern ( ($Is refType $o Tclass._module.Recur?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Recur $h@@0) ($IsAlloc refType |c#0| Tclass._module.Recur? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1377|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Recur $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Recur? $h@@0))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (|a#11#2#0| T@U) (|a#11#3#0| T@U) (|a#11#4#0| T@U) (|a#11#5#0| T@U) (|a#11#6#0| T@U) (|a#11#7#0| T@U) (|a#11#8#0| T@U) (|a#11#9#0| T@U) ) (! (= (|#_module.AB.AA| (Lit SeqType |a#11#0#0|) (Lit SeqType |a#11#1#0|) (Lit SeqType |a#11#2#0|) (Lit SeqType |a#11#3#0|) (Lit SeqType |a#11#4#0|) (Lit SeqType |a#11#5#0|) (Lit SeqType |a#11#6#0|) (Lit SeqType |a#11#7#0|) (Lit SeqType |a#11#8#0|) (Lit SeqType |a#11#9#0|)) (Lit DatatypeTypeType (|#_module.AB.AA| |a#11#0#0| |a#11#1#0| |a#11#2#0| |a#11#3#0| |a#11#4#0| |a#11#5#0| |a#11#6#0| |a#11#7#0| |a#11#8#0| |a#11#9#0|)))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1311|
 :pattern ( (|#_module.AB.AA| (Lit SeqType |a#11#0#0|) (Lit SeqType |a#11#1#0|) (Lit SeqType |a#11#2#0|) (Lit SeqType |a#11#3#0|) (Lit SeqType |a#11#4#0|) (Lit SeqType |a#11#5#0|) (Lit SeqType |a#11#6#0|) (Lit SeqType |a#11#7#0|) (Lit SeqType |a#11#8#0|) (Lit SeqType |a#11#9#0|)))
)))
(assert ($Is DatatypeTypeType |#_module.Or.A| Tclass._module.Or))
(assert ($Is DatatypeTypeType |#_module.AB.BB| Tclass._module.AB))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Recur? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1351|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Recur? $h@@1))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |785|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |786|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |684|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |682|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |925|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((d T@U) ) (!  (=> (_module.AB.AA_q d) (exists ((|a#9#0#0| T@U) (|a#9#1#0| T@U) (|a#9#2#0| T@U) (|a#9#3#0| T@U) (|a#9#4#0| T@U) (|a#9#5#0| T@U) (|a#9#6#0| T@U) (|a#9#7#0| T@U) (|a#9#8#0| T@U) (|a#9#9#0| T@U) ) (! (= d (|#_module.AB.AA| |a#9#0#0| |a#9#1#0| |a#9#2#0| |a#9#3#0| |a#9#4#0| |a#9#5#0| |a#9#6#0| |a#9#7#0| |a#9#8#0| |a#9#9#0|))
 :qid |gitissue3868dfy.58:8|
 :skolemid |1298|
)))
 :qid |unknown.0:0|
 :skolemid |1299|
 :pattern ( (_module.AB.AA_q d))
)))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |693|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.AB.BB_q d@@2) (= d@@2 |#_module.AB.BB|))
 :qid |unknown.0:0|
 :skolemid |1343|
 :pattern ( (_module.AB.BB_q d@@2))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |891|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |706|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@1) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |778|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |777|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Recur) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Recur)))
 :qid |unknown.0:0|
 :skolemid |1252|
 :pattern ( ($IsBox bx@@2 Tclass._module.Recur))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Or) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.Or)))
 :qid |unknown.0:0|
 :skolemid |1254|
 :pattern ( ($IsBox bx@@3 Tclass._module.Or))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.AB) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.AB)))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( ($IsBox bx@@4 Tclass._module.AB))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Recur?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Recur?)))
 :qid |unknown.0:0|
 :skolemid |1256|
 :pattern ( ($IsBox bx@@5 Tclass._module.Recur?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Recur)  (and ($Is refType |c#0@@0| Tclass._module.Recur?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1376|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Recur))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Recur?))
)))
(assert (forall ((s@@1 T@U) (i@@9 Int) (v@@2 T@U) ) (!  (and (=> (= i@@9 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@9) v@@2)) (=> (or (not (= i@@9 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@9) (|Seq#Index| s@@1 i@@9))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |892|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@9))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.AB) (or (_module.AB.AA_q d@@3) (_module.AB.BB_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1346|
 :pattern ( (_module.AB.BB_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.AB))
 :pattern ( (_module.AB.AA_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.AB))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |784|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |694|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TChar) (and (= ($Box charType ($Unbox charType bx@@7)) bx@@7) ($Is charType ($Unbox charType bx@@7) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |697|
 :pattern ( ($IsBox bx@@7 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@3) ($Is T@@3 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |705|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@3))
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
(assert (forall ((v@@4 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3) (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@10) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |740|
 :pattern ( (|Seq#Index| v@@4 i@@10))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |741|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |674|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |675|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |692|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |688|
 :pattern ( (|char#FromInt| n))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1473|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
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
(assert (forall ((bx@@8 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |702|
 :pattern ( ($IsBox bx@@8 (TSeq t@@6)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |689|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d@@4 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@4 Tclass._module.Or)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Or $h@@2))
 :qid |unknown.0:0|
 :skolemid |1290|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Or $h@@2))
)))
(assert (forall ((d@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@5 Tclass._module.AB)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.AB $h@@3))
 :qid |unknown.0:0|
 :skolemid |1344|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.AB $h@@3))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Recur) Tagclass._module.Recur))
(assert (= (TagFamily Tclass._module.Recur) tytagFamily$Recur))
(assert (= (Tag Tclass._module.Or) Tagclass._module.Or))
(assert (= (TagFamily Tclass._module.Or) tytagFamily$Or))
(assert (= (Tag Tclass._module.AB) Tagclass._module.AB))
(assert (= (TagFamily Tclass._module.AB) tytagFamily$AB))
(assert (= (Tag Tclass._module.Recur?) Tagclass._module.Recur?))
(assert (= (TagFamily Tclass._module.Recur?) tytagFamily$Recur))
(assert (= |#_module.Or.A| (Lit DatatypeTypeType |#_module.Or.A|)))
(assert (= |#_module.AB.BB| (Lit DatatypeTypeType |#_module.AB.BB|)))
(assert (forall ((d@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.AB.AA_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.AB $h@@4))) ($IsAlloc SeqType (_module.AB.x1 d@@6) (TSeq TChar) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1301|
 :pattern ( ($IsAlloc SeqType (_module.AB.x1 d@@6) (TSeq TChar) $h@@4))
)))
(assert (forall ((d@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.AB.AA_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.AB $h@@5))) ($IsAlloc SeqType (_module.AB.x2 d@@7) (TSeq TChar) $h@@5))
 :qid |unknown.0:0|
 :skolemid |1302|
 :pattern ( ($IsAlloc SeqType (_module.AB.x2 d@@7) (TSeq TChar) $h@@5))
)))
(assert (forall ((d@@8 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.AB.AA_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.AB $h@@6))) ($IsAlloc SeqType (_module.AB.x3 d@@8) (TSeq TChar) $h@@6))
 :qid |unknown.0:0|
 :skolemid |1303|
 :pattern ( ($IsAlloc SeqType (_module.AB.x3 d@@8) (TSeq TChar) $h@@6))
)))
(assert (forall ((d@@9 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.AB.AA_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.AB $h@@7))) ($IsAlloc SeqType (_module.AB.x4 d@@9) (TSeq TChar) $h@@7))
 :qid |unknown.0:0|
 :skolemid |1304|
 :pattern ( ($IsAlloc SeqType (_module.AB.x4 d@@9) (TSeq TChar) $h@@7))
)))
(assert (forall ((d@@10 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_module.AB.AA_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.AB $h@@8))) ($IsAlloc SeqType (_module.AB.x5 d@@10) (TSeq TChar) $h@@8))
 :qid |unknown.0:0|
 :skolemid |1305|
 :pattern ( ($IsAlloc SeqType (_module.AB.x5 d@@10) (TSeq TChar) $h@@8))
)))
(assert (forall ((d@@11 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_module.AB.AA_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.AB $h@@9))) ($IsAlloc SeqType (_module.AB.x6 d@@11) (TSeq TChar) $h@@9))
 :qid |unknown.0:0|
 :skolemid |1306|
 :pattern ( ($IsAlloc SeqType (_module.AB.x6 d@@11) (TSeq TChar) $h@@9))
)))
(assert (forall ((d@@12 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.AB.AA_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.AB $h@@10))) ($IsAlloc SeqType (_module.AB.x7 d@@12) (TSeq TChar) $h@@10))
 :qid |unknown.0:0|
 :skolemid |1307|
 :pattern ( ($IsAlloc SeqType (_module.AB.x7 d@@12) (TSeq TChar) $h@@10))
)))
(assert (forall ((d@@13 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.AB.AA_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.AB $h@@11))) ($IsAlloc SeqType (_module.AB.x8 d@@13) (TSeq TChar) $h@@11))
 :qid |unknown.0:0|
 :skolemid |1308|
 :pattern ( ($IsAlloc SeqType (_module.AB.x8 d@@13) (TSeq TChar) $h@@11))
)))
(assert (forall ((d@@14 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.AB.AA_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.AB $h@@12))) ($IsAlloc SeqType (_module.AB.x9 d@@14) (TSeq TChar) $h@@12))
 :qid |unknown.0:0|
 :skolemid |1309|
 :pattern ( ($IsAlloc SeqType (_module.AB.x9 d@@14) (TSeq TChar) $h@@12))
)))
(assert (forall ((d@@15 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.AB.AA_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.AB $h@@13))) ($IsAlloc SeqType (_module.AB.x10 d@@15) (TSeq TChar) $h@@13))
 :qid |unknown.0:0|
 :skolemid |1310|
 :pattern ( ($IsAlloc SeqType (_module.AB.x10 d@@15) (TSeq TChar) $h@@13))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |685|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |683|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |889|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |728|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@6 T@U) ) (! ($IsAlloc charType v@@6 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |731|
 :pattern ( ($IsAlloc charType v@@6 TChar h@@5))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@11) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |720|
 :pattern ( (|Seq#Index| v@@7 i@@11))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |721|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@12))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |934|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@12))))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |707|
 :pattern ( ($Is intType v@@8 TInt))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is charType v@@9 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |710|
 :pattern ( ($Is charType v@@9 TChar))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (|a#8#2#0| T@U) (|a#8#3#0| T@U) (|a#8#4#0| T@U) (|a#8#5#0| T@U) (|a#8#6#0| T@U) (|a#8#7#0| T@U) (|a#8#8#0| T@U) (|a#8#9#0| T@U) ) (! (= (DatatypeCtorId (|#_module.AB.AA| |a#8#0#0| |a#8#1#0| |a#8#2#0| |a#8#3#0| |a#8#4#0| |a#8#5#0| |a#8#6#0| |a#8#7#0| |a#8#8#0| |a#8#9#0|)) |##_module.AB.AA|)
 :qid |gitissue3868dfy.58:8|
 :skolemid |1296|
 :pattern ( (|#_module.AB.AA| |a#8#0#0| |a#8#1#0| |a#8#2#0| |a#8#3#0| |a#8#4#0| |a#8#5#0| |a#8#6#0| |a#8#7#0| |a#8#8#0| |a#8#9#0|))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |n##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |##x#0@0| () T@U)
(declare-fun |_module.__default.NotSoDeep#canCall| (T@U) Bool)
(declare-fun |##o#0@0| () T@U)
(declare-fun |##x#1@0| () T@U)
(declare-fun |_module.__default.WoahThat_ksDeep#canCall| (T@U T@U) Bool)
(declare-fun |##ab#0@0| () T@U)
(declare-fun |##x#2@0| () T@U)
(declare-fun |_module.__default.WoahThat_ksDeepToo#canCall| (T@U T@U) Bool)
(declare-fun |##o#1@0| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |##m#0@0| () Int)
(declare-fun |_module.Recur.Follow0#canCall| (T@U T@U T@U Int Int) Bool)
(declare-fun |##o#2@0| () T@U)
(declare-fun |defass#recur#0| () Bool)
(declare-fun |recur#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |s##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 116)))))) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |gitissue3868dfy.17:8|
 :skolemid |1260|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 8)) ($Is intType (int_2_U (LitInt 25)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 25)) Tclass._System.nat) (=> (= |n##0@0| (LitInt 25)) (=> (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.Recur) ($IsAlloc refType call2formal@this Tclass._module.Recur $Heap))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.Recur) ($IsAlloc refType call2formal@this@0 Tclass._module.Recur $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) alloc))))) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |gitissue3868dfy.75:3|
 :skolemid |1357|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
)) ($HeapSucc $Heap@0 $Heap@1))) (=> (and (and (and (and (= |##x#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 57))) ($Box charType (|char#FromInt| 48))) ($Box charType (|char#FromInt| 48))))) ($IsAlloc SeqType |##x#0@0| (TSeq TChar) $Heap@1)) (and (|_module.__default.NotSoDeep#canCall| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 57))) ($Box charType (|char#FromInt| 48))) ($Box charType (|char#FromInt| 48))))) (|_module.__default.NotSoDeep#canCall| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 57))) ($Box charType (|char#FromInt| 48))) ($Box charType (|char#FromInt| 48))))))) (and (and (= |##o#0@0| (Lit DatatypeTypeType |#_module.Or.A|)) ($IsAlloc DatatypeTypeType |##o#0@0| Tclass._module.Or $Heap@1)) (and (= |##x#1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 52))) ($Box charType (|char#FromInt| 50))))) ($IsAlloc SeqType |##x#1@0| (TSeq TChar) $Heap@1)))) (and (and (and (|_module.__default.WoahThat_ksDeep#canCall| (Lit DatatypeTypeType |#_module.Or.A|) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 52))) ($Box charType (|char#FromInt| 50))))) (|_module.__default.WoahThat_ksDeep#canCall| (Lit DatatypeTypeType |#_module.Or.A|) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 52))) ($Box charType (|char#FromInt| 50)))))) (and (= |##ab#0@0| (Lit DatatypeTypeType (|#_module.AB.AA| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 118)))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 120)))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120))))))) ($IsAlloc DatatypeTypeType |##ab#0@0| Tclass._module.AB $Heap@1))) (and (and (= |##x#2@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53))) ($Box charType (|char#FromInt| 53))) ($Box charType (|char#FromInt| 53))))) ($IsAlloc SeqType |##x#2@0| (TSeq TChar) $Heap@1)) (and (|_module.__default.WoahThat_ksDeepToo#canCall| (Lit DatatypeTypeType (|#_module.AB.AA| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 118)))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 120)))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120)))))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53))) ($Box charType (|char#FromInt| 53))) ($Box charType (|char#FromInt| 53))))) (|_module.__default.WoahThat_ksDeepToo#canCall| (Lit DatatypeTypeType (|#_module.AB.AA| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 118)))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 105)))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 120)))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 120)))))) (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53))) ($Box charType (|char#FromInt| 53))) ($Box charType (|char#FromInt| 53))))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call2formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call2formal@this@0) Tclass._module.Recur? $Heap@1) (=> (and (= |##o#1@0| (Lit DatatypeTypeType |#_module.Or.A|)) ($IsAlloc DatatypeTypeType |##o#1@0| Tclass._module.Or $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($Is intType (int_2_U (LitInt 12)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 12)) Tclass._System.nat) (=> (and (= |##n#0@0| (LitInt 12)) ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@1)) (=> (and (and (= |##m#0@0| (LitInt 80)) ($IsAlloc intType (int_2_U |##m#0@0|) TInt $Heap@1)) (and (|_module.Recur.Follow0#canCall| $Heap@1 call2formal@this@0 (Lit DatatypeTypeType |#_module.Or.A|) (LitInt 12) (LitInt 80)) (|_module.Recur.Follow0#canCall| $Heap@1 call2formal@this@0 (Lit DatatypeTypeType |#_module.Or.A|) (LitInt 12) (LitInt 80)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= call2formal@this@0 null)) (not true))) (=> (and (and ($IsAllocBox ($Box refType call2formal@this@0) Tclass._module.Recur? $Heap@1) (= |##o#2@0| (Lit DatatypeTypeType |#_module.Or.A|))) (and ($IsAlloc DatatypeTypeType |##o#2@0| Tclass._module.Or $Heap@1) (= (ControlFlow 0 2) (- 0 1)))) ($Is intType (int_2_U (LitInt 12)) Tclass._System.nat))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#recur#0| (and ($Is refType |recur#0| Tclass._module.Recur) ($IsAlloc refType |recur#0| Tclass._module.Recur $Heap))) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 9) 2))) anon0_correct))))
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
