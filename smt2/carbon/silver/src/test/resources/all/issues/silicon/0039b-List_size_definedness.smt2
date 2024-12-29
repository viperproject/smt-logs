(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.AUTO_CONFIG false)
(set-option :smt.PHASE_SELECTION 0)
(set-option :smt.RESTART_STRATEGY 0)
(set-option :smt.RESTART_FACTOR |1.5|)
(set-option :smt.ARITH.RANDOM_INITIAL_VALUE true)
(set-option :smt.CASE_SPLIT 3)
(set-option :smt.DELAY_UNITS true)
(set-option :NNF.SK_HACK true)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :smt.BV.REFLECT true)
(set-option :smt.qi.max_multi_patterns 1000)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@Ref 0)
(declare-sort T@Field_9045_53 0)
(declare-sort T@Field_9058_9059 0)
(declare-sort T@Field_12841_12842 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13987_13988 0)
(declare-sort T@Field_15398_15403 0)
(declare-sort T@Field_15829_15834 0)
(declare-sort T@Field_12422_1204 0)
(declare-sort T@Field_4658_12842 0)
(declare-sort T@Field_4658_15403 0)
(declare-sort T@Field_12841_4659 0)
(declare-sort T@Field_12841_1204 0)
(declare-sort T@Field_12841_53 0)
(declare-sort T@Field_13987_4659 0)
(declare-sort T@Field_13987_1204 0)
(declare-sort T@Field_13987_53 0)
(declare-datatypes ((T@PolymorphicMapType_9006 0)) (((PolymorphicMapType_9006 (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| (Array T@Ref T@Field_12841_12842 Real)) (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| (Array T@Ref T@Field_9058_9059 Real)) (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| (Array T@Ref T@Field_13987_13988 Real)) (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| (Array T@Ref T@Field_12422_1204 Real)) (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| (Array T@Ref T@Field_12841_4659 Real)) (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| (Array T@Ref T@Field_12841_1204 Real)) (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| (Array T@Ref T@Field_12841_53 Real)) (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| (Array T@Ref T@Field_15398_15403 Real)) (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| (Array T@Ref T@Field_4658_12842 Real)) (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| (Array T@Ref T@Field_9045_53 Real)) (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| (Array T@Ref T@Field_4658_15403 Real)) (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| (Array T@Ref T@Field_13987_4659 Real)) (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| (Array T@Ref T@Field_13987_1204 Real)) (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| (Array T@Ref T@Field_13987_53 Real)) (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| (Array T@Ref T@Field_15829_15834 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9534 0)) (((PolymorphicMapType_9534 (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (Array T@Ref T@Field_9058_9059 Bool)) (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (Array T@Ref T@Field_12422_1204 Bool)) (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (Array T@Ref T@Field_9045_53 Bool)) (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (Array T@Ref T@Field_4658_12842 Bool)) (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (Array T@Ref T@Field_4658_15403 Bool)) (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (Array T@Ref T@Field_12841_4659 Bool)) (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (Array T@Ref T@Field_12841_1204 Bool)) (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (Array T@Ref T@Field_12841_53 Bool)) (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (Array T@Ref T@Field_12841_12842 Bool)) (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (Array T@Ref T@Field_15398_15403 Bool)) (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (Array T@Ref T@Field_13987_4659 Bool)) (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (Array T@Ref T@Field_13987_1204 Bool)) (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (Array T@Ref T@Field_13987_53 Bool)) (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (Array T@Ref T@Field_13987_13988 Bool)) (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (Array T@Ref T@Field_15829_15834 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8985 0)) (((PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| (Array T@Ref T@Field_9045_53 Bool)) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| (Array T@Ref T@Field_9058_9059 T@Ref)) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| (Array T@Ref T@Field_12841_12842 T@FrameType)) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| (Array T@Ref T@Field_13987_13988 T@FrameType)) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| (Array T@Ref T@Field_15398_15403 T@PolymorphicMapType_9534)) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| (Array T@Ref T@Field_15829_15834 T@PolymorphicMapType_9534)) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| (Array T@Ref T@Field_12422_1204 Int)) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| (Array T@Ref T@Field_4658_12842 T@FrameType)) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| (Array T@Ref T@Field_4658_15403 T@PolymorphicMapType_9534)) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| (Array T@Ref T@Field_12841_4659 T@Ref)) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| (Array T@Ref T@Field_12841_1204 Int)) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| (Array T@Ref T@Field_12841_53 Bool)) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| (Array T@Ref T@Field_13987_4659 T@Ref)) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| (Array T@Ref T@Field_13987_1204 Int)) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| (Array T@Ref T@Field_13987_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_9045_53)
(declare-fun List_head () T@Field_9058_9059)
(declare-fun Node_value () T@Field_12422_1204)
(declare-fun Node_next () T@Field_9058_9059)
(declare-fun succHeap (T@PolymorphicMapType_8985 T@PolymorphicMapType_8985) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8985 T@PolymorphicMapType_8985) Bool)
(declare-fun state (T@PolymorphicMapType_8985 T@PolymorphicMapType_9006) Bool)
(declare-fun Node_val_1 (T@PolymorphicMapType_8985 T@Ref) Int)
(declare-fun |Node_val#triggerStateless| (T@Ref) Int)
(declare-fun |Node_valid#trigger_4789| (T@PolymorphicMapType_8985 T@Field_13987_13988) Bool)
(declare-fun Node_valid (T@Ref) T@Field_13987_13988)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_9006) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9534)
(declare-fun List_size (T@PolymorphicMapType_8985 T@Ref) Int)
(declare-fun |List_size#triggerStateless| (T@Ref) Int)
(declare-fun |List_valid#trigger_4764| (T@PolymorphicMapType_8985 T@Field_12841_12842) Bool)
(declare-fun List_valid (T@Ref) T@Field_12841_12842)
(declare-fun null () T@Ref)
(declare-fun Node_size (T@PolymorphicMapType_8985 T@Ref) Int)
(declare-fun IsPredicateField_4764_4765 (T@Field_12841_12842) Bool)
(declare-fun IsPredicateField_4789_4790 (T@Field_13987_13988) Bool)
(declare-fun |List_size'| (T@PolymorphicMapType_8985 T@Ref) Int)
(declare-fun dummyFunction_1492 (Int) Bool)
(declare-fun |Node_val'| (T@PolymorphicMapType_8985 T@Ref) Int)
(declare-fun |Node_size'| (T@PolymorphicMapType_8985 T@Ref) Int)
(declare-fun |Node_size#triggerStateless| (T@Ref) Int)
(declare-fun |List_valid#everUsed_4764| (T@Field_12841_12842) Bool)
(declare-fun |Node_valid#everUsed_4789| (T@Field_13987_13988) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8985 T@PolymorphicMapType_8985 T@PolymorphicMapType_9006) Bool)
(declare-fun PredicateMaskField_4789 (T@Field_13987_13988) T@Field_15829_15834)
(declare-fun HasDirectPerm_13987_12842 (T@PolymorphicMapType_9006 T@Ref T@Field_13987_13988) Bool)
(declare-fun PredicateMaskField_4764 (T@Field_12841_12842) T@Field_15398_15403)
(declare-fun HasDirectPerm_12841_12842 (T@PolymorphicMapType_9006 T@Ref T@Field_12841_12842) Bool)
(declare-fun IsPredicateField_4658_32518 (T@Field_4658_12842) Bool)
(declare-fun PredicateMaskField_4658 (T@Field_4658_12842) T@Field_4658_15403)
(declare-fun HasDirectPerm_4658_12842 (T@PolymorphicMapType_9006 T@Ref T@Field_4658_12842) Bool)
(declare-fun IsWandField_13987_38199 (T@Field_13987_13988) Bool)
(declare-fun WandMaskField_13987 (T@Field_13987_13988) T@Field_15829_15834)
(declare-fun IsWandField_12841_37842 (T@Field_12841_12842) Bool)
(declare-fun WandMaskField_12841 (T@Field_12841_12842) T@Field_15398_15403)
(declare-fun IsWandField_4658_37485 (T@Field_4658_12842) Bool)
(declare-fun WandMaskField_4658 (T@Field_4658_12842) T@Field_4658_15403)
(declare-fun |List_valid#sm| (T@Ref) T@Field_15398_15403)
(declare-fun |Node_valid#sm| (T@Ref) T@Field_15829_15834)
(declare-fun dummyHeap () T@PolymorphicMapType_8985)
(declare-fun ZeroMask () T@PolymorphicMapType_9006)
(declare-fun InsidePredicate_9045_9045 (T@Field_4658_12842 T@FrameType T@Field_4658_12842 T@FrameType) Bool)
(declare-fun InsidePredicate_4789_4789 (T@Field_13987_13988 T@FrameType T@Field_13987_13988 T@FrameType) Bool)
(declare-fun InsidePredicate_4764_12841 (T@Field_12841_12842 T@FrameType T@Field_12841_12842 T@FrameType) Bool)
(declare-fun IsPredicateField_4658_4659 (T@Field_9058_9059) Bool)
(declare-fun IsWandField_4658_4659 (T@Field_9058_9059) Bool)
(declare-fun IsPredicateField_4661_1204 (T@Field_12422_1204) Bool)
(declare-fun IsWandField_4661_1204 (T@Field_12422_1204) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4789_48488 (T@Field_15829_15834) Bool)
(declare-fun IsWandField_4789_48504 (T@Field_15829_15834) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4789_53 (T@Field_13987_53) Bool)
(declare-fun IsWandField_4789_53 (T@Field_13987_53) Bool)
(declare-fun IsPredicateField_4789_1204 (T@Field_13987_1204) Bool)
(declare-fun IsWandField_4789_1204 (T@Field_13987_1204) Bool)
(declare-fun IsPredicateField_4789_4659 (T@Field_13987_4659) Bool)
(declare-fun IsWandField_4789_4659 (T@Field_13987_4659) Bool)
(declare-fun IsPredicateField_4658_47657 (T@Field_4658_15403) Bool)
(declare-fun IsWandField_4658_47673 (T@Field_4658_15403) Bool)
(declare-fun IsPredicateField_4658_53 (T@Field_9045_53) Bool)
(declare-fun IsWandField_4658_53 (T@Field_9045_53) Bool)
(declare-fun IsPredicateField_4764_46854 (T@Field_15398_15403) Bool)
(declare-fun IsWandField_4764_46870 (T@Field_15398_15403) Bool)
(declare-fun IsPredicateField_4764_53 (T@Field_12841_53) Bool)
(declare-fun IsWandField_4764_53 (T@Field_12841_53) Bool)
(declare-fun IsPredicateField_4764_1204 (T@Field_12841_1204) Bool)
(declare-fun IsWandField_4764_1204 (T@Field_12841_1204) Bool)
(declare-fun IsPredicateField_4764_4659 (T@Field_12841_4659) Bool)
(declare-fun IsWandField_4764_4659 (T@Field_12841_4659) Bool)
(declare-fun HasDirectPerm_13987_32273 (T@PolymorphicMapType_9006 T@Ref T@Field_15829_15834) Bool)
(declare-fun HasDirectPerm_13987_53 (T@PolymorphicMapType_9006 T@Ref T@Field_13987_53) Bool)
(declare-fun HasDirectPerm_13987_1204 (T@PolymorphicMapType_9006 T@Ref T@Field_13987_1204) Bool)
(declare-fun HasDirectPerm_13987_4659 (T@PolymorphicMapType_9006 T@Ref T@Field_13987_4659) Bool)
(declare-fun HasDirectPerm_12841_31155 (T@PolymorphicMapType_9006 T@Ref T@Field_15398_15403) Bool)
(declare-fun HasDirectPerm_12841_53 (T@PolymorphicMapType_9006 T@Ref T@Field_12841_53) Bool)
(declare-fun HasDirectPerm_12841_1204 (T@PolymorphicMapType_9006 T@Ref T@Field_12841_1204) Bool)
(declare-fun HasDirectPerm_12841_4659 (T@PolymorphicMapType_9006 T@Ref T@Field_12841_4659) Bool)
(declare-fun HasDirectPerm_4658_29994 (T@PolymorphicMapType_9006 T@Ref T@Field_4658_15403) Bool)
(declare-fun HasDirectPerm_4658_53 (T@PolymorphicMapType_9006 T@Ref T@Field_9045_53) Bool)
(declare-fun HasDirectPerm_4661_1204 (T@PolymorphicMapType_9006 T@Ref T@Field_12422_1204) Bool)
(declare-fun HasDirectPerm_4658_4659 (T@PolymorphicMapType_9006 T@Ref T@Field_9058_9059) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9006 T@PolymorphicMapType_9006 T@PolymorphicMapType_9006) Bool)
(declare-fun |List_size#frame| (T@FrameType T@Ref) Int)
(declare-fun |Node_val#frame| (T@FrameType T@Ref) Int)
(declare-fun |Node_size#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_4764_4765 (T@Field_12841_12842) Int)
(declare-fun getPredWandId_4789_4790 (T@Field_13987_13988) Int)
(declare-fun |List_size#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Node_size#trigger| (T@FrameType T@Ref) Bool)
(declare-fun InsidePredicate_9045_12841 (T@Field_4658_12842 T@FrameType T@Field_12841_12842 T@FrameType) Bool)
(declare-fun InsidePredicate_9045_4789 (T@Field_4658_12842 T@FrameType T@Field_13987_13988 T@FrameType) Bool)
(declare-fun InsidePredicate_4764_9045 (T@Field_12841_12842 T@FrameType T@Field_4658_12842 T@FrameType) Bool)
(declare-fun InsidePredicate_4764_4789 (T@Field_12841_12842 T@FrameType T@Field_13987_13988 T@FrameType) Bool)
(declare-fun InsidePredicate_4789_12841 (T@Field_13987_13988 T@FrameType T@Field_12841_12842 T@FrameType) Bool)
(declare-fun InsidePredicate_4789_9045 (T@Field_13987_13988 T@FrameType T@Field_4658_12842 T@FrameType) Bool)
(assert (distinct List_head Node_next)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8985) (Heap1 T@PolymorphicMapType_8985) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8985) (Mask T@PolymorphicMapType_9006) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (Node_val_1 Heap this) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap) this Node_value)))
 :qid |stdinbpl.347:15|
 :skolemid |30|
 :pattern ( (state Heap Mask) (Node_val_1 Heap this))
 :pattern ( (state Heap Mask) (|Node_val#triggerStateless| this) (|Node_valid#trigger_4789| Heap (Node_valid this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8985) (Mask@@0 T@PolymorphicMapType_9006) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8985) (Heap1@@0 T@PolymorphicMapType_8985) (Heap2 T@PolymorphicMapType_8985) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_15829_15834) ) (!  (not (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13987_13988) ) (!  (not (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13987_53) ) (!  (not (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13987_1204) ) (!  (not (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13987_4659) ) (!  (not (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15398_15403) ) (!  (not (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_12841_12842) ) (!  (not (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12841_53) ) (!  (not (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12841_1204) ) (!  (not (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_12841_4659) ) (!  (not (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_4658_15403) ) (!  (not (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_4658_12842) ) (!  (not (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9045_53) ) (!  (not (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_12422_1204) ) (!  (not (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9058_9059) ) (!  (not (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8985) (Mask@@1 T@PolymorphicMapType_9006) (this@@0 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 0)) (= (List_size Heap@@1 this@@0) (ite (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@1) this@@0 List_head) null) 0 (Node_size Heap@@1 (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@1) this@@0 List_head)))))
 :qid |stdinbpl.212:15|
 :skolemid |24|
 :pattern ( (state Heap@@1 Mask@@1) (List_size Heap@@1 this@@0))
 :pattern ( (state Heap@@1 Mask@@1) (|List_size#triggerStateless| this@@0) (|List_valid#trigger_4764| Heap@@1 (List_valid this@@0)))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_4764_4765 (List_valid this@@1))
 :qid |stdinbpl.604:15|
 :skolemid |41|
 :pattern ( (List_valid this@@1))
)))
(assert (forall ((this@@2 T@Ref) ) (! (IsPredicateField_4789_4790 (Node_valid this@@2))
 :qid |stdinbpl.672:15|
 :skolemid |47|
 :pattern ( (Node_valid this@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8985) (this@@3 T@Ref) ) (! (dummyFunction_1492 (|List_size#triggerStateless| this@@3))
 :qid |stdinbpl.206:15|
 :skolemid |23|
 :pattern ( (|List_size'| Heap@@2 this@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8985) (this@@4 T@Ref) ) (! (dummyFunction_1492 (|Node_val#triggerStateless| this@@4))
 :qid |stdinbpl.341:15|
 :skolemid |29|
 :pattern ( (|Node_val'| Heap@@3 this@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8985) (this@@5 T@Ref) ) (! (dummyFunction_1492 (|Node_size#triggerStateless| this@@5))
 :qid |stdinbpl.449:15|
 :skolemid |34|
 :pattern ( (|Node_size'| Heap@@4 this@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8985) (this@@6 T@Ref) ) (! (|List_valid#everUsed_4764| (List_valid this@@6))
 :qid |stdinbpl.623:15|
 :skolemid |45|
 :pattern ( (|List_valid#trigger_4764| Heap@@5 (List_valid this@@6)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8985) (this@@7 T@Ref) ) (! (|Node_valid#everUsed_4789| (Node_valid this@@7))
 :qid |stdinbpl.691:15|
 :skolemid |51|
 :pattern ( (|Node_valid#trigger_4789| Heap@@6 (Node_valid this@@7)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8985) (this@@8 T@Ref) ) (!  (and (= (List_size Heap@@7 this@@8) (|List_size'| Heap@@7 this@@8)) (dummyFunction_1492 (|List_size#triggerStateless| this@@8)))
 :qid |stdinbpl.202:15|
 :skolemid |22|
 :pattern ( (List_size Heap@@7 this@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8985) (this@@9 T@Ref) ) (!  (and (= (Node_val_1 Heap@@8 this@@9) (|Node_val'| Heap@@8 this@@9)) (dummyFunction_1492 (|Node_val#triggerStateless| this@@9)))
 :qid |stdinbpl.337:15|
 :skolemid |28|
 :pattern ( (Node_val_1 Heap@@8 this@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8985) (this@@10 T@Ref) ) (!  (and (= (Node_size Heap@@9 this@@10) (|Node_size'| Heap@@9 this@@10)) (dummyFunction_1492 (|Node_size#triggerStateless| this@@10)))
 :qid |stdinbpl.445:15|
 :skolemid |33|
 :pattern ( (Node_size Heap@@9 this@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8985) (ExhaleHeap T@PolymorphicMapType_8985) (Mask@@2 T@PolymorphicMapType_9006) (pm_f_22 T@Field_13987_13988) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_13987_12842 Mask@@2 null pm_f_22) (IsPredicateField_4789_4790 pm_f_22)) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@10) null (PredicateMaskField_4789 pm_f_22)) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap) null (PredicateMaskField_4789 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@2) (IsPredicateField_4789_4790 pm_f_22) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap) null (PredicateMaskField_4789 pm_f_22)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8985) (ExhaleHeap@@0 T@PolymorphicMapType_8985) (Mask@@3 T@PolymorphicMapType_9006) (pm_f_22@@0 T@Field_12841_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_12841_12842 Mask@@3 null pm_f_22@@0) (IsPredicateField_4764_4765 pm_f_22@@0)) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@11) null (PredicateMaskField_4764 pm_f_22@@0)) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@0) null (PredicateMaskField_4764 pm_f_22@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@3) (IsPredicateField_4764_4765 pm_f_22@@0) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@0) null (PredicateMaskField_4764 pm_f_22@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8985) (ExhaleHeap@@1 T@PolymorphicMapType_8985) (Mask@@4 T@PolymorphicMapType_9006) (pm_f_22@@1 T@Field_4658_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_4658_12842 Mask@@4 null pm_f_22@@1) (IsPredicateField_4658_32518 pm_f_22@@1)) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@12) null (PredicateMaskField_4658 pm_f_22@@1)) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@1) null (PredicateMaskField_4658 pm_f_22@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@4) (IsPredicateField_4658_32518 pm_f_22@@1) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@1) null (PredicateMaskField_4658 pm_f_22@@1)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8985) (ExhaleHeap@@2 T@PolymorphicMapType_8985) (Mask@@5 T@PolymorphicMapType_9006) (pm_f_22@@2 T@Field_13987_13988) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_13987_12842 Mask@@5 null pm_f_22@@2) (IsWandField_13987_38199 pm_f_22@@2)) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@13) null (WandMaskField_13987 pm_f_22@@2)) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@2) null (WandMaskField_13987 pm_f_22@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@5) (IsWandField_13987_38199 pm_f_22@@2) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@2) null (WandMaskField_13987 pm_f_22@@2)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8985) (ExhaleHeap@@3 T@PolymorphicMapType_8985) (Mask@@6 T@PolymorphicMapType_9006) (pm_f_22@@3 T@Field_12841_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_12841_12842 Mask@@6 null pm_f_22@@3) (IsWandField_12841_37842 pm_f_22@@3)) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@14) null (WandMaskField_12841 pm_f_22@@3)) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@3) null (WandMaskField_12841 pm_f_22@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@6) (IsWandField_12841_37842 pm_f_22@@3) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@3) null (WandMaskField_12841 pm_f_22@@3)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8985) (ExhaleHeap@@4 T@PolymorphicMapType_8985) (Mask@@7 T@PolymorphicMapType_9006) (pm_f_22@@4 T@Field_4658_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_4658_12842 Mask@@7 null pm_f_22@@4) (IsWandField_4658_37485 pm_f_22@@4)) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@15) null (WandMaskField_4658 pm_f_22@@4)) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@4) null (WandMaskField_4658 pm_f_22@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@7) (IsWandField_4658_37485 pm_f_22@@4) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@4) null (WandMaskField_4658 pm_f_22@@4)))
)))
(assert (forall ((this@@11 T@Ref) (this2 T@Ref) ) (!  (=> (= (List_valid this@@11) (List_valid this2)) (= this@@11 this2))
 :qid |stdinbpl.614:15|
 :skolemid |43|
 :pattern ( (List_valid this@@11) (List_valid this2))
)))
(assert (forall ((this@@12 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|List_valid#sm| this@@12) (|List_valid#sm| this2@@0)) (= this@@12 this2@@0))
 :qid |stdinbpl.618:15|
 :skolemid |44|
 :pattern ( (|List_valid#sm| this@@12) (|List_valid#sm| this2@@0))
)))
(assert (forall ((this@@13 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (Node_valid this@@13) (Node_valid this2@@1)) (= this@@13 this2@@1))
 :qid |stdinbpl.682:15|
 :skolemid |49|
 :pattern ( (Node_valid this@@13) (Node_valid this2@@1))
)))
(assert (forall ((this@@14 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|Node_valid#sm| this@@14) (|Node_valid#sm| this2@@2)) (= this@@14 this2@@2))
 :qid |stdinbpl.686:15|
 :skolemid |50|
 :pattern ( (|Node_valid#sm| this@@14) (|Node_valid#sm| this2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8985) (ExhaleHeap@@5 T@PolymorphicMapType_8985) (Mask@@8 T@PolymorphicMapType_9006) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@8) (=> (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@16) o_46 $allocated) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@5) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@8) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@5) o_46 $allocated))
)))
(assert (forall ((p T@Field_4658_12842) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9045_9045 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9045_9045 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13987_13988) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4789_4789 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4789_4789 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_12841_12842) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_4764_12841 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4764_12841 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_4658_4659 List_head)))
(assert  (not (IsWandField_4658_4659 List_head)))
(assert  (not (IsPredicateField_4661_1204 Node_value)))
(assert  (not (IsWandField_4661_1204 Node_value)))
(assert  (not (IsPredicateField_4658_4659 Node_next)))
(assert  (not (IsWandField_4658_4659 Node_next)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8985) (ExhaleHeap@@6 T@PolymorphicMapType_8985) (Mask@@9 T@PolymorphicMapType_9006) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@9) (succHeap Heap@@17 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9006) (o_2@@14 T@Ref) (f_4@@14 T@Field_15829_15834) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| Mask@@10) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4789_48488 f_4@@14))) (not (IsWandField_4789_48504 f_4@@14))) (<= (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| Mask@@10) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| Mask@@10) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9006) (o_2@@15 T@Ref) (f_4@@15 T@Field_13987_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| Mask@@11) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4789_53 f_4@@15))) (not (IsWandField_4789_53 f_4@@15))) (<= (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| Mask@@11) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| Mask@@11) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9006) (o_2@@16 T@Ref) (f_4@@16 T@Field_13987_1204) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| Mask@@12) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4789_1204 f_4@@16))) (not (IsWandField_4789_1204 f_4@@16))) (<= (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| Mask@@12) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| Mask@@12) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9006) (o_2@@17 T@Ref) (f_4@@17 T@Field_13987_4659) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| Mask@@13) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4789_4659 f_4@@17))) (not (IsWandField_4789_4659 f_4@@17))) (<= (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| Mask@@13) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| Mask@@13) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9006) (o_2@@18 T@Ref) (f_4@@18 T@Field_13987_13988) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| Mask@@14) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4789_4790 f_4@@18))) (not (IsWandField_13987_38199 f_4@@18))) (<= (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| Mask@@14) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| Mask@@14) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9006) (o_2@@19 T@Ref) (f_4@@19 T@Field_4658_15403) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| Mask@@15) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4658_47657 f_4@@19))) (not (IsWandField_4658_47673 f_4@@19))) (<= (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| Mask@@15) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| Mask@@15) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9006) (o_2@@20 T@Ref) (f_4@@20 T@Field_9045_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| Mask@@16) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4658_53 f_4@@20))) (not (IsWandField_4658_53 f_4@@20))) (<= (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| Mask@@16) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| Mask@@16) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9006) (o_2@@21 T@Ref) (f_4@@21 T@Field_12422_1204) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| Mask@@17) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4661_1204 f_4@@21))) (not (IsWandField_4661_1204 f_4@@21))) (<= (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| Mask@@17) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| Mask@@17) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9006) (o_2@@22 T@Ref) (f_4@@22 T@Field_9058_9059) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| Mask@@18) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4658_4659 f_4@@22))) (not (IsWandField_4658_4659 f_4@@22))) (<= (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| Mask@@18) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| Mask@@18) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9006) (o_2@@23 T@Ref) (f_4@@23 T@Field_4658_12842) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| Mask@@19) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4658_32518 f_4@@23))) (not (IsWandField_4658_37485 f_4@@23))) (<= (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| Mask@@19) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| Mask@@19) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9006) (o_2@@24 T@Ref) (f_4@@24 T@Field_15398_15403) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| Mask@@20) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_4764_46854 f_4@@24))) (not (IsWandField_4764_46870 f_4@@24))) (<= (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| Mask@@20) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| Mask@@20) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9006) (o_2@@25 T@Ref) (f_4@@25 T@Field_12841_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| Mask@@21) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_4764_53 f_4@@25))) (not (IsWandField_4764_53 f_4@@25))) (<= (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| Mask@@21) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| Mask@@21) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9006) (o_2@@26 T@Ref) (f_4@@26 T@Field_12841_1204) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| Mask@@22) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_4764_1204 f_4@@26))) (not (IsWandField_4764_1204 f_4@@26))) (<= (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| Mask@@22) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| Mask@@22) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9006) (o_2@@27 T@Ref) (f_4@@27 T@Field_12841_4659) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| Mask@@23) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_4764_4659 f_4@@27))) (not (IsWandField_4764_4659 f_4@@27))) (<= (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| Mask@@23) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| Mask@@23) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9006) (o_2@@28 T@Ref) (f_4@@28 T@Field_12841_12842) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| Mask@@24) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_4764_4765 f_4@@28))) (not (IsWandField_12841_37842 f_4@@28))) (<= (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| Mask@@24) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| Mask@@24) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9006) (o_2@@29 T@Ref) (f_4@@29 T@Field_15829_15834) ) (! (= (HasDirectPerm_13987_32273 Mask@@25 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| Mask@@25) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13987_32273 Mask@@25 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9006) (o_2@@30 T@Ref) (f_4@@30 T@Field_13987_13988) ) (! (= (HasDirectPerm_13987_12842 Mask@@26 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| Mask@@26) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13987_12842 Mask@@26 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9006) (o_2@@31 T@Ref) (f_4@@31 T@Field_13987_53) ) (! (= (HasDirectPerm_13987_53 Mask@@27 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| Mask@@27) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13987_53 Mask@@27 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9006) (o_2@@32 T@Ref) (f_4@@32 T@Field_13987_1204) ) (! (= (HasDirectPerm_13987_1204 Mask@@28 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| Mask@@28) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13987_1204 Mask@@28 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9006) (o_2@@33 T@Ref) (f_4@@33 T@Field_13987_4659) ) (! (= (HasDirectPerm_13987_4659 Mask@@29 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| Mask@@29) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13987_4659 Mask@@29 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9006) (o_2@@34 T@Ref) (f_4@@34 T@Field_15398_15403) ) (! (= (HasDirectPerm_12841_31155 Mask@@30 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| Mask@@30) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12841_31155 Mask@@30 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9006) (o_2@@35 T@Ref) (f_4@@35 T@Field_12841_12842) ) (! (= (HasDirectPerm_12841_12842 Mask@@31 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| Mask@@31) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12841_12842 Mask@@31 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9006) (o_2@@36 T@Ref) (f_4@@36 T@Field_12841_53) ) (! (= (HasDirectPerm_12841_53 Mask@@32 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| Mask@@32) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12841_53 Mask@@32 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9006) (o_2@@37 T@Ref) (f_4@@37 T@Field_12841_1204) ) (! (= (HasDirectPerm_12841_1204 Mask@@33 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| Mask@@33) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12841_1204 Mask@@33 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9006) (o_2@@38 T@Ref) (f_4@@38 T@Field_12841_4659) ) (! (= (HasDirectPerm_12841_4659 Mask@@34 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| Mask@@34) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12841_4659 Mask@@34 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9006) (o_2@@39 T@Ref) (f_4@@39 T@Field_4658_15403) ) (! (= (HasDirectPerm_4658_29994 Mask@@35 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| Mask@@35) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4658_29994 Mask@@35 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9006) (o_2@@40 T@Ref) (f_4@@40 T@Field_4658_12842) ) (! (= (HasDirectPerm_4658_12842 Mask@@36 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| Mask@@36) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4658_12842 Mask@@36 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9006) (o_2@@41 T@Ref) (f_4@@41 T@Field_9045_53) ) (! (= (HasDirectPerm_4658_53 Mask@@37 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| Mask@@37) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4658_53 Mask@@37 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_9006) (o_2@@42 T@Ref) (f_4@@42 T@Field_12422_1204) ) (! (= (HasDirectPerm_4661_1204 Mask@@38 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| Mask@@38) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4661_1204 Mask@@38 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_9006) (o_2@@43 T@Ref) (f_4@@43 T@Field_9058_9059) ) (! (= (HasDirectPerm_4658_4659 Mask@@39 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| Mask@@39) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4658_4659 Mask@@39 o_2@@43 f_4@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8985) (Mask@@40 T@PolymorphicMapType_9006) (this@@15 T@Ref) ) (!  (=> (and (state Heap@@18 Mask@@40) (< AssumeFunctionsAbove 2)) (= (Node_size Heap@@18 this@@15) (+ 1 (ite (not (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@18) this@@15 Node_next) null)) (|Node_size'| Heap@@18 (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@18) this@@15 Node_next)) 0))))
 :qid |stdinbpl.455:15|
 :skolemid |35|
 :pattern ( (state Heap@@18 Mask@@40) (Node_size Heap@@18 this@@15))
 :pattern ( (state Heap@@18 Mask@@40) (|Node_size#triggerStateless| this@@15) (|Node_valid#trigger_4789| Heap@@18 (Node_valid this@@15)))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8985) (ExhaleHeap@@7 T@PolymorphicMapType_8985) (Mask@@41 T@PolymorphicMapType_9006) (o_46@@0 T@Ref) (f_37 T@Field_15829_15834) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@41) (=> (HasDirectPerm_13987_32273 Mask@@41 o_46@@0 f_37) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@19) o_46@@0 f_37) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@7) o_46@@0 f_37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@41) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@7) o_46@@0 f_37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8985) (ExhaleHeap@@8 T@PolymorphicMapType_8985) (Mask@@42 T@PolymorphicMapType_9006) (o_46@@1 T@Ref) (f_37@@0 T@Field_13987_13988) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@42) (=> (HasDirectPerm_13987_12842 Mask@@42 o_46@@1 f_37@@0) (= (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@20) o_46@@1 f_37@@0) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@8) o_46@@1 f_37@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@42) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@8) o_46@@1 f_37@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8985) (ExhaleHeap@@9 T@PolymorphicMapType_8985) (Mask@@43 T@PolymorphicMapType_9006) (o_46@@2 T@Ref) (f_37@@1 T@Field_13987_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@43) (=> (HasDirectPerm_13987_53 Mask@@43 o_46@@2 f_37@@1) (= (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@21) o_46@@2 f_37@@1) (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@9) o_46@@2 f_37@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@43) (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@9) o_46@@2 f_37@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8985) (ExhaleHeap@@10 T@PolymorphicMapType_8985) (Mask@@44 T@PolymorphicMapType_9006) (o_46@@3 T@Ref) (f_37@@2 T@Field_13987_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@44) (=> (HasDirectPerm_13987_1204 Mask@@44 o_46@@3 f_37@@2) (= (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@22) o_46@@3 f_37@@2) (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@10) o_46@@3 f_37@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@44) (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@10) o_46@@3 f_37@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8985) (ExhaleHeap@@11 T@PolymorphicMapType_8985) (Mask@@45 T@PolymorphicMapType_9006) (o_46@@4 T@Ref) (f_37@@3 T@Field_13987_4659) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@45) (=> (HasDirectPerm_13987_4659 Mask@@45 o_46@@4 f_37@@3) (= (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@23) o_46@@4 f_37@@3) (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@11) o_46@@4 f_37@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@45) (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@11) o_46@@4 f_37@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8985) (ExhaleHeap@@12 T@PolymorphicMapType_8985) (Mask@@46 T@PolymorphicMapType_9006) (o_46@@5 T@Ref) (f_37@@4 T@Field_15398_15403) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@46) (=> (HasDirectPerm_12841_31155 Mask@@46 o_46@@5 f_37@@4) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@24) o_46@@5 f_37@@4) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@12) o_46@@5 f_37@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@46) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@12) o_46@@5 f_37@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8985) (ExhaleHeap@@13 T@PolymorphicMapType_8985) (Mask@@47 T@PolymorphicMapType_9006) (o_46@@6 T@Ref) (f_37@@5 T@Field_12841_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@13 Mask@@47) (=> (HasDirectPerm_12841_12842 Mask@@47 o_46@@6 f_37@@5) (= (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@25) o_46@@6 f_37@@5) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@13) o_46@@6 f_37@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@13 Mask@@47) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@13) o_46@@6 f_37@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8985) (ExhaleHeap@@14 T@PolymorphicMapType_8985) (Mask@@48 T@PolymorphicMapType_9006) (o_46@@7 T@Ref) (f_37@@6 T@Field_12841_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@14 Mask@@48) (=> (HasDirectPerm_12841_53 Mask@@48 o_46@@7 f_37@@6) (= (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@26) o_46@@7 f_37@@6) (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@14) o_46@@7 f_37@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@14 Mask@@48) (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@14) o_46@@7 f_37@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8985) (ExhaleHeap@@15 T@PolymorphicMapType_8985) (Mask@@49 T@PolymorphicMapType_9006) (o_46@@8 T@Ref) (f_37@@7 T@Field_12841_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@15 Mask@@49) (=> (HasDirectPerm_12841_1204 Mask@@49 o_46@@8 f_37@@7) (= (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@27) o_46@@8 f_37@@7) (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@15) o_46@@8 f_37@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@15 Mask@@49) (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@15) o_46@@8 f_37@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8985) (ExhaleHeap@@16 T@PolymorphicMapType_8985) (Mask@@50 T@PolymorphicMapType_9006) (o_46@@9 T@Ref) (f_37@@8 T@Field_12841_4659) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@50) (=> (HasDirectPerm_12841_4659 Mask@@50 o_46@@9 f_37@@8) (= (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@28) o_46@@9 f_37@@8) (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@16) o_46@@9 f_37@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@50) (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@16) o_46@@9 f_37@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8985) (ExhaleHeap@@17 T@PolymorphicMapType_8985) (Mask@@51 T@PolymorphicMapType_9006) (o_46@@10 T@Ref) (f_37@@9 T@Field_4658_15403) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@51) (=> (HasDirectPerm_4658_29994 Mask@@51 o_46@@10 f_37@@9) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@29) o_46@@10 f_37@@9) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@17) o_46@@10 f_37@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@51) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@17) o_46@@10 f_37@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8985) (ExhaleHeap@@18 T@PolymorphicMapType_8985) (Mask@@52 T@PolymorphicMapType_9006) (o_46@@11 T@Ref) (f_37@@10 T@Field_4658_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@52) (=> (HasDirectPerm_4658_12842 Mask@@52 o_46@@11 f_37@@10) (= (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@30) o_46@@11 f_37@@10) (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@18) o_46@@11 f_37@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@52) (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@18) o_46@@11 f_37@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8985) (ExhaleHeap@@19 T@PolymorphicMapType_8985) (Mask@@53 T@PolymorphicMapType_9006) (o_46@@12 T@Ref) (f_37@@11 T@Field_9045_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@53) (=> (HasDirectPerm_4658_53 Mask@@53 o_46@@12 f_37@@11) (= (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@31) o_46@@12 f_37@@11) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@19) o_46@@12 f_37@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@53) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@19) o_46@@12 f_37@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8985) (ExhaleHeap@@20 T@PolymorphicMapType_8985) (Mask@@54 T@PolymorphicMapType_9006) (o_46@@13 T@Ref) (f_37@@12 T@Field_12422_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@54) (=> (HasDirectPerm_4661_1204 Mask@@54 o_46@@13 f_37@@12) (= (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@32) o_46@@13 f_37@@12) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@20) o_46@@13 f_37@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@54) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@20) o_46@@13 f_37@@12))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8985) (ExhaleHeap@@21 T@PolymorphicMapType_8985) (Mask@@55 T@PolymorphicMapType_9006) (o_46@@14 T@Ref) (f_37@@13 T@Field_9058_9059) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@55) (=> (HasDirectPerm_4658_4659 Mask@@55 o_46@@14 f_37@@13) (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@33) o_46@@14 f_37@@13) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@21) o_46@@14 f_37@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@55) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@21) o_46@@14 f_37@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_15829_15834) ) (! (= (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_13987_53) ) (! (= (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_13987_1204) ) (! (= (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_13987_4659) ) (! (= (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_13987_13988) ) (! (= (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_4658_15403) ) (! (= (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_9045_53) ) (! (= (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_12422_1204) ) (! (= (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_9058_9059) ) (! (= (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_4658_12842) ) (! (= (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_15398_15403) ) (! (= (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_12841_53) ) (! (= (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_12841_1204) ) (! (= (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_12841_4659) ) (! (= (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_12841_12842) ) (! (= (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9006) (SummandMask1 T@PolymorphicMapType_9006) (SummandMask2 T@PolymorphicMapType_9006) (o_2@@59 T@Ref) (f_4@@59 T@Field_15829_15834) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9006) (SummandMask1@@0 T@PolymorphicMapType_9006) (SummandMask2@@0 T@PolymorphicMapType_9006) (o_2@@60 T@Ref) (f_4@@60 T@Field_13987_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9006) (SummandMask1@@1 T@PolymorphicMapType_9006) (SummandMask2@@1 T@PolymorphicMapType_9006) (o_2@@61 T@Ref) (f_4@@61 T@Field_13987_1204) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9006) (SummandMask1@@2 T@PolymorphicMapType_9006) (SummandMask2@@2 T@PolymorphicMapType_9006) (o_2@@62 T@Ref) (f_4@@62 T@Field_13987_4659) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9006) (SummandMask1@@3 T@PolymorphicMapType_9006) (SummandMask2@@3 T@PolymorphicMapType_9006) (o_2@@63 T@Ref) (f_4@@63 T@Field_13987_13988) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9006) (SummandMask1@@4 T@PolymorphicMapType_9006) (SummandMask2@@4 T@PolymorphicMapType_9006) (o_2@@64 T@Ref) (f_4@@64 T@Field_4658_15403) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9006) (SummandMask1@@5 T@PolymorphicMapType_9006) (SummandMask2@@5 T@PolymorphicMapType_9006) (o_2@@65 T@Ref) (f_4@@65 T@Field_9045_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9006) (SummandMask1@@6 T@PolymorphicMapType_9006) (SummandMask2@@6 T@PolymorphicMapType_9006) (o_2@@66 T@Ref) (f_4@@66 T@Field_12422_1204) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9006) (SummandMask1@@7 T@PolymorphicMapType_9006) (SummandMask2@@7 T@PolymorphicMapType_9006) (o_2@@67 T@Ref) (f_4@@67 T@Field_9058_9059) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9006) (SummandMask1@@8 T@PolymorphicMapType_9006) (SummandMask2@@8 T@PolymorphicMapType_9006) (o_2@@68 T@Ref) (f_4@@68 T@Field_4658_12842) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9006) (SummandMask1@@9 T@PolymorphicMapType_9006) (SummandMask2@@9 T@PolymorphicMapType_9006) (o_2@@69 T@Ref) (f_4@@69 T@Field_15398_15403) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9006) (SummandMask1@@10 T@PolymorphicMapType_9006) (SummandMask2@@10 T@PolymorphicMapType_9006) (o_2@@70 T@Ref) (f_4@@70 T@Field_12841_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9006) (SummandMask1@@11 T@PolymorphicMapType_9006) (SummandMask2@@11 T@PolymorphicMapType_9006) (o_2@@71 T@Ref) (f_4@@71 T@Field_12841_1204) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9006) (SummandMask1@@12 T@PolymorphicMapType_9006) (SummandMask2@@12 T@PolymorphicMapType_9006) (o_2@@72 T@Ref) (f_4@@72 T@Field_12841_4659) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9006) (SummandMask1@@13 T@PolymorphicMapType_9006) (SummandMask2@@13 T@PolymorphicMapType_9006) (o_2@@73 T@Ref) (f_4@@73 T@Field_12841_12842) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8985) (ExhaleHeap@@22 T@PolymorphicMapType_8985) (Mask@@56 T@PolymorphicMapType_9006) (pm_f_22@@5 T@Field_13987_13988) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@56) (=> (and (HasDirectPerm_13987_12842 Mask@@56 null pm_f_22@@5) (IsPredicateField_4789_4790 pm_f_22@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37@@14 T@Field_9058_9059) ) (!  (=> (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22 f_37@@14) (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@34) o2_22 f_37@@14) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22 f_37@@14))
)) (forall ((o2_22@@0 T@Ref) (f_37@@15 T@Field_12422_1204) ) (!  (=> (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@0 f_37@@15) (= (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@34) o2_22@@0 f_37@@15) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@0 f_37@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@0 f_37@@15))
))) (forall ((o2_22@@1 T@Ref) (f_37@@16 T@Field_9045_53) ) (!  (=> (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@1 f_37@@16) (= (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@34) o2_22@@1 f_37@@16) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@1 f_37@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@1 f_37@@16))
))) (forall ((o2_22@@2 T@Ref) (f_37@@17 T@Field_4658_12842) ) (!  (=> (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@2 f_37@@17) (= (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@34) o2_22@@2 f_37@@17) (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@2 f_37@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@2 f_37@@17))
))) (forall ((o2_22@@3 T@Ref) (f_37@@18 T@Field_4658_15403) ) (!  (=> (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@3 f_37@@18) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@34) o2_22@@3 f_37@@18) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@3 f_37@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@3 f_37@@18))
))) (forall ((o2_22@@4 T@Ref) (f_37@@19 T@Field_12841_4659) ) (!  (=> (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@4 f_37@@19) (= (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@34) o2_22@@4 f_37@@19) (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@4 f_37@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@4 f_37@@19))
))) (forall ((o2_22@@5 T@Ref) (f_37@@20 T@Field_12841_1204) ) (!  (=> (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@5 f_37@@20) (= (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@34) o2_22@@5 f_37@@20) (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@5 f_37@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@5 f_37@@20))
))) (forall ((o2_22@@6 T@Ref) (f_37@@21 T@Field_12841_53) ) (!  (=> (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@6 f_37@@21) (= (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@34) o2_22@@6 f_37@@21) (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@6 f_37@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@6 f_37@@21))
))) (forall ((o2_22@@7 T@Ref) (f_37@@22 T@Field_12841_12842) ) (!  (=> (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@7 f_37@@22) (= (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@34) o2_22@@7 f_37@@22) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@7 f_37@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@7 f_37@@22))
))) (forall ((o2_22@@8 T@Ref) (f_37@@23 T@Field_15398_15403) ) (!  (=> (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@8 f_37@@23) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@34) o2_22@@8 f_37@@23) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@8 f_37@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@8 f_37@@23))
))) (forall ((o2_22@@9 T@Ref) (f_37@@24 T@Field_13987_4659) ) (!  (=> (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@9 f_37@@24) (= (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@34) o2_22@@9 f_37@@24) (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@9 f_37@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@9 f_37@@24))
))) (forall ((o2_22@@10 T@Ref) (f_37@@25 T@Field_13987_1204) ) (!  (=> (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@10 f_37@@25) (= (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@34) o2_22@@10 f_37@@25) (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@10 f_37@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@10 f_37@@25))
))) (forall ((o2_22@@11 T@Ref) (f_37@@26 T@Field_13987_53) ) (!  (=> (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@11 f_37@@26) (= (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@34) o2_22@@11 f_37@@26) (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@11 f_37@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@11 f_37@@26))
))) (forall ((o2_22@@12 T@Ref) (f_37@@27 T@Field_13987_13988) ) (!  (=> (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@12 f_37@@27) (= (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@34) o2_22@@12 f_37@@27) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@12 f_37@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@12 f_37@@27))
))) (forall ((o2_22@@13 T@Ref) (f_37@@28 T@Field_15829_15834) ) (!  (=> (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) null (PredicateMaskField_4789 pm_f_22@@5))) o2_22@@13 f_37@@28) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@34) o2_22@@13 f_37@@28) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@13 f_37@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@22) o2_22@@13 f_37@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@56) (IsPredicateField_4789_4790 pm_f_22@@5))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8985) (ExhaleHeap@@23 T@PolymorphicMapType_8985) (Mask@@57 T@PolymorphicMapType_9006) (pm_f_22@@6 T@Field_12841_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@57) (=> (and (HasDirectPerm_12841_12842 Mask@@57 null pm_f_22@@6) (IsPredicateField_4764_4765 pm_f_22@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@14 T@Ref) (f_37@@29 T@Field_9058_9059) ) (!  (=> (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@14 f_37@@29) (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@35) o2_22@@14 f_37@@29) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@14 f_37@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@14 f_37@@29))
)) (forall ((o2_22@@15 T@Ref) (f_37@@30 T@Field_12422_1204) ) (!  (=> (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@15 f_37@@30) (= (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@35) o2_22@@15 f_37@@30) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@15 f_37@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@15 f_37@@30))
))) (forall ((o2_22@@16 T@Ref) (f_37@@31 T@Field_9045_53) ) (!  (=> (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@16 f_37@@31) (= (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@35) o2_22@@16 f_37@@31) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@16 f_37@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@16 f_37@@31))
))) (forall ((o2_22@@17 T@Ref) (f_37@@32 T@Field_4658_12842) ) (!  (=> (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@17 f_37@@32) (= (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@35) o2_22@@17 f_37@@32) (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@17 f_37@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@17 f_37@@32))
))) (forall ((o2_22@@18 T@Ref) (f_37@@33 T@Field_4658_15403) ) (!  (=> (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@18 f_37@@33) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@35) o2_22@@18 f_37@@33) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@18 f_37@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@18 f_37@@33))
))) (forall ((o2_22@@19 T@Ref) (f_37@@34 T@Field_12841_4659) ) (!  (=> (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@19 f_37@@34) (= (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@35) o2_22@@19 f_37@@34) (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@19 f_37@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@19 f_37@@34))
))) (forall ((o2_22@@20 T@Ref) (f_37@@35 T@Field_12841_1204) ) (!  (=> (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@20 f_37@@35) (= (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@35) o2_22@@20 f_37@@35) (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@20 f_37@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@20 f_37@@35))
))) (forall ((o2_22@@21 T@Ref) (f_37@@36 T@Field_12841_53) ) (!  (=> (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@21 f_37@@36) (= (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@35) o2_22@@21 f_37@@36) (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@21 f_37@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@21 f_37@@36))
))) (forall ((o2_22@@22 T@Ref) (f_37@@37 T@Field_12841_12842) ) (!  (=> (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@22 f_37@@37) (= (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@35) o2_22@@22 f_37@@37) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@22 f_37@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@22 f_37@@37))
))) (forall ((o2_22@@23 T@Ref) (f_37@@38 T@Field_15398_15403) ) (!  (=> (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@23 f_37@@38) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) o2_22@@23 f_37@@38) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@23 f_37@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@23 f_37@@38))
))) (forall ((o2_22@@24 T@Ref) (f_37@@39 T@Field_13987_4659) ) (!  (=> (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@24 f_37@@39) (= (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@35) o2_22@@24 f_37@@39) (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@24 f_37@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@24 f_37@@39))
))) (forall ((o2_22@@25 T@Ref) (f_37@@40 T@Field_13987_1204) ) (!  (=> (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@25 f_37@@40) (= (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@35) o2_22@@25 f_37@@40) (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@25 f_37@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@25 f_37@@40))
))) (forall ((o2_22@@26 T@Ref) (f_37@@41 T@Field_13987_53) ) (!  (=> (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@26 f_37@@41) (= (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@35) o2_22@@26 f_37@@41) (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@26 f_37@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@26 f_37@@41))
))) (forall ((o2_22@@27 T@Ref) (f_37@@42 T@Field_13987_13988) ) (!  (=> (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@27 f_37@@42) (= (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@35) o2_22@@27 f_37@@42) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@27 f_37@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@27 f_37@@42))
))) (forall ((o2_22@@28 T@Ref) (f_37@@43 T@Field_15829_15834) ) (!  (=> (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@35) null (PredicateMaskField_4764 pm_f_22@@6))) o2_22@@28 f_37@@43) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@35) o2_22@@28 f_37@@43) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@28 f_37@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@23) o2_22@@28 f_37@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@57) (IsPredicateField_4764_4765 pm_f_22@@6))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8985) (ExhaleHeap@@24 T@PolymorphicMapType_8985) (Mask@@58 T@PolymorphicMapType_9006) (pm_f_22@@7 T@Field_4658_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@58) (=> (and (HasDirectPerm_4658_12842 Mask@@58 null pm_f_22@@7) (IsPredicateField_4658_32518 pm_f_22@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@29 T@Ref) (f_37@@44 T@Field_9058_9059) ) (!  (=> (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@29 f_37@@44) (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@36) o2_22@@29 f_37@@44) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@29 f_37@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@29 f_37@@44))
)) (forall ((o2_22@@30 T@Ref) (f_37@@45 T@Field_12422_1204) ) (!  (=> (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@30 f_37@@45) (= (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@36) o2_22@@30 f_37@@45) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@30 f_37@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@30 f_37@@45))
))) (forall ((o2_22@@31 T@Ref) (f_37@@46 T@Field_9045_53) ) (!  (=> (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@31 f_37@@46) (= (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@36) o2_22@@31 f_37@@46) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@31 f_37@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@31 f_37@@46))
))) (forall ((o2_22@@32 T@Ref) (f_37@@47 T@Field_4658_12842) ) (!  (=> (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@32 f_37@@47) (= (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@36) o2_22@@32 f_37@@47) (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@32 f_37@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@32 f_37@@47))
))) (forall ((o2_22@@33 T@Ref) (f_37@@48 T@Field_4658_15403) ) (!  (=> (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@33 f_37@@48) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) o2_22@@33 f_37@@48) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@33 f_37@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@33 f_37@@48))
))) (forall ((o2_22@@34 T@Ref) (f_37@@49 T@Field_12841_4659) ) (!  (=> (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@34 f_37@@49) (= (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@36) o2_22@@34 f_37@@49) (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@34 f_37@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@34 f_37@@49))
))) (forall ((o2_22@@35 T@Ref) (f_37@@50 T@Field_12841_1204) ) (!  (=> (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@35 f_37@@50) (= (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@36) o2_22@@35 f_37@@50) (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@35 f_37@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@35 f_37@@50))
))) (forall ((o2_22@@36 T@Ref) (f_37@@51 T@Field_12841_53) ) (!  (=> (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@36 f_37@@51) (= (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@36) o2_22@@36 f_37@@51) (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@36 f_37@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@36 f_37@@51))
))) (forall ((o2_22@@37 T@Ref) (f_37@@52 T@Field_12841_12842) ) (!  (=> (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@37 f_37@@52) (= (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@36) o2_22@@37 f_37@@52) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@37 f_37@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@37 f_37@@52))
))) (forall ((o2_22@@38 T@Ref) (f_37@@53 T@Field_15398_15403) ) (!  (=> (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@38 f_37@@53) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@36) o2_22@@38 f_37@@53) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@38 f_37@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@38 f_37@@53))
))) (forall ((o2_22@@39 T@Ref) (f_37@@54 T@Field_13987_4659) ) (!  (=> (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@39 f_37@@54) (= (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@36) o2_22@@39 f_37@@54) (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@39 f_37@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@39 f_37@@54))
))) (forall ((o2_22@@40 T@Ref) (f_37@@55 T@Field_13987_1204) ) (!  (=> (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@40 f_37@@55) (= (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@36) o2_22@@40 f_37@@55) (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@40 f_37@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@40 f_37@@55))
))) (forall ((o2_22@@41 T@Ref) (f_37@@56 T@Field_13987_53) ) (!  (=> (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@41 f_37@@56) (= (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@36) o2_22@@41 f_37@@56) (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@41 f_37@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@41 f_37@@56))
))) (forall ((o2_22@@42 T@Ref) (f_37@@57 T@Field_13987_13988) ) (!  (=> (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@42 f_37@@57) (= (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@36) o2_22@@42 f_37@@57) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@42 f_37@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@42 f_37@@57))
))) (forall ((o2_22@@43 T@Ref) (f_37@@58 T@Field_15829_15834) ) (!  (=> (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@36) null (PredicateMaskField_4658 pm_f_22@@7))) o2_22@@43 f_37@@58) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@36) o2_22@@43 f_37@@58) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@43 f_37@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@24) o2_22@@43 f_37@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@58) (IsPredicateField_4658_32518 pm_f_22@@7))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8985) (ExhaleHeap@@25 T@PolymorphicMapType_8985) (Mask@@59 T@PolymorphicMapType_9006) (pm_f_22@@8 T@Field_13987_13988) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@59) (=> (and (HasDirectPerm_13987_12842 Mask@@59 null pm_f_22@@8) (IsWandField_13987_38199 pm_f_22@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@44 T@Ref) (f_37@@59 T@Field_9058_9059) ) (!  (=> (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@44 f_37@@59) (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@37) o2_22@@44 f_37@@59) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@44 f_37@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@44 f_37@@59))
)) (forall ((o2_22@@45 T@Ref) (f_37@@60 T@Field_12422_1204) ) (!  (=> (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@45 f_37@@60) (= (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@37) o2_22@@45 f_37@@60) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@45 f_37@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@45 f_37@@60))
))) (forall ((o2_22@@46 T@Ref) (f_37@@61 T@Field_9045_53) ) (!  (=> (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@46 f_37@@61) (= (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@37) o2_22@@46 f_37@@61) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@46 f_37@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@46 f_37@@61))
))) (forall ((o2_22@@47 T@Ref) (f_37@@62 T@Field_4658_12842) ) (!  (=> (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@47 f_37@@62) (= (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@37) o2_22@@47 f_37@@62) (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@47 f_37@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@47 f_37@@62))
))) (forall ((o2_22@@48 T@Ref) (f_37@@63 T@Field_4658_15403) ) (!  (=> (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@48 f_37@@63) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@37) o2_22@@48 f_37@@63) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@48 f_37@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@48 f_37@@63))
))) (forall ((o2_22@@49 T@Ref) (f_37@@64 T@Field_12841_4659) ) (!  (=> (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@49 f_37@@64) (= (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@37) o2_22@@49 f_37@@64) (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@49 f_37@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@49 f_37@@64))
))) (forall ((o2_22@@50 T@Ref) (f_37@@65 T@Field_12841_1204) ) (!  (=> (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@50 f_37@@65) (= (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@37) o2_22@@50 f_37@@65) (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@50 f_37@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@50 f_37@@65))
))) (forall ((o2_22@@51 T@Ref) (f_37@@66 T@Field_12841_53) ) (!  (=> (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@51 f_37@@66) (= (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@37) o2_22@@51 f_37@@66) (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@51 f_37@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@51 f_37@@66))
))) (forall ((o2_22@@52 T@Ref) (f_37@@67 T@Field_12841_12842) ) (!  (=> (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@52 f_37@@67) (= (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@37) o2_22@@52 f_37@@67) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@52 f_37@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@52 f_37@@67))
))) (forall ((o2_22@@53 T@Ref) (f_37@@68 T@Field_15398_15403) ) (!  (=> (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@53 f_37@@68) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@37) o2_22@@53 f_37@@68) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@53 f_37@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@53 f_37@@68))
))) (forall ((o2_22@@54 T@Ref) (f_37@@69 T@Field_13987_4659) ) (!  (=> (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@54 f_37@@69) (= (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@37) o2_22@@54 f_37@@69) (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@54 f_37@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@54 f_37@@69))
))) (forall ((o2_22@@55 T@Ref) (f_37@@70 T@Field_13987_1204) ) (!  (=> (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@55 f_37@@70) (= (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@37) o2_22@@55 f_37@@70) (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@55 f_37@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@55 f_37@@70))
))) (forall ((o2_22@@56 T@Ref) (f_37@@71 T@Field_13987_53) ) (!  (=> (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@56 f_37@@71) (= (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@37) o2_22@@56 f_37@@71) (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@56 f_37@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@56 f_37@@71))
))) (forall ((o2_22@@57 T@Ref) (f_37@@72 T@Field_13987_13988) ) (!  (=> (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@57 f_37@@72) (= (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@37) o2_22@@57 f_37@@72) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@57 f_37@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@57 f_37@@72))
))) (forall ((o2_22@@58 T@Ref) (f_37@@73 T@Field_15829_15834) ) (!  (=> (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) null (WandMaskField_13987 pm_f_22@@8))) o2_22@@58 f_37@@73) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@37) o2_22@@58 f_37@@73) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@58 f_37@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@25) o2_22@@58 f_37@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@59) (IsWandField_13987_38199 pm_f_22@@8))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8985) (ExhaleHeap@@26 T@PolymorphicMapType_8985) (Mask@@60 T@PolymorphicMapType_9006) (pm_f_22@@9 T@Field_12841_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@60) (=> (and (HasDirectPerm_12841_12842 Mask@@60 null pm_f_22@@9) (IsWandField_12841_37842 pm_f_22@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@59 T@Ref) (f_37@@74 T@Field_9058_9059) ) (!  (=> (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@59 f_37@@74) (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@38) o2_22@@59 f_37@@74) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@59 f_37@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@59 f_37@@74))
)) (forall ((o2_22@@60 T@Ref) (f_37@@75 T@Field_12422_1204) ) (!  (=> (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@60 f_37@@75) (= (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@38) o2_22@@60 f_37@@75) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@60 f_37@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@60 f_37@@75))
))) (forall ((o2_22@@61 T@Ref) (f_37@@76 T@Field_9045_53) ) (!  (=> (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@61 f_37@@76) (= (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@38) o2_22@@61 f_37@@76) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@61 f_37@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@61 f_37@@76))
))) (forall ((o2_22@@62 T@Ref) (f_37@@77 T@Field_4658_12842) ) (!  (=> (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@62 f_37@@77) (= (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@38) o2_22@@62 f_37@@77) (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@62 f_37@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@62 f_37@@77))
))) (forall ((o2_22@@63 T@Ref) (f_37@@78 T@Field_4658_15403) ) (!  (=> (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@63 f_37@@78) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@38) o2_22@@63 f_37@@78) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@63 f_37@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@63 f_37@@78))
))) (forall ((o2_22@@64 T@Ref) (f_37@@79 T@Field_12841_4659) ) (!  (=> (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@64 f_37@@79) (= (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@38) o2_22@@64 f_37@@79) (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@64 f_37@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@64 f_37@@79))
))) (forall ((o2_22@@65 T@Ref) (f_37@@80 T@Field_12841_1204) ) (!  (=> (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@65 f_37@@80) (= (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@38) o2_22@@65 f_37@@80) (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@65 f_37@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@65 f_37@@80))
))) (forall ((o2_22@@66 T@Ref) (f_37@@81 T@Field_12841_53) ) (!  (=> (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@66 f_37@@81) (= (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@38) o2_22@@66 f_37@@81) (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@66 f_37@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@66 f_37@@81))
))) (forall ((o2_22@@67 T@Ref) (f_37@@82 T@Field_12841_12842) ) (!  (=> (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@67 f_37@@82) (= (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@38) o2_22@@67 f_37@@82) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@67 f_37@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@67 f_37@@82))
))) (forall ((o2_22@@68 T@Ref) (f_37@@83 T@Field_15398_15403) ) (!  (=> (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@68 f_37@@83) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) o2_22@@68 f_37@@83) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@68 f_37@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@68 f_37@@83))
))) (forall ((o2_22@@69 T@Ref) (f_37@@84 T@Field_13987_4659) ) (!  (=> (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@69 f_37@@84) (= (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@38) o2_22@@69 f_37@@84) (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@69 f_37@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@69 f_37@@84))
))) (forall ((o2_22@@70 T@Ref) (f_37@@85 T@Field_13987_1204) ) (!  (=> (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@70 f_37@@85) (= (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@38) o2_22@@70 f_37@@85) (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@70 f_37@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@70 f_37@@85))
))) (forall ((o2_22@@71 T@Ref) (f_37@@86 T@Field_13987_53) ) (!  (=> (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@71 f_37@@86) (= (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@38) o2_22@@71 f_37@@86) (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@71 f_37@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@71 f_37@@86))
))) (forall ((o2_22@@72 T@Ref) (f_37@@87 T@Field_13987_13988) ) (!  (=> (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@72 f_37@@87) (= (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@38) o2_22@@72 f_37@@87) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@72 f_37@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@72 f_37@@87))
))) (forall ((o2_22@@73 T@Ref) (f_37@@88 T@Field_15829_15834) ) (!  (=> (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@38) null (WandMaskField_12841 pm_f_22@@9))) o2_22@@73 f_37@@88) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@38) o2_22@@73 f_37@@88) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@73 f_37@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@26) o2_22@@73 f_37@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@60) (IsWandField_12841_37842 pm_f_22@@9))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8985) (ExhaleHeap@@27 T@PolymorphicMapType_8985) (Mask@@61 T@PolymorphicMapType_9006) (pm_f_22@@10 T@Field_4658_12842) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@61) (=> (and (HasDirectPerm_4658_12842 Mask@@61 null pm_f_22@@10) (IsWandField_4658_37485 pm_f_22@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@74 T@Ref) (f_37@@89 T@Field_9058_9059) ) (!  (=> (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@74 f_37@@89) (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@39) o2_22@@74 f_37@@89) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@74 f_37@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@74 f_37@@89))
)) (forall ((o2_22@@75 T@Ref) (f_37@@90 T@Field_12422_1204) ) (!  (=> (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@75 f_37@@90) (= (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@39) o2_22@@75 f_37@@90) (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@75 f_37@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@75 f_37@@90))
))) (forall ((o2_22@@76 T@Ref) (f_37@@91 T@Field_9045_53) ) (!  (=> (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@76 f_37@@91) (= (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@39) o2_22@@76 f_37@@91) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@76 f_37@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@76 f_37@@91))
))) (forall ((o2_22@@77 T@Ref) (f_37@@92 T@Field_4658_12842) ) (!  (=> (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@77 f_37@@92) (= (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@39) o2_22@@77 f_37@@92) (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@77 f_37@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@77 f_37@@92))
))) (forall ((o2_22@@78 T@Ref) (f_37@@93 T@Field_4658_15403) ) (!  (=> (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@78 f_37@@93) (= (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) o2_22@@78 f_37@@93) (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@78 f_37@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@78 f_37@@93))
))) (forall ((o2_22@@79 T@Ref) (f_37@@94 T@Field_12841_4659) ) (!  (=> (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@79 f_37@@94) (= (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@39) o2_22@@79 f_37@@94) (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@79 f_37@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@79 f_37@@94))
))) (forall ((o2_22@@80 T@Ref) (f_37@@95 T@Field_12841_1204) ) (!  (=> (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@80 f_37@@95) (= (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@39) o2_22@@80 f_37@@95) (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@80 f_37@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@80 f_37@@95))
))) (forall ((o2_22@@81 T@Ref) (f_37@@96 T@Field_12841_53) ) (!  (=> (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@81 f_37@@96) (= (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@39) o2_22@@81 f_37@@96) (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@81 f_37@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@81 f_37@@96))
))) (forall ((o2_22@@82 T@Ref) (f_37@@97 T@Field_12841_12842) ) (!  (=> (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@82 f_37@@97) (= (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@39) o2_22@@82 f_37@@97) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@82 f_37@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@82 f_37@@97))
))) (forall ((o2_22@@83 T@Ref) (f_37@@98 T@Field_15398_15403) ) (!  (=> (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@83 f_37@@98) (= (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@39) o2_22@@83 f_37@@98) (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@83 f_37@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@83 f_37@@98))
))) (forall ((o2_22@@84 T@Ref) (f_37@@99 T@Field_13987_4659) ) (!  (=> (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@84 f_37@@99) (= (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@39) o2_22@@84 f_37@@99) (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@84 f_37@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@84 f_37@@99))
))) (forall ((o2_22@@85 T@Ref) (f_37@@100 T@Field_13987_1204) ) (!  (=> (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@85 f_37@@100) (= (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@39) o2_22@@85 f_37@@100) (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@85 f_37@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@85 f_37@@100))
))) (forall ((o2_22@@86 T@Ref) (f_37@@101 T@Field_13987_53) ) (!  (=> (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@86 f_37@@101) (= (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@39) o2_22@@86 f_37@@101) (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@86 f_37@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@86 f_37@@101))
))) (forall ((o2_22@@87 T@Ref) (f_37@@102 T@Field_13987_13988) ) (!  (=> (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@87 f_37@@102) (= (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@39) o2_22@@87 f_37@@102) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@87 f_37@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@87 f_37@@102))
))) (forall ((o2_22@@88 T@Ref) (f_37@@103 T@Field_15829_15834) ) (!  (=> (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@39) null (WandMaskField_4658 pm_f_22@@10))) o2_22@@88 f_37@@103) (= (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@39) o2_22@@88 f_37@@103) (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@88 f_37@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| ExhaleHeap@@27) o2_22@@88 f_37@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@61) (IsWandField_4658_37485 pm_f_22@@10))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8985) (Mask@@62 T@PolymorphicMapType_9006) (this@@16 T@Ref) ) (!  (=> (state Heap@@40 Mask@@62) (= (|List_size'| Heap@@40 this@@16) (|List_size#frame| (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@40) null (List_valid this@@16)) this@@16)))
 :qid |stdinbpl.219:15|
 :skolemid |25|
 :pattern ( (state Heap@@40 Mask@@62) (|List_size'| Heap@@40 this@@16))
 :pattern ( (state Heap@@40 Mask@@62) (|List_size#triggerStateless| this@@16) (|List_valid#trigger_4764| Heap@@40 (List_valid this@@16)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8985) (Mask@@63 T@PolymorphicMapType_9006) (this@@17 T@Ref) ) (!  (=> (state Heap@@41 Mask@@63) (= (|Node_val'| Heap@@41 this@@17) (|Node_val#frame| (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@41) null (Node_valid this@@17)) this@@17)))
 :qid |stdinbpl.354:15|
 :skolemid |31|
 :pattern ( (state Heap@@41 Mask@@63) (|Node_val'| Heap@@41 this@@17))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8985) (Mask@@64 T@PolymorphicMapType_9006) (this@@18 T@Ref) ) (!  (=> (state Heap@@42 Mask@@64) (= (|Node_size'| Heap@@42 this@@18) (|Node_size#frame| (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@42) null (Node_valid this@@18)) this@@18)))
 :qid |stdinbpl.462:15|
 :skolemid |36|
 :pattern ( (state Heap@@42 Mask@@64) (|Node_size'| Heap@@42 this@@18))
 :pattern ( (state Heap@@42 Mask@@64) (|Node_size#triggerStateless| this@@18) (|Node_valid#trigger_4789| Heap@@42 (Node_valid this@@18)))
)))
(assert (forall ((this@@19 T@Ref) ) (! (= (getPredWandId_4764_4765 (List_valid this@@19)) 0)
 :qid |stdinbpl.608:15|
 :skolemid |42|
 :pattern ( (List_valid this@@19))
)))
(assert (forall ((this@@20 T@Ref) ) (! (= (getPredWandId_4789_4790 (Node_valid this@@20)) 1)
 :qid |stdinbpl.676:15|
 :skolemid |48|
 :pattern ( (Node_valid this@@20))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8985) (Mask@@65 T@PolymorphicMapType_9006) (this@@21 T@Ref) ) (!  (=> (and (state Heap@@43 Mask@@65) (or (< AssumeFunctionsAbove 0) (|List_size#trigger| (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@43) null (List_valid this@@21)) this@@21))) (>= (|List_size'| Heap@@43 this@@21) 0))
 :qid |stdinbpl.225:15|
 :skolemid |26|
 :pattern ( (state Heap@@43 Mask@@65) (|List_size'| Heap@@43 this@@21))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_8985) (Mask@@66 T@PolymorphicMapType_9006) (this@@22 T@Ref) ) (!  (=> (and (state Heap@@44 Mask@@66) (or (< AssumeFunctionsAbove 2) (|Node_size#trigger| (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@44) null (Node_valid this@@22)) this@@22))) (>= (|Node_size'| Heap@@44 this@@22) 1))
 :qid |stdinbpl.468:15|
 :skolemid |37|
 :pattern ( (state Heap@@44 Mask@@66) (|Node_size'| Heap@@44 this@@22))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_8985) (o_12 T@Ref) (f_24 T@Field_13987_1204) (v Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@45) (store (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@45) o_12 f_24 v) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@45) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@45) (store (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@45) o_12 f_24 v) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_8985) (o_12@@0 T@Ref) (f_24@@0 T@Field_15829_15834) (v@@0 T@PolymorphicMapType_9534) ) (! (succHeap Heap@@46 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@46) (store (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@46) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@46) (store (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@46) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@46) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_8985) (o_12@@1 T@Ref) (f_24@@1 T@Field_13987_13988) (v@@1 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@47) (store (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@47) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@47) (store (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@47) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@47) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_8985) (o_12@@2 T@Ref) (f_24@@2 T@Field_13987_4659) (v@@2 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@48) (store (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@48) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@48) (store (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@48) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@48) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_8985) (o_12@@3 T@Ref) (f_24@@3 T@Field_13987_53) (v@@3 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@49) (store (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@49) o_12@@3 f_24@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@49) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@49) (store (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@49) o_12@@3 f_24@@3 v@@3)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_8985) (o_12@@4 T@Ref) (f_24@@4 T@Field_12841_1204) (v@@4 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@50) (store (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@50) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@50) (store (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@50) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@50) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_8985) (o_12@@5 T@Ref) (f_24@@5 T@Field_15398_15403) (v@@5 T@PolymorphicMapType_9534) ) (! (succHeap Heap@@51 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@51) (store (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@51) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@51) (store (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@51) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@51) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_8985) (o_12@@6 T@Ref) (f_24@@6 T@Field_12841_12842) (v@@6 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@52) (store (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@52) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@52) (store (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@52) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@52) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_8985) (o_12@@7 T@Ref) (f_24@@7 T@Field_12841_4659) (v@@7 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@53) (store (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@53) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@53) (store (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@53) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@53) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_8985) (o_12@@8 T@Ref) (f_24@@8 T@Field_12841_53) (v@@8 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@54) (store (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@54) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@54) (store (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@54) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@54) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_8985) (o_12@@9 T@Ref) (f_24@@9 T@Field_12422_1204) (v@@9 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@55) (store (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@55) o_12@@9 f_24@@9 v@@9) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@55) (store (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@55) o_12@@9 f_24@@9 v@@9) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@55) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_8985) (o_12@@10 T@Ref) (f_24@@10 T@Field_4658_15403) (v@@10 T@PolymorphicMapType_9534) ) (! (succHeap Heap@@56 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@56) (store (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@56) o_12@@10 f_24@@10 v@@10) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@56) (store (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@56) o_12@@10 f_24@@10 v@@10) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@56) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_8985) (o_12@@11 T@Ref) (f_24@@11 T@Field_4658_12842) (v@@11 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@57) (store (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@57) o_12@@11 f_24@@11 v@@11) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@57) (store (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@57) o_12@@11 f_24@@11 v@@11) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@57) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_8985) (o_12@@12 T@Ref) (f_24@@12 T@Field_9058_9059) (v@@12 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@58) (store (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@58) o_12@@12 f_24@@12 v@@12) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@58) (store (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@58) o_12@@12 f_24@@12 v@@12) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@58) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_8985) (o_12@@13 T@Ref) (f_24@@13 T@Field_9045_53) (v@@13 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_8985 (store (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@59) o_12@@13 f_24@@13 v@@13) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8985 (store (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@59) o_12@@13 f_24@@13 v@@13) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@59) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@59)))
)))
(assert (forall ((this@@23 T@Ref) ) (! (= (PredicateMaskField_4764 (List_valid this@@23)) (|List_valid#sm| this@@23))
 :qid |stdinbpl.600:15|
 :skolemid |40|
 :pattern ( (PredicateMaskField_4764 (List_valid this@@23)))
)))
(assert (forall ((this@@24 T@Ref) ) (! (= (PredicateMaskField_4789 (Node_valid this@@24)) (|Node_valid#sm| this@@24))
 :qid |stdinbpl.668:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_4789 (Node_valid this@@24)))
)))
(assert (forall ((o_12@@14 T@Ref) (f_16 T@Field_9058_9059) (Heap@@60 T@PolymorphicMapType_8985) ) (!  (=> (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@60) o_12@@14 $allocated) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@60) (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@60) o_12@@14 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@60) o_12@@14 f_16))
)))
(assert (forall ((p@@3 T@Field_4658_12842) (v_1@@2 T@FrameType) (q T@Field_4658_12842) (w@@2 T@FrameType) (r T@Field_12841_12842) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9045_9045 p@@3 v_1@@2 q w@@2) (InsidePredicate_9045_12841 q w@@2 r u)) (InsidePredicate_9045_12841 p@@3 v_1@@2 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_9045 p@@3 v_1@@2 q w@@2) (InsidePredicate_9045_12841 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_4658_12842) (v_1@@3 T@FrameType) (q@@0 T@Field_4658_12842) (w@@3 T@FrameType) (r@@0 T@Field_4658_12842) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9045_9045 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_9045_9045 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_9045_9045 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_9045 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_9045_9045 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_4658_12842) (v_1@@4 T@FrameType) (q@@1 T@Field_4658_12842) (w@@4 T@FrameType) (r@@1 T@Field_13987_13988) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9045_9045 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_9045_4789 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_9045_4789 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_9045 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_9045_4789 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_4658_12842) (v_1@@5 T@FrameType) (q@@2 T@Field_12841_12842) (w@@5 T@FrameType) (r@@2 T@Field_12841_12842) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9045_12841 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_4764_12841 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_9045_12841 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_12841 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_4764_12841 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_4658_12842) (v_1@@6 T@FrameType) (q@@3 T@Field_12841_12842) (w@@6 T@FrameType) (r@@3 T@Field_4658_12842) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9045_12841 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_4764_9045 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_9045_9045 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_12841 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_4764_9045 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_4658_12842) (v_1@@7 T@FrameType) (q@@4 T@Field_12841_12842) (w@@7 T@FrameType) (r@@4 T@Field_13987_13988) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9045_12841 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_4764_4789 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_9045_4789 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_12841 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_4764_4789 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_4658_12842) (v_1@@8 T@FrameType) (q@@5 T@Field_13987_13988) (w@@8 T@FrameType) (r@@5 T@Field_12841_12842) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9045_4789 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4789_12841 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_9045_12841 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_4789 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_4789_12841 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_4658_12842) (v_1@@9 T@FrameType) (q@@6 T@Field_13987_13988) (w@@9 T@FrameType) (r@@6 T@Field_4658_12842) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9045_4789 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4789_9045 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_9045_9045 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_4789 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_4789_9045 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_4658_12842) (v_1@@10 T@FrameType) (q@@7 T@Field_13987_13988) (w@@10 T@FrameType) (r@@7 T@Field_13987_13988) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_9045_4789 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4789_4789 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_9045_4789 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9045_4789 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_4789_4789 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_13987_13988) (v_1@@11 T@FrameType) (q@@8 T@Field_4658_12842) (w@@11 T@FrameType) (r@@8 T@Field_12841_12842) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_9045 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_9045_12841 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_4789_12841 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_9045 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_9045_12841 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_13987_13988) (v_1@@12 T@FrameType) (q@@9 T@Field_4658_12842) (w@@12 T@FrameType) (r@@9 T@Field_4658_12842) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_9045 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_9045_9045 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_4789_9045 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_9045 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_9045_9045 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_13987_13988) (v_1@@13 T@FrameType) (q@@10 T@Field_4658_12842) (w@@13 T@FrameType) (r@@10 T@Field_13987_13988) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_9045 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_9045_4789 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_4789_4789 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_9045 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_9045_4789 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_13987_13988) (v_1@@14 T@FrameType) (q@@11 T@Field_12841_12842) (w@@14 T@FrameType) (r@@11 T@Field_12841_12842) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_12841 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_4764_12841 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_4789_12841 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_12841 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_4764_12841 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_13987_13988) (v_1@@15 T@FrameType) (q@@12 T@Field_12841_12842) (w@@15 T@FrameType) (r@@12 T@Field_4658_12842) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_12841 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_4764_9045 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_4789_9045 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_12841 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_4764_9045 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_13987_13988) (v_1@@16 T@FrameType) (q@@13 T@Field_12841_12842) (w@@16 T@FrameType) (r@@13 T@Field_13987_13988) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_12841 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_4764_4789 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_4789_4789 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_12841 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_4764_4789 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_13987_13988) (v_1@@17 T@FrameType) (q@@14 T@Field_13987_13988) (w@@17 T@FrameType) (r@@14 T@Field_12841_12842) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_4789 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4789_12841 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_4789_12841 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_4789 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_4789_12841 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_13987_13988) (v_1@@18 T@FrameType) (q@@15 T@Field_13987_13988) (w@@18 T@FrameType) (r@@15 T@Field_4658_12842) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_4789 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4789_9045 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_4789_9045 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_4789 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_4789_9045 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_13987_13988) (v_1@@19 T@FrameType) (q@@16 T@Field_13987_13988) (w@@19 T@FrameType) (r@@16 T@Field_13987_13988) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_4789_4789 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4789_4789 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_4789_4789 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4789_4789 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_4789_4789 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_12841_12842) (v_1@@20 T@FrameType) (q@@17 T@Field_4658_12842) (w@@20 T@FrameType) (r@@17 T@Field_12841_12842) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_9045 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_9045_12841 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_4764_12841 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_9045 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_9045_12841 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_12841_12842) (v_1@@21 T@FrameType) (q@@18 T@Field_4658_12842) (w@@21 T@FrameType) (r@@18 T@Field_4658_12842) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_9045 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_9045_9045 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_4764_9045 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_9045 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_9045_9045 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_12841_12842) (v_1@@22 T@FrameType) (q@@19 T@Field_4658_12842) (w@@22 T@FrameType) (r@@19 T@Field_13987_13988) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_9045 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_9045_4789 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_4764_4789 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_9045 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_9045_4789 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_12841_12842) (v_1@@23 T@FrameType) (q@@20 T@Field_12841_12842) (w@@23 T@FrameType) (r@@20 T@Field_12841_12842) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_12841 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_4764_12841 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_4764_12841 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_12841 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_4764_12841 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_12841_12842) (v_1@@24 T@FrameType) (q@@21 T@Field_12841_12842) (w@@24 T@FrameType) (r@@21 T@Field_4658_12842) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_12841 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_4764_9045 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_4764_9045 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_12841 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_4764_9045 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_12841_12842) (v_1@@25 T@FrameType) (q@@22 T@Field_12841_12842) (w@@25 T@FrameType) (r@@22 T@Field_13987_13988) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_12841 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_4764_4789 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_4764_4789 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_12841 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_4764_4789 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_12841_12842) (v_1@@26 T@FrameType) (q@@23 T@Field_13987_13988) (w@@26 T@FrameType) (r@@23 T@Field_12841_12842) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_4789 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4789_12841 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_4764_12841 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_4789 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_4789_12841 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_12841_12842) (v_1@@27 T@FrameType) (q@@24 T@Field_13987_13988) (w@@27 T@FrameType) (r@@24 T@Field_4658_12842) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_4789 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4789_9045 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_4764_9045 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_4789 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_4789_9045 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_12841_12842) (v_1@@28 T@FrameType) (q@@25 T@Field_13987_13988) (w@@28 T@FrameType) (r@@25 T@Field_13987_13988) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_4764_4789 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4789_4789 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_4764_4789 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4764_4789 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_4789_4789 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@2 () T@PolymorphicMapType_8985)
(declare-fun Mask@0 () T@PolymorphicMapType_9006)
(declare-fun Result@0 () Int)
(declare-fun this@@25 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_8985)
(declare-fun newPMask@0 () T@PolymorphicMapType_9534)
(declare-fun Heap@1 () T@PolymorphicMapType_8985)
(declare-fun Heap@@61 () T@PolymorphicMapType_8985)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_9006)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_9006)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_9006)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4659 (T@Ref) T@FrameType)
(declare-fun FrameFragment_4790 (T@FrameType) T@FrameType)
(set-info :boogie-vc-id |List_size#definedness|)
(set-option :timeout 0)
(set-option :rlimit 0)
(set-option :smt.AUTO_CONFIG false)
(set-option :smt.PHASE_SELECTION 0)
(set-option :smt.RESTART_STRATEGY 0)
(set-option :smt.RESTART_FACTOR |1.5|)
(set-option :smt.ARITH.RANDOM_INITIAL_VALUE true)
(set-option :smt.CASE_SPLIT 3)
(set-option :smt.DELAY_UNITS true)
(set-option :NNF.SK_HACK true)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :smt.BV.REFLECT true)
(set-option :smt.qi.max_multi_patterns 1000)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(assert (not
 (=> (= (ControlFlow 0 0) 17) (let ((anon8_correct  (=> (state Heap@2 Mask@0) (=> (and (= Result@0 (ite (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@2) this@@25 List_head) null) 0 (Node_size Heap@2 (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@2) this@@25 List_head)))) (= (ControlFlow 0 4) (- 0 3))) (>= Result@0 0)))))
(let ((anon12_Else_correct  (=> (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head) null) (=> (and (= Heap@2 Heap@0) (= (ControlFlow 0 6) 4)) anon8_correct))))
(let ((anon12_Then_correct  (=> (not (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_9058_9059) ) (!  (=> (or (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15 f_20) (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15 f_20)) (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| newPMask@0) o_15 f_20))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_12422_1204) ) (!  (=> (or (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_9045_53) ) (!  (=> (or (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_4658_12842) ) (!  (=> (or (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_4658_15403) ) (!  (=> (or (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_12841_4659) ) (!  (=> (or (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_12841_1204) ) (!  (=> (or (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_12841_53) ) (!  (=> (or (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_12841_12842) ) (!  (=> (or (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_15398_15403) ) (!  (=> (or (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| newPMask@0) o_15@@8 f_20@@8))
))) (forall ((o_15@@9 T@Ref) (f_20@@9 T@Field_13987_4659) ) (!  (=> (or (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@9 f_20@@9) (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@9 f_20@@9)) (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| newPMask@0) o_15@@9 f_20@@9))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| newPMask@0) o_15@@9 f_20@@9))
))) (forall ((o_15@@10 T@Ref) (f_20@@10 T@Field_13987_1204) ) (!  (=> (or (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@10 f_20@@10) (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@10 f_20@@10)) (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| newPMask@0) o_15@@10 f_20@@10))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| newPMask@0) o_15@@10 f_20@@10))
))) (forall ((o_15@@11 T@Ref) (f_20@@11 T@Field_13987_53) ) (!  (=> (or (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@11 f_20@@11) (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@11 f_20@@11)) (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| newPMask@0) o_15@@11 f_20@@11))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| newPMask@0) o_15@@11 f_20@@11))
))) (forall ((o_15@@12 T@Ref) (f_20@@12 T@Field_13987_13988) ) (!  (=> (or (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@12 f_20@@12) (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@12 f_20@@12)) (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| newPMask@0) o_15@@12 f_20@@12))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| newPMask@0) o_15@@12 f_20@@12))
))) (forall ((o_15@@13 T@Ref) (f_20@@13 T@Field_15829_15834) ) (!  (=> (or (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25))) o_15@@13 f_20@@13) (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) null (|Node_valid#sm| (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) this@@25 List_head)))) o_15@@13 f_20@@13)) (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| newPMask@0) o_15@@13 f_20@@13))
 :qid |stdinbpl.312:33|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| newPMask@0) o_15@@13 f_20@@13))
))) (= Heap@1 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@0) (store (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@0) null (|List_valid#sm| this@@25) newPMask@0) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@0) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 5) 4))) anon8_correct))))
(let ((anon6_correct  (=> (= Heap@0 (PolymorphicMapType_8985 (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@61) (store (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25) (PolymorphicMapType_9534 (store (|PolymorphicMapType_9534_4658_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) this@@25 List_head true) (|PolymorphicMapType_9534_4661_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_4658_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_4658_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_4658_34300#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_12841_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_12841_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_12841_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_12841_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_12841_35348#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_13987_4659#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_13987_1204#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_13987_53#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_13987_12842#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))) (|PolymorphicMapType_9534_13987_36396#PolymorphicMapType_9534| (select (|PolymorphicMapType_8985_4768_15490#PolymorphicMapType_8985| Heap@@61) null (|List_valid#sm| this@@25))))) (|PolymorphicMapType_8985_4793_15869#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_4661_1204#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_4658_12842#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_4658_30036#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_12841_4659#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_12841_1204#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_12841_53#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_13987_4659#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_13987_1204#PolymorphicMapType_8985| Heap@@61) (|PolymorphicMapType_8985_13987_53#PolymorphicMapType_8985| Heap@@61))) (and (=> (= (ControlFlow 0 7) 5) anon12_Then_correct) (=> (= (ControlFlow 0 7) 6) anon12_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head) null) (= (ControlFlow 0 8) 7)) anon6_correct)))
(let ((anon11_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| UnfoldingMask@2) null (Node_valid (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head))))))))
(let ((anon10_Else_correct  (=> (not (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head) null)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (HasDirectPerm_4658_4659 UnfoldingMask@2 this@@25 List_head)) (=> (HasDirectPerm_4658_4659 UnfoldingMask@2 this@@25 List_head) (and (=> (= (ControlFlow 0 9) 2) anon11_Then_correct) (=> (= (ControlFlow 0 9) 7) anon6_correct)))))))
(let ((anon2_correct  (=> (state Heap@@61 UnfoldingMask@2) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_4658_4659 UnfoldingMask@2 this@@25 List_head)) (=> (HasDirectPerm_4658_4659 UnfoldingMask@2 this@@25 List_head) (and (=> (= (ControlFlow 0 11) 8) anon10_Then_correct) (=> (= (ControlFlow 0 11) 9) anon10_Else_correct)))))))
(let ((anon9_Else_correct  (=> (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head) null) (=> (and (= UnfoldingMask@2 UnfoldingMask@0) (= (ControlFlow 0 14) 11)) anon2_correct))))
(let ((anon9_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head) null)) (= UnfoldingMask@1 (PolymorphicMapType_9006 (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| UnfoldingMask@0) (store (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| UnfoldingMask@0) null (Node_valid (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head)) (+ (select (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| UnfoldingMask@0) null (Node_valid (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head))) FullPerm)) (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| UnfoldingMask@0) (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| UnfoldingMask@0)))) (=> (and (and (InsidePredicate_4764_4789 (List_valid this@@25) (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@61) null (List_valid this@@25)) (Node_valid (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head)) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@61) null (Node_valid (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head)))) (state Heap@@61 UnfoldingMask@1)) (and (= UnfoldingMask@2 UnfoldingMask@1) (= (ControlFlow 0 13) 11))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@61 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_8985_4530_53#PolymorphicMapType_8985| Heap@@61) this@@25 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_9006 (store (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| ZeroMask) null (List_valid this@@25) (+ (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| ZeroMask) null (List_valid this@@25)) FullPerm)) (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| ZeroMask) (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| ZeroMask))))) (and (and (state Heap@@61 Mask@0) (state Heap@@61 Mask@0)) (and (|List_valid#trigger_4764| Heap@@61 (List_valid this@@25)) (= (select (|PolymorphicMapType_8985_4764_4765#PolymorphicMapType_8985| Heap@@61) null (List_valid this@@25)) (CombineFrames (FrameFragment_4659 (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head)) (FrameFragment_4790 (ite (not (= (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head) null)) (select (|PolymorphicMapType_8985_4789_4790#PolymorphicMapType_8985| Heap@@61) null (Node_valid (select (|PolymorphicMapType_8985_4533_4534#PolymorphicMapType_8985| Heap@@61) this@@25 List_head))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| Mask@0) null (List_valid this@@25))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| Mask@0) null (List_valid this@@25)))) (=> (not (= this@@25 null)) (=> (and (= UnfoldingMask@0 (PolymorphicMapType_9006 (|PolymorphicMapType_9006_4764_4765#PolymorphicMapType_9006| Mask@0) (store (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| Mask@0) this@@25 List_head (+ (select (|PolymorphicMapType_9006_4658_4659#PolymorphicMapType_9006| Mask@0) this@@25 List_head) FullPerm)) (|PolymorphicMapType_9006_4789_4790#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4661_1204#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4764_4659#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4764_1204#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4764_53#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4764_44237#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4658_4765#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4658_53#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4658_44636#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4789_4659#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4789_1204#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4789_53#PolymorphicMapType_9006| Mask@0) (|PolymorphicMapType_9006_4789_45047#PolymorphicMapType_9006| Mask@0))) (state Heap@@61 UnfoldingMask@0)) (and (=> (= (ControlFlow 0 15) 13) anon9_Then_correct) (=> (= (ControlFlow 0 15) 14) anon9_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 15) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
