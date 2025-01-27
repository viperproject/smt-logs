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
(declare-fun TagBool () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.TestModule8.V () T@U)
(declare-fun Tagclass.TestModule8.G () T@U)
(declare-fun Tagclass.TestModule8.uint64 () T@U)
(declare-fun |##TestModule8.G.GUint64| () T@U)
(declare-fun |##TestModule8.G.GArray| () T@U)
(declare-fun |##TestModule8.G.GTuple| () T@U)
(declare-fun |##TestModule8.G.GByteArray| () T@U)
(declare-fun |##TestModule8.G.GTaggedUnion| () T@U)
(declare-fun |##TestModule8.V.VUint64| () T@U)
(declare-fun |##TestModule8.V.VTuple| () T@U)
(declare-fun |##TestModule8.V.VCase| () T@U)
(declare-fun tytagFamily$V () T@U)
(declare-fun tytagFamily$G () T@U)
(declare-fun tytagFamily$uint64 () T@U)
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
(declare-fun |#TestModule8.V.VCase| (Int T@U) T@U)
(declare-fun Tclass.TestModule8.V () T@U)
(declare-fun Tclass.TestModule8.uint64 () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#TestModule8.G.GTuple| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#TestModule8.G.GTaggedUnion| (T@U) T@U)
(declare-fun |#TestModule8.V.VTuple| (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#TestModule8.G.GUint64| () T@U)
(declare-fun |#TestModule8.G.GByteArray| () T@U)
(declare-fun Tclass.TestModule8.G () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TestModule8.G.GUint64_q (T@U) Bool)
(declare-fun TestModule8.G.GArray_q (T@U) Bool)
(declare-fun TestModule8.G.GTuple_q (T@U) Bool)
(declare-fun TestModule8.G.GByteArray_q (T@U) Bool)
(declare-fun TestModule8.G.GTaggedUnion_q (T@U) Bool)
(declare-fun TestModule8.V.VUint64_q (T@U) Bool)
(declare-fun TestModule8.V.VTuple_q (T@U) Bool)
(declare-fun TestModule8.V.VCase_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#TestModule8.G.GArray| (T@U) T@U)
(declare-fun |#TestModule8.V.VUint64| (Int) T@U)
(declare-fun TestModule8.__default.ValInGrammar (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |TestModule8.__default.ValInGrammar#canCall| (T@U T@U) Bool)
(declare-fun TestModule8.V.t (T@U) T@U)
(declare-fun TestModule8.G.t (T@U) T@U)
(declare-fun TestModule8.V.val (T@U) T@U)
(declare-fun TestModule8.V.c (T@U) Int)
(declare-fun TestModule8.G.cases (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun TestModule8.G.elt (T@U) T@U)
(declare-fun TestModule8.V.u (T@U) Int)
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
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun $LZ () T@U)
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
(assert (distinct TBool TagBool TagSeq alloc Tagclass.TestModule8.V Tagclass.TestModule8.G Tagclass.TestModule8.uint64 |##TestModule8.G.GUint64| |##TestModule8.G.GArray| |##TestModule8.G.GTuple| |##TestModule8.G.GByteArray| |##TestModule8.G.GTaggedUnion| |##TestModule8.V.VUint64| |##TestModule8.V.VTuple| |##TestModule8.V.VCase| tytagFamily$V tytagFamily$G tytagFamily$uint64)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#42#0#0| Int) (|a#42#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#TestModule8.V.VCase| |a#42#0#0| |a#42#1#0|) Tclass.TestModule8.V)  (and ($Is intType (int_2_U |a#42#0#0|) Tclass.TestModule8.uint64) ($Is DatatypeTypeType |a#42#1#0| Tclass.TestModule8.V)))
 :qid |Fuellegacydfy.306:28|
 :skolemid |6116|
 :pattern ( ($Is DatatypeTypeType (|#TestModule8.V.VCase| |a#42#0#0| |a#42#1#0|) Tclass.TestModule8.V))
)))
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass.TestModule8.uint64 $h)
 :qid |unknown.0:0|
 :skolemid |6051|
 :pattern ( ($IsAlloc intType |i#0| Tclass.TestModule8.uint64 $h))
)))
(assert (forall ((|a#15#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#15#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#15#0#0| i))) (DtRank (|#TestModule8.G.GTuple| |a#15#0#0|))))
 :qid |Fuellegacydfy.300:25|
 :skolemid |6071|
 :pattern ( (|Seq#Index| |a#15#0#0| i) (|#TestModule8.G.GTuple| |a#15#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#26#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#26#0#0| i@@0))) (DtRank (|#TestModule8.G.GTaggedUnion| |a#26#0#0|))))
 :qid |Fuellegacydfy.302:31|
 :skolemid |6083|
 :pattern ( (|Seq#Index| |a#26#0#0| i@@0) (|#TestModule8.G.GTaggedUnion| |a#26#0#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#38#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#38#0#0| i@@1))) (DtRank (|#TestModule8.V.VTuple| |a#38#0#0|))))
 :qid |Fuellegacydfy.305:29|
 :skolemid |6110|
 :pattern ( (|Seq#Index| |a#38#0#0| i@@1) (|#TestModule8.V.VTuple| |a#38#0#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#TestModule8.G.GUint64|) |##TestModule8.G.GUint64|))
(assert (= (DatatypeCtorId |#TestModule8.G.GByteArray|) |##TestModule8.G.GByteArray|))
(assert ($Is DatatypeTypeType |#TestModule8.G.GUint64| Tclass.TestModule8.G))
(assert ($Is DatatypeTypeType |#TestModule8.G.GByteArray| Tclass.TestModule8.G))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5445|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5443|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (TestModule8.G.GUint64_q d) (= (DatatypeCtorId d) |##TestModule8.G.GUint64|))
 :qid |unknown.0:0|
 :skolemid |6052|
 :pattern ( (TestModule8.G.GUint64_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (TestModule8.G.GArray_q d@@0) (= (DatatypeCtorId d@@0) |##TestModule8.G.GArray|))
 :qid |unknown.0:0|
 :skolemid |6055|
 :pattern ( (TestModule8.G.GArray_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (TestModule8.G.GTuple_q d@@1) (= (DatatypeCtorId d@@1) |##TestModule8.G.GTuple|))
 :qid |unknown.0:0|
 :skolemid |6064|
 :pattern ( (TestModule8.G.GTuple_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (TestModule8.G.GByteArray_q d@@2) (= (DatatypeCtorId d@@2) |##TestModule8.G.GByteArray|))
 :qid |unknown.0:0|
 :skolemid |6073|
 :pattern ( (TestModule8.G.GByteArray_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (TestModule8.G.GTaggedUnion_q d@@3) (= (DatatypeCtorId d@@3) |##TestModule8.G.GTaggedUnion|))
 :qid |unknown.0:0|
 :skolemid |6076|
 :pattern ( (TestModule8.G.GTaggedUnion_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (TestModule8.V.VUint64_q d@@4) (= (DatatypeCtorId d@@4) |##TestModule8.V.VUint64|))
 :qid |unknown.0:0|
 :skolemid |6095|
 :pattern ( (TestModule8.V.VUint64_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (TestModule8.V.VTuple_q d@@5) (= (DatatypeCtorId d@@5) |##TestModule8.V.VTuple|))
 :qid |unknown.0:0|
 :skolemid |6103|
 :pattern ( (TestModule8.V.VTuple_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (TestModule8.V.VCase_q d@@6) (= (DatatypeCtorId d@@6) |##TestModule8.V.VCase|))
 :qid |unknown.0:0|
 :skolemid |6113|
 :pattern ( (TestModule8.V.VCase_q d@@6))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5454|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (TestModule8.V.VCase_q d@@7) (exists ((|a#41#0#0| Int) (|a#41#1#0| T@U) ) (! (= d@@7 (|#TestModule8.V.VCase| |a#41#0#0| |a#41#1#0|))
 :qid |Fuellegacydfy.306:28|
 :skolemid |6114|
)))
 :qid |unknown.0:0|
 :skolemid |6115|
 :pattern ( (TestModule8.V.VCase_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (TestModule8.G.GUint64_q d@@8) (= d@@8 |#TestModule8.G.GUint64|))
 :qid |unknown.0:0|
 :skolemid |6053|
 :pattern ( (TestModule8.G.GUint64_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (TestModule8.G.GByteArray_q d@@9) (= d@@9 |#TestModule8.G.GByteArray|))
 :qid |unknown.0:0|
 :skolemid |6074|
 :pattern ( (TestModule8.G.GByteArray_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (TestModule8.G.GArray_q d@@10) (exists ((|a#5#0#0| T@U) ) (! (= d@@10 (|#TestModule8.G.GArray| |a#5#0#0|))
 :qid |Fuellegacydfy.299:25|
 :skolemid |6056|
)))
 :qid |unknown.0:0|
 :skolemid |6057|
 :pattern ( (TestModule8.G.GArray_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (TestModule8.G.GTuple_q d@@11) (exists ((|a#11#0#0| T@U) ) (! (= d@@11 (|#TestModule8.G.GTuple| |a#11#0#0|))
 :qid |Fuellegacydfy.300:25|
 :skolemid |6065|
)))
 :qid |unknown.0:0|
 :skolemid |6066|
 :pattern ( (TestModule8.G.GTuple_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (TestModule8.G.GTaggedUnion_q d@@12) (exists ((|a#22#0#0| T@U) ) (! (= d@@12 (|#TestModule8.G.GTaggedUnion| |a#22#0#0|))
 :qid |Fuellegacydfy.302:31|
 :skolemid |6077|
)))
 :qid |unknown.0:0|
 :skolemid |6078|
 :pattern ( (TestModule8.G.GTaggedUnion_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (TestModule8.V.VUint64_q d@@13) (exists ((|a#29#0#0| Int) ) (! (= d@@13 (|#TestModule8.V.VUint64| |a#29#0#0|))
 :qid |Fuellegacydfy.304:30|
 :skolemid |6096|
)))
 :qid |unknown.0:0|
 :skolemid |6097|
 :pattern ( (TestModule8.V.VUint64_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (TestModule8.V.VTuple_q d@@14) (exists ((|a#34#0#0| T@U) ) (! (= d@@14 (|#TestModule8.V.VTuple| |a#34#0#0|))
 :qid |Fuellegacydfy.305:29|
 :skolemid |6104|
)))
 :qid |unknown.0:0|
 :skolemid |6105|
 :pattern ( (TestModule8.V.VTuple_q d@@14))
)))
(assert (forall (($ly T@U) (|val#0| T@U) (|grammar#0| T@U) ) (! (= (TestModule8.__default.ValInGrammar ($LS $ly) |val#0| |grammar#0|) (TestModule8.__default.ValInGrammar $ly |val#0| |grammar#0|))
 :qid |Fuellegacydfy.308:35|
 :skolemid |5956|
 :pattern ( (TestModule8.__default.ValInGrammar ($LS $ly) |val#0| |grammar#0|))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5467|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.TestModule8.V) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass.TestModule8.V)))
 :qid |unknown.0:0|
 :skolemid |5958|
 :pattern ( ($IsBox bx Tclass.TestModule8.V))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.TestModule8.G) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.TestModule8.G)))
 :qid |unknown.0:0|
 :skolemid |5959|
 :pattern ( ($IsBox bx@@0 Tclass.TestModule8.G))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.TestModule8.uint64) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass.TestModule8.uint64)))
 :qid |unknown.0:0|
 :skolemid |5968|
 :pattern ( ($IsBox bx@@1 Tclass.TestModule8.uint64))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#TestModule8.G.GArray| |a#6#0#0|) Tclass.TestModule8.G) ($Is DatatypeTypeType |a#6#0#0| Tclass.TestModule8.G))
 :qid |Fuellegacydfy.299:25|
 :skolemid |6058|
 :pattern ( ($Is DatatypeTypeType (|#TestModule8.G.GArray| |a#6#0#0|) Tclass.TestModule8.G))
)))
(assert (forall ((|a#30#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#TestModule8.V.VUint64| |a#30#0#0|) Tclass.TestModule8.V) ($Is intType (int_2_U |a#30#0#0|) Tclass.TestModule8.uint64))
 :qid |Fuellegacydfy.304:30|
 :skolemid |6098|
 :pattern ( ($Is DatatypeTypeType (|#TestModule8.V.VUint64| |a#30#0#0|) Tclass.TestModule8.V))
)))
(assert (= (Ctor SeqType) 4))
(assert (forall ((|a#12#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#TestModule8.G.GTuple| |a#12#0#0|) Tclass.TestModule8.G) ($Is SeqType |a#12#0#0| (TSeq Tclass.TestModule8.G)))
 :qid |Fuellegacydfy.300:25|
 :skolemid |6067|
 :pattern ( ($Is DatatypeTypeType (|#TestModule8.G.GTuple| |a#12#0#0|) Tclass.TestModule8.G))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#TestModule8.G.GTaggedUnion| |a#23#0#0|) Tclass.TestModule8.G) ($Is SeqType |a#23#0#0| (TSeq Tclass.TestModule8.G)))
 :qid |Fuellegacydfy.302:31|
 :skolemid |6079|
 :pattern ( ($Is DatatypeTypeType (|#TestModule8.G.GTaggedUnion| |a#23#0#0|) Tclass.TestModule8.G))
)))
(assert (forall ((|a#35#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#TestModule8.V.VTuple| |a#35#0#0|) Tclass.TestModule8.V) ($Is SeqType |a#35#0#0| (TSeq Tclass.TestModule8.V)))
 :qid |Fuellegacydfy.305:29|
 :skolemid |6106|
 :pattern ( ($Is DatatypeTypeType (|#TestModule8.V.VTuple| |a#35#0#0|) Tclass.TestModule8.V))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) (|val#0@@0| T@U) (|grammar#0@@0| T@U) ) (!  (=> (or (|TestModule8.__default.ValInGrammar#canCall| (Lit DatatypeTypeType |val#0@@0|) (Lit DatatypeTypeType |grammar#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |val#0@@0| Tclass.TestModule8.V) ($Is DatatypeTypeType |grammar#0@@0| Tclass.TestModule8.G)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (TestModule8.V.VUint64_q (Lit DatatypeTypeType |val#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (TestModule8.V.VTuple_q (Lit DatatypeTypeType |val#0@@0|))))) (let ((|t#3| (Lit SeqType (TestModule8.V.t (Lit DatatypeTypeType |val#0@@0|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U (TestModule8.G.GTuple_q (Lit DatatypeTypeType |grammar#0@@0|))))) (=> (= (|Seq#Length| |t#3|) (|Seq#Length| (Lit SeqType (TestModule8.G.t (Lit DatatypeTypeType |grammar#0@@0|))))) (forall ((|i#3| Int) ) (!  (=> (<= (LitInt 0) |i#3|) (=> (< |i#3| (|Seq#Length| |t#3|)) (|TestModule8.__default.ValInGrammar#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |t#3| |i#3|)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (TestModule8.G.t (Lit DatatypeTypeType |grammar#0@@0|))) |i#3|)))))
 :qid |Fuellegacydfy.313:49|
 :skolemid |5966|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.t |grammar#0@@0|) |i#3|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| |t#3| |i#3|)))
)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (TestModule8.V.VTuple_q (Lit DatatypeTypeType |val#0@@0|)))))) (let ((|val#4| (Lit DatatypeTypeType (TestModule8.V.val (Lit DatatypeTypeType |val#0@@0|)))))
(let ((|c#3| (LitInt (TestModule8.V.c (Lit DatatypeTypeType |val#0@@0|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U (TestModule8.G.GTaggedUnion_q (Lit DatatypeTypeType |grammar#0@@0|))))) (=> (< |c#3| (|Seq#Length| (Lit SeqType (TestModule8.G.cases (Lit DatatypeTypeType |grammar#0@@0|))))) (|TestModule8.__default.ValInGrammar#canCall| |val#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (TestModule8.G.cases (Lit DatatypeTypeType |grammar#0@@0|))) |c#3|)))))))))) (= (TestModule8.__default.ValInGrammar ($LS $ly@@0) (Lit DatatypeTypeType |val#0@@0|) (Lit DatatypeTypeType |grammar#0@@0|)) (ite (TestModule8.V.VUint64_q (Lit DatatypeTypeType |val#0@@0|)) (TestModule8.G.GUint64_q (Lit DatatypeTypeType |grammar#0@@0|)) (ite (TestModule8.V.VTuple_q (Lit DatatypeTypeType |val#0@@0|)) (let ((|t#2| (Lit SeqType (TestModule8.V.t (Lit DatatypeTypeType |val#0@@0|)))))
 (and (and (TestModule8.G.GTuple_q (Lit DatatypeTypeType |grammar#0@@0|)) (= (|Seq#Length| |t#2|) (|Seq#Length| (Lit SeqType (TestModule8.G.t (Lit DatatypeTypeType |grammar#0@@0|)))))) (forall ((|i#2| Int) ) (!  (=> (and (<= (LitInt 0) |i#2|) (< |i#2| (|Seq#Length| |t#2|))) (TestModule8.__default.ValInGrammar ($LS $ly@@0) ($Unbox DatatypeTypeType (|Seq#Index| |t#2| |i#2|)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (TestModule8.G.t (Lit DatatypeTypeType |grammar#0@@0|))) |i#2|))))
 :qid |Fuellegacydfy.313:49|
 :skolemid |5965|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.t |grammar#0@@0|) |i#2|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| |t#2| |i#2|)))
)))) (let ((|val#3| (Lit DatatypeTypeType (TestModule8.V.val (Lit DatatypeTypeType |val#0@@0|)))))
(let ((|c#2| (LitInt (TestModule8.V.c (Lit DatatypeTypeType |val#0@@0|)))))
 (and (and (TestModule8.G.GTaggedUnion_q (Lit DatatypeTypeType |grammar#0@@0|)) (< |c#2| (|Seq#Length| (Lit SeqType (TestModule8.G.cases (Lit DatatypeTypeType |grammar#0@@0|)))))) (TestModule8.__default.ValInGrammar ($LS $ly@@0) |val#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType (TestModule8.G.cases (Lit DatatypeTypeType |grammar#0@@0|))) |c#2|)))))))))))
 :qid |Fuellegacydfy.308:35|
 :weight 3
 :skolemid |5967|
 :pattern ( (TestModule8.__default.ValInGrammar ($LS $ly@@0) (Lit DatatypeTypeType |val#0@@0|) (Lit DatatypeTypeType |grammar#0@@0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) (|val#0@@1| T@U) (|grammar#0@@1| T@U) ) (!  (=> (or (|TestModule8.__default.ValInGrammar#canCall| |val#0@@1| |grammar#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |val#0@@1| Tclass.TestModule8.V) ($Is DatatypeTypeType |grammar#0@@1| Tclass.TestModule8.G)))) (and (=> (not (TestModule8.V.VUint64_q |val#0@@1|)) (and (=> (TestModule8.V.VTuple_q |val#0@@1|) (let ((|t#1| (TestModule8.V.t |val#0@@1|)))
 (=> (TestModule8.G.GTuple_q |grammar#0@@1|) (=> (= (|Seq#Length| |t#1|) (|Seq#Length| (TestModule8.G.t |grammar#0@@1|))) (forall ((|i#1| Int) ) (!  (=> (<= (LitInt 0) |i#1|) (=> (< |i#1| (|Seq#Length| |t#1|)) (|TestModule8.__default.ValInGrammar#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |t#1| |i#1|)) ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.t |grammar#0@@1|) |i#1|)))))
 :qid |Fuellegacydfy.313:49|
 :skolemid |5963|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.t |grammar#0@@1|) |i#1|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| |t#1| |i#1|)))
)))))) (=> (not (TestModule8.V.VTuple_q |val#0@@1|)) (let ((|val#2| (TestModule8.V.val |val#0@@1|)))
(let ((|c#1| (TestModule8.V.c |val#0@@1|)))
 (=> (TestModule8.G.GTaggedUnion_q |grammar#0@@1|) (=> (< |c#1| (|Seq#Length| (TestModule8.G.cases |grammar#0@@1|))) (|TestModule8.__default.ValInGrammar#canCall| |val#2| ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.cases |grammar#0@@1|) |c#1|)))))))))) (= (TestModule8.__default.ValInGrammar ($LS $ly@@1) |val#0@@1| |grammar#0@@1|) (ite (TestModule8.V.VUint64_q |val#0@@1|) (TestModule8.G.GUint64_q |grammar#0@@1|) (ite (TestModule8.V.VTuple_q |val#0@@1|) (let ((|t#0| (TestModule8.V.t |val#0@@1|)))
 (and (and (TestModule8.G.GTuple_q |grammar#0@@1|) (= (|Seq#Length| |t#0|) (|Seq#Length| (TestModule8.G.t |grammar#0@@1|)))) (forall ((|i#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |t#0|))) (TestModule8.__default.ValInGrammar $ly@@1 ($Unbox DatatypeTypeType (|Seq#Index| |t#0| |i#0@@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.t |grammar#0@@1|) |i#0@@0|))))
 :qid |Fuellegacydfy.313:49|
 :skolemid |5962|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.t |grammar#0@@1|) |i#0@@0|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| |t#0| |i#0@@0|)))
)))) (let ((|val#1| (TestModule8.V.val |val#0@@1|)))
(let ((|c#0| (TestModule8.V.c |val#0@@1|)))
 (and (and (TestModule8.G.GTaggedUnion_q |grammar#0@@1|) (< |c#0| (|Seq#Length| (TestModule8.G.cases |grammar#0@@1|)))) (TestModule8.__default.ValInGrammar $ly@@1 |val#1| ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.cases |grammar#0@@1|) |c#0|)))))))))))
 :qid |Fuellegacydfy.308:35|
 :skolemid |5964|
 :pattern ( (TestModule8.__default.ValInGrammar ($LS $ly@@1) |val#0@@1| |grammar#0@@1|))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |5457|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5466|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5649|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#40#0#0| Int) (|a#40#1#0| T@U) ) (! (= (DatatypeCtorId (|#TestModule8.V.VCase| |a#40#0#0| |a#40#1#0|)) |##TestModule8.V.VCase|)
 :qid |Fuellegacydfy.306:28|
 :skolemid |6112|
 :pattern ( (|#TestModule8.V.VCase| |a#40#0#0| |a#40#1#0|))
)))
(assert (forall ((|a#44#0#0| Int) (|a#44#1#0| T@U) ) (! (= (TestModule8.V.c (|#TestModule8.V.VCase| |a#44#0#0| |a#44#1#0|)) |a#44#0#0|)
 :qid |Fuellegacydfy.306:28|
 :skolemid |6120|
 :pattern ( (|#TestModule8.V.VCase| |a#44#0#0| |a#44#1#0|))
)))
(assert (forall ((|a#45#0#0| Int) (|a#45#1#0| T@U) ) (! (= (TestModule8.V.val (|#TestModule8.V.VCase| |a#45#0#0| |a#45#1#0|)) |a#45#1#0|)
 :qid |Fuellegacydfy.306:28|
 :skolemid |6121|
 :pattern ( (|#TestModule8.V.VCase| |a#45#0#0| |a#45#1#0|))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@2) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |5501|
 :pattern ( (|Seq#Index| v@@1 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |5502|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |5435|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |5436|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#TestModule8.G.GArray| |a#4#0#0|)) |##TestModule8.G.GArray|)
 :qid |Fuellegacydfy.299:25|
 :skolemid |6054|
 :pattern ( (|#TestModule8.G.GArray| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (TestModule8.G.elt (|#TestModule8.G.GArray| |a#8#0#0|)) |a#8#0#0|)
 :qid |Fuellegacydfy.299:25|
 :skolemid |6061|
 :pattern ( (|#TestModule8.G.GArray| |a#8#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (DatatypeCtorId (|#TestModule8.G.GTuple| |a#10#0#0|)) |##TestModule8.G.GTuple|)
 :qid |Fuellegacydfy.300:25|
 :skolemid |6063|
 :pattern ( (|#TestModule8.G.GTuple| |a#10#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (TestModule8.G.t (|#TestModule8.G.GTuple| |a#14#0#0|)) |a#14#0#0|)
 :qid |Fuellegacydfy.300:25|
 :skolemid |6070|
 :pattern ( (|#TestModule8.G.GTuple| |a#14#0#0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (DatatypeCtorId (|#TestModule8.G.GTaggedUnion| |a#21#0#0|)) |##TestModule8.G.GTaggedUnion|)
 :qid |Fuellegacydfy.302:31|
 :skolemid |6075|
 :pattern ( (|#TestModule8.G.GTaggedUnion| |a#21#0#0|))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (TestModule8.G.cases (|#TestModule8.G.GTaggedUnion| |a#25#0#0|)) |a#25#0#0|)
 :qid |Fuellegacydfy.302:31|
 :skolemid |6082|
 :pattern ( (|#TestModule8.G.GTaggedUnion| |a#25#0#0|))
)))
(assert (forall ((|a#28#0#0| Int) ) (! (= (DatatypeCtorId (|#TestModule8.V.VUint64| |a#28#0#0|)) |##TestModule8.V.VUint64|)
 :qid |Fuellegacydfy.304:30|
 :skolemid |6094|
 :pattern ( (|#TestModule8.V.VUint64| |a#28#0#0|))
)))
(assert (forall ((|a#32#0#0| Int) ) (! (= (TestModule8.V.u (|#TestModule8.V.VUint64| |a#32#0#0|)) |a#32#0#0|)
 :qid |Fuellegacydfy.304:30|
 :skolemid |6101|
 :pattern ( (|#TestModule8.V.VUint64| |a#32#0#0|))
)))
(assert (forall ((|a#33#0#0| T@U) ) (! (= (DatatypeCtorId (|#TestModule8.V.VTuple| |a#33#0#0|)) |##TestModule8.V.VTuple|)
 :qid |Fuellegacydfy.305:29|
 :skolemid |6102|
 :pattern ( (|#TestModule8.V.VTuple| |a#33#0#0|))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (TestModule8.V.t (|#TestModule8.V.VTuple| |a#37#0#0|)) |a#37#0#0|)
 :qid |Fuellegacydfy.305:29|
 :skolemid |6109|
 :pattern ( (|#TestModule8.V.VTuple| |a#37#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5453|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#46#0#0| Int) (|a#46#1#0| T@U) ) (! (< (DtRank |a#46#1#0|) (DtRank (|#TestModule8.V.VCase| |a#46#0#0| |a#46#1#0|)))
 :qid |Fuellegacydfy.306:28|
 :skolemid |6122|
 :pattern ( (|#TestModule8.V.VCase| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#TestModule8.G.GArray| |a#9#0#0|)))
 :qid |Fuellegacydfy.299:25|
 :skolemid |6062|
 :pattern ( (|#TestModule8.G.GArray| |a#9#0#0|))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (< (|Seq#Rank| |a#16#0#0|) (DtRank (|#TestModule8.G.GTuple| |a#16#0#0|)))
 :qid |Fuellegacydfy.300:25|
 :skolemid |6072|
 :pattern ( (|#TestModule8.G.GTuple| |a#16#0#0|))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (< (|Seq#Rank| |a#27#0#0|) (DtRank (|#TestModule8.G.GTaggedUnion| |a#27#0#0|)))
 :qid |Fuellegacydfy.302:31|
 :skolemid |6084|
 :pattern ( (|#TestModule8.G.GTaggedUnion| |a#27#0#0|))
)))
(assert (forall ((|a#39#0#0| T@U) ) (! (< (|Seq#Rank| |a#39#0#0|) (DtRank (|#TestModule8.V.VTuple| |a#39#0#0|)))
 :qid |Fuellegacydfy.305:29|
 :skolemid |6111|
 :pattern ( (|#TestModule8.V.VTuple| |a#39#0#0|))
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
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |8332|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|i#0@@1| T@U) ) (! (= ($Is intType |i#0@@1| Tclass.TestModule8.uint64)  (and (<= (LitInt 0) (U_2_int |i#0@@1|)) (< (U_2_int |i#0@@1|) 18446744073709551616)))
 :qid |unknown.0:0|
 :skolemid |6050|
 :pattern ( ($Is intType |i#0@@1| Tclass.TestModule8.uint64))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 Tclass.TestModule8.V) (or (or (TestModule8.V.VUint64_q d@@15) (TestModule8.V.VTuple_q d@@15)) (TestModule8.V.VCase_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |6125|
 :pattern ( (TestModule8.V.VCase_q d@@15) ($Is DatatypeTypeType d@@15 Tclass.TestModule8.V))
 :pattern ( (TestModule8.V.VTuple_q d@@15) ($Is DatatypeTypeType d@@15 Tclass.TestModule8.V))
 :pattern ( (TestModule8.V.VUint64_q d@@15) ($Is DatatypeTypeType d@@15 Tclass.TestModule8.V))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |5463|
 :pattern ( ($IsBox bx@@3 (TSeq t@@3)))
)))
(assert (forall ((d@@16 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@16 Tclass.TestModule8.G)) ($IsAlloc DatatypeTypeType d@@16 Tclass.TestModule8.G $h@@0))
 :qid |unknown.0:0|
 :skolemid |6085|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass.TestModule8.G $h@@0))
)))
(assert (forall ((d@@17 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@17 Tclass.TestModule8.V)) ($IsAlloc DatatypeTypeType d@@17 Tclass.TestModule8.V $h@@1))
 :qid |unknown.0:0|
 :skolemid |6123|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 Tclass.TestModule8.V $h@@1))
)))
(assert (= (Tag Tclass.TestModule8.V) Tagclass.TestModule8.V))
(assert (= (TagFamily Tclass.TestModule8.V) tytagFamily$V))
(assert (= (Tag Tclass.TestModule8.G) Tagclass.TestModule8.G))
(assert (= (TagFamily Tclass.TestModule8.G) tytagFamily$G))
(assert (= (Tag Tclass.TestModule8.uint64) Tagclass.TestModule8.uint64))
(assert (= (TagFamily Tclass.TestModule8.uint64) tytagFamily$uint64))
(assert (= |#TestModule8.G.GUint64| (Lit DatatypeTypeType |#TestModule8.G.GUint64|)))
(assert (= |#TestModule8.G.GByteArray| (Lit DatatypeTypeType |#TestModule8.G.GByteArray|)))
(assert (forall ((d@@18 T@U) ) (!  (=> ($Is DatatypeTypeType d@@18 Tclass.TestModule8.G) (or (or (or (or (TestModule8.G.GUint64_q d@@18) (TestModule8.G.GArray_q d@@18)) (TestModule8.G.GTuple_q d@@18)) (TestModule8.G.GByteArray_q d@@18)) (TestModule8.G.GTaggedUnion_q d@@18)))
 :qid |unknown.0:0|
 :skolemid |6087|
 :pattern ( (TestModule8.G.GTaggedUnion_q d@@18) ($Is DatatypeTypeType d@@18 Tclass.TestModule8.G))
 :pattern ( (TestModule8.G.GByteArray_q d@@18) ($Is DatatypeTypeType d@@18 Tclass.TestModule8.G))
 :pattern ( (TestModule8.G.GTuple_q d@@18) ($Is DatatypeTypeType d@@18 Tclass.TestModule8.G))
 :pattern ( (TestModule8.G.GArray_q d@@18) ($Is DatatypeTypeType d@@18 Tclass.TestModule8.G))
 :pattern ( (TestModule8.G.GUint64_q d@@18) ($Is DatatypeTypeType d@@18 Tclass.TestModule8.G))
)))
(assert (forall ((d@@19 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (TestModule8.G.GArray_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass.TestModule8.G $h@@2))) ($IsAlloc DatatypeTypeType (TestModule8.G.elt d@@19) Tclass.TestModule8.G $h@@2))
 :qid |unknown.0:0|
 :skolemid |6059|
 :pattern ( ($IsAlloc DatatypeTypeType (TestModule8.G.elt d@@19) Tclass.TestModule8.G $h@@2))
)))
(assert (forall ((d@@20 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (TestModule8.V.VUint64_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass.TestModule8.V $h@@3))) ($IsAlloc intType (int_2_U (TestModule8.V.u d@@20)) Tclass.TestModule8.uint64 $h@@3))
 :qid |unknown.0:0|
 :skolemid |6099|
 :pattern ( ($IsAlloc intType (int_2_U (TestModule8.V.u d@@20)) Tclass.TestModule8.uint64 $h@@3))
)))
(assert (forall ((d@@21 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (TestModule8.V.VCase_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass.TestModule8.V $h@@4))) ($IsAlloc intType (int_2_U (TestModule8.V.c d@@21)) Tclass.TestModule8.uint64 $h@@4))
 :qid |unknown.0:0|
 :skolemid |6117|
 :pattern ( ($IsAlloc intType (int_2_U (TestModule8.V.c d@@21)) Tclass.TestModule8.uint64 $h@@4))
)))
(assert (forall ((d@@22 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (TestModule8.V.VCase_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass.TestModule8.V $h@@5))) ($IsAlloc DatatypeTypeType (TestModule8.V.val d@@22) Tclass.TestModule8.V $h@@5))
 :qid |unknown.0:0|
 :skolemid |6118|
 :pattern ( ($IsAlloc DatatypeTypeType (TestModule8.V.val d@@22) Tclass.TestModule8.V $h@@5))
)))
(assert (forall ((|a#43#0#0| Int) (|a#43#1#0| T@U) ) (! (= (|#TestModule8.V.VCase| (LitInt |a#43#0#0|) (Lit DatatypeTypeType |a#43#1#0|)) (Lit DatatypeTypeType (|#TestModule8.V.VCase| |a#43#0#0| |a#43#1#0|)))
 :qid |Fuellegacydfy.306:28|
 :skolemid |6119|
 :pattern ( (|#TestModule8.V.VCase| (LitInt |a#43#0#0|) (Lit DatatypeTypeType |a#43#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5446|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#TestModule8.G.GArray| (Lit DatatypeTypeType |a#7#0#0|)) (Lit DatatypeTypeType (|#TestModule8.G.GArray| |a#7#0#0|)))
 :qid |Fuellegacydfy.299:25|
 :skolemid |6060|
 :pattern ( (|#TestModule8.G.GArray| (Lit DatatypeTypeType |a#7#0#0|)))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (|#TestModule8.G.GTuple| (Lit SeqType |a#13#0#0|)) (Lit DatatypeTypeType (|#TestModule8.G.GTuple| |a#13#0#0|)))
 :qid |Fuellegacydfy.300:25|
 :skolemid |6069|
 :pattern ( (|#TestModule8.G.GTuple| (Lit SeqType |a#13#0#0|)))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (|#TestModule8.G.GTaggedUnion| (Lit SeqType |a#24#0#0|)) (Lit DatatypeTypeType (|#TestModule8.G.GTaggedUnion| |a#24#0#0|)))
 :qid |Fuellegacydfy.302:31|
 :skolemid |6081|
 :pattern ( (|#TestModule8.G.GTaggedUnion| (Lit SeqType |a#24#0#0|)))
)))
(assert (forall ((|a#31#0#0| Int) ) (! (= (|#TestModule8.V.VUint64| (LitInt |a#31#0#0|)) (Lit DatatypeTypeType (|#TestModule8.V.VUint64| |a#31#0#0|)))
 :qid |Fuellegacydfy.304:30|
 :skolemid |6100|
 :pattern ( (|#TestModule8.V.VUint64| (LitInt |a#31#0#0|)))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= (|#TestModule8.V.VTuple| (Lit SeqType |a#36#0#0|)) (Lit DatatypeTypeType (|#TestModule8.V.VTuple| |a#36#0#0|)))
 :qid |Fuellegacydfy.305:29|
 :skolemid |6108|
 :pattern ( (|#TestModule8.V.VTuple| (Lit SeqType |a#36#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5444|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5650|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((d@@23 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (TestModule8.G.GTuple_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.TestModule8.G $h@@6))) ($IsAlloc SeqType (TestModule8.G.t d@@23) (TSeq Tclass.TestModule8.G) $h@@6))
 :qid |unknown.0:0|
 :skolemid |6068|
 :pattern ( ($IsAlloc SeqType (TestModule8.G.t d@@23) (TSeq Tclass.TestModule8.G) $h@@6))
)))
(assert (forall ((d@@24 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (TestModule8.G.GTaggedUnion_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.TestModule8.G $h@@7))) ($IsAlloc SeqType (TestModule8.G.cases d@@24) (TSeq Tclass.TestModule8.G) $h@@7))
 :qid |unknown.0:0|
 :skolemid |6080|
 :pattern ( ($IsAlloc SeqType (TestModule8.G.cases d@@24) (TSeq Tclass.TestModule8.G) $h@@7))
)))
(assert (forall ((d@@25 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (TestModule8.V.VTuple_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass.TestModule8.V $h@@8))) ($IsAlloc SeqType (TestModule8.V.t d@@25) (TSeq Tclass.TestModule8.V) $h@@8))
 :qid |unknown.0:0|
 :skolemid |6107|
 :pattern ( ($IsAlloc SeqType (TestModule8.V.t d@@25) (TSeq Tclass.TestModule8.V) $h@@8))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |5491|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@3) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |5481|
 :pattern ( (|Seq#Index| v@@3 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |5482|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall (($ly@@2 T@U) (|val#0@@2| T@U) (|grammar#0@@2| T@U) ) (! (= (TestModule8.__default.ValInGrammar $ly@@2 |val#0@@2| |grammar#0@@2|) (TestModule8.__default.ValInGrammar $LZ |val#0@@2| |grammar#0@@2|))
 :qid |Fuellegacydfy.308:35|
 :skolemid |5957|
 :pattern ( (TestModule8.__default.ValInGrammar (AsFuelBottom $ly@@2) |val#0@@2| |grammar#0@@2|))
)))
(assert (forall ((s@@1 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |5695|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |5470|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#4@0| () Int)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun |##val#1@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |grammar#0@@3| () T@U)
(declare-fun |##grammar#1@0| () T@U)
(declare-fun |val#0@@3| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |c#Z#0@0| () Int)
(declare-fun |val#Z#0@0| () T@U)
(declare-fun |##grammar#0@0| () T@U)
(declare-fun |_mcc#2#0| () Int)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |_mcc#0#0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun StartFuel_TestModule8._default.ValInGrammar () T@U)
(declare-fun BaseFuel_TestModule8._default.ValInGrammar () T@U)
(declare-fun StartFuelAssert_TestModule8._default.ValInGrammar () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$TestModule8.__default.ValInGrammar)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon27_Else_correct true))
(let ((anon14_correct true))
(let ((anon29_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (|Seq#Length| |t#Z#0@0|)))) (= (ControlFlow 0 23) 15)) anon14_correct)))
(let ((anon29_Then_correct  (=> (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (|Seq#Length| |t#Z#0@0|))) (and (=> (= (ControlFlow 0 18) (- 0 22)) (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| |t#Z#0@0|)))) (=> (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| |t#Z#0@0|))) (=> (and (= |##val#1@0| ($Unbox DatatypeTypeType (|Seq#Index| |t#Z#0@0| |i#4@0|))) ($IsAlloc DatatypeTypeType |##val#1@0| Tclass.TestModule8.V $Heap)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (TestModule8.G.GTuple_q |grammar#0@@3|)) (=> (TestModule8.G.GTuple_q |grammar#0@@3|) (and (=> (= (ControlFlow 0 18) (- 0 20)) (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| (TestModule8.G.t |grammar#0@@3|))))) (=> (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| (TestModule8.G.t |grammar#0@@3|)))) (=> (and (= |##grammar#1@0| ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.t |grammar#0@@3|) |i#4@0|))) ($IsAlloc DatatypeTypeType |##grammar#1@0| Tclass.TestModule8.G $Heap)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (< (DtRank |##val#1@0|) (DtRank |val#0@@3|)) (and (= (DtRank |##val#1@0|) (DtRank |val#0@@3|)) (< (DtRank |##grammar#1@0|) (DtRank |grammar#0@@3|))))) (=> (or (< (DtRank |##val#1@0|) (DtRank |val#0@@3|)) (and (= (DtRank |##val#1@0|) (DtRank |val#0@@3|)) (< (DtRank |##grammar#1@0|) (DtRank |grammar#0@@3|)))) (=> (and (|TestModule8.__default.ValInGrammar#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |t#Z#0@0| |i#4@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.t |grammar#0@@3|) |i#4@0|))) (= (ControlFlow 0 18) 15)) anon14_correct))))))))))))))
(let ((anon28_Else_correct  (=> (< |i#4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 25) 18) anon29_Then_correct) (=> (= (ControlFlow 0 25) 23) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (<= (LitInt 0) |i#4@0|) (and (=> (= (ControlFlow 0 24) 18) anon29_Then_correct) (=> (= (ControlFlow 0 24) 23) anon29_Else_correct)))))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 26) 24) anon28_Then_correct) (=> (= (ControlFlow 0 26) 25) anon28_Else_correct))))
(let ((anon26_Then_correct  (=> (and (TestModule8.G.GTuple_q |grammar#0@@3|) (= (|Seq#Length| |t#Z#0@0|) (|Seq#Length| (TestModule8.G.t |grammar#0@@3|)))) (and (=> (= (ControlFlow 0 27) 26) anon27_Then_correct) (=> (= (ControlFlow 0 27) 17) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not (and (TestModule8.G.GTuple_q |grammar#0@@3|) (= (|Seq#Length| |t#Z#0@0|) (|Seq#Length| (TestModule8.G.t |grammar#0@@3|))))) (= (ControlFlow 0 16) 15)) anon14_correct)))
(let ((anon25_Else_correct  (=> (not (TestModule8.G.GTuple_q |grammar#0@@3|)) (and (=> (= (ControlFlow 0 30) 27) anon26_Then_correct) (=> (= (ControlFlow 0 30) 16) anon26_Else_correct)))))
(let ((anon25_Then_correct  (=> (TestModule8.G.GTuple_q |grammar#0@@3|) (and (=> (= (ControlFlow 0 28) (- 0 29)) (TestModule8.G.GTuple_q |grammar#0@@3|)) (=> (TestModule8.G.GTuple_q |grammar#0@@3|) (and (=> (= (ControlFlow 0 28) 27) anon26_Then_correct) (=> (= (ControlFlow 0 28) 16) anon26_Else_correct)))))))
(let ((anon24_Then_correct  (=> (= |val#0@@3| (|#TestModule8.V.VTuple| |_mcc#1#0|)) (=> (and (and ($Is SeqType |_mcc#1#0| (TSeq Tclass.TestModule8.V)) (= |let#2#0#0| |_mcc#1#0|)) (and ($Is SeqType |let#2#0#0| (TSeq Tclass.TestModule8.V)) (= |t#Z#0@0| |let#2#0#0|))) (and (=> (= (ControlFlow 0 31) 28) anon25_Then_correct) (=> (= (ControlFlow 0 31) 30) anon25_Else_correct))))))
(let ((anon19_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (TestModule8.G.GTaggedUnion_q |grammar#0@@3|) (< |c#Z#0@0| (|Seq#Length| (TestModule8.G.cases |grammar#0@@3|))))) (= (ControlFlow 0 9) 4)) anon19_correct)))
(let ((anon32_Then_correct  (=> (and (and (TestModule8.G.GTaggedUnion_q |grammar#0@@3|) (< |c#Z#0@0| (|Seq#Length| (TestModule8.G.cases |grammar#0@@3|)))) ($IsAlloc DatatypeTypeType |val#Z#0@0| Tclass.TestModule8.V $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 8)) (TestModule8.G.GTaggedUnion_q |grammar#0@@3|)) (=> (TestModule8.G.GTaggedUnion_q |grammar#0@@3|) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (<= 0 |c#Z#0@0|) (< |c#Z#0@0| (|Seq#Length| (TestModule8.G.cases |grammar#0@@3|))))) (=> (and (<= 0 |c#Z#0@0|) (< |c#Z#0@0| (|Seq#Length| (TestModule8.G.cases |grammar#0@@3|)))) (=> (and (= |##grammar#0@0| ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.cases |grammar#0@@3|) |c#Z#0@0|))) ($IsAlloc DatatypeTypeType |##grammar#0@0| Tclass.TestModule8.G $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (< (DtRank |val#Z#0@0|) (DtRank |val#0@@3|)) (and (= (DtRank |val#Z#0@0|) (DtRank |val#0@@3|)) (< (DtRank |##grammar#0@0|) (DtRank |grammar#0@@3|))))) (=> (or (< (DtRank |val#Z#0@0|) (DtRank |val#0@@3|)) (and (= (DtRank |val#Z#0@0|) (DtRank |val#0@@3|)) (< (DtRank |##grammar#0@0|) (DtRank |grammar#0@@3|)))) (=> (and (|TestModule8.__default.ValInGrammar#canCall| |val#Z#0@0| ($Unbox DatatypeTypeType (|Seq#Index| (TestModule8.G.cases |grammar#0@@3|) |c#Z#0@0|))) (= (ControlFlow 0 5) 4)) anon19_correct)))))))))))
(let ((anon31_Else_correct  (=> (not (TestModule8.G.GTaggedUnion_q |grammar#0@@3|)) (and (=> (= (ControlFlow 0 12) 5) anon32_Then_correct) (=> (= (ControlFlow 0 12) 9) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (TestModule8.G.GTaggedUnion_q |grammar#0@@3|) (and (=> (= (ControlFlow 0 10) (- 0 11)) (TestModule8.G.GTaggedUnion_q |grammar#0@@3|)) (=> (TestModule8.G.GTaggedUnion_q |grammar#0@@3|) (and (=> (= (ControlFlow 0 10) 5) anon32_Then_correct) (=> (= (ControlFlow 0 10) 9) anon32_Else_correct)))))))
(let ((anon30_Then_correct  (=> (= |val#0@@3| (|#TestModule8.V.VCase| |_mcc#2#0| |_mcc#3#0|)) (=> (and (and (and (and (<= (LitInt 0) |_mcc#2#0|) (< |_mcc#2#0| 18446744073709551616)) ($Is DatatypeTypeType |_mcc#3#0| Tclass.TestModule8.V)) (and (= |let#0#0#0| |_mcc#3#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass.TestModule8.V))) (and (and (= |val#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#2#0|)) (and ($Is intType (int_2_U |let#1#0#0|) Tclass.TestModule8.uint64) (= |c#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 13) 10) anon31_Then_correct) (=> (= (ControlFlow 0 13) 12) anon31_Else_correct))))))
(let ((anon30_Else_correct true))
(let ((anon24_Else_correct  (=> (or (not (= |val#0@@3| (|#TestModule8.V.VTuple| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 14) 13) anon30_Then_correct) (=> (= (ControlFlow 0 14) 3) anon30_Else_correct)))))
(let ((anon23_Else_correct  (=> (or (not (= |val#0@@3| (|#TestModule8.V.VUint64| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 32) 31) anon24_Then_correct) (=> (= (ControlFlow 0 32) 14) anon24_Else_correct)))))
(let ((anon23_Then_correct true))
(let ((anon22_Then_correct true))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (= StartFuel_TestModule8._default.ValInGrammar ($LS ($LS BaseFuel_TestModule8._default.ValInGrammar)))) (and (= StartFuelAssert_TestModule8._default.ValInGrammar ($LS ($LS ($LS BaseFuel_TestModule8._default.ValInGrammar)))) (= (AsFuelBottom BaseFuel_TestModule8._default.ValInGrammar) BaseFuel_TestModule8._default.ValInGrammar))) (and (and (=> (= (ControlFlow 0 33) 1) anon22_Then_correct) (=> (= (ControlFlow 0 33) 2) anon23_Then_correct)) (=> (= (ControlFlow 0 33) 32) anon23_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |val#0@@3| Tclass.TestModule8.V) ($Is DatatypeTypeType |grammar#0@@3| Tclass.TestModule8.G)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 34) 33))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
