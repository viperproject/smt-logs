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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M3.Path () T@U)
(declare-fun |##M3.Path.InternalPath| () T@U)
(declare-fun |##M3.Path.ExternalPath| () T@U)
(declare-fun tytagFamily$Path () T@U)
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
(declare-fun M3.__default.LocInv__Cmd (T@U) T@U)
(declare-fun |M3.__default.LocInv__Cmd#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M3.Path () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#M3.Path.InternalPath| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#M3.Path.ExternalPath| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M3.Path.cmd (T@U) T@U)
(declare-fun M3.Path.deps (T@U) T@U)
(declare-fun M3.Path.exp (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M3.Path.InternalPath_q (T@U) Bool)
(declare-fun M3.Path.ExternalPath_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |$let#3$canCall| () Bool)
(declare-fun |$let#3_cmd| () T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun M3.Path._h13 (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TChar TagChar TagSet TagSeq alloc Tagclass.M3.Path |##M3.Path.InternalPath| |##M3.Path.ExternalPath| tytagFamily$Path)
)
(assert (= (Tag TChar) TagChar))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor SeqType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| |p#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0| Tclass.M3.Path))) ($Is SeqType (M3.__default.LocInv__Cmd |p#0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.636:29|
 :skolemid |5683|
 :pattern ( (M3.__default.LocInv__Cmd |p#0|))
))))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#15#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#15#0#0| i))) (DtRank (|#M3.Path.InternalPath| |a#15#0#0| |a#15#1#0| |a#15#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6882|
 :pattern ( (|Seq#Index| |a#15#0#0| i) (|#M3.Path.InternalPath| |a#15#0#0| |a#15#1#0| |a#15#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#20#2#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#20#2#0| i@@0))) (DtRank (|#M3.Path.InternalPath| |a#20#0#0| |a#20#1#0| |a#20#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6887|
 :pattern ( (|Seq#Index| |a#20#2#0| i@@0) (|#M3.Path.InternalPath| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@1))) (DtRank (|#M3.Path.ExternalPath| |a#27#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6897|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@1) (|#M3.Path.ExternalPath| |a#27#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) (|a#10#2#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Path.InternalPath| |a#10#0#0| |a#10#1#0| |a#10#2#0|)) |##M3.Path.InternalPath|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6872|
 :pattern ( (|#M3.Path.InternalPath| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ) (! (= (M3.Path.cmd (|#M3.Path.InternalPath| |a#14#0#0| |a#14#1#0| |a#14#2#0|)) |a#14#0#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6881|
 :pattern ( (|#M3.Path.InternalPath| |a#14#0#0| |a#14#1#0| |a#14#2#0|))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (= (M3.Path.deps (|#M3.Path.InternalPath| |a#17#0#0| |a#17#1#0| |a#17#2#0|)) |a#17#1#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6884|
 :pattern ( (|#M3.Path.InternalPath| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (= (M3.Path.exp (|#M3.Path.InternalPath| |a#19#0#0| |a#19#1#0| |a#19#2#0|)) |a#19#2#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6886|
 :pattern ( (|#M3.Path.InternalPath| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4970|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (M3.Path.InternalPath_q d) (= (DatatypeCtorId d) |##M3.Path.InternalPath|))
 :qid |unknown.0:0|
 :skolemid |6873|
 :pattern ( (M3.Path.InternalPath_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M3.Path.ExternalPath_q d@@0) (= (DatatypeCtorId d@@0) |##M3.Path.ExternalPath|))
 :qid |unknown.0:0|
 :skolemid |6890|
 :pattern ( (M3.Path.ExternalPath_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4981|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (M3.Path.InternalPath_q d@@1) (exists ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (= d@@1 (|#M3.Path.InternalPath| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6874|
)))
 :qid |unknown.0:0|
 :skolemid |6875|
 :pattern ( (M3.Path.InternalPath_q d@@1))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5001|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5002|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M3.Path.ExternalPath_q d@@2) (exists ((|a#23#0#0| T@U) ) (! (= d@@2 (|#M3.Path.ExternalPath| |a#23#0#0|))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6891|
)))
 :qid |unknown.0:0|
 :skolemid |6892|
 :pattern ( (M3.Path.ExternalPath_q d@@2))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4994|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|p#0@@0| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| |p#0@@0|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |p#0@@0| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@0|)) |$let#3$canCall|) (= (M3.__default.LocInv__Cmd |p#0@@0|) (ite (M3.Path.InternalPath_q |p#0@@0|) (let ((|cmd#0| (M3.Path.cmd |p#0@@0|)))
|cmd#0|) (let ((|cmd#1| |$let#3_cmd|))
|cmd#1|)))))
 :qid |CloudMakeParallelBuildsdfy.797:18|
 :skolemid |5685|
 :pattern ( (M3.__default.LocInv__Cmd |p#0@@0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.M3.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.M3.Path)))
 :qid |unknown.0:0|
 :skolemid |5655|
 :pattern ( ($IsBox bx@@0 Tclass.M3.Path))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.InternalPath| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.M3.Path)  (and (and ($Is SeqType |a#12#0#0| (TSeq TChar)) ($Is SetType |a#12#1#0| (TSet Tclass.M3.Path))) ($Is SeqType |a#12#2#0| (TSeq TChar))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6876|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.InternalPath| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.M3.Path))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.M3.Path) (or (M3.Path.InternalPath_q d@@3) (M3.Path.ExternalPath_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |6901|
 :pattern ( (M3.Path.ExternalPath_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M3.Path))
 :pattern ( (M3.Path.InternalPath_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M3.Path))
)))
(assert (= (Ctor charType) 6))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |4985|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4993|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> |$let#3$canCall| (and ($Is SeqType |$let#3_cmd| (TSeq TChar)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5176|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5022|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5023|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@1) h@@1) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@2) t0@@1 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |5028|
 :pattern ( (|Seq#Index| v@@3 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |5029|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@1) h@@1))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= (|#M3.Path.InternalPath| (Lit SeqType |a#13#0#0|) (Lit SetType |a#13#1#0|) (Lit SeqType |a#13#2#0|)) (Lit DatatypeTypeType (|#M3.Path.InternalPath| |a#13#0#0| |a#13#1#0| |a#13#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6880|
 :pattern ( (|#M3.Path.InternalPath| (Lit SeqType |a#13#0#0|) (Lit SetType |a#13#1#0|) (Lit SeqType |a#13#2#0|)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4956|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4957|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |4962|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |4963|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Path.ExternalPath| |a#22#0#0|)) |##M3.Path.ExternalPath|)
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6889|
 :pattern ( (|#M3.Path.ExternalPath| |a#22#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (M3.Path._h13 (|#M3.Path.ExternalPath| |a#26#0#0|)) |a#26#0#0|)
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6896|
 :pattern ( (|#M3.Path.ExternalPath| |a#26#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4980|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (< (|Seq#Rank| |a#16#0#0|) (DtRank (|#M3.Path.InternalPath| |a#16#0#0| |a#16#1#0| |a#16#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6883|
 :pattern ( (|#M3.Path.InternalPath| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (< (|Seq#Rank| |a#21#2#0|) (DtRank (|#M3.Path.InternalPath| |a#21#0#0| |a#21#1#0| |a#21#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6888|
 :pattern ( (|#M3.Path.InternalPath| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (< (|Seq#Rank| |a#28#0#0|) (DtRank (|#M3.Path.ExternalPath| |a#28#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6898|
 :pattern ( (|#M3.Path.ExternalPath| |a#28#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@2 t1 t2 (MapType0Store t0@@2 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((t0@@3 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 (MapType1Store t0@@3 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7206|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|p#0@@1| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| (Lit DatatypeTypeType |p#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |p#0@@1| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@1|)))))) |$let#3$canCall|) (= (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@1|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@1|)) (let ((|cmd#3| (Lit SeqType (M3.Path.cmd (Lit DatatypeTypeType |p#0@@1|)))))
|cmd#3|) (let ((|cmd#4| |$let#3_cmd|))
|cmd#4|)))))
 :qid |CloudMakeParallelBuildsdfy.797:18|
 :weight 3
 :skolemid |5686|
 :pattern ( (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@1|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (d@@4 T@U) ) (!  (=> (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@4)) (< (DtRank d@@4) (DtRank (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6885|
 :pattern ( (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@4)) (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((bx@@3 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4987|
 :pattern ( ($IsBox bx@@3 (TSet t@@5)))
)))
(assert (forall ((bx@@4 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4990|
 :pattern ( ($IsBox bx@@4 (TSeq t@@6)))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass.M3.Path)) ($IsAlloc DatatypeTypeType d@@5 Tclass.M3.Path $h))
 :qid |unknown.0:0|
 :skolemid |6899|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.M3.Path $h))
)))
(assert (= (Tag Tclass.M3.Path) Tagclass.M3.Path))
(assert (= (TagFamily Tclass.M3.Path) tytagFamily$Path))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6893|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (M3.Path.InternalPath_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.M3.Path $h@@0))) ($IsAlloc SeqType (M3.Path.cmd d@@6) (TSeq TChar) $h@@0))
 :qid |unknown.0:0|
 :skolemid |6877|
 :pattern ( ($IsAlloc SeqType (M3.Path.cmd d@@6) (TSeq TChar) $h@@0))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (M3.Path.InternalPath_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass.M3.Path $h@@1))) ($IsAlloc SeqType (M3.Path.exp d@@7) (TSeq TChar) $h@@1))
 :qid |unknown.0:0|
 :skolemid |6879|
 :pattern ( ($IsAlloc SeqType (M3.Path.exp d@@7) (TSeq TChar) $h@@1))
)))
(assert (forall ((d@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (M3.Path.ExternalPath_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass.M3.Path $h@@2))) ($IsAlloc SeqType (M3.Path._h13 d@@8) (TSeq TChar) $h@@2))
 :qid |unknown.0:0|
 :skolemid |6894|
 :pattern ( ($IsAlloc SeqType (M3.Path._h13 d@@8) (TSeq TChar) $h@@2))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (|#M3.Path.ExternalPath| (Lit SeqType |a#25#0#0|)) (Lit DatatypeTypeType (|#M3.Path.ExternalPath| |a#25#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6895|
 :pattern ( (|#M3.Path.ExternalPath| (Lit SeqType |a#25#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4971|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5177|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (M3.Path.InternalPath_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass.M3.Path $h@@3))) ($IsAlloc SetType (M3.Path.deps d@@9) (TSet Tclass.M3.Path) $h@@3))
 :qid |unknown.0:0|
 :skolemid |6878|
 :pattern ( ($IsAlloc SetType (M3.Path.deps d@@9) (TSet Tclass.M3.Path) $h@@3))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@2)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |5019|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@3) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |5008|
 :pattern ( (|Seq#Index| v@@5 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |5009|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |5222|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |4998|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |cmd#6@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |p#0@@2| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M3.__default.LocInv__Cmd)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon7_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (U_2_bool (Lit boolType (bool_2_U true))))))
(let ((anon13_Else_correct  (=> (and (not (and ($Is SeqType |cmd#6@0| (TSeq TChar)) ($IsAlloc SeqType |cmd#6@0| (TSeq TChar) $Heap@@1))) (= (ControlFlow 0 7) 5)) anon7_correct)))
(let ((anon13_Then_correct  (=> (and (and ($Is SeqType |cmd#6@0| (TSeq TChar)) ($IsAlloc SeqType |cmd#6@0| (TSeq TChar) $Heap@@1)) (= (ControlFlow 0 6) 5)) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (= |p#0@@2| (|#M3.Path.ExternalPath| |_mcc#3#0|)) ($Is SeqType |_mcc#3#0| (TSeq TChar))) (and (=> (= (ControlFlow 0 8) 6) anon13_Then_correct) (=> (= (ControlFlow 0 8) 7) anon13_Else_correct)))))
(let ((anon12_Else_correct true))
(let ((anon11_Else_correct  (=> (or (not (= |p#0@@2| (|#M3.Path.InternalPath| |_mcc#0#0| |_mcc#1#0| |_mcc#2#0|))) (not true)) (and (=> (= (ControlFlow 0 9) 8) anon12_Then_correct) (=> (= (ControlFlow 0 9) 3) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null $Heap@@1 alloc false)) (and (and (=> (= (ControlFlow 0 10) 1) anon10_Then_correct) (=> (= (ControlFlow 0 10) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 10) 9) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is DatatypeTypeType |p#0@@2| Tclass.M3.Path)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 11) 10))) anon0_correct)))
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
