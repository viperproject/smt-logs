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
(declare-sort T@Field_111839_53 0)
(declare-sort T@Field_111852_111853 0)
(declare-sort T@Field_115215_1201 0)
(declare-sort T@Field_115394_115395 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_116457_116458 0)
(declare-sort T@Field_115407_115412 0)
(declare-sort T@Field_117598_117603 0)
(declare-sort T@Field_55689_55706 0)
(declare-sort T@Field_55689_115412 0)
(declare-sort T@Field_55705_55690 0)
(declare-sort T@Field_55705_1216 0)
(declare-sort T@Field_55705_53 0)
(declare-sort T@Field_55730_55690 0)
(declare-sort T@Field_55730_1216 0)
(declare-sort T@Field_55730_53 0)
(declare-datatypes ((T@PolymorphicMapType_111800 0)) (((PolymorphicMapType_111800 (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| (Array T@Ref T@Field_111852_111853 Real)) (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| (Array T@Ref T@Field_116457_116458 Real)) (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| (Array T@Ref T@Field_115215_1201 Real)) (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| (Array T@Ref T@Field_115394_115395 Real)) (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| (Array T@Ref T@Field_55689_55706 Real)) (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| (Array T@Ref T@Field_111839_53 Real)) (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| (Array T@Ref T@Field_55689_115412 Real)) (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| (Array T@Ref T@Field_55730_55690 Real)) (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| (Array T@Ref T@Field_55730_1216 Real)) (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| (Array T@Ref T@Field_55730_53 Real)) (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| (Array T@Ref T@Field_117598_117603 Real)) (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| (Array T@Ref T@Field_55705_55690 Real)) (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| (Array T@Ref T@Field_55705_1216 Real)) (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| (Array T@Ref T@Field_55705_53 Real)) (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| (Array T@Ref T@Field_115407_115412 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_112328 0)) (((PolymorphicMapType_112328 (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (Array T@Ref T@Field_111852_111853 Bool)) (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (Array T@Ref T@Field_115215_1201 Bool)) (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (Array T@Ref T@Field_111839_53 Bool)) (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (Array T@Ref T@Field_55689_55706 Bool)) (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (Array T@Ref T@Field_55689_115412 Bool)) (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (Array T@Ref T@Field_55705_55690 Bool)) (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (Array T@Ref T@Field_55705_1216 Bool)) (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (Array T@Ref T@Field_55705_53 Bool)) (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (Array T@Ref T@Field_115394_115395 Bool)) (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (Array T@Ref T@Field_115407_115412 Bool)) (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (Array T@Ref T@Field_55730_55690 Bool)) (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (Array T@Ref T@Field_55730_1216 Bool)) (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (Array T@Ref T@Field_55730_53 Bool)) (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (Array T@Ref T@Field_116457_116458 Bool)) (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (Array T@Ref T@Field_117598_117603 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_111779 0)) (((PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| (Array T@Ref T@Field_111839_53 Bool)) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| (Array T@Ref T@Field_111852_111853 T@Ref)) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| (Array T@Ref T@Field_115215_1201 Int)) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| (Array T@Ref T@Field_115394_115395 T@FrameType)) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| (Array T@Ref T@Field_116457_116458 T@FrameType)) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| (Array T@Ref T@Field_115407_115412 T@PolymorphicMapType_112328)) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| (Array T@Ref T@Field_117598_117603 T@PolymorphicMapType_112328)) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| (Array T@Ref T@Field_55689_55706 T@FrameType)) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| (Array T@Ref T@Field_55689_115412 T@PolymorphicMapType_112328)) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| (Array T@Ref T@Field_55705_55690 T@Ref)) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| (Array T@Ref T@Field_55705_1216 Int)) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| (Array T@Ref T@Field_55705_53 Bool)) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| (Array T@Ref T@Field_55730_55690 T@Ref)) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| (Array T@Ref T@Field_55730_1216 Int)) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| (Array T@Ref T@Field_55730_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_111839_53)
(declare-fun root_1 () T@Field_111852_111853)
(declare-fun key_6 () T@Field_115215_1201)
(declare-fun height () T@Field_115215_1201)
(declare-fun left_2 () T@Field_111852_111853)
(declare-fun right_1 () T@Field_111852_111853)
(declare-fun balanceFactor () T@Field_115215_1201)
(declare-fun succHeap (T@PolymorphicMapType_111779 T@PolymorphicMapType_111779) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_111779 T@PolymorphicMapType_111779) Bool)
(declare-fun state (T@PolymorphicMapType_111779 T@PolymorphicMapType_111800) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_111800) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_112328)
(declare-fun headvalid (T@Ref) T@Field_115394_115395)
(declare-fun IsPredicateField_55705_55706 (T@Field_115394_115395) Bool)
(declare-fun valid (T@Ref) T@Field_116457_116458)
(declare-fun IsPredicateField_55730_55731 (T@Field_116457_116458) Bool)
(declare-fun |headvalid#trigger_55705| (T@PolymorphicMapType_111779 T@Field_115394_115395) Bool)
(declare-fun |headvalid#everUsed_55705| (T@Field_115394_115395) Bool)
(declare-fun |valid#trigger_55730| (T@PolymorphicMapType_111779 T@Field_116457_116458) Bool)
(declare-fun |valid#everUsed_55730| (T@Field_116457_116458) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_111779 T@PolymorphicMapType_111779 T@PolymorphicMapType_111800) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_55730 (T@Field_116457_116458) T@Field_117598_117603)
(declare-fun HasDirectPerm_55730_55731 (T@PolymorphicMapType_111800 T@Ref T@Field_116457_116458) Bool)
(declare-fun PredicateMaskField_55705 (T@Field_115394_115395) T@Field_115407_115412)
(declare-fun HasDirectPerm_55705_55706 (T@PolymorphicMapType_111800 T@Ref T@Field_115394_115395) Bool)
(declare-fun IsPredicateField_55689_448831 (T@Field_55689_55706) Bool)
(declare-fun PredicateMaskField_55689 (T@Field_55689_55706) T@Field_55689_115412)
(declare-fun HasDirectPerm_55689_55706 (T@PolymorphicMapType_111800 T@Ref T@Field_55689_55706) Bool)
(declare-fun IsWandField_55730_454512 (T@Field_116457_116458) Bool)
(declare-fun WandMaskField_55730 (T@Field_116457_116458) T@Field_117598_117603)
(declare-fun IsWandField_55705_454155 (T@Field_115394_115395) Bool)
(declare-fun WandMaskField_55705 (T@Field_115394_115395) T@Field_115407_115412)
(declare-fun IsWandField_55689_453798 (T@Field_55689_55706) Bool)
(declare-fun WandMaskField_55689 (T@Field_55689_55706) T@Field_55689_115412)
(declare-fun |headvalid#sm| (T@Ref) T@Field_115407_115412)
(declare-fun |valid#sm| (T@Ref) T@Field_117598_117603)
(declare-fun dummyHeap () T@PolymorphicMapType_111779)
(declare-fun ZeroMask () T@PolymorphicMapType_111800)
(declare-fun InsidePredicate_111839_111839 (T@Field_55689_55706 T@FrameType T@Field_55689_55706 T@FrameType) Bool)
(declare-fun InsidePredicate_55730_55730 (T@Field_116457_116458 T@FrameType T@Field_116457_116458 T@FrameType) Bool)
(declare-fun InsidePredicate_55705_115394 (T@Field_115394_115395 T@FrameType T@Field_115394_115395 T@FrameType) Bool)
(declare-fun IsPredicateField_55689_55690 (T@Field_111852_111853) Bool)
(declare-fun IsWandField_55689_55690 (T@Field_111852_111853) Bool)
(declare-fun IsPredicateField_55692_1201 (T@Field_115215_1201) Bool)
(declare-fun IsWandField_55692_1201 (T@Field_115215_1201) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_55705_464801 (T@Field_115407_115412) Bool)
(declare-fun IsWandField_55705_464817 (T@Field_115407_115412) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_55705_53 (T@Field_55705_53) Bool)
(declare-fun IsWandField_55705_53 (T@Field_55705_53) Bool)
(declare-fun IsPredicateField_55705_1216 (T@Field_55705_1216) Bool)
(declare-fun IsWandField_55705_1216 (T@Field_55705_1216) Bool)
(declare-fun IsPredicateField_55705_55690 (T@Field_55705_55690) Bool)
(declare-fun IsWandField_55705_55690 (T@Field_55705_55690) Bool)
(declare-fun IsPredicateField_55730_463970 (T@Field_117598_117603) Bool)
(declare-fun IsWandField_55730_463986 (T@Field_117598_117603) Bool)
(declare-fun IsPredicateField_55730_53 (T@Field_55730_53) Bool)
(declare-fun IsWandField_55730_53 (T@Field_55730_53) Bool)
(declare-fun IsPredicateField_55730_1216 (T@Field_55730_1216) Bool)
(declare-fun IsWandField_55730_1216 (T@Field_55730_1216) Bool)
(declare-fun IsPredicateField_55730_55690 (T@Field_55730_55690) Bool)
(declare-fun IsWandField_55730_55690 (T@Field_55730_55690) Bool)
(declare-fun IsPredicateField_55689_463139 (T@Field_55689_115412) Bool)
(declare-fun IsWandField_55689_463155 (T@Field_55689_115412) Bool)
(declare-fun IsPredicateField_55689_53 (T@Field_111839_53) Bool)
(declare-fun IsWandField_55689_53 (T@Field_111839_53) Bool)
(declare-fun HasDirectPerm_55730_448586 (T@PolymorphicMapType_111800 T@Ref T@Field_117598_117603) Bool)
(declare-fun HasDirectPerm_55730_53 (T@PolymorphicMapType_111800 T@Ref T@Field_55730_53) Bool)
(declare-fun HasDirectPerm_55730_1216 (T@PolymorphicMapType_111800 T@Ref T@Field_55730_1216) Bool)
(declare-fun HasDirectPerm_55730_55690 (T@PolymorphicMapType_111800 T@Ref T@Field_55730_55690) Bool)
(declare-fun HasDirectPerm_55705_447488 (T@PolymorphicMapType_111800 T@Ref T@Field_115407_115412) Bool)
(declare-fun HasDirectPerm_55705_53 (T@PolymorphicMapType_111800 T@Ref T@Field_55705_53) Bool)
(declare-fun HasDirectPerm_55705_1216 (T@PolymorphicMapType_111800 T@Ref T@Field_55705_1216) Bool)
(declare-fun HasDirectPerm_55705_55690 (T@PolymorphicMapType_111800 T@Ref T@Field_55705_55690) Bool)
(declare-fun HasDirectPerm_55689_446347 (T@PolymorphicMapType_111800 T@Ref T@Field_55689_115412) Bool)
(declare-fun HasDirectPerm_55689_53 (T@PolymorphicMapType_111800 T@Ref T@Field_111839_53) Bool)
(declare-fun HasDirectPerm_55694_1216 (T@PolymorphicMapType_111800 T@Ref T@Field_115215_1201) Bool)
(declare-fun HasDirectPerm_55689_55690 (T@PolymorphicMapType_111800 T@Ref T@Field_111852_111853) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_111800 T@PolymorphicMapType_111800 T@PolymorphicMapType_111800) Bool)
(declare-fun getPredWandId_55705_55706 (T@Field_115394_115395) Int)
(declare-fun getPredWandId_55730_55731 (T@Field_116457_116458) Int)
(declare-fun InsidePredicate_111839_115394 (T@Field_55689_55706 T@FrameType T@Field_115394_115395 T@FrameType) Bool)
(declare-fun InsidePredicate_111839_55730 (T@Field_55689_55706 T@FrameType T@Field_116457_116458 T@FrameType) Bool)
(declare-fun InsidePredicate_55705_111839 (T@Field_115394_115395 T@FrameType T@Field_55689_55706 T@FrameType) Bool)
(declare-fun InsidePredicate_55705_55730 (T@Field_115394_115395 T@FrameType T@Field_116457_116458 T@FrameType) Bool)
(declare-fun InsidePredicate_55730_115394 (T@Field_116457_116458 T@FrameType T@Field_115394_115395 T@FrameType) Bool)
(declare-fun InsidePredicate_55730_111839 (T@Field_116457_116458 T@FrameType T@Field_55689_55706 T@FrameType) Bool)
(assert (and (distinct root_1 left_2 right_1)(distinct key_6 height balanceFactor))
)
(assert (forall ((Heap0 T@PolymorphicMapType_111779) (Heap1 T@PolymorphicMapType_111779) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_111779) (Mask T@PolymorphicMapType_111800) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_111779) (Heap1@@0 T@PolymorphicMapType_111779) (Heap2 T@PolymorphicMapType_111779) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_117598_117603) ) (!  (not (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_116457_116458) ) (!  (not (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_55730_53) ) (!  (not (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_55730_1216) ) (!  (not (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_55730_55690) ) (!  (not (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_115407_115412) ) (!  (not (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_115394_115395) ) (!  (not (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_55705_53) ) (!  (not (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_55705_1216) ) (!  (not (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_55705_55690) ) (!  (not (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_55689_115412) ) (!  (not (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_55689_55706) ) (!  (not (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_111839_53) ) (!  (not (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_115215_1201) ) (!  (not (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_111852_111853) ) (!  (not (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_55705_55706 (headvalid this))
 :qid |stdinbpl.210:15|
 :skolemid |23|
 :pattern ( (headvalid this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_55730_55731 (valid this@@0))
 :qid |stdinbpl.309:15|
 :skolemid |29|
 :pattern ( (valid this@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_111779) (this@@1 T@Ref) ) (! (|headvalid#everUsed_55705| (headvalid this@@1))
 :qid |stdinbpl.229:15|
 :skolemid |27|
 :pattern ( (|headvalid#trigger_55705| Heap@@0 (headvalid this@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_111779) (this@@2 T@Ref) ) (! (|valid#everUsed_55730| (valid this@@2))
 :qid |stdinbpl.328:15|
 :skolemid |33|
 :pattern ( (|valid#trigger_55730| Heap@@1 (valid this@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_111779) (ExhaleHeap T@PolymorphicMapType_111779) (Mask@@0 T@PolymorphicMapType_111800) (pm_f_36 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_55730_55731 Mask@@0 null pm_f_36) (IsPredicateField_55730_55731 pm_f_36)) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@2) null (PredicateMaskField_55730 pm_f_36)) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap) null (PredicateMaskField_55730 pm_f_36)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_55730_55731 pm_f_36) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap) null (PredicateMaskField_55730 pm_f_36)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_111779) (ExhaleHeap@@0 T@PolymorphicMapType_111779) (Mask@@1 T@PolymorphicMapType_111800) (pm_f_36@@0 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_55705_55706 Mask@@1 null pm_f_36@@0) (IsPredicateField_55705_55706 pm_f_36@@0)) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@3) null (PredicateMaskField_55705 pm_f_36@@0)) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@0) null (PredicateMaskField_55705 pm_f_36@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_55705_55706 pm_f_36@@0) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@0) null (PredicateMaskField_55705 pm_f_36@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_111779) (ExhaleHeap@@1 T@PolymorphicMapType_111779) (Mask@@2 T@PolymorphicMapType_111800) (pm_f_36@@1 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_55689_55706 Mask@@2 null pm_f_36@@1) (IsPredicateField_55689_448831 pm_f_36@@1)) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@4) null (PredicateMaskField_55689 pm_f_36@@1)) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@1) null (PredicateMaskField_55689 pm_f_36@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_55689_448831 pm_f_36@@1) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@1) null (PredicateMaskField_55689 pm_f_36@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_111779) (ExhaleHeap@@2 T@PolymorphicMapType_111779) (Mask@@3 T@PolymorphicMapType_111800) (pm_f_36@@2 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_55730_55731 Mask@@3 null pm_f_36@@2) (IsWandField_55730_454512 pm_f_36@@2)) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@5) null (WandMaskField_55730 pm_f_36@@2)) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@2) null (WandMaskField_55730 pm_f_36@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_55730_454512 pm_f_36@@2) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@2) null (WandMaskField_55730 pm_f_36@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_111779) (ExhaleHeap@@3 T@PolymorphicMapType_111779) (Mask@@4 T@PolymorphicMapType_111800) (pm_f_36@@3 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_55705_55706 Mask@@4 null pm_f_36@@3) (IsWandField_55705_454155 pm_f_36@@3)) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@6) null (WandMaskField_55705 pm_f_36@@3)) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@3) null (WandMaskField_55705 pm_f_36@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_55705_454155 pm_f_36@@3) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@3) null (WandMaskField_55705 pm_f_36@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_111779) (ExhaleHeap@@4 T@PolymorphicMapType_111779) (Mask@@5 T@PolymorphicMapType_111800) (pm_f_36@@4 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_55689_55706 Mask@@5 null pm_f_36@@4) (IsWandField_55689_453798 pm_f_36@@4)) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@7) null (WandMaskField_55689 pm_f_36@@4)) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@4) null (WandMaskField_55689 pm_f_36@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_55689_453798 pm_f_36@@4) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@4) null (WandMaskField_55689 pm_f_36@@4)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (headvalid this@@3) (headvalid this2)) (= this@@3 this2))
 :qid |stdinbpl.220:15|
 :skolemid |25|
 :pattern ( (headvalid this@@3) (headvalid this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|headvalid#sm| this@@4) (|headvalid#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.224:15|
 :skolemid |26|
 :pattern ( (|headvalid#sm| this@@4) (|headvalid#sm| this2@@0))
)))
(assert (forall ((this@@5 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (valid this@@5) (valid this2@@1)) (= this@@5 this2@@1))
 :qid |stdinbpl.319:15|
 :skolemid |31|
 :pattern ( (valid this@@5) (valid this2@@1))
)))
(assert (forall ((this@@6 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|valid#sm| this@@6) (|valid#sm| this2@@2)) (= this@@6 this2@@2))
 :qid |stdinbpl.323:15|
 :skolemid |32|
 :pattern ( (|valid#sm| this@@6) (|valid#sm| this2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_111779) (ExhaleHeap@@5 T@PolymorphicMapType_111779) (Mask@@6 T@PolymorphicMapType_111800) (o_80 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@8) o_80 $allocated) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@5) o_80 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@5) o_80 $allocated))
)))
(assert (forall ((p T@Field_55689_55706) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_111839_111839 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_111839_111839 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_116457_116458) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_55730_55730 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_55730_55730 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_115394_115395) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_55705_115394 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_55705_115394 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_55689_55690 root_1)))
(assert  (not (IsWandField_55689_55690 root_1)))
(assert  (not (IsPredicateField_55692_1201 key_6)))
(assert  (not (IsWandField_55692_1201 key_6)))
(assert  (not (IsPredicateField_55692_1201 height)))
(assert  (not (IsWandField_55692_1201 height)))
(assert  (not (IsPredicateField_55689_55690 left_2)))
(assert  (not (IsWandField_55689_55690 left_2)))
(assert  (not (IsPredicateField_55689_55690 right_1)))
(assert  (not (IsWandField_55689_55690 right_1)))
(assert  (not (IsPredicateField_55692_1201 balanceFactor)))
(assert  (not (IsWandField_55692_1201 balanceFactor)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_111779) (ExhaleHeap@@6 T@PolymorphicMapType_111779) (Mask@@7 T@PolymorphicMapType_111800) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_111800) (o_2@@14 T@Ref) (f_4@@14 T@Field_115407_115412) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_55705_464801 f_4@@14))) (not (IsWandField_55705_464817 f_4@@14))) (<= (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_111800) (o_2@@15 T@Ref) (f_4@@15 T@Field_55705_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_55705_53 f_4@@15))) (not (IsWandField_55705_53 f_4@@15))) (<= (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_111800) (o_2@@16 T@Ref) (f_4@@16 T@Field_55705_1216) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_55705_1216 f_4@@16))) (not (IsWandField_55705_1216 f_4@@16))) (<= (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_111800) (o_2@@17 T@Ref) (f_4@@17 T@Field_115394_115395) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_55705_55706 f_4@@17))) (not (IsWandField_55705_454155 f_4@@17))) (<= (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_111800) (o_2@@18 T@Ref) (f_4@@18 T@Field_55705_55690) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_55705_55690 f_4@@18))) (not (IsWandField_55705_55690 f_4@@18))) (<= (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_111800) (o_2@@19 T@Ref) (f_4@@19 T@Field_117598_117603) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_55730_463970 f_4@@19))) (not (IsWandField_55730_463986 f_4@@19))) (<= (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_111800) (o_2@@20 T@Ref) (f_4@@20 T@Field_55730_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_55730_53 f_4@@20))) (not (IsWandField_55730_53 f_4@@20))) (<= (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_111800) (o_2@@21 T@Ref) (f_4@@21 T@Field_55730_1216) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_55730_1216 f_4@@21))) (not (IsWandField_55730_1216 f_4@@21))) (<= (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_111800) (o_2@@22 T@Ref) (f_4@@22 T@Field_116457_116458) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_55730_55731 f_4@@22))) (not (IsWandField_55730_454512 f_4@@22))) (<= (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_111800) (o_2@@23 T@Ref) (f_4@@23 T@Field_55730_55690) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_55730_55690 f_4@@23))) (not (IsWandField_55730_55690 f_4@@23))) (<= (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_111800) (o_2@@24 T@Ref) (f_4@@24 T@Field_55689_115412) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_55689_463139 f_4@@24))) (not (IsWandField_55689_463155 f_4@@24))) (<= (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_111800) (o_2@@25 T@Ref) (f_4@@25 T@Field_111839_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_55689_53 f_4@@25))) (not (IsWandField_55689_53 f_4@@25))) (<= (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_111800) (o_2@@26 T@Ref) (f_4@@26 T@Field_115215_1201) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_55692_1201 f_4@@26))) (not (IsWandField_55692_1201 f_4@@26))) (<= (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_111800) (o_2@@27 T@Ref) (f_4@@27 T@Field_55689_55706) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_55689_448831 f_4@@27))) (not (IsWandField_55689_453798 f_4@@27))) (<= (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_111800) (o_2@@28 T@Ref) (f_4@@28 T@Field_111852_111853) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_55689_55690 f_4@@28))) (not (IsWandField_55689_55690 f_4@@28))) (<= (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_111800) (o_2@@29 T@Ref) (f_4@@29 T@Field_117598_117603) ) (! (= (HasDirectPerm_55730_448586 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_448586 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_111800) (o_2@@30 T@Ref) (f_4@@30 T@Field_55730_53) ) (! (= (HasDirectPerm_55730_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_111800) (o_2@@31 T@Ref) (f_4@@31 T@Field_116457_116458) ) (! (= (HasDirectPerm_55730_55731 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_55731 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_111800) (o_2@@32 T@Ref) (f_4@@32 T@Field_55730_1216) ) (! (= (HasDirectPerm_55730_1216 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_1216 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_111800) (o_2@@33 T@Ref) (f_4@@33 T@Field_55730_55690) ) (! (= (HasDirectPerm_55730_55690 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_55690 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_111800) (o_2@@34 T@Ref) (f_4@@34 T@Field_115407_115412) ) (! (= (HasDirectPerm_55705_447488 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_447488 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_111800) (o_2@@35 T@Ref) (f_4@@35 T@Field_55705_53) ) (! (= (HasDirectPerm_55705_53 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_53 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_111800) (o_2@@36 T@Ref) (f_4@@36 T@Field_115394_115395) ) (! (= (HasDirectPerm_55705_55706 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_55706 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_111800) (o_2@@37 T@Ref) (f_4@@37 T@Field_55705_1216) ) (! (= (HasDirectPerm_55705_1216 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_1216 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_111800) (o_2@@38 T@Ref) (f_4@@38 T@Field_55705_55690) ) (! (= (HasDirectPerm_55705_55690 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_55690 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_111800) (o_2@@39 T@Ref) (f_4@@39 T@Field_55689_115412) ) (! (= (HasDirectPerm_55689_446347 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55689_446347 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_111800) (o_2@@40 T@Ref) (f_4@@40 T@Field_111839_53) ) (! (= (HasDirectPerm_55689_53 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55689_53 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_111800) (o_2@@41 T@Ref) (f_4@@41 T@Field_55689_55706) ) (! (= (HasDirectPerm_55689_55706 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55689_55706 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_111800) (o_2@@42 T@Ref) (f_4@@42 T@Field_115215_1201) ) (! (= (HasDirectPerm_55694_1216 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55694_1216 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_111800) (o_2@@43 T@Ref) (f_4@@43 T@Field_111852_111853) ) (! (= (HasDirectPerm_55689_55690 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55689_55690 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_111779) (ExhaleHeap@@7 T@PolymorphicMapType_111779) (Mask@@38 T@PolymorphicMapType_111800) (o_80@@0 T@Ref) (f_101 T@Field_117598_117603) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_55730_448586 Mask@@38 o_80@@0 f_101) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@10) o_80@@0 f_101) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@7) o_80@@0 f_101))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@7) o_80@@0 f_101))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_111779) (ExhaleHeap@@8 T@PolymorphicMapType_111779) (Mask@@39 T@PolymorphicMapType_111800) (o_80@@1 T@Ref) (f_101@@0 T@Field_55730_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_55730_53 Mask@@39 o_80@@1 f_101@@0) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@11) o_80@@1 f_101@@0) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@8) o_80@@1 f_101@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@8) o_80@@1 f_101@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_111779) (ExhaleHeap@@9 T@PolymorphicMapType_111779) (Mask@@40 T@PolymorphicMapType_111800) (o_80@@2 T@Ref) (f_101@@1 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_55730_55731 Mask@@40 o_80@@2 f_101@@1) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@12) o_80@@2 f_101@@1) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@9) o_80@@2 f_101@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@9) o_80@@2 f_101@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_111779) (ExhaleHeap@@10 T@PolymorphicMapType_111779) (Mask@@41 T@PolymorphicMapType_111800) (o_80@@3 T@Ref) (f_101@@2 T@Field_55730_1216) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_55730_1216 Mask@@41 o_80@@3 f_101@@2) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@13) o_80@@3 f_101@@2) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@10) o_80@@3 f_101@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@10) o_80@@3 f_101@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_111779) (ExhaleHeap@@11 T@PolymorphicMapType_111779) (Mask@@42 T@PolymorphicMapType_111800) (o_80@@4 T@Ref) (f_101@@3 T@Field_55730_55690) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_55730_55690 Mask@@42 o_80@@4 f_101@@3) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@14) o_80@@4 f_101@@3) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@11) o_80@@4 f_101@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@11) o_80@@4 f_101@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_111779) (ExhaleHeap@@12 T@PolymorphicMapType_111779) (Mask@@43 T@PolymorphicMapType_111800) (o_80@@5 T@Ref) (f_101@@4 T@Field_115407_115412) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_55705_447488 Mask@@43 o_80@@5 f_101@@4) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@15) o_80@@5 f_101@@4) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@12) o_80@@5 f_101@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@12) o_80@@5 f_101@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_111779) (ExhaleHeap@@13 T@PolymorphicMapType_111779) (Mask@@44 T@PolymorphicMapType_111800) (o_80@@6 T@Ref) (f_101@@5 T@Field_55705_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_55705_53 Mask@@44 o_80@@6 f_101@@5) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@16) o_80@@6 f_101@@5) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@13) o_80@@6 f_101@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@13) o_80@@6 f_101@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_111779) (ExhaleHeap@@14 T@PolymorphicMapType_111779) (Mask@@45 T@PolymorphicMapType_111800) (o_80@@7 T@Ref) (f_101@@6 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_55705_55706 Mask@@45 o_80@@7 f_101@@6) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@17) o_80@@7 f_101@@6) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@14) o_80@@7 f_101@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@14) o_80@@7 f_101@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_111779) (ExhaleHeap@@15 T@PolymorphicMapType_111779) (Mask@@46 T@PolymorphicMapType_111800) (o_80@@8 T@Ref) (f_101@@7 T@Field_55705_1216) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_55705_1216 Mask@@46 o_80@@8 f_101@@7) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@18) o_80@@8 f_101@@7) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@15) o_80@@8 f_101@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@15) o_80@@8 f_101@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_111779) (ExhaleHeap@@16 T@PolymorphicMapType_111779) (Mask@@47 T@PolymorphicMapType_111800) (o_80@@9 T@Ref) (f_101@@8 T@Field_55705_55690) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_55705_55690 Mask@@47 o_80@@9 f_101@@8) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@19) o_80@@9 f_101@@8) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@16) o_80@@9 f_101@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@16) o_80@@9 f_101@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_111779) (ExhaleHeap@@17 T@PolymorphicMapType_111779) (Mask@@48 T@PolymorphicMapType_111800) (o_80@@10 T@Ref) (f_101@@9 T@Field_55689_115412) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_55689_446347 Mask@@48 o_80@@10 f_101@@9) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@20) o_80@@10 f_101@@9) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@17) o_80@@10 f_101@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@17) o_80@@10 f_101@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_111779) (ExhaleHeap@@18 T@PolymorphicMapType_111779) (Mask@@49 T@PolymorphicMapType_111800) (o_80@@11 T@Ref) (f_101@@10 T@Field_111839_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_55689_53 Mask@@49 o_80@@11 f_101@@10) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@21) o_80@@11 f_101@@10) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@18) o_80@@11 f_101@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@18) o_80@@11 f_101@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_111779) (ExhaleHeap@@19 T@PolymorphicMapType_111779) (Mask@@50 T@PolymorphicMapType_111800) (o_80@@12 T@Ref) (f_101@@11 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_55689_55706 Mask@@50 o_80@@12 f_101@@11) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@22) o_80@@12 f_101@@11) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@19) o_80@@12 f_101@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@19) o_80@@12 f_101@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_111779) (ExhaleHeap@@20 T@PolymorphicMapType_111779) (Mask@@51 T@PolymorphicMapType_111800) (o_80@@13 T@Ref) (f_101@@12 T@Field_115215_1201) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_55694_1216 Mask@@51 o_80@@13 f_101@@12) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@23) o_80@@13 f_101@@12) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@20) o_80@@13 f_101@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@20) o_80@@13 f_101@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_111779) (ExhaleHeap@@21 T@PolymorphicMapType_111779) (Mask@@52 T@PolymorphicMapType_111800) (o_80@@14 T@Ref) (f_101@@13 T@Field_111852_111853) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_55689_55690 Mask@@52 o_80@@14 f_101@@13) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@24) o_80@@14 f_101@@13) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@21) o_80@@14 f_101@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@21) o_80@@14 f_101@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_115407_115412) ) (! (= (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_55705_53) ) (! (= (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_55705_1216) ) (! (= (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_115394_115395) ) (! (= (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_55705_55690) ) (! (= (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_117598_117603) ) (! (= (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_55730_53) ) (! (= (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_55730_1216) ) (! (= (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_116457_116458) ) (! (= (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_55730_55690) ) (! (= (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_55689_115412) ) (! (= (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_111839_53) ) (! (= (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_115215_1201) ) (! (= (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_55689_55706) ) (! (= (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_111852_111853) ) (! (= (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_111800) (SummandMask1 T@PolymorphicMapType_111800) (SummandMask2 T@PolymorphicMapType_111800) (o_2@@59 T@Ref) (f_4@@59 T@Field_115407_115412) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_111800) (SummandMask1@@0 T@PolymorphicMapType_111800) (SummandMask2@@0 T@PolymorphicMapType_111800) (o_2@@60 T@Ref) (f_4@@60 T@Field_55705_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_111800) (SummandMask1@@1 T@PolymorphicMapType_111800) (SummandMask2@@1 T@PolymorphicMapType_111800) (o_2@@61 T@Ref) (f_4@@61 T@Field_55705_1216) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_111800) (SummandMask1@@2 T@PolymorphicMapType_111800) (SummandMask2@@2 T@PolymorphicMapType_111800) (o_2@@62 T@Ref) (f_4@@62 T@Field_115394_115395) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_111800) (SummandMask1@@3 T@PolymorphicMapType_111800) (SummandMask2@@3 T@PolymorphicMapType_111800) (o_2@@63 T@Ref) (f_4@@63 T@Field_55705_55690) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_111800) (SummandMask1@@4 T@PolymorphicMapType_111800) (SummandMask2@@4 T@PolymorphicMapType_111800) (o_2@@64 T@Ref) (f_4@@64 T@Field_117598_117603) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_111800) (SummandMask1@@5 T@PolymorphicMapType_111800) (SummandMask2@@5 T@PolymorphicMapType_111800) (o_2@@65 T@Ref) (f_4@@65 T@Field_55730_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_111800) (SummandMask1@@6 T@PolymorphicMapType_111800) (SummandMask2@@6 T@PolymorphicMapType_111800) (o_2@@66 T@Ref) (f_4@@66 T@Field_55730_1216) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_111800) (SummandMask1@@7 T@PolymorphicMapType_111800) (SummandMask2@@7 T@PolymorphicMapType_111800) (o_2@@67 T@Ref) (f_4@@67 T@Field_116457_116458) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_111800) (SummandMask1@@8 T@PolymorphicMapType_111800) (SummandMask2@@8 T@PolymorphicMapType_111800) (o_2@@68 T@Ref) (f_4@@68 T@Field_55730_55690) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_111800) (SummandMask1@@9 T@PolymorphicMapType_111800) (SummandMask2@@9 T@PolymorphicMapType_111800) (o_2@@69 T@Ref) (f_4@@69 T@Field_55689_115412) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_111800) (SummandMask1@@10 T@PolymorphicMapType_111800) (SummandMask2@@10 T@PolymorphicMapType_111800) (o_2@@70 T@Ref) (f_4@@70 T@Field_111839_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_111800) (SummandMask1@@11 T@PolymorphicMapType_111800) (SummandMask2@@11 T@PolymorphicMapType_111800) (o_2@@71 T@Ref) (f_4@@71 T@Field_115215_1201) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_111800) (SummandMask1@@12 T@PolymorphicMapType_111800) (SummandMask2@@12 T@PolymorphicMapType_111800) (o_2@@72 T@Ref) (f_4@@72 T@Field_55689_55706) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_111800) (SummandMask1@@13 T@PolymorphicMapType_111800) (SummandMask2@@13 T@PolymorphicMapType_111800) (o_2@@73 T@Ref) (f_4@@73 T@Field_111852_111853) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_111779) (ExhaleHeap@@22 T@PolymorphicMapType_111779) (Mask@@53 T@PolymorphicMapType_111800) (pm_f_36@@5 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_55730_55731 Mask@@53 null pm_f_36@@5) (IsPredicateField_55730_55731 pm_f_36@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36 T@Ref) (f_101@@14 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36 f_101@@14) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@25) o2_36 f_101@@14) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36 f_101@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36 f_101@@14))
)) (forall ((o2_36@@0 T@Ref) (f_101@@15 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@0 f_101@@15) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@25) o2_36@@0 f_101@@15) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@0 f_101@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@0 f_101@@15))
))) (forall ((o2_36@@1 T@Ref) (f_101@@16 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@1 f_101@@16) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@25) o2_36@@1 f_101@@16) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@1 f_101@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@1 f_101@@16))
))) (forall ((o2_36@@2 T@Ref) (f_101@@17 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@2 f_101@@17) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@25) o2_36@@2 f_101@@17) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@2 f_101@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@2 f_101@@17))
))) (forall ((o2_36@@3 T@Ref) (f_101@@18 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@3 f_101@@18) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@25) o2_36@@3 f_101@@18) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@3 f_101@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@3 f_101@@18))
))) (forall ((o2_36@@4 T@Ref) (f_101@@19 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@4 f_101@@19) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@25) o2_36@@4 f_101@@19) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@4 f_101@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@4 f_101@@19))
))) (forall ((o2_36@@5 T@Ref) (f_101@@20 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@5 f_101@@20) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@25) o2_36@@5 f_101@@20) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@5 f_101@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@5 f_101@@20))
))) (forall ((o2_36@@6 T@Ref) (f_101@@21 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@6 f_101@@21) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@25) o2_36@@6 f_101@@21) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@6 f_101@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@6 f_101@@21))
))) (forall ((o2_36@@7 T@Ref) (f_101@@22 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@7 f_101@@22) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@25) o2_36@@7 f_101@@22) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@7 f_101@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@7 f_101@@22))
))) (forall ((o2_36@@8 T@Ref) (f_101@@23 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@8 f_101@@23) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@25) o2_36@@8 f_101@@23) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@8 f_101@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@8 f_101@@23))
))) (forall ((o2_36@@9 T@Ref) (f_101@@24 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@9 f_101@@24) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@25) o2_36@@9 f_101@@24) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@9 f_101@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@9 f_101@@24))
))) (forall ((o2_36@@10 T@Ref) (f_101@@25 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@10 f_101@@25) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@25) o2_36@@10 f_101@@25) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@10 f_101@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@10 f_101@@25))
))) (forall ((o2_36@@11 T@Ref) (f_101@@26 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@11 f_101@@26) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@25) o2_36@@11 f_101@@26) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@11 f_101@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@11 f_101@@26))
))) (forall ((o2_36@@12 T@Ref) (f_101@@27 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@12 f_101@@27) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@25) o2_36@@12 f_101@@27) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@12 f_101@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@12 f_101@@27))
))) (forall ((o2_36@@13 T@Ref) (f_101@@28 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@13 f_101@@28) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) o2_36@@13 f_101@@28) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@13 f_101@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@13 f_101@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_55730_55731 pm_f_36@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_111779) (ExhaleHeap@@23 T@PolymorphicMapType_111779) (Mask@@54 T@PolymorphicMapType_111800) (pm_f_36@@6 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_55705_55706 Mask@@54 null pm_f_36@@6) (IsPredicateField_55705_55706 pm_f_36@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@14 T@Ref) (f_101@@29 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@14 f_101@@29) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@26) o2_36@@14 f_101@@29) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@14 f_101@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@14 f_101@@29))
)) (forall ((o2_36@@15 T@Ref) (f_101@@30 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@15 f_101@@30) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@26) o2_36@@15 f_101@@30) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@15 f_101@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@15 f_101@@30))
))) (forall ((o2_36@@16 T@Ref) (f_101@@31 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@16 f_101@@31) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@26) o2_36@@16 f_101@@31) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@16 f_101@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@16 f_101@@31))
))) (forall ((o2_36@@17 T@Ref) (f_101@@32 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@17 f_101@@32) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@26) o2_36@@17 f_101@@32) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@17 f_101@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@17 f_101@@32))
))) (forall ((o2_36@@18 T@Ref) (f_101@@33 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@18 f_101@@33) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@26) o2_36@@18 f_101@@33) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@18 f_101@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@18 f_101@@33))
))) (forall ((o2_36@@19 T@Ref) (f_101@@34 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@19 f_101@@34) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@26) o2_36@@19 f_101@@34) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@19 f_101@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@19 f_101@@34))
))) (forall ((o2_36@@20 T@Ref) (f_101@@35 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@20 f_101@@35) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@26) o2_36@@20 f_101@@35) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@20 f_101@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@20 f_101@@35))
))) (forall ((o2_36@@21 T@Ref) (f_101@@36 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@21 f_101@@36) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@26) o2_36@@21 f_101@@36) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@21 f_101@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@21 f_101@@36))
))) (forall ((o2_36@@22 T@Ref) (f_101@@37 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@22 f_101@@37) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@26) o2_36@@22 f_101@@37) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@22 f_101@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@22 f_101@@37))
))) (forall ((o2_36@@23 T@Ref) (f_101@@38 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@23 f_101@@38) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) o2_36@@23 f_101@@38) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@23 f_101@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@23 f_101@@38))
))) (forall ((o2_36@@24 T@Ref) (f_101@@39 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@24 f_101@@39) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@26) o2_36@@24 f_101@@39) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@24 f_101@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@24 f_101@@39))
))) (forall ((o2_36@@25 T@Ref) (f_101@@40 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@25 f_101@@40) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@26) o2_36@@25 f_101@@40) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@25 f_101@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@25 f_101@@40))
))) (forall ((o2_36@@26 T@Ref) (f_101@@41 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@26 f_101@@41) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@26) o2_36@@26 f_101@@41) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@26 f_101@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@26 f_101@@41))
))) (forall ((o2_36@@27 T@Ref) (f_101@@42 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@27 f_101@@42) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@26) o2_36@@27 f_101@@42) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@27 f_101@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@27 f_101@@42))
))) (forall ((o2_36@@28 T@Ref) (f_101@@43 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@28 f_101@@43) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@26) o2_36@@28 f_101@@43) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@28 f_101@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@28 f_101@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_55705_55706 pm_f_36@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_111779) (ExhaleHeap@@24 T@PolymorphicMapType_111779) (Mask@@55 T@PolymorphicMapType_111800) (pm_f_36@@7 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_55689_55706 Mask@@55 null pm_f_36@@7) (IsPredicateField_55689_448831 pm_f_36@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@29 T@Ref) (f_101@@44 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@29 f_101@@44) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@27) o2_36@@29 f_101@@44) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@29 f_101@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@29 f_101@@44))
)) (forall ((o2_36@@30 T@Ref) (f_101@@45 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@30 f_101@@45) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@27) o2_36@@30 f_101@@45) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@30 f_101@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@30 f_101@@45))
))) (forall ((o2_36@@31 T@Ref) (f_101@@46 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@31 f_101@@46) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@27) o2_36@@31 f_101@@46) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@31 f_101@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@31 f_101@@46))
))) (forall ((o2_36@@32 T@Ref) (f_101@@47 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@32 f_101@@47) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@27) o2_36@@32 f_101@@47) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@32 f_101@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@32 f_101@@47))
))) (forall ((o2_36@@33 T@Ref) (f_101@@48 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@33 f_101@@48) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) o2_36@@33 f_101@@48) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@33 f_101@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@33 f_101@@48))
))) (forall ((o2_36@@34 T@Ref) (f_101@@49 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@34 f_101@@49) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@27) o2_36@@34 f_101@@49) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@34 f_101@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@34 f_101@@49))
))) (forall ((o2_36@@35 T@Ref) (f_101@@50 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@35 f_101@@50) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@27) o2_36@@35 f_101@@50) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@35 f_101@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@35 f_101@@50))
))) (forall ((o2_36@@36 T@Ref) (f_101@@51 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@36 f_101@@51) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@27) o2_36@@36 f_101@@51) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@36 f_101@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@36 f_101@@51))
))) (forall ((o2_36@@37 T@Ref) (f_101@@52 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@37 f_101@@52) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@27) o2_36@@37 f_101@@52) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@37 f_101@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@37 f_101@@52))
))) (forall ((o2_36@@38 T@Ref) (f_101@@53 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@38 f_101@@53) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@27) o2_36@@38 f_101@@53) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@38 f_101@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@38 f_101@@53))
))) (forall ((o2_36@@39 T@Ref) (f_101@@54 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@39 f_101@@54) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@27) o2_36@@39 f_101@@54) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@39 f_101@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@39 f_101@@54))
))) (forall ((o2_36@@40 T@Ref) (f_101@@55 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@40 f_101@@55) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@27) o2_36@@40 f_101@@55) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@40 f_101@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@40 f_101@@55))
))) (forall ((o2_36@@41 T@Ref) (f_101@@56 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@41 f_101@@56) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@27) o2_36@@41 f_101@@56) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@41 f_101@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@41 f_101@@56))
))) (forall ((o2_36@@42 T@Ref) (f_101@@57 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@42 f_101@@57) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@27) o2_36@@42 f_101@@57) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@42 f_101@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@42 f_101@@57))
))) (forall ((o2_36@@43 T@Ref) (f_101@@58 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@43 f_101@@58) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@27) o2_36@@43 f_101@@58) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@43 f_101@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@43 f_101@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_55689_448831 pm_f_36@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_111779) (ExhaleHeap@@25 T@PolymorphicMapType_111779) (Mask@@56 T@PolymorphicMapType_111800) (pm_f_36@@8 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_55730_55731 Mask@@56 null pm_f_36@@8) (IsWandField_55730_454512 pm_f_36@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@44 T@Ref) (f_101@@59 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@44 f_101@@59) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@28) o2_36@@44 f_101@@59) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@44 f_101@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@44 f_101@@59))
)) (forall ((o2_36@@45 T@Ref) (f_101@@60 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@45 f_101@@60) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@28) o2_36@@45 f_101@@60) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@45 f_101@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@45 f_101@@60))
))) (forall ((o2_36@@46 T@Ref) (f_101@@61 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@46 f_101@@61) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@28) o2_36@@46 f_101@@61) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@46 f_101@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@46 f_101@@61))
))) (forall ((o2_36@@47 T@Ref) (f_101@@62 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@47 f_101@@62) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@28) o2_36@@47 f_101@@62) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@47 f_101@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@47 f_101@@62))
))) (forall ((o2_36@@48 T@Ref) (f_101@@63 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@48 f_101@@63) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@28) o2_36@@48 f_101@@63) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@48 f_101@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@48 f_101@@63))
))) (forall ((o2_36@@49 T@Ref) (f_101@@64 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@49 f_101@@64) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@28) o2_36@@49 f_101@@64) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@49 f_101@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@49 f_101@@64))
))) (forall ((o2_36@@50 T@Ref) (f_101@@65 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@50 f_101@@65) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@28) o2_36@@50 f_101@@65) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@50 f_101@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@50 f_101@@65))
))) (forall ((o2_36@@51 T@Ref) (f_101@@66 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@51 f_101@@66) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@28) o2_36@@51 f_101@@66) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@51 f_101@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@51 f_101@@66))
))) (forall ((o2_36@@52 T@Ref) (f_101@@67 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@52 f_101@@67) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@28) o2_36@@52 f_101@@67) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@52 f_101@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@52 f_101@@67))
))) (forall ((o2_36@@53 T@Ref) (f_101@@68 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@53 f_101@@68) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@28) o2_36@@53 f_101@@68) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@53 f_101@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@53 f_101@@68))
))) (forall ((o2_36@@54 T@Ref) (f_101@@69 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@54 f_101@@69) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@28) o2_36@@54 f_101@@69) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@54 f_101@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@54 f_101@@69))
))) (forall ((o2_36@@55 T@Ref) (f_101@@70 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@55 f_101@@70) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@28) o2_36@@55 f_101@@70) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@55 f_101@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@55 f_101@@70))
))) (forall ((o2_36@@56 T@Ref) (f_101@@71 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@56 f_101@@71) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@28) o2_36@@56 f_101@@71) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@56 f_101@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@56 f_101@@71))
))) (forall ((o2_36@@57 T@Ref) (f_101@@72 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@57 f_101@@72) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@28) o2_36@@57 f_101@@72) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@57 f_101@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@57 f_101@@72))
))) (forall ((o2_36@@58 T@Ref) (f_101@@73 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@58 f_101@@73) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) o2_36@@58 f_101@@73) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@58 f_101@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@58 f_101@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_55730_454512 pm_f_36@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_111779) (ExhaleHeap@@26 T@PolymorphicMapType_111779) (Mask@@57 T@PolymorphicMapType_111800) (pm_f_36@@9 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_55705_55706 Mask@@57 null pm_f_36@@9) (IsWandField_55705_454155 pm_f_36@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@59 T@Ref) (f_101@@74 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@59 f_101@@74) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@29) o2_36@@59 f_101@@74) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@59 f_101@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@59 f_101@@74))
)) (forall ((o2_36@@60 T@Ref) (f_101@@75 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@60 f_101@@75) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@29) o2_36@@60 f_101@@75) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@60 f_101@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@60 f_101@@75))
))) (forall ((o2_36@@61 T@Ref) (f_101@@76 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@61 f_101@@76) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@29) o2_36@@61 f_101@@76) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@61 f_101@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@61 f_101@@76))
))) (forall ((o2_36@@62 T@Ref) (f_101@@77 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@62 f_101@@77) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@29) o2_36@@62 f_101@@77) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@62 f_101@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@62 f_101@@77))
))) (forall ((o2_36@@63 T@Ref) (f_101@@78 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@63 f_101@@78) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@29) o2_36@@63 f_101@@78) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@63 f_101@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@63 f_101@@78))
))) (forall ((o2_36@@64 T@Ref) (f_101@@79 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@64 f_101@@79) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@29) o2_36@@64 f_101@@79) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@64 f_101@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@64 f_101@@79))
))) (forall ((o2_36@@65 T@Ref) (f_101@@80 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@65 f_101@@80) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@29) o2_36@@65 f_101@@80) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@65 f_101@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@65 f_101@@80))
))) (forall ((o2_36@@66 T@Ref) (f_101@@81 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@66 f_101@@81) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@29) o2_36@@66 f_101@@81) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@66 f_101@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@66 f_101@@81))
))) (forall ((o2_36@@67 T@Ref) (f_101@@82 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@67 f_101@@82) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@29) o2_36@@67 f_101@@82) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@67 f_101@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@67 f_101@@82))
))) (forall ((o2_36@@68 T@Ref) (f_101@@83 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@68 f_101@@83) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) o2_36@@68 f_101@@83) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@68 f_101@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@68 f_101@@83))
))) (forall ((o2_36@@69 T@Ref) (f_101@@84 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@69 f_101@@84) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@29) o2_36@@69 f_101@@84) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@69 f_101@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@69 f_101@@84))
))) (forall ((o2_36@@70 T@Ref) (f_101@@85 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@70 f_101@@85) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@29) o2_36@@70 f_101@@85) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@70 f_101@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@70 f_101@@85))
))) (forall ((o2_36@@71 T@Ref) (f_101@@86 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@71 f_101@@86) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@29) o2_36@@71 f_101@@86) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@71 f_101@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@71 f_101@@86))
))) (forall ((o2_36@@72 T@Ref) (f_101@@87 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@72 f_101@@87) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@29) o2_36@@72 f_101@@87) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@72 f_101@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@72 f_101@@87))
))) (forall ((o2_36@@73 T@Ref) (f_101@@88 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@73 f_101@@88) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@29) o2_36@@73 f_101@@88) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@73 f_101@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@73 f_101@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_55705_454155 pm_f_36@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_111779) (ExhaleHeap@@27 T@PolymorphicMapType_111779) (Mask@@58 T@PolymorphicMapType_111800) (pm_f_36@@10 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_55689_55706 Mask@@58 null pm_f_36@@10) (IsWandField_55689_453798 pm_f_36@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@74 T@Ref) (f_101@@89 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@74 f_101@@89) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@30) o2_36@@74 f_101@@89) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@74 f_101@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@74 f_101@@89))
)) (forall ((o2_36@@75 T@Ref) (f_101@@90 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@75 f_101@@90) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@30) o2_36@@75 f_101@@90) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@75 f_101@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@75 f_101@@90))
))) (forall ((o2_36@@76 T@Ref) (f_101@@91 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@76 f_101@@91) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@30) o2_36@@76 f_101@@91) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@76 f_101@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@76 f_101@@91))
))) (forall ((o2_36@@77 T@Ref) (f_101@@92 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@77 f_101@@92) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@30) o2_36@@77 f_101@@92) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@77 f_101@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@77 f_101@@92))
))) (forall ((o2_36@@78 T@Ref) (f_101@@93 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@78 f_101@@93) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) o2_36@@78 f_101@@93) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@78 f_101@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@78 f_101@@93))
))) (forall ((o2_36@@79 T@Ref) (f_101@@94 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@79 f_101@@94) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@30) o2_36@@79 f_101@@94) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@79 f_101@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@79 f_101@@94))
))) (forall ((o2_36@@80 T@Ref) (f_101@@95 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@80 f_101@@95) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@30) o2_36@@80 f_101@@95) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@80 f_101@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@80 f_101@@95))
))) (forall ((o2_36@@81 T@Ref) (f_101@@96 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@81 f_101@@96) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@30) o2_36@@81 f_101@@96) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@81 f_101@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@81 f_101@@96))
))) (forall ((o2_36@@82 T@Ref) (f_101@@97 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@82 f_101@@97) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@30) o2_36@@82 f_101@@97) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@82 f_101@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@82 f_101@@97))
))) (forall ((o2_36@@83 T@Ref) (f_101@@98 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@83 f_101@@98) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@30) o2_36@@83 f_101@@98) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@83 f_101@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@83 f_101@@98))
))) (forall ((o2_36@@84 T@Ref) (f_101@@99 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@84 f_101@@99) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@30) o2_36@@84 f_101@@99) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@84 f_101@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@84 f_101@@99))
))) (forall ((o2_36@@85 T@Ref) (f_101@@100 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@85 f_101@@100) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@30) o2_36@@85 f_101@@100) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@85 f_101@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@85 f_101@@100))
))) (forall ((o2_36@@86 T@Ref) (f_101@@101 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@86 f_101@@101) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@30) o2_36@@86 f_101@@101) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@86 f_101@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@86 f_101@@101))
))) (forall ((o2_36@@87 T@Ref) (f_101@@102 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@87 f_101@@102) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@30) o2_36@@87 f_101@@102) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@87 f_101@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@87 f_101@@102))
))) (forall ((o2_36@@88 T@Ref) (f_101@@103 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@88 f_101@@103) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@30) o2_36@@88 f_101@@103) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@88 f_101@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@88 f_101@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_55689_453798 pm_f_36@@10))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_55705_55706 (headvalid this@@7)) 0)
 :qid |stdinbpl.214:15|
 :skolemid |24|
 :pattern ( (headvalid this@@7))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (getPredWandId_55730_55731 (valid this@@8)) 1)
 :qid |stdinbpl.313:15|
 :skolemid |30|
 :pattern ( (valid this@@8))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_111779) (o_72 T@Ref) (f_80 T@Field_117598_117603) (v T@PolymorphicMapType_112328) ) (! (succHeap Heap@@31 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@31) (store (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@31) o_72 f_80 v) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@31) (store (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@31) o_72 f_80 v) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_111779) (o_72@@0 T@Ref) (f_80@@0 T@Field_116457_116458) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@32) (store (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@32) o_72@@0 f_80@@0 v@@0) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@32) (store (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@32) o_72@@0 f_80@@0 v@@0) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_111779) (o_72@@1 T@Ref) (f_80@@1 T@Field_55730_1216) (v@@1 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@33) (store (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@33) o_72@@1 f_80@@1 v@@1) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@33) (store (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@33) o_72@@1 f_80@@1 v@@1) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_111779) (o_72@@2 T@Ref) (f_80@@2 T@Field_55730_55690) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@34) (store (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@34) o_72@@2 f_80@@2 v@@2) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@34) (store (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@34) o_72@@2 f_80@@2 v@@2) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_111779) (o_72@@3 T@Ref) (f_80@@3 T@Field_55730_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@35) (store (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@35) o_72@@3 f_80@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@35) (store (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@35) o_72@@3 f_80@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_111779) (o_72@@4 T@Ref) (f_80@@4 T@Field_115407_115412) (v@@4 T@PolymorphicMapType_112328) ) (! (succHeap Heap@@36 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@36) (store (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@36) o_72@@4 f_80@@4 v@@4) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@36) (store (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@36) o_72@@4 f_80@@4 v@@4) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_111779) (o_72@@5 T@Ref) (f_80@@5 T@Field_115394_115395) (v@@5 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@37) (store (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@37) o_72@@5 f_80@@5 v@@5) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@37) (store (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@37) o_72@@5 f_80@@5 v@@5) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_111779) (o_72@@6 T@Ref) (f_80@@6 T@Field_55705_1216) (v@@6 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@38) (store (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@38) o_72@@6 f_80@@6 v@@6) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@38) (store (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@38) o_72@@6 f_80@@6 v@@6) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_111779) (o_72@@7 T@Ref) (f_80@@7 T@Field_55705_55690) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@39) (store (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@39) o_72@@7 f_80@@7 v@@7) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@39) (store (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@39) o_72@@7 f_80@@7 v@@7) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_111779) (o_72@@8 T@Ref) (f_80@@8 T@Field_55705_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@40) (store (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@40) o_72@@8 f_80@@8 v@@8) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@40) (store (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@40) o_72@@8 f_80@@8 v@@8) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_111779) (o_72@@9 T@Ref) (f_80@@9 T@Field_55689_115412) (v@@9 T@PolymorphicMapType_112328) ) (! (succHeap Heap@@41 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@41) (store (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@41) o_72@@9 f_80@@9 v@@9) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@41) (store (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@41) o_72@@9 f_80@@9 v@@9) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_111779) (o_72@@10 T@Ref) (f_80@@10 T@Field_55689_55706) (v@@10 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@42) (store (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@42) o_72@@10 f_80@@10 v@@10) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@42) (store (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@42) o_72@@10 f_80@@10 v@@10) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_111779) (o_72@@11 T@Ref) (f_80@@11 T@Field_115215_1201) (v@@11 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@43) (store (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@43) o_72@@11 f_80@@11 v@@11) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@43) (store (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@43) o_72@@11 f_80@@11 v@@11) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_111779) (o_72@@12 T@Ref) (f_80@@12 T@Field_111852_111853) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@44) (store (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@44) o_72@@12 f_80@@12 v@@12) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@44) (store (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@44) o_72@@12 f_80@@12 v@@12) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_111779) (o_72@@13 T@Ref) (f_80@@13 T@Field_111839_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_111779 (store (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@45) o_72@@13 f_80@@13 v@@13) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (store (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@45) o_72@@13 f_80@@13 v@@13) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@45)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_55705 (headvalid this@@9)) (|headvalid#sm| this@@9))
 :qid |stdinbpl.206:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_55705 (headvalid this@@9)))
)))
(assert (forall ((this@@10 T@Ref) ) (! (= (PredicateMaskField_55730 (valid this@@10)) (|valid#sm| this@@10))
 :qid |stdinbpl.305:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_55730 (valid this@@10)))
)))
(assert (forall ((o_72@@14 T@Ref) (f_100 T@Field_111852_111853) (Heap@@46 T@PolymorphicMapType_111779) ) (!  (=> (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@46) o_72@@14 $allocated) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@46) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@46) o_72@@14 f_100) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@46) o_72@@14 f_100))
)))
(assert (forall ((p@@3 T@Field_55689_55706) (v_1@@2 T@FrameType) (q T@Field_55689_55706) (w@@2 T@FrameType) (r T@Field_115394_115395) (u T@FrameType) ) (!  (=> (and (InsidePredicate_111839_111839 p@@3 v_1@@2 q w@@2) (InsidePredicate_111839_115394 q w@@2 r u)) (InsidePredicate_111839_115394 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_111839 p@@3 v_1@@2 q w@@2) (InsidePredicate_111839_115394 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_55689_55706) (v_1@@3 T@FrameType) (q@@0 T@Field_55689_55706) (w@@3 T@FrameType) (r@@0 T@Field_55689_55706) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_111839 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_111839_111839 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_111839_111839 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_111839 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_111839_111839 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_55689_55706) (v_1@@4 T@FrameType) (q@@1 T@Field_55689_55706) (w@@4 T@FrameType) (r@@1 T@Field_116457_116458) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_111839 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_111839_55730 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_111839_55730 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_111839 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_111839_55730 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_55689_55706) (v_1@@5 T@FrameType) (q@@2 T@Field_115394_115395) (w@@5 T@FrameType) (r@@2 T@Field_115394_115395) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_115394 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_55705_115394 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_111839_115394 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_115394 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_55705_115394 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_55689_55706) (v_1@@6 T@FrameType) (q@@3 T@Field_115394_115395) (w@@6 T@FrameType) (r@@3 T@Field_55689_55706) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_115394 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_55705_111839 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_111839_111839 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_115394 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_55705_111839 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_55689_55706) (v_1@@7 T@FrameType) (q@@4 T@Field_115394_115395) (w@@7 T@FrameType) (r@@4 T@Field_116457_116458) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_115394 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_55705_55730 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_111839_55730 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_115394 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_55705_55730 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_55689_55706) (v_1@@8 T@FrameType) (q@@5 T@Field_116457_116458) (w@@8 T@FrameType) (r@@5 T@Field_115394_115395) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_55730 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_55730_115394 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_111839_115394 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_55730 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_55730_115394 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_55689_55706) (v_1@@9 T@FrameType) (q@@6 T@Field_116457_116458) (w@@9 T@FrameType) (r@@6 T@Field_55689_55706) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_55730 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_55730_111839 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_111839_111839 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_55730 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_55730_111839 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_55689_55706) (v_1@@10 T@FrameType) (q@@7 T@Field_116457_116458) (w@@10 T@FrameType) (r@@7 T@Field_116457_116458) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_55730 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_55730_55730 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_111839_55730 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_55730 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_55730_55730 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_116457_116458) (v_1@@11 T@FrameType) (q@@8 T@Field_55689_55706) (w@@11 T@FrameType) (r@@8 T@Field_115394_115395) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_111839 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_111839_115394 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_55730_115394 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_111839 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_111839_115394 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_116457_116458) (v_1@@12 T@FrameType) (q@@9 T@Field_55689_55706) (w@@12 T@FrameType) (r@@9 T@Field_55689_55706) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_111839 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_111839_111839 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_55730_111839 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_111839 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_111839_111839 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_116457_116458) (v_1@@13 T@FrameType) (q@@10 T@Field_55689_55706) (w@@13 T@FrameType) (r@@10 T@Field_116457_116458) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_111839 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_111839_55730 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_55730_55730 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_111839 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_111839_55730 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_116457_116458) (v_1@@14 T@FrameType) (q@@11 T@Field_115394_115395) (w@@14 T@FrameType) (r@@11 T@Field_115394_115395) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_115394 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_55705_115394 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_55730_115394 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_115394 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_55705_115394 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_116457_116458) (v_1@@15 T@FrameType) (q@@12 T@Field_115394_115395) (w@@15 T@FrameType) (r@@12 T@Field_55689_55706) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_115394 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_55705_111839 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_55730_111839 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_115394 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_55705_111839 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_116457_116458) (v_1@@16 T@FrameType) (q@@13 T@Field_115394_115395) (w@@16 T@FrameType) (r@@13 T@Field_116457_116458) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_115394 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_55705_55730 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_55730_55730 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_115394 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_55705_55730 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_116457_116458) (v_1@@17 T@FrameType) (q@@14 T@Field_116457_116458) (w@@17 T@FrameType) (r@@14 T@Field_115394_115395) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_55730 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_55730_115394 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_55730_115394 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_55730 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_55730_115394 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_116457_116458) (v_1@@18 T@FrameType) (q@@15 T@Field_116457_116458) (w@@18 T@FrameType) (r@@15 T@Field_55689_55706) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_55730 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_55730_111839 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_55730_111839 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_55730 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_55730_111839 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_116457_116458) (v_1@@19 T@FrameType) (q@@16 T@Field_116457_116458) (w@@19 T@FrameType) (r@@16 T@Field_116457_116458) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_55730 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_55730_55730 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_55730_55730 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_55730 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_55730_55730 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_115394_115395) (v_1@@20 T@FrameType) (q@@17 T@Field_55689_55706) (w@@20 T@FrameType) (r@@17 T@Field_115394_115395) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_111839 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_111839_115394 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_55705_115394 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_111839 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_111839_115394 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_115394_115395) (v_1@@21 T@FrameType) (q@@18 T@Field_55689_55706) (w@@21 T@FrameType) (r@@18 T@Field_55689_55706) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_111839 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_111839_111839 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_55705_111839 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_111839 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_111839_111839 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_115394_115395) (v_1@@22 T@FrameType) (q@@19 T@Field_55689_55706) (w@@22 T@FrameType) (r@@19 T@Field_116457_116458) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_111839 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_111839_55730 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_55705_55730 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_111839 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_111839_55730 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_115394_115395) (v_1@@23 T@FrameType) (q@@20 T@Field_115394_115395) (w@@23 T@FrameType) (r@@20 T@Field_115394_115395) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_115394 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_55705_115394 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_55705_115394 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_115394 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_55705_115394 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_115394_115395) (v_1@@24 T@FrameType) (q@@21 T@Field_115394_115395) (w@@24 T@FrameType) (r@@21 T@Field_55689_55706) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_115394 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_55705_111839 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_55705_111839 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_115394 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_55705_111839 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_115394_115395) (v_1@@25 T@FrameType) (q@@22 T@Field_115394_115395) (w@@25 T@FrameType) (r@@22 T@Field_116457_116458) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_115394 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_55705_55730 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_55705_55730 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_115394 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_55705_55730 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_115394_115395) (v_1@@26 T@FrameType) (q@@23 T@Field_116457_116458) (w@@26 T@FrameType) (r@@23 T@Field_115394_115395) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_55730 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_55730_115394 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_55705_115394 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_55730 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_55730_115394 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_115394_115395) (v_1@@27 T@FrameType) (q@@24 T@Field_116457_116458) (w@@27 T@FrameType) (r@@24 T@Field_55689_55706) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_55730 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_55730_111839 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_55705_111839 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_55730 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_55730_111839 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_115394_115395) (v_1@@28 T@FrameType) (q@@25 T@Field_116457_116458) (w@@28 T@FrameType) (r@@25 T@Field_116457_116458) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_55730 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_55730_55730 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_55705_55730 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_55730 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_55730_55730 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@47 () T@PolymorphicMapType_111779)
(declare-fun this@@11 () T@Ref)
(declare-fun Mask@6 () T@PolymorphicMapType_111800)
(declare-fun Mask@4 () T@PolymorphicMapType_111800)
(declare-fun perm@1 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_111800)
(declare-fun Mask@2 () T@PolymorphicMapType_111800)
(declare-fun perm@0 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_111800)
(declare-fun Mask@0 () T@PolymorphicMapType_111800)
(declare-fun Mask@1 () T@PolymorphicMapType_111800)
(set-info :boogie-vc-id |headvalid#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) null) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 5) 1)) anon6_correct))))
(let ((anon9_Then_correct  (=> (not (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) null)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_55689_55690 Mask@4 this@@11 root_1)) (=> (HasDirectPerm_55689_55690 Mask@4 this@@11 root_1) (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) null))) (=> (and (and (= Mask@5 (PolymorphicMapType_111800 (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@4) (store (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@4) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) balanceFactor (+ (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@4) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) balanceFactor) perm@1)) (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@4) (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@4))) (state Heap@@47 Mask@5)) (and (= Mask@6 Mask@5) (= (ControlFlow 0 2) 1))) anon6_correct))))))))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_55689_55690 Mask@4 this@@11 root_1)) (=> (HasDirectPerm_55689_55690 Mask@4 this@@11 root_1) (and (=> (= (ControlFlow 0 6) 2) anon9_Then_correct) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) null) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 11) 6)) anon4_correct))))
(let ((anon8_Then_correct  (=> (not (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) null)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (HasDirectPerm_55689_55690 Mask@2 this@@11 root_1)) (=> (HasDirectPerm_55689_55690 Mask@2 this@@11 root_1) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) null))) (=> (and (and (= Mask@3 (PolymorphicMapType_111800 (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@2) (store (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@2) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) height (+ (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@2) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) height) perm@0)) (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@2) (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@2))) (state Heap@@47 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 8) 6))) anon4_correct))))))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_55689_55690 Mask@2 this@@11 root_1)) (=> (HasDirectPerm_55689_55690 Mask@2 this@@11 root_1) (and (=> (= (ControlFlow 0 12) 8) anon8_Then_correct) (=> (= (ControlFlow 0 12) 11) anon8_Else_correct))))))
(let ((anon7_Else_correct  (=> (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) null) (=> (and (= Mask@2 Mask@0) (= (ControlFlow 0 16) 12)) anon2_correct))))
(let ((anon7_Then_correct  (=> (not (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1) null)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_55689_55690 Mask@0 this@@11 root_1)) (=> (HasDirectPerm_55689_55690 Mask@0 this@@11 root_1) (=> (and (and (= Mask@1 (PolymorphicMapType_111800 (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@0) (store (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@0) null (valid (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1)) (+ (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@0) null (valid (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@47) this@@11 root_1))) FullPerm)) (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@0) (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@0))) (state Heap@@47 Mask@1)) (and (= Mask@2 Mask@1) (= (ControlFlow 0 14) 12))) anon2_correct))))))
(let ((anon0_correct  (=> (and (state Heap@@47 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@47) this@@11 $allocated) (not (= this@@11 null))) (and (= Mask@0 (PolymorphicMapType_111800 (store (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ZeroMask) this@@11 root_1 (+ (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ZeroMask) this@@11 root_1) FullPerm)) (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ZeroMask) (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ZeroMask))) (state Heap@@47 Mask@0))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_55689_55690 Mask@0 this@@11 root_1)) (=> (HasDirectPerm_55689_55690 Mask@0 this@@11 root_1) (and (=> (= (ControlFlow 0 17) 14) anon7_Then_correct) (=> (= (ControlFlow 0 17) 16) anon7_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_111839_53 0)
(declare-sort T@Field_111852_111853 0)
(declare-sort T@Field_115215_1201 0)
(declare-sort T@Field_115394_115395 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_116457_116458 0)
(declare-sort T@Field_115407_115412 0)
(declare-sort T@Field_117598_117603 0)
(declare-sort T@Field_55689_55706 0)
(declare-sort T@Field_55689_115412 0)
(declare-sort T@Field_55705_55690 0)
(declare-sort T@Field_55705_1216 0)
(declare-sort T@Field_55705_53 0)
(declare-sort T@Field_55730_55690 0)
(declare-sort T@Field_55730_1216 0)
(declare-sort T@Field_55730_53 0)
(declare-datatypes ((T@PolymorphicMapType_111800 0)) (((PolymorphicMapType_111800 (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| (Array T@Ref T@Field_111852_111853 Real)) (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| (Array T@Ref T@Field_116457_116458 Real)) (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| (Array T@Ref T@Field_115215_1201 Real)) (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| (Array T@Ref T@Field_115394_115395 Real)) (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| (Array T@Ref T@Field_55689_55706 Real)) (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| (Array T@Ref T@Field_111839_53 Real)) (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| (Array T@Ref T@Field_55689_115412 Real)) (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| (Array T@Ref T@Field_55730_55690 Real)) (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| (Array T@Ref T@Field_55730_1216 Real)) (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| (Array T@Ref T@Field_55730_53 Real)) (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| (Array T@Ref T@Field_117598_117603 Real)) (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| (Array T@Ref T@Field_55705_55690 Real)) (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| (Array T@Ref T@Field_55705_1216 Real)) (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| (Array T@Ref T@Field_55705_53 Real)) (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| (Array T@Ref T@Field_115407_115412 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_112328 0)) (((PolymorphicMapType_112328 (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (Array T@Ref T@Field_111852_111853 Bool)) (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (Array T@Ref T@Field_115215_1201 Bool)) (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (Array T@Ref T@Field_111839_53 Bool)) (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (Array T@Ref T@Field_55689_55706 Bool)) (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (Array T@Ref T@Field_55689_115412 Bool)) (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (Array T@Ref T@Field_55705_55690 Bool)) (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (Array T@Ref T@Field_55705_1216 Bool)) (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (Array T@Ref T@Field_55705_53 Bool)) (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (Array T@Ref T@Field_115394_115395 Bool)) (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (Array T@Ref T@Field_115407_115412 Bool)) (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (Array T@Ref T@Field_55730_55690 Bool)) (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (Array T@Ref T@Field_55730_1216 Bool)) (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (Array T@Ref T@Field_55730_53 Bool)) (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (Array T@Ref T@Field_116457_116458 Bool)) (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (Array T@Ref T@Field_117598_117603 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_111779 0)) (((PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| (Array T@Ref T@Field_111839_53 Bool)) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| (Array T@Ref T@Field_111852_111853 T@Ref)) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| (Array T@Ref T@Field_115215_1201 Int)) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| (Array T@Ref T@Field_115394_115395 T@FrameType)) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| (Array T@Ref T@Field_116457_116458 T@FrameType)) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| (Array T@Ref T@Field_115407_115412 T@PolymorphicMapType_112328)) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| (Array T@Ref T@Field_117598_117603 T@PolymorphicMapType_112328)) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| (Array T@Ref T@Field_55689_55706 T@FrameType)) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| (Array T@Ref T@Field_55689_115412 T@PolymorphicMapType_112328)) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| (Array T@Ref T@Field_55705_55690 T@Ref)) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| (Array T@Ref T@Field_55705_1216 Int)) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| (Array T@Ref T@Field_55705_53 Bool)) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| (Array T@Ref T@Field_55730_55690 T@Ref)) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| (Array T@Ref T@Field_55730_1216 Int)) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| (Array T@Ref T@Field_55730_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_111839_53)
(declare-fun root_1 () T@Field_111852_111853)
(declare-fun key_6 () T@Field_115215_1201)
(declare-fun height () T@Field_115215_1201)
(declare-fun left_2 () T@Field_111852_111853)
(declare-fun right_1 () T@Field_111852_111853)
(declare-fun balanceFactor () T@Field_115215_1201)
(declare-fun succHeap (T@PolymorphicMapType_111779 T@PolymorphicMapType_111779) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_111779 T@PolymorphicMapType_111779) Bool)
(declare-fun state (T@PolymorphicMapType_111779 T@PolymorphicMapType_111800) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_111800) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_112328)
(declare-fun headvalid (T@Ref) T@Field_115394_115395)
(declare-fun IsPredicateField_55705_55706 (T@Field_115394_115395) Bool)
(declare-fun valid (T@Ref) T@Field_116457_116458)
(declare-fun IsPredicateField_55730_55731 (T@Field_116457_116458) Bool)
(declare-fun |headvalid#trigger_55705| (T@PolymorphicMapType_111779 T@Field_115394_115395) Bool)
(declare-fun |headvalid#everUsed_55705| (T@Field_115394_115395) Bool)
(declare-fun |valid#trigger_55730| (T@PolymorphicMapType_111779 T@Field_116457_116458) Bool)
(declare-fun |valid#everUsed_55730| (T@Field_116457_116458) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_111779 T@PolymorphicMapType_111779 T@PolymorphicMapType_111800) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_55730 (T@Field_116457_116458) T@Field_117598_117603)
(declare-fun HasDirectPerm_55730_55731 (T@PolymorphicMapType_111800 T@Ref T@Field_116457_116458) Bool)
(declare-fun PredicateMaskField_55705 (T@Field_115394_115395) T@Field_115407_115412)
(declare-fun HasDirectPerm_55705_55706 (T@PolymorphicMapType_111800 T@Ref T@Field_115394_115395) Bool)
(declare-fun IsPredicateField_55689_448831 (T@Field_55689_55706) Bool)
(declare-fun PredicateMaskField_55689 (T@Field_55689_55706) T@Field_55689_115412)
(declare-fun HasDirectPerm_55689_55706 (T@PolymorphicMapType_111800 T@Ref T@Field_55689_55706) Bool)
(declare-fun IsWandField_55730_454512 (T@Field_116457_116458) Bool)
(declare-fun WandMaskField_55730 (T@Field_116457_116458) T@Field_117598_117603)
(declare-fun IsWandField_55705_454155 (T@Field_115394_115395) Bool)
(declare-fun WandMaskField_55705 (T@Field_115394_115395) T@Field_115407_115412)
(declare-fun IsWandField_55689_453798 (T@Field_55689_55706) Bool)
(declare-fun WandMaskField_55689 (T@Field_55689_55706) T@Field_55689_115412)
(declare-fun |headvalid#sm| (T@Ref) T@Field_115407_115412)
(declare-fun |valid#sm| (T@Ref) T@Field_117598_117603)
(declare-fun dummyHeap () T@PolymorphicMapType_111779)
(declare-fun ZeroMask () T@PolymorphicMapType_111800)
(declare-fun InsidePredicate_111839_111839 (T@Field_55689_55706 T@FrameType T@Field_55689_55706 T@FrameType) Bool)
(declare-fun InsidePredicate_55730_55730 (T@Field_116457_116458 T@FrameType T@Field_116457_116458 T@FrameType) Bool)
(declare-fun InsidePredicate_55705_115394 (T@Field_115394_115395 T@FrameType T@Field_115394_115395 T@FrameType) Bool)
(declare-fun IsPredicateField_55689_55690 (T@Field_111852_111853) Bool)
(declare-fun IsWandField_55689_55690 (T@Field_111852_111853) Bool)
(declare-fun IsPredicateField_55692_1201 (T@Field_115215_1201) Bool)
(declare-fun IsWandField_55692_1201 (T@Field_115215_1201) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_55705_464801 (T@Field_115407_115412) Bool)
(declare-fun IsWandField_55705_464817 (T@Field_115407_115412) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_55705_53 (T@Field_55705_53) Bool)
(declare-fun IsWandField_55705_53 (T@Field_55705_53) Bool)
(declare-fun IsPredicateField_55705_1216 (T@Field_55705_1216) Bool)
(declare-fun IsWandField_55705_1216 (T@Field_55705_1216) Bool)
(declare-fun IsPredicateField_55705_55690 (T@Field_55705_55690) Bool)
(declare-fun IsWandField_55705_55690 (T@Field_55705_55690) Bool)
(declare-fun IsPredicateField_55730_463970 (T@Field_117598_117603) Bool)
(declare-fun IsWandField_55730_463986 (T@Field_117598_117603) Bool)
(declare-fun IsPredicateField_55730_53 (T@Field_55730_53) Bool)
(declare-fun IsWandField_55730_53 (T@Field_55730_53) Bool)
(declare-fun IsPredicateField_55730_1216 (T@Field_55730_1216) Bool)
(declare-fun IsWandField_55730_1216 (T@Field_55730_1216) Bool)
(declare-fun IsPredicateField_55730_55690 (T@Field_55730_55690) Bool)
(declare-fun IsWandField_55730_55690 (T@Field_55730_55690) Bool)
(declare-fun IsPredicateField_55689_463139 (T@Field_55689_115412) Bool)
(declare-fun IsWandField_55689_463155 (T@Field_55689_115412) Bool)
(declare-fun IsPredicateField_55689_53 (T@Field_111839_53) Bool)
(declare-fun IsWandField_55689_53 (T@Field_111839_53) Bool)
(declare-fun HasDirectPerm_55730_448586 (T@PolymorphicMapType_111800 T@Ref T@Field_117598_117603) Bool)
(declare-fun HasDirectPerm_55730_53 (T@PolymorphicMapType_111800 T@Ref T@Field_55730_53) Bool)
(declare-fun HasDirectPerm_55730_1216 (T@PolymorphicMapType_111800 T@Ref T@Field_55730_1216) Bool)
(declare-fun HasDirectPerm_55730_55690 (T@PolymorphicMapType_111800 T@Ref T@Field_55730_55690) Bool)
(declare-fun HasDirectPerm_55705_447488 (T@PolymorphicMapType_111800 T@Ref T@Field_115407_115412) Bool)
(declare-fun HasDirectPerm_55705_53 (T@PolymorphicMapType_111800 T@Ref T@Field_55705_53) Bool)
(declare-fun HasDirectPerm_55705_1216 (T@PolymorphicMapType_111800 T@Ref T@Field_55705_1216) Bool)
(declare-fun HasDirectPerm_55705_55690 (T@PolymorphicMapType_111800 T@Ref T@Field_55705_55690) Bool)
(declare-fun HasDirectPerm_55689_446347 (T@PolymorphicMapType_111800 T@Ref T@Field_55689_115412) Bool)
(declare-fun HasDirectPerm_55689_53 (T@PolymorphicMapType_111800 T@Ref T@Field_111839_53) Bool)
(declare-fun HasDirectPerm_55694_1216 (T@PolymorphicMapType_111800 T@Ref T@Field_115215_1201) Bool)
(declare-fun HasDirectPerm_55689_55690 (T@PolymorphicMapType_111800 T@Ref T@Field_111852_111853) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_111800 T@PolymorphicMapType_111800 T@PolymorphicMapType_111800) Bool)
(declare-fun getPredWandId_55705_55706 (T@Field_115394_115395) Int)
(declare-fun getPredWandId_55730_55731 (T@Field_116457_116458) Int)
(declare-fun InsidePredicate_111839_115394 (T@Field_55689_55706 T@FrameType T@Field_115394_115395 T@FrameType) Bool)
(declare-fun InsidePredicate_111839_55730 (T@Field_55689_55706 T@FrameType T@Field_116457_116458 T@FrameType) Bool)
(declare-fun InsidePredicate_55705_111839 (T@Field_115394_115395 T@FrameType T@Field_55689_55706 T@FrameType) Bool)
(declare-fun InsidePredicate_55705_55730 (T@Field_115394_115395 T@FrameType T@Field_116457_116458 T@FrameType) Bool)
(declare-fun InsidePredicate_55730_115394 (T@Field_116457_116458 T@FrameType T@Field_115394_115395 T@FrameType) Bool)
(declare-fun InsidePredicate_55730_111839 (T@Field_116457_116458 T@FrameType T@Field_55689_55706 T@FrameType) Bool)
(assert (and (distinct root_1 left_2 right_1)(distinct key_6 height balanceFactor))
)
(assert (forall ((Heap0 T@PolymorphicMapType_111779) (Heap1 T@PolymorphicMapType_111779) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_111779) (Mask T@PolymorphicMapType_111800) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_111779) (Heap1@@0 T@PolymorphicMapType_111779) (Heap2 T@PolymorphicMapType_111779) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_117598_117603) ) (!  (not (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_116457_116458) ) (!  (not (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_55730_53) ) (!  (not (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_55730_1216) ) (!  (not (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_55730_55690) ) (!  (not (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_115407_115412) ) (!  (not (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_115394_115395) ) (!  (not (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_55705_53) ) (!  (not (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_55705_1216) ) (!  (not (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_55705_55690) ) (!  (not (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_55689_115412) ) (!  (not (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_55689_55706) ) (!  (not (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_111839_53) ) (!  (not (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_115215_1201) ) (!  (not (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_111852_111853) ) (!  (not (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_55705_55706 (headvalid this))
 :qid |stdinbpl.210:15|
 :skolemid |23|
 :pattern ( (headvalid this))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_55730_55731 (valid this@@0))
 :qid |stdinbpl.309:15|
 :skolemid |29|
 :pattern ( (valid this@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_111779) (this@@1 T@Ref) ) (! (|headvalid#everUsed_55705| (headvalid this@@1))
 :qid |stdinbpl.229:15|
 :skolemid |27|
 :pattern ( (|headvalid#trigger_55705| Heap@@0 (headvalid this@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_111779) (this@@2 T@Ref) ) (! (|valid#everUsed_55730| (valid this@@2))
 :qid |stdinbpl.328:15|
 :skolemid |33|
 :pattern ( (|valid#trigger_55730| Heap@@1 (valid this@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_111779) (ExhaleHeap T@PolymorphicMapType_111779) (Mask@@0 T@PolymorphicMapType_111800) (pm_f_36 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_55730_55731 Mask@@0 null pm_f_36) (IsPredicateField_55730_55731 pm_f_36)) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@2) null (PredicateMaskField_55730 pm_f_36)) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap) null (PredicateMaskField_55730 pm_f_36)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_55730_55731 pm_f_36) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap) null (PredicateMaskField_55730 pm_f_36)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_111779) (ExhaleHeap@@0 T@PolymorphicMapType_111779) (Mask@@1 T@PolymorphicMapType_111800) (pm_f_36@@0 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_55705_55706 Mask@@1 null pm_f_36@@0) (IsPredicateField_55705_55706 pm_f_36@@0)) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@3) null (PredicateMaskField_55705 pm_f_36@@0)) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@0) null (PredicateMaskField_55705 pm_f_36@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_55705_55706 pm_f_36@@0) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@0) null (PredicateMaskField_55705 pm_f_36@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_111779) (ExhaleHeap@@1 T@PolymorphicMapType_111779) (Mask@@2 T@PolymorphicMapType_111800) (pm_f_36@@1 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_55689_55706 Mask@@2 null pm_f_36@@1) (IsPredicateField_55689_448831 pm_f_36@@1)) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@4) null (PredicateMaskField_55689 pm_f_36@@1)) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@1) null (PredicateMaskField_55689 pm_f_36@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_55689_448831 pm_f_36@@1) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@1) null (PredicateMaskField_55689 pm_f_36@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_111779) (ExhaleHeap@@2 T@PolymorphicMapType_111779) (Mask@@3 T@PolymorphicMapType_111800) (pm_f_36@@2 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_55730_55731 Mask@@3 null pm_f_36@@2) (IsWandField_55730_454512 pm_f_36@@2)) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@5) null (WandMaskField_55730 pm_f_36@@2)) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@2) null (WandMaskField_55730 pm_f_36@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_55730_454512 pm_f_36@@2) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@2) null (WandMaskField_55730 pm_f_36@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_111779) (ExhaleHeap@@3 T@PolymorphicMapType_111779) (Mask@@4 T@PolymorphicMapType_111800) (pm_f_36@@3 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_55705_55706 Mask@@4 null pm_f_36@@3) (IsWandField_55705_454155 pm_f_36@@3)) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@6) null (WandMaskField_55705 pm_f_36@@3)) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@3) null (WandMaskField_55705 pm_f_36@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_55705_454155 pm_f_36@@3) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@3) null (WandMaskField_55705 pm_f_36@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_111779) (ExhaleHeap@@4 T@PolymorphicMapType_111779) (Mask@@5 T@PolymorphicMapType_111800) (pm_f_36@@4 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_55689_55706 Mask@@5 null pm_f_36@@4) (IsWandField_55689_453798 pm_f_36@@4)) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@7) null (WandMaskField_55689 pm_f_36@@4)) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@4) null (WandMaskField_55689 pm_f_36@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_55689_453798 pm_f_36@@4) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@4) null (WandMaskField_55689 pm_f_36@@4)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (headvalid this@@3) (headvalid this2)) (= this@@3 this2))
 :qid |stdinbpl.220:15|
 :skolemid |25|
 :pattern ( (headvalid this@@3) (headvalid this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|headvalid#sm| this@@4) (|headvalid#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.224:15|
 :skolemid |26|
 :pattern ( (|headvalid#sm| this@@4) (|headvalid#sm| this2@@0))
)))
(assert (forall ((this@@5 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (valid this@@5) (valid this2@@1)) (= this@@5 this2@@1))
 :qid |stdinbpl.319:15|
 :skolemid |31|
 :pattern ( (valid this@@5) (valid this2@@1))
)))
(assert (forall ((this@@6 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|valid#sm| this@@6) (|valid#sm| this2@@2)) (= this@@6 this2@@2))
 :qid |stdinbpl.323:15|
 :skolemid |32|
 :pattern ( (|valid#sm| this@@6) (|valid#sm| this2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_111779) (ExhaleHeap@@5 T@PolymorphicMapType_111779) (Mask@@6 T@PolymorphicMapType_111800) (o_80 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@8) o_80 $allocated) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@5) o_80 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@5) o_80 $allocated))
)))
(assert (forall ((p T@Field_55689_55706) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_111839_111839 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_111839_111839 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_116457_116458) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_55730_55730 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_55730_55730 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_115394_115395) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_55705_115394 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_55705_115394 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_55689_55690 root_1)))
(assert  (not (IsWandField_55689_55690 root_1)))
(assert  (not (IsPredicateField_55692_1201 key_6)))
(assert  (not (IsWandField_55692_1201 key_6)))
(assert  (not (IsPredicateField_55692_1201 height)))
(assert  (not (IsWandField_55692_1201 height)))
(assert  (not (IsPredicateField_55689_55690 left_2)))
(assert  (not (IsWandField_55689_55690 left_2)))
(assert  (not (IsPredicateField_55689_55690 right_1)))
(assert  (not (IsWandField_55689_55690 right_1)))
(assert  (not (IsPredicateField_55692_1201 balanceFactor)))
(assert  (not (IsWandField_55692_1201 balanceFactor)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_111779) (ExhaleHeap@@6 T@PolymorphicMapType_111779) (Mask@@7 T@PolymorphicMapType_111800) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_111800) (o_2@@14 T@Ref) (f_4@@14 T@Field_115407_115412) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_55705_464801 f_4@@14))) (not (IsWandField_55705_464817 f_4@@14))) (<= (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_111800) (o_2@@15 T@Ref) (f_4@@15 T@Field_55705_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_55705_53 f_4@@15))) (not (IsWandField_55705_53 f_4@@15))) (<= (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_111800) (o_2@@16 T@Ref) (f_4@@16 T@Field_55705_1216) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_55705_1216 f_4@@16))) (not (IsWandField_55705_1216 f_4@@16))) (<= (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_111800) (o_2@@17 T@Ref) (f_4@@17 T@Field_115394_115395) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_55705_55706 f_4@@17))) (not (IsWandField_55705_454155 f_4@@17))) (<= (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_111800) (o_2@@18 T@Ref) (f_4@@18 T@Field_55705_55690) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_55705_55690 f_4@@18))) (not (IsWandField_55705_55690 f_4@@18))) (<= (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_111800) (o_2@@19 T@Ref) (f_4@@19 T@Field_117598_117603) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_55730_463970 f_4@@19))) (not (IsWandField_55730_463986 f_4@@19))) (<= (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_111800) (o_2@@20 T@Ref) (f_4@@20 T@Field_55730_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_55730_53 f_4@@20))) (not (IsWandField_55730_53 f_4@@20))) (<= (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_111800) (o_2@@21 T@Ref) (f_4@@21 T@Field_55730_1216) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_55730_1216 f_4@@21))) (not (IsWandField_55730_1216 f_4@@21))) (<= (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_111800) (o_2@@22 T@Ref) (f_4@@22 T@Field_116457_116458) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_55730_55731 f_4@@22))) (not (IsWandField_55730_454512 f_4@@22))) (<= (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_111800) (o_2@@23 T@Ref) (f_4@@23 T@Field_55730_55690) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_55730_55690 f_4@@23))) (not (IsWandField_55730_55690 f_4@@23))) (<= (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_111800) (o_2@@24 T@Ref) (f_4@@24 T@Field_55689_115412) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_55689_463139 f_4@@24))) (not (IsWandField_55689_463155 f_4@@24))) (<= (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_111800) (o_2@@25 T@Ref) (f_4@@25 T@Field_111839_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_55689_53 f_4@@25))) (not (IsWandField_55689_53 f_4@@25))) (<= (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_111800) (o_2@@26 T@Ref) (f_4@@26 T@Field_115215_1201) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_55692_1201 f_4@@26))) (not (IsWandField_55692_1201 f_4@@26))) (<= (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_111800) (o_2@@27 T@Ref) (f_4@@27 T@Field_55689_55706) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_55689_448831 f_4@@27))) (not (IsWandField_55689_453798 f_4@@27))) (<= (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_111800) (o_2@@28 T@Ref) (f_4@@28 T@Field_111852_111853) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_55689_55690 f_4@@28))) (not (IsWandField_55689_55690 f_4@@28))) (<= (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_111800) (o_2@@29 T@Ref) (f_4@@29 T@Field_117598_117603) ) (! (= (HasDirectPerm_55730_448586 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_448586 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_111800) (o_2@@30 T@Ref) (f_4@@30 T@Field_55730_53) ) (! (= (HasDirectPerm_55730_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_111800) (o_2@@31 T@Ref) (f_4@@31 T@Field_116457_116458) ) (! (= (HasDirectPerm_55730_55731 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_55731 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_111800) (o_2@@32 T@Ref) (f_4@@32 T@Field_55730_1216) ) (! (= (HasDirectPerm_55730_1216 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_1216 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_111800) (o_2@@33 T@Ref) (f_4@@33 T@Field_55730_55690) ) (! (= (HasDirectPerm_55730_55690 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55730_55690 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_111800) (o_2@@34 T@Ref) (f_4@@34 T@Field_115407_115412) ) (! (= (HasDirectPerm_55705_447488 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_447488 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_111800) (o_2@@35 T@Ref) (f_4@@35 T@Field_55705_53) ) (! (= (HasDirectPerm_55705_53 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_53 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_111800) (o_2@@36 T@Ref) (f_4@@36 T@Field_115394_115395) ) (! (= (HasDirectPerm_55705_55706 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_55706 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_111800) (o_2@@37 T@Ref) (f_4@@37 T@Field_55705_1216) ) (! (= (HasDirectPerm_55705_1216 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_1216 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_111800) (o_2@@38 T@Ref) (f_4@@38 T@Field_55705_55690) ) (! (= (HasDirectPerm_55705_55690 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55705_55690 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_111800) (o_2@@39 T@Ref) (f_4@@39 T@Field_55689_115412) ) (! (= (HasDirectPerm_55689_446347 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55689_446347 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_111800) (o_2@@40 T@Ref) (f_4@@40 T@Field_111839_53) ) (! (= (HasDirectPerm_55689_53 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55689_53 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_111800) (o_2@@41 T@Ref) (f_4@@41 T@Field_55689_55706) ) (! (= (HasDirectPerm_55689_55706 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55689_55706 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_111800) (o_2@@42 T@Ref) (f_4@@42 T@Field_115215_1201) ) (! (= (HasDirectPerm_55694_1216 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55694_1216 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_111800) (o_2@@43 T@Ref) (f_4@@43 T@Field_111852_111853) ) (! (= (HasDirectPerm_55689_55690 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_55689_55690 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_111779) (ExhaleHeap@@7 T@PolymorphicMapType_111779) (Mask@@38 T@PolymorphicMapType_111800) (o_80@@0 T@Ref) (f_101 T@Field_117598_117603) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_55730_448586 Mask@@38 o_80@@0 f_101) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@10) o_80@@0 f_101) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@7) o_80@@0 f_101))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@7) o_80@@0 f_101))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_111779) (ExhaleHeap@@8 T@PolymorphicMapType_111779) (Mask@@39 T@PolymorphicMapType_111800) (o_80@@1 T@Ref) (f_101@@0 T@Field_55730_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_55730_53 Mask@@39 o_80@@1 f_101@@0) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@11) o_80@@1 f_101@@0) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@8) o_80@@1 f_101@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@8) o_80@@1 f_101@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_111779) (ExhaleHeap@@9 T@PolymorphicMapType_111779) (Mask@@40 T@PolymorphicMapType_111800) (o_80@@2 T@Ref) (f_101@@1 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_55730_55731 Mask@@40 o_80@@2 f_101@@1) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@12) o_80@@2 f_101@@1) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@9) o_80@@2 f_101@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@9) o_80@@2 f_101@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_111779) (ExhaleHeap@@10 T@PolymorphicMapType_111779) (Mask@@41 T@PolymorphicMapType_111800) (o_80@@3 T@Ref) (f_101@@2 T@Field_55730_1216) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_55730_1216 Mask@@41 o_80@@3 f_101@@2) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@13) o_80@@3 f_101@@2) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@10) o_80@@3 f_101@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@10) o_80@@3 f_101@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_111779) (ExhaleHeap@@11 T@PolymorphicMapType_111779) (Mask@@42 T@PolymorphicMapType_111800) (o_80@@4 T@Ref) (f_101@@3 T@Field_55730_55690) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_55730_55690 Mask@@42 o_80@@4 f_101@@3) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@14) o_80@@4 f_101@@3) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@11) o_80@@4 f_101@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@11) o_80@@4 f_101@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_111779) (ExhaleHeap@@12 T@PolymorphicMapType_111779) (Mask@@43 T@PolymorphicMapType_111800) (o_80@@5 T@Ref) (f_101@@4 T@Field_115407_115412) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_55705_447488 Mask@@43 o_80@@5 f_101@@4) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@15) o_80@@5 f_101@@4) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@12) o_80@@5 f_101@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@12) o_80@@5 f_101@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_111779) (ExhaleHeap@@13 T@PolymorphicMapType_111779) (Mask@@44 T@PolymorphicMapType_111800) (o_80@@6 T@Ref) (f_101@@5 T@Field_55705_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_55705_53 Mask@@44 o_80@@6 f_101@@5) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@16) o_80@@6 f_101@@5) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@13) o_80@@6 f_101@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@13) o_80@@6 f_101@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_111779) (ExhaleHeap@@14 T@PolymorphicMapType_111779) (Mask@@45 T@PolymorphicMapType_111800) (o_80@@7 T@Ref) (f_101@@6 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_55705_55706 Mask@@45 o_80@@7 f_101@@6) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@17) o_80@@7 f_101@@6) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@14) o_80@@7 f_101@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@14) o_80@@7 f_101@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_111779) (ExhaleHeap@@15 T@PolymorphicMapType_111779) (Mask@@46 T@PolymorphicMapType_111800) (o_80@@8 T@Ref) (f_101@@7 T@Field_55705_1216) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_55705_1216 Mask@@46 o_80@@8 f_101@@7) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@18) o_80@@8 f_101@@7) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@15) o_80@@8 f_101@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@15) o_80@@8 f_101@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_111779) (ExhaleHeap@@16 T@PolymorphicMapType_111779) (Mask@@47 T@PolymorphicMapType_111800) (o_80@@9 T@Ref) (f_101@@8 T@Field_55705_55690) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_55705_55690 Mask@@47 o_80@@9 f_101@@8) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@19) o_80@@9 f_101@@8) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@16) o_80@@9 f_101@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@16) o_80@@9 f_101@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_111779) (ExhaleHeap@@17 T@PolymorphicMapType_111779) (Mask@@48 T@PolymorphicMapType_111800) (o_80@@10 T@Ref) (f_101@@9 T@Field_55689_115412) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_55689_446347 Mask@@48 o_80@@10 f_101@@9) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@20) o_80@@10 f_101@@9) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@17) o_80@@10 f_101@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@17) o_80@@10 f_101@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_111779) (ExhaleHeap@@18 T@PolymorphicMapType_111779) (Mask@@49 T@PolymorphicMapType_111800) (o_80@@11 T@Ref) (f_101@@10 T@Field_111839_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_55689_53 Mask@@49 o_80@@11 f_101@@10) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@21) o_80@@11 f_101@@10) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@18) o_80@@11 f_101@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@18) o_80@@11 f_101@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_111779) (ExhaleHeap@@19 T@PolymorphicMapType_111779) (Mask@@50 T@PolymorphicMapType_111800) (o_80@@12 T@Ref) (f_101@@11 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_55689_55706 Mask@@50 o_80@@12 f_101@@11) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@22) o_80@@12 f_101@@11) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@19) o_80@@12 f_101@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@19) o_80@@12 f_101@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_111779) (ExhaleHeap@@20 T@PolymorphicMapType_111779) (Mask@@51 T@PolymorphicMapType_111800) (o_80@@13 T@Ref) (f_101@@12 T@Field_115215_1201) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_55694_1216 Mask@@51 o_80@@13 f_101@@12) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@23) o_80@@13 f_101@@12) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@20) o_80@@13 f_101@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@20) o_80@@13 f_101@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_111779) (ExhaleHeap@@21 T@PolymorphicMapType_111779) (Mask@@52 T@PolymorphicMapType_111800) (o_80@@14 T@Ref) (f_101@@13 T@Field_111852_111853) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_55689_55690 Mask@@52 o_80@@14 f_101@@13) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@24) o_80@@14 f_101@@13) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@21) o_80@@14 f_101@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@21) o_80@@14 f_101@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_115407_115412) ) (! (= (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_55705_53) ) (! (= (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_55705_1216) ) (! (= (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_115394_115395) ) (! (= (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_55705_55690) ) (! (= (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_117598_117603) ) (! (= (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_55730_53) ) (! (= (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_55730_1216) ) (! (= (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_116457_116458) ) (! (= (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_55730_55690) ) (! (= (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_55689_115412) ) (! (= (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_111839_53) ) (! (= (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_115215_1201) ) (! (= (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_55689_55706) ) (! (= (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_111852_111853) ) (! (= (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_111800) (SummandMask1 T@PolymorphicMapType_111800) (SummandMask2 T@PolymorphicMapType_111800) (o_2@@59 T@Ref) (f_4@@59 T@Field_115407_115412) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_111800_55705_461360#PolymorphicMapType_111800| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_111800) (SummandMask1@@0 T@PolymorphicMapType_111800) (SummandMask2@@0 T@PolymorphicMapType_111800) (o_2@@60 T@Ref) (f_4@@60 T@Field_55705_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_111800_55705_53#PolymorphicMapType_111800| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_111800) (SummandMask1@@1 T@PolymorphicMapType_111800) (SummandMask2@@1 T@PolymorphicMapType_111800) (o_2@@61 T@Ref) (f_4@@61 T@Field_55705_1216) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_111800_55705_1216#PolymorphicMapType_111800| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_111800) (SummandMask1@@2 T@PolymorphicMapType_111800) (SummandMask2@@2 T@PolymorphicMapType_111800) (o_2@@62 T@Ref) (f_4@@62 T@Field_115394_115395) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_111800_55705_55706#PolymorphicMapType_111800| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_111800) (SummandMask1@@3 T@PolymorphicMapType_111800) (SummandMask2@@3 T@PolymorphicMapType_111800) (o_2@@63 T@Ref) (f_4@@63 T@Field_55705_55690) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_111800_55705_55690#PolymorphicMapType_111800| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_111800) (SummandMask1@@4 T@PolymorphicMapType_111800) (SummandMask2@@4 T@PolymorphicMapType_111800) (o_2@@64 T@Ref) (f_4@@64 T@Field_117598_117603) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_111800_55730_460949#PolymorphicMapType_111800| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_111800) (SummandMask1@@5 T@PolymorphicMapType_111800) (SummandMask2@@5 T@PolymorphicMapType_111800) (o_2@@65 T@Ref) (f_4@@65 T@Field_55730_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_111800_55730_53#PolymorphicMapType_111800| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_111800) (SummandMask1@@6 T@PolymorphicMapType_111800) (SummandMask2@@6 T@PolymorphicMapType_111800) (o_2@@66 T@Ref) (f_4@@66 T@Field_55730_1216) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_111800_55730_1216#PolymorphicMapType_111800| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_111800) (SummandMask1@@7 T@PolymorphicMapType_111800) (SummandMask2@@7 T@PolymorphicMapType_111800) (o_2@@67 T@Ref) (f_4@@67 T@Field_116457_116458) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_111800_55730_55731#PolymorphicMapType_111800| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_111800) (SummandMask1@@8 T@PolymorphicMapType_111800) (SummandMask2@@8 T@PolymorphicMapType_111800) (o_2@@68 T@Ref) (f_4@@68 T@Field_55730_55690) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_111800_55730_55690#PolymorphicMapType_111800| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_111800) (SummandMask1@@9 T@PolymorphicMapType_111800) (SummandMask2@@9 T@PolymorphicMapType_111800) (o_2@@69 T@Ref) (f_4@@69 T@Field_55689_115412) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_111800_55689_460538#PolymorphicMapType_111800| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_111800) (SummandMask1@@10 T@PolymorphicMapType_111800) (SummandMask2@@10 T@PolymorphicMapType_111800) (o_2@@70 T@Ref) (f_4@@70 T@Field_111839_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_111800_55689_53#PolymorphicMapType_111800| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_111800) (SummandMask1@@11 T@PolymorphicMapType_111800) (SummandMask2@@11 T@PolymorphicMapType_111800) (o_2@@71 T@Ref) (f_4@@71 T@Field_115215_1201) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_111800_55694_1216#PolymorphicMapType_111800| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_111800) (SummandMask1@@12 T@PolymorphicMapType_111800) (SummandMask2@@12 T@PolymorphicMapType_111800) (o_2@@72 T@Ref) (f_4@@72 T@Field_55689_55706) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_111800_55689_55731#PolymorphicMapType_111800| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_111800) (SummandMask1@@13 T@PolymorphicMapType_111800) (SummandMask2@@13 T@PolymorphicMapType_111800) (o_2@@73 T@Ref) (f_4@@73 T@Field_111852_111853) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_111800_55689_55690#PolymorphicMapType_111800| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_111779) (ExhaleHeap@@22 T@PolymorphicMapType_111779) (Mask@@53 T@PolymorphicMapType_111800) (pm_f_36@@5 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_55730_55731 Mask@@53 null pm_f_36@@5) (IsPredicateField_55730_55731 pm_f_36@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36 T@Ref) (f_101@@14 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36 f_101@@14) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@25) o2_36 f_101@@14) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36 f_101@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36 f_101@@14))
)) (forall ((o2_36@@0 T@Ref) (f_101@@15 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@0 f_101@@15) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@25) o2_36@@0 f_101@@15) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@0 f_101@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@0 f_101@@15))
))) (forall ((o2_36@@1 T@Ref) (f_101@@16 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@1 f_101@@16) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@25) o2_36@@1 f_101@@16) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@1 f_101@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@1 f_101@@16))
))) (forall ((o2_36@@2 T@Ref) (f_101@@17 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@2 f_101@@17) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@25) o2_36@@2 f_101@@17) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@2 f_101@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@2 f_101@@17))
))) (forall ((o2_36@@3 T@Ref) (f_101@@18 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@3 f_101@@18) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@25) o2_36@@3 f_101@@18) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@3 f_101@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@3 f_101@@18))
))) (forall ((o2_36@@4 T@Ref) (f_101@@19 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@4 f_101@@19) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@25) o2_36@@4 f_101@@19) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@4 f_101@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@4 f_101@@19))
))) (forall ((o2_36@@5 T@Ref) (f_101@@20 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@5 f_101@@20) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@25) o2_36@@5 f_101@@20) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@5 f_101@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@5 f_101@@20))
))) (forall ((o2_36@@6 T@Ref) (f_101@@21 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@6 f_101@@21) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@25) o2_36@@6 f_101@@21) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@6 f_101@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@6 f_101@@21))
))) (forall ((o2_36@@7 T@Ref) (f_101@@22 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@7 f_101@@22) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@25) o2_36@@7 f_101@@22) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@7 f_101@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@7 f_101@@22))
))) (forall ((o2_36@@8 T@Ref) (f_101@@23 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@8 f_101@@23) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@25) o2_36@@8 f_101@@23) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@8 f_101@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@8 f_101@@23))
))) (forall ((o2_36@@9 T@Ref) (f_101@@24 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@9 f_101@@24) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@25) o2_36@@9 f_101@@24) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@9 f_101@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@9 f_101@@24))
))) (forall ((o2_36@@10 T@Ref) (f_101@@25 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@10 f_101@@25) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@25) o2_36@@10 f_101@@25) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@10 f_101@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@10 f_101@@25))
))) (forall ((o2_36@@11 T@Ref) (f_101@@26 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@11 f_101@@26) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@25) o2_36@@11 f_101@@26) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@11 f_101@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@11 f_101@@26))
))) (forall ((o2_36@@12 T@Ref) (f_101@@27 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@12 f_101@@27) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@25) o2_36@@12 f_101@@27) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@12 f_101@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@12 f_101@@27))
))) (forall ((o2_36@@13 T@Ref) (f_101@@28 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) null (PredicateMaskField_55730 pm_f_36@@5))) o2_36@@13 f_101@@28) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@25) o2_36@@13 f_101@@28) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@13 f_101@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@22) o2_36@@13 f_101@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_55730_55731 pm_f_36@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_111779) (ExhaleHeap@@23 T@PolymorphicMapType_111779) (Mask@@54 T@PolymorphicMapType_111800) (pm_f_36@@6 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_55705_55706 Mask@@54 null pm_f_36@@6) (IsPredicateField_55705_55706 pm_f_36@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@14 T@Ref) (f_101@@29 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@14 f_101@@29) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@26) o2_36@@14 f_101@@29) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@14 f_101@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@14 f_101@@29))
)) (forall ((o2_36@@15 T@Ref) (f_101@@30 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@15 f_101@@30) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@26) o2_36@@15 f_101@@30) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@15 f_101@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@15 f_101@@30))
))) (forall ((o2_36@@16 T@Ref) (f_101@@31 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@16 f_101@@31) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@26) o2_36@@16 f_101@@31) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@16 f_101@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@16 f_101@@31))
))) (forall ((o2_36@@17 T@Ref) (f_101@@32 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@17 f_101@@32) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@26) o2_36@@17 f_101@@32) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@17 f_101@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@17 f_101@@32))
))) (forall ((o2_36@@18 T@Ref) (f_101@@33 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@18 f_101@@33) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@26) o2_36@@18 f_101@@33) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@18 f_101@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@18 f_101@@33))
))) (forall ((o2_36@@19 T@Ref) (f_101@@34 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@19 f_101@@34) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@26) o2_36@@19 f_101@@34) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@19 f_101@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@19 f_101@@34))
))) (forall ((o2_36@@20 T@Ref) (f_101@@35 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@20 f_101@@35) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@26) o2_36@@20 f_101@@35) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@20 f_101@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@20 f_101@@35))
))) (forall ((o2_36@@21 T@Ref) (f_101@@36 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@21 f_101@@36) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@26) o2_36@@21 f_101@@36) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@21 f_101@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@21 f_101@@36))
))) (forall ((o2_36@@22 T@Ref) (f_101@@37 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@22 f_101@@37) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@26) o2_36@@22 f_101@@37) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@22 f_101@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@22 f_101@@37))
))) (forall ((o2_36@@23 T@Ref) (f_101@@38 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@23 f_101@@38) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) o2_36@@23 f_101@@38) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@23 f_101@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@23 f_101@@38))
))) (forall ((o2_36@@24 T@Ref) (f_101@@39 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@24 f_101@@39) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@26) o2_36@@24 f_101@@39) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@24 f_101@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@24 f_101@@39))
))) (forall ((o2_36@@25 T@Ref) (f_101@@40 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@25 f_101@@40) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@26) o2_36@@25 f_101@@40) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@25 f_101@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@25 f_101@@40))
))) (forall ((o2_36@@26 T@Ref) (f_101@@41 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@26 f_101@@41) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@26) o2_36@@26 f_101@@41) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@26 f_101@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@26 f_101@@41))
))) (forall ((o2_36@@27 T@Ref) (f_101@@42 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@27 f_101@@42) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@26) o2_36@@27 f_101@@42) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@27 f_101@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@27 f_101@@42))
))) (forall ((o2_36@@28 T@Ref) (f_101@@43 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@26) null (PredicateMaskField_55705 pm_f_36@@6))) o2_36@@28 f_101@@43) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@26) o2_36@@28 f_101@@43) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@28 f_101@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@23) o2_36@@28 f_101@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_55705_55706 pm_f_36@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_111779) (ExhaleHeap@@24 T@PolymorphicMapType_111779) (Mask@@55 T@PolymorphicMapType_111800) (pm_f_36@@7 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_55689_55706 Mask@@55 null pm_f_36@@7) (IsPredicateField_55689_448831 pm_f_36@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@29 T@Ref) (f_101@@44 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@29 f_101@@44) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@27) o2_36@@29 f_101@@44) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@29 f_101@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@29 f_101@@44))
)) (forall ((o2_36@@30 T@Ref) (f_101@@45 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@30 f_101@@45) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@27) o2_36@@30 f_101@@45) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@30 f_101@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@30 f_101@@45))
))) (forall ((o2_36@@31 T@Ref) (f_101@@46 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@31 f_101@@46) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@27) o2_36@@31 f_101@@46) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@31 f_101@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@31 f_101@@46))
))) (forall ((o2_36@@32 T@Ref) (f_101@@47 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@32 f_101@@47) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@27) o2_36@@32 f_101@@47) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@32 f_101@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@32 f_101@@47))
))) (forall ((o2_36@@33 T@Ref) (f_101@@48 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@33 f_101@@48) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) o2_36@@33 f_101@@48) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@33 f_101@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@33 f_101@@48))
))) (forall ((o2_36@@34 T@Ref) (f_101@@49 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@34 f_101@@49) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@27) o2_36@@34 f_101@@49) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@34 f_101@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@34 f_101@@49))
))) (forall ((o2_36@@35 T@Ref) (f_101@@50 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@35 f_101@@50) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@27) o2_36@@35 f_101@@50) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@35 f_101@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@35 f_101@@50))
))) (forall ((o2_36@@36 T@Ref) (f_101@@51 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@36 f_101@@51) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@27) o2_36@@36 f_101@@51) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@36 f_101@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@36 f_101@@51))
))) (forall ((o2_36@@37 T@Ref) (f_101@@52 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@37 f_101@@52) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@27) o2_36@@37 f_101@@52) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@37 f_101@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@37 f_101@@52))
))) (forall ((o2_36@@38 T@Ref) (f_101@@53 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@38 f_101@@53) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@27) o2_36@@38 f_101@@53) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@38 f_101@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@38 f_101@@53))
))) (forall ((o2_36@@39 T@Ref) (f_101@@54 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@39 f_101@@54) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@27) o2_36@@39 f_101@@54) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@39 f_101@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@39 f_101@@54))
))) (forall ((o2_36@@40 T@Ref) (f_101@@55 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@40 f_101@@55) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@27) o2_36@@40 f_101@@55) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@40 f_101@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@40 f_101@@55))
))) (forall ((o2_36@@41 T@Ref) (f_101@@56 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@41 f_101@@56) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@27) o2_36@@41 f_101@@56) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@41 f_101@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@41 f_101@@56))
))) (forall ((o2_36@@42 T@Ref) (f_101@@57 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@42 f_101@@57) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@27) o2_36@@42 f_101@@57) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@42 f_101@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@42 f_101@@57))
))) (forall ((o2_36@@43 T@Ref) (f_101@@58 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@27) null (PredicateMaskField_55689 pm_f_36@@7))) o2_36@@43 f_101@@58) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@27) o2_36@@43 f_101@@58) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@43 f_101@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@24) o2_36@@43 f_101@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_55689_448831 pm_f_36@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_111779) (ExhaleHeap@@25 T@PolymorphicMapType_111779) (Mask@@56 T@PolymorphicMapType_111800) (pm_f_36@@8 T@Field_116457_116458) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_55730_55731 Mask@@56 null pm_f_36@@8) (IsWandField_55730_454512 pm_f_36@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@44 T@Ref) (f_101@@59 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@44 f_101@@59) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@28) o2_36@@44 f_101@@59) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@44 f_101@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@44 f_101@@59))
)) (forall ((o2_36@@45 T@Ref) (f_101@@60 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@45 f_101@@60) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@28) o2_36@@45 f_101@@60) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@45 f_101@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@45 f_101@@60))
))) (forall ((o2_36@@46 T@Ref) (f_101@@61 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@46 f_101@@61) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@28) o2_36@@46 f_101@@61) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@46 f_101@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@46 f_101@@61))
))) (forall ((o2_36@@47 T@Ref) (f_101@@62 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@47 f_101@@62) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@28) o2_36@@47 f_101@@62) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@47 f_101@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@47 f_101@@62))
))) (forall ((o2_36@@48 T@Ref) (f_101@@63 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@48 f_101@@63) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@28) o2_36@@48 f_101@@63) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@48 f_101@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@48 f_101@@63))
))) (forall ((o2_36@@49 T@Ref) (f_101@@64 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@49 f_101@@64) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@28) o2_36@@49 f_101@@64) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@49 f_101@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@49 f_101@@64))
))) (forall ((o2_36@@50 T@Ref) (f_101@@65 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@50 f_101@@65) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@28) o2_36@@50 f_101@@65) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@50 f_101@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@50 f_101@@65))
))) (forall ((o2_36@@51 T@Ref) (f_101@@66 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@51 f_101@@66) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@28) o2_36@@51 f_101@@66) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@51 f_101@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@51 f_101@@66))
))) (forall ((o2_36@@52 T@Ref) (f_101@@67 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@52 f_101@@67) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@28) o2_36@@52 f_101@@67) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@52 f_101@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@52 f_101@@67))
))) (forall ((o2_36@@53 T@Ref) (f_101@@68 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@53 f_101@@68) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@28) o2_36@@53 f_101@@68) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@53 f_101@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@53 f_101@@68))
))) (forall ((o2_36@@54 T@Ref) (f_101@@69 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@54 f_101@@69) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@28) o2_36@@54 f_101@@69) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@54 f_101@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@54 f_101@@69))
))) (forall ((o2_36@@55 T@Ref) (f_101@@70 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@55 f_101@@70) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@28) o2_36@@55 f_101@@70) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@55 f_101@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@55 f_101@@70))
))) (forall ((o2_36@@56 T@Ref) (f_101@@71 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@56 f_101@@71) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@28) o2_36@@56 f_101@@71) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@56 f_101@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@56 f_101@@71))
))) (forall ((o2_36@@57 T@Ref) (f_101@@72 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@57 f_101@@72) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@28) o2_36@@57 f_101@@72) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@57 f_101@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@57 f_101@@72))
))) (forall ((o2_36@@58 T@Ref) (f_101@@73 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) null (WandMaskField_55730 pm_f_36@@8))) o2_36@@58 f_101@@73) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@28) o2_36@@58 f_101@@73) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@58 f_101@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@25) o2_36@@58 f_101@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_55730_454512 pm_f_36@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_111779) (ExhaleHeap@@26 T@PolymorphicMapType_111779) (Mask@@57 T@PolymorphicMapType_111800) (pm_f_36@@9 T@Field_115394_115395) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_55705_55706 Mask@@57 null pm_f_36@@9) (IsWandField_55705_454155 pm_f_36@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@59 T@Ref) (f_101@@74 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@59 f_101@@74) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@29) o2_36@@59 f_101@@74) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@59 f_101@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@59 f_101@@74))
)) (forall ((o2_36@@60 T@Ref) (f_101@@75 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@60 f_101@@75) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@29) o2_36@@60 f_101@@75) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@60 f_101@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@60 f_101@@75))
))) (forall ((o2_36@@61 T@Ref) (f_101@@76 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@61 f_101@@76) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@29) o2_36@@61 f_101@@76) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@61 f_101@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@61 f_101@@76))
))) (forall ((o2_36@@62 T@Ref) (f_101@@77 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@62 f_101@@77) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@29) o2_36@@62 f_101@@77) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@62 f_101@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@62 f_101@@77))
))) (forall ((o2_36@@63 T@Ref) (f_101@@78 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@63 f_101@@78) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@29) o2_36@@63 f_101@@78) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@63 f_101@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@63 f_101@@78))
))) (forall ((o2_36@@64 T@Ref) (f_101@@79 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@64 f_101@@79) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@29) o2_36@@64 f_101@@79) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@64 f_101@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@64 f_101@@79))
))) (forall ((o2_36@@65 T@Ref) (f_101@@80 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@65 f_101@@80) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@29) o2_36@@65 f_101@@80) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@65 f_101@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@65 f_101@@80))
))) (forall ((o2_36@@66 T@Ref) (f_101@@81 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@66 f_101@@81) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@29) o2_36@@66 f_101@@81) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@66 f_101@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@66 f_101@@81))
))) (forall ((o2_36@@67 T@Ref) (f_101@@82 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@67 f_101@@82) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@29) o2_36@@67 f_101@@82) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@67 f_101@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@67 f_101@@82))
))) (forall ((o2_36@@68 T@Ref) (f_101@@83 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@68 f_101@@83) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) o2_36@@68 f_101@@83) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@68 f_101@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@68 f_101@@83))
))) (forall ((o2_36@@69 T@Ref) (f_101@@84 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@69 f_101@@84) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@29) o2_36@@69 f_101@@84) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@69 f_101@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@69 f_101@@84))
))) (forall ((o2_36@@70 T@Ref) (f_101@@85 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@70 f_101@@85) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@29) o2_36@@70 f_101@@85) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@70 f_101@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@70 f_101@@85))
))) (forall ((o2_36@@71 T@Ref) (f_101@@86 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@71 f_101@@86) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@29) o2_36@@71 f_101@@86) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@71 f_101@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@71 f_101@@86))
))) (forall ((o2_36@@72 T@Ref) (f_101@@87 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@72 f_101@@87) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@29) o2_36@@72 f_101@@87) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@72 f_101@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@72 f_101@@87))
))) (forall ((o2_36@@73 T@Ref) (f_101@@88 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@29) null (WandMaskField_55705 pm_f_36@@9))) o2_36@@73 f_101@@88) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@29) o2_36@@73 f_101@@88) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@73 f_101@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@26) o2_36@@73 f_101@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_55705_454155 pm_f_36@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_111779) (ExhaleHeap@@27 T@PolymorphicMapType_111779) (Mask@@58 T@PolymorphicMapType_111800) (pm_f_36@@10 T@Field_55689_55706) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_55689_55706 Mask@@58 null pm_f_36@@10) (IsWandField_55689_453798 pm_f_36@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_36@@74 T@Ref) (f_101@@89 T@Field_111852_111853) ) (!  (=> (select (|PolymorphicMapType_112328_55689_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@74 f_101@@89) (= (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@30) o2_36@@74 f_101@@89) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@74 f_101@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@74 f_101@@89))
)) (forall ((o2_36@@75 T@Ref) (f_101@@90 T@Field_115215_1201) ) (!  (=> (select (|PolymorphicMapType_112328_55694_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@75 f_101@@90) (= (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@30) o2_36@@75 f_101@@90) (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@75 f_101@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@75 f_101@@90))
))) (forall ((o2_36@@76 T@Ref) (f_101@@91 T@Field_111839_53) ) (!  (=> (select (|PolymorphicMapType_112328_55689_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@76 f_101@@91) (= (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@30) o2_36@@76 f_101@@91) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@76 f_101@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@76 f_101@@91))
))) (forall ((o2_36@@77 T@Ref) (f_101@@92 T@Field_55689_55706) ) (!  (=> (select (|PolymorphicMapType_112328_55689_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@77 f_101@@92) (= (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@30) o2_36@@77 f_101@@92) (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@77 f_101@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@77 f_101@@92))
))) (forall ((o2_36@@78 T@Ref) (f_101@@93 T@Field_55689_115412) ) (!  (=> (select (|PolymorphicMapType_112328_55689_450613#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@78 f_101@@93) (= (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) o2_36@@78 f_101@@93) (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@78 f_101@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@78 f_101@@93))
))) (forall ((o2_36@@79 T@Ref) (f_101@@94 T@Field_55705_55690) ) (!  (=> (select (|PolymorphicMapType_112328_115394_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@79 f_101@@94) (= (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@30) o2_36@@79 f_101@@94) (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@79 f_101@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@79 f_101@@94))
))) (forall ((o2_36@@80 T@Ref) (f_101@@95 T@Field_55705_1216) ) (!  (=> (select (|PolymorphicMapType_112328_115394_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@80 f_101@@95) (= (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@30) o2_36@@80 f_101@@95) (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@80 f_101@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@80 f_101@@95))
))) (forall ((o2_36@@81 T@Ref) (f_101@@96 T@Field_55705_53) ) (!  (=> (select (|PolymorphicMapType_112328_115394_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@81 f_101@@96) (= (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@30) o2_36@@81 f_101@@96) (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@81 f_101@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@81 f_101@@96))
))) (forall ((o2_36@@82 T@Ref) (f_101@@97 T@Field_115394_115395) ) (!  (=> (select (|PolymorphicMapType_112328_115394_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@82 f_101@@97) (= (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@30) o2_36@@82 f_101@@97) (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@82 f_101@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@82 f_101@@97))
))) (forall ((o2_36@@83 T@Ref) (f_101@@98 T@Field_115407_115412) ) (!  (=> (select (|PolymorphicMapType_112328_115394_451661#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@83 f_101@@98) (= (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@30) o2_36@@83 f_101@@98) (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@83 f_101@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@83 f_101@@98))
))) (forall ((o2_36@@84 T@Ref) (f_101@@99 T@Field_55730_55690) ) (!  (=> (select (|PolymorphicMapType_112328_116457_55690#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@84 f_101@@99) (= (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@30) o2_36@@84 f_101@@99) (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@84 f_101@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@84 f_101@@99))
))) (forall ((o2_36@@85 T@Ref) (f_101@@100 T@Field_55730_1216) ) (!  (=> (select (|PolymorphicMapType_112328_116457_1216#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@85 f_101@@100) (= (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@30) o2_36@@85 f_101@@100) (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@85 f_101@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@85 f_101@@100))
))) (forall ((o2_36@@86 T@Ref) (f_101@@101 T@Field_55730_53) ) (!  (=> (select (|PolymorphicMapType_112328_116457_53#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@86 f_101@@101) (= (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@30) o2_36@@86 f_101@@101) (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@86 f_101@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@86 f_101@@101))
))) (forall ((o2_36@@87 T@Ref) (f_101@@102 T@Field_116457_116458) ) (!  (=> (select (|PolymorphicMapType_112328_116457_115395#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@87 f_101@@102) (= (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@30) o2_36@@87 f_101@@102) (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@87 f_101@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@87 f_101@@102))
))) (forall ((o2_36@@88 T@Ref) (f_101@@103 T@Field_117598_117603) ) (!  (=> (select (|PolymorphicMapType_112328_116457_452709#PolymorphicMapType_112328| (select (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@30) null (WandMaskField_55689 pm_f_36@@10))) o2_36@@88 f_101@@103) (= (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@30) o2_36@@88 f_101@@103) (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@88 f_101@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| ExhaleHeap@@27) o2_36@@88 f_101@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_55689_453798 pm_f_36@@10))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_55705_55706 (headvalid this@@7)) 0)
 :qid |stdinbpl.214:15|
 :skolemid |24|
 :pattern ( (headvalid this@@7))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (getPredWandId_55730_55731 (valid this@@8)) 1)
 :qid |stdinbpl.313:15|
 :skolemid |30|
 :pattern ( (valid this@@8))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_111779) (o_72 T@Ref) (f_80 T@Field_117598_117603) (v T@PolymorphicMapType_112328) ) (! (succHeap Heap@@31 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@31) (store (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@31) o_72 f_80 v) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@31) (store (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@31) o_72 f_80 v) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@31) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_111779) (o_72@@0 T@Ref) (f_80@@0 T@Field_116457_116458) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@32) (store (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@32) o_72@@0 f_80@@0 v@@0) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@32) (store (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@32) o_72@@0 f_80@@0 v@@0) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@32) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_111779) (o_72@@1 T@Ref) (f_80@@1 T@Field_55730_1216) (v@@1 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@33) (store (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@33) o_72@@1 f_80@@1 v@@1) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@33) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@33) (store (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@33) o_72@@1 f_80@@1 v@@1) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_111779) (o_72@@2 T@Ref) (f_80@@2 T@Field_55730_55690) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@34) (store (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@34) o_72@@2 f_80@@2 v@@2) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@34) (store (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@34) o_72@@2 f_80@@2 v@@2) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@34) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_111779) (o_72@@3 T@Ref) (f_80@@3 T@Field_55730_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@35) (store (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@35) o_72@@3 f_80@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@35) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@35) (store (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@35) o_72@@3 f_80@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_111779) (o_72@@4 T@Ref) (f_80@@4 T@Field_115407_115412) (v@@4 T@PolymorphicMapType_112328) ) (! (succHeap Heap@@36 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@36) (store (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@36) o_72@@4 f_80@@4 v@@4) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@36) (store (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@36) o_72@@4 f_80@@4 v@@4) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@36) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_111779) (o_72@@5 T@Ref) (f_80@@5 T@Field_115394_115395) (v@@5 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@37) (store (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@37) o_72@@5 f_80@@5 v@@5) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@37) (store (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@37) o_72@@5 f_80@@5 v@@5) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@37) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_111779) (o_72@@6 T@Ref) (f_80@@6 T@Field_55705_1216) (v@@6 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@38) (store (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@38) o_72@@6 f_80@@6 v@@6) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@38) (store (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@38) o_72@@6 f_80@@6 v@@6) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@38) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_111779) (o_72@@7 T@Ref) (f_80@@7 T@Field_55705_55690) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@39) (store (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@39) o_72@@7 f_80@@7 v@@7) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@39) (store (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@39) o_72@@7 f_80@@7 v@@7) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@39) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_111779) (o_72@@8 T@Ref) (f_80@@8 T@Field_55705_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@40) (store (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@40) o_72@@8 f_80@@8 v@@8) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@40) (store (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@40) o_72@@8 f_80@@8 v@@8) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@40) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_111779) (o_72@@9 T@Ref) (f_80@@9 T@Field_55689_115412) (v@@9 T@PolymorphicMapType_112328) ) (! (succHeap Heap@@41 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@41) (store (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@41) o_72@@9 f_80@@9 v@@9) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@41) (store (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@41) o_72@@9 f_80@@9 v@@9) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@41) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_111779) (o_72@@10 T@Ref) (f_80@@10 T@Field_55689_55706) (v@@10 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@42) (store (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@42) o_72@@10 f_80@@10 v@@10) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@42) (store (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@42) o_72@@10 f_80@@10 v@@10) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@42) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_111779) (o_72@@11 T@Ref) (f_80@@11 T@Field_115215_1201) (v@@11 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@43) (store (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@43) o_72@@11 f_80@@11 v@@11) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@43) (store (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@43) o_72@@11 f_80@@11 v@@11) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@43) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_111779) (o_72@@12 T@Ref) (f_80@@12 T@Field_111852_111853) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@44) (store (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@44) o_72@@12 f_80@@12 v@@12) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@44) (store (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@44) o_72@@12 f_80@@12 v@@12) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@44) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_111779) (o_72@@13 T@Ref) (f_80@@13 T@Field_111839_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_111779 (store (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@45) o_72@@13 f_80@@13 v@@13) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_111779 (store (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@45) o_72@@13 f_80@@13 v@@13) (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55694_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_55706#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_55731#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55709_128217#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55734_128834#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55689_55706#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55689_446389#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_55690#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55705_53#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_55690#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_1216#PolymorphicMapType_111779| Heap@@45) (|PolymorphicMapType_111779_55730_53#PolymorphicMapType_111779| Heap@@45)))
)))
(assert (forall ((this@@9 T@Ref) ) (! (= (PredicateMaskField_55705 (headvalid this@@9)) (|headvalid#sm| this@@9))
 :qid |stdinbpl.206:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_55705 (headvalid this@@9)))
)))
(assert (forall ((this@@10 T@Ref) ) (! (= (PredicateMaskField_55730 (valid this@@10)) (|valid#sm| this@@10))
 :qid |stdinbpl.305:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_55730 (valid this@@10)))
)))
(assert (forall ((o_72@@14 T@Ref) (f_100 T@Field_111852_111853) (Heap@@46 T@PolymorphicMapType_111779) ) (!  (=> (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@46) o_72@@14 $allocated) (select (|PolymorphicMapType_111779_55561_53#PolymorphicMapType_111779| Heap@@46) (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@46) o_72@@14 f_100) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_111779_55564_55565#PolymorphicMapType_111779| Heap@@46) o_72@@14 f_100))
)))
(assert (forall ((p@@3 T@Field_55689_55706) (v_1@@2 T@FrameType) (q T@Field_55689_55706) (w@@2 T@FrameType) (r T@Field_115394_115395) (u T@FrameType) ) (!  (=> (and (InsidePredicate_111839_111839 p@@3 v_1@@2 q w@@2) (InsidePredicate_111839_115394 q w@@2 r u)) (InsidePredicate_111839_115394 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_111839 p@@3 v_1@@2 q w@@2) (InsidePredicate_111839_115394 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_55689_55706) (v_1@@3 T@FrameType) (q@@0 T@Field_55689_55706) (w@@3 T@FrameType) (r@@0 T@Field_55689_55706) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_111839 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_111839_111839 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_111839_111839 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_111839 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_111839_111839 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_55689_55706) (v_1@@4 T@FrameType) (q@@1 T@Field_55689_55706) (w@@4 T@FrameType) (r@@1 T@Field_116457_116458) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_111839 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_111839_55730 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_111839_55730 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_111839 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_111839_55730 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_55689_55706) (v_1@@5 T@FrameType) (q@@2 T@Field_115394_115395) (w@@5 T@FrameType) (r@@2 T@Field_115394_115395) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_115394 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_55705_115394 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_111839_115394 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_115394 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_55705_115394 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_55689_55706) (v_1@@6 T@FrameType) (q@@3 T@Field_115394_115395) (w@@6 T@FrameType) (r@@3 T@Field_55689_55706) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_115394 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_55705_111839 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_111839_111839 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_115394 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_55705_111839 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_55689_55706) (v_1@@7 T@FrameType) (q@@4 T@Field_115394_115395) (w@@7 T@FrameType) (r@@4 T@Field_116457_116458) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_115394 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_55705_55730 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_111839_55730 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_115394 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_55705_55730 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_55689_55706) (v_1@@8 T@FrameType) (q@@5 T@Field_116457_116458) (w@@8 T@FrameType) (r@@5 T@Field_115394_115395) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_55730 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_55730_115394 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_111839_115394 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_55730 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_55730_115394 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_55689_55706) (v_1@@9 T@FrameType) (q@@6 T@Field_116457_116458) (w@@9 T@FrameType) (r@@6 T@Field_55689_55706) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_55730 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_55730_111839 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_111839_111839 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_55730 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_55730_111839 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_55689_55706) (v_1@@10 T@FrameType) (q@@7 T@Field_116457_116458) (w@@10 T@FrameType) (r@@7 T@Field_116457_116458) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_111839_55730 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_55730_55730 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_111839_55730 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_111839_55730 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_55730_55730 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_116457_116458) (v_1@@11 T@FrameType) (q@@8 T@Field_55689_55706) (w@@11 T@FrameType) (r@@8 T@Field_115394_115395) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_111839 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_111839_115394 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_55730_115394 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_111839 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_111839_115394 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_116457_116458) (v_1@@12 T@FrameType) (q@@9 T@Field_55689_55706) (w@@12 T@FrameType) (r@@9 T@Field_55689_55706) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_111839 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_111839_111839 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_55730_111839 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_111839 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_111839_111839 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_116457_116458) (v_1@@13 T@FrameType) (q@@10 T@Field_55689_55706) (w@@13 T@FrameType) (r@@10 T@Field_116457_116458) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_111839 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_111839_55730 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_55730_55730 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_111839 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_111839_55730 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_116457_116458) (v_1@@14 T@FrameType) (q@@11 T@Field_115394_115395) (w@@14 T@FrameType) (r@@11 T@Field_115394_115395) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_115394 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_55705_115394 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_55730_115394 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_115394 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_55705_115394 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_116457_116458) (v_1@@15 T@FrameType) (q@@12 T@Field_115394_115395) (w@@15 T@FrameType) (r@@12 T@Field_55689_55706) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_115394 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_55705_111839 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_55730_111839 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_115394 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_55705_111839 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_116457_116458) (v_1@@16 T@FrameType) (q@@13 T@Field_115394_115395) (w@@16 T@FrameType) (r@@13 T@Field_116457_116458) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_115394 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_55705_55730 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_55730_55730 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_115394 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_55705_55730 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_116457_116458) (v_1@@17 T@FrameType) (q@@14 T@Field_116457_116458) (w@@17 T@FrameType) (r@@14 T@Field_115394_115395) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_55730 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_55730_115394 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_55730_115394 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_55730 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_55730_115394 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_116457_116458) (v_1@@18 T@FrameType) (q@@15 T@Field_116457_116458) (w@@18 T@FrameType) (r@@15 T@Field_55689_55706) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_55730 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_55730_111839 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_55730_111839 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_55730 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_55730_111839 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_116457_116458) (v_1@@19 T@FrameType) (q@@16 T@Field_116457_116458) (w@@19 T@FrameType) (r@@16 T@Field_116457_116458) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_55730_55730 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_55730_55730 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_55730_55730 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55730_55730 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_55730_55730 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_115394_115395) (v_1@@20 T@FrameType) (q@@17 T@Field_55689_55706) (w@@20 T@FrameType) (r@@17 T@Field_115394_115395) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_111839 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_111839_115394 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_55705_115394 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_111839 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_111839_115394 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_115394_115395) (v_1@@21 T@FrameType) (q@@18 T@Field_55689_55706) (w@@21 T@FrameType) (r@@18 T@Field_55689_55706) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_111839 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_111839_111839 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_55705_111839 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_111839 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_111839_111839 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_115394_115395) (v_1@@22 T@FrameType) (q@@19 T@Field_55689_55706) (w@@22 T@FrameType) (r@@19 T@Field_116457_116458) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_111839 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_111839_55730 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_55705_55730 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_111839 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_111839_55730 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_115394_115395) (v_1@@23 T@FrameType) (q@@20 T@Field_115394_115395) (w@@23 T@FrameType) (r@@20 T@Field_115394_115395) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_115394 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_55705_115394 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_55705_115394 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_115394 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_55705_115394 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_115394_115395) (v_1@@24 T@FrameType) (q@@21 T@Field_115394_115395) (w@@24 T@FrameType) (r@@21 T@Field_55689_55706) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_115394 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_55705_111839 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_55705_111839 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_115394 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_55705_111839 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_115394_115395) (v_1@@25 T@FrameType) (q@@22 T@Field_115394_115395) (w@@25 T@FrameType) (r@@22 T@Field_116457_116458) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_115394 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_55705_55730 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_55705_55730 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_115394 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_55705_55730 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_115394_115395) (v_1@@26 T@FrameType) (q@@23 T@Field_116457_116458) (w@@26 T@FrameType) (r@@23 T@Field_115394_115395) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_55730 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_55730_115394 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_55705_115394 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_55730 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_55730_115394 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_115394_115395) (v_1@@27 T@FrameType) (q@@24 T@Field_116457_116458) (w@@27 T@FrameType) (r@@24 T@Field_55689_55706) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_55730 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_55730_111839 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_55705_111839 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_55730 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_55730_111839 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_115394_115395) (v_1@@28 T@FrameType) (q@@25 T@Field_116457_116458) (w@@28 T@FrameType) (r@@25 T@Field_116457_116458) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_55705_55730 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_55730_55730 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_55705_55730 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_55705_55730 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_55730_55730 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

