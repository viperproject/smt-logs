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
(declare-sort T@Field_9555_53 0)
(declare-sort T@Field_9568_9569 0)
(declare-sort T@Field_15777_15778 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_15790_15795 0)
(declare-sort T@Field_16698_16699 0)
(declare-sort T@Field_16712_16717 0)
(declare-sort T@Field_5708_53 0)
(declare-sort T@Field_5708_9569 0)
(declare-sort T@Field_5735_53 0)
(declare-sort T@Field_5735_9569 0)
(declare-sort T@Field_9555_5709 0)
(declare-sort T@Field_9555_15795 0)
(declare-datatypes ((T@PolymorphicMapType_9516 0)) (((PolymorphicMapType_9516 (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| (Array T@Ref T@Field_9555_53 Real)) (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| (Array T@Ref T@Field_15777_15778 Real)) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| (Array T@Ref T@Field_16698_16699 Real)) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| (Array T@Ref T@Field_9555_5709 Real)) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| (Array T@Ref T@Field_9568_9569 Real)) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| (Array T@Ref T@Field_9555_15795 Real)) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| (Array T@Ref T@Field_5708_53 Real)) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| (Array T@Ref T@Field_5708_9569 Real)) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| (Array T@Ref T@Field_15790_15795 Real)) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| (Array T@Ref T@Field_5735_53 Real)) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| (Array T@Ref T@Field_5735_9569 Real)) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| (Array T@Ref T@Field_16712_16717 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10044 0)) (((PolymorphicMapType_10044 (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (Array T@Ref T@Field_9555_53 Bool)) (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (Array T@Ref T@Field_9568_9569 Bool)) (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (Array T@Ref T@Field_9555_5709 Bool)) (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (Array T@Ref T@Field_9555_15795 Bool)) (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (Array T@Ref T@Field_5708_53 Bool)) (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (Array T@Ref T@Field_5708_9569 Bool)) (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (Array T@Ref T@Field_15777_15778 Bool)) (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (Array T@Ref T@Field_15790_15795 Bool)) (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (Array T@Ref T@Field_5735_53 Bool)) (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (Array T@Ref T@Field_5735_9569 Bool)) (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (Array T@Ref T@Field_16698_16699 Bool)) (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (Array T@Ref T@Field_16712_16717 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9495 0)) (((PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| (Array T@Ref T@Field_9555_53 Bool)) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| (Array T@Ref T@Field_9568_9569 T@Ref)) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| (Array T@Ref T@Field_15777_15778 T@FrameType)) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| (Array T@Ref T@Field_15790_15795 T@PolymorphicMapType_10044)) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| (Array T@Ref T@Field_16698_16699 T@FrameType)) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| (Array T@Ref T@Field_16712_16717 T@PolymorphicMapType_10044)) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| (Array T@Ref T@Field_5708_53 Bool)) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| (Array T@Ref T@Field_5708_9569 T@Ref)) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| (Array T@Ref T@Field_5735_53 Bool)) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| (Array T@Ref T@Field_5735_9569 T@Ref)) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| (Array T@Ref T@Field_9555_5709 T@FrameType)) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| (Array T@Ref T@Field_9555_15795 T@PolymorphicMapType_10044)) ) ) ))
(declare-fun $allocated () T@Field_9555_53)
(declare-fun visited () T@Field_9555_53)
(declare-fun succHeap (T@PolymorphicMapType_9495 T@PolymorphicMapType_9495) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9495 T@PolymorphicMapType_9495) Bool)
(declare-fun state (T@PolymorphicMapType_9495 T@PolymorphicMapType_9516) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9516) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10044)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun read_fields (T@Ref) T@Field_15777_15778)
(declare-fun IsPredicateField_5708_5709 (T@Field_15777_15778) Bool)
(declare-fun acc_graph ((Array T@Ref Bool)) T@Field_16698_16699)
(declare-fun IsPredicateField_5735_5736 (T@Field_16698_16699) Bool)
(declare-fun |read_fields#trigger_5708| (T@PolymorphicMapType_9495 T@Field_15777_15778) Bool)
(declare-fun |read_fields#everUsed_5708| (T@Field_15777_15778) Bool)
(declare-fun |acc_graph#trigger_5735| (T@PolymorphicMapType_9495 T@Field_16698_16699) Bool)
(declare-fun |acc_graph#everUsed_5735| (T@Field_16698_16699) Bool)
(declare-fun |Set#Union_5811| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_5811| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_5811| (T@Ref) (Array T@Ref Bool))
(declare-fun |acc_graph#condqp1| (T@PolymorphicMapType_9495 (Array T@Ref Bool)) Int)
(declare-fun |sk_acc_graph#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun null () T@Ref)
(declare-fun |Set#Card_5811| ((Array T@Ref Bool)) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9495 T@PolymorphicMapType_9495 T@PolymorphicMapType_9516) Bool)
(declare-fun IsPredicateField_9555_29211 (T@Field_9555_5709) Bool)
(declare-fun HasDirectPerm_9555_5709 (T@PolymorphicMapType_9516 T@Ref T@Field_9555_5709) Bool)
(declare-fun PredicateMaskField_9555 (T@Field_9555_5709) T@Field_9555_15795)
(declare-fun HasDirectPerm_5735_5736 (T@PolymorphicMapType_9516 T@Ref T@Field_16698_16699) Bool)
(declare-fun PredicateMaskField_5735 (T@Field_16698_16699) T@Field_16712_16717)
(declare-fun HasDirectPerm_5708_5709 (T@PolymorphicMapType_9516 T@Ref T@Field_15777_15778) Bool)
(declare-fun PredicateMaskField_5708 (T@Field_15777_15778) T@Field_15790_15795)
(declare-fun IsWandField_9555_33663 (T@Field_9555_5709) Bool)
(declare-fun WandMaskField_9555 (T@Field_9555_5709) T@Field_9555_15795)
(declare-fun IsWandField_5735_33306 (T@Field_16698_16699) Bool)
(declare-fun WandMaskField_5735 (T@Field_16698_16699) T@Field_16712_16717)
(declare-fun IsWandField_5708_32949 (T@Field_15777_15778) Bool)
(declare-fun WandMaskField_5708 (T@Field_15777_15778) T@Field_15790_15795)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |read_fields#sm| (T@Ref) T@Field_15790_15795)
(declare-fun |acc_graph#sm| ((Array T@Ref Bool)) T@Field_16712_16717)
(declare-fun dummyHeap () T@PolymorphicMapType_9495)
(declare-fun ZeroMask () T@PolymorphicMapType_9516)
(declare-fun InsidePredicate_16698_16698 (T@Field_16698_16699 T@FrameType T@Field_16698_16699 T@FrameType) Bool)
(declare-fun InsidePredicate_15777_15777 (T@Field_15777_15778 T@FrameType T@Field_15777_15778 T@FrameType) Bool)
(declare-fun InsidePredicate_9555_9555 (T@Field_9555_5709 T@FrameType T@Field_9555_5709 T@FrameType) Bool)
(declare-fun IsPredicateField_5705_3235 (T@Field_9555_53) Bool)
(declare-fun IsWandField_5705_3235 (T@Field_9555_53) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5735_42154 (T@Field_16712_16717) Bool)
(declare-fun IsWandField_5735_42170 (T@Field_16712_16717) Bool)
(declare-fun IsPredicateField_5735_9569 (T@Field_5735_9569) Bool)
(declare-fun IsWandField_5735_9569 (T@Field_5735_9569) Bool)
(declare-fun IsPredicateField_5735_3235 (T@Field_5735_53) Bool)
(declare-fun IsWandField_5735_3235 (T@Field_5735_53) Bool)
(declare-fun IsPredicateField_5708_41491 (T@Field_15790_15795) Bool)
(declare-fun IsWandField_5708_41507 (T@Field_15790_15795) Bool)
(declare-fun IsPredicateField_5708_9569 (T@Field_5708_9569) Bool)
(declare-fun IsWandField_5708_9569 (T@Field_5708_9569) Bool)
(declare-fun IsPredicateField_5708_3235 (T@Field_5708_53) Bool)
(declare-fun IsWandField_5708_3235 (T@Field_5708_53) Bool)
(declare-fun IsPredicateField_5705_40828 (T@Field_9555_15795) Bool)
(declare-fun IsWandField_5705_40844 (T@Field_9555_15795) Bool)
(declare-fun IsPredicateField_5705_9569 (T@Field_9568_9569) Bool)
(declare-fun IsWandField_5705_9569 (T@Field_9568_9569) Bool)
(declare-fun |Set#Equal_5812| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_9555_28273 (T@PolymorphicMapType_9516 T@Ref T@Field_9555_15795) Bool)
(declare-fun HasDirectPerm_9555_9569 (T@PolymorphicMapType_9516 T@Ref T@Field_9568_9569) Bool)
(declare-fun HasDirectPerm_9555_53 (T@PolymorphicMapType_9516 T@Ref T@Field_9555_53) Bool)
(declare-fun HasDirectPerm_5735_27388 (T@PolymorphicMapType_9516 T@Ref T@Field_16712_16717) Bool)
(declare-fun HasDirectPerm_5735_9569 (T@PolymorphicMapType_9516 T@Ref T@Field_5735_9569) Bool)
(declare-fun HasDirectPerm_5735_53 (T@PolymorphicMapType_9516 T@Ref T@Field_5735_53) Bool)
(declare-fun HasDirectPerm_5708_26511 (T@PolymorphicMapType_9516 T@Ref T@Field_15790_15795) Bool)
(declare-fun HasDirectPerm_5708_9569 (T@PolymorphicMapType_9516 T@Ref T@Field_5708_9569) Bool)
(declare-fun HasDirectPerm_5708_53 (T@PolymorphicMapType_9516 T@Ref T@Field_5708_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9516 T@PolymorphicMapType_9516 T@PolymorphicMapType_9516) Bool)
(declare-fun |Set#Difference_5811| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_5811| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_5708_5709 (T@Field_15777_15778) Int)
(declare-fun getPredWandId_5735_5736 (T@Field_16698_16699) Int)
(declare-fun |Set#Empty_5811| () (Array T@Ref Bool))
(declare-fun InsidePredicate_16698_15777 (T@Field_16698_16699 T@FrameType T@Field_15777_15778 T@FrameType) Bool)
(declare-fun InsidePredicate_16698_9555 (T@Field_16698_16699 T@FrameType T@Field_9555_5709 T@FrameType) Bool)
(declare-fun InsidePredicate_15777_16698 (T@Field_15777_15778 T@FrameType T@Field_16698_16699 T@FrameType) Bool)
(declare-fun InsidePredicate_15777_9555 (T@Field_15777_15778 T@FrameType T@Field_9555_5709 T@FrameType) Bool)
(declare-fun InsidePredicate_9555_16698 (T@Field_9555_5709 T@FrameType T@Field_16698_16699 T@FrameType) Bool)
(declare-fun InsidePredicate_9555_15777 (T@Field_9555_5709 T@FrameType T@Field_15777_15778 T@FrameType) Bool)
(assert (distinct $allocated visited)
)
(assert (forall ((Heap0 T@PolymorphicMapType_9495) (Heap1 T@PolymorphicMapType_9495) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9495) (Mask T@PolymorphicMapType_9516) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9495) (Heap1@@0 T@PolymorphicMapType_9495) (Heap2 T@PolymorphicMapType_9495) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16712_16717) ) (!  (not (select (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16698_16699) ) (!  (not (select (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5735_9569) ) (!  (not (select (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5735_53) ) (!  (not (select (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15790_15795) ) (!  (not (select (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15777_15778) ) (!  (not (select (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5708_9569) ) (!  (not (select (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5708_53) ) (!  (not (select (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9555_15795) ) (!  (not (select (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9555_5709) ) (!  (not (select (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_9568_9569) ) (!  (not (select (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_9555_53) ) (!  (not (select (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.291:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((node T@Ref) ) (! (IsPredicateField_5708_5709 (read_fields node))
 :qid |stdinbpl.404:15|
 :skolemid |83|
 :pattern ( (read_fields node))
)))
(assert (forall ((all_nodes (Array T@Ref Bool)) ) (! (IsPredicateField_5735_5736 (acc_graph all_nodes))
 :qid |stdinbpl.458:15|
 :skolemid |89|
 :pattern ( (acc_graph all_nodes))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9495) (node@@0 T@Ref) ) (! (|read_fields#everUsed_5708| (read_fields node@@0))
 :qid |stdinbpl.423:15|
 :skolemid |87|
 :pattern ( (|read_fields#trigger_5708| Heap@@0 (read_fields node@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9495) (all_nodes@@0 (Array T@Ref Bool)) ) (! (|acc_graph#everUsed_5735| (acc_graph all_nodes@@0))
 :qid |stdinbpl.477:15|
 :skolemid |93|
 :pattern ( (|acc_graph#trigger_5735| Heap@@1 (acc_graph all_nodes@@0)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_5811| (|Set#Union_5811| a@@0 b@@0) b@@0) (|Set#Union_5811| a@@0 b@@0))
 :qid |stdinbpl.243:18|
 :skolemid |38|
 :pattern ( (|Set#Union_5811| (|Set#Union_5811| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5811| (|Set#Intersection_5811| a@@1 b@@1) b@@1) (|Set#Intersection_5811| a@@1 b@@1))
 :qid |stdinbpl.247:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_5811| (|Set#Intersection_5811| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_5811| r) o) (= r o))
 :qid |stdinbpl.212:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_5811| r) o))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_9495) (Heap1Heap T@PolymorphicMapType_9495) (all_nodes@@1 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select all_nodes@@1 (|sk_acc_graph#condqp1| (|acc_graph#condqp1| Heap2Heap all_nodes@@1) (|acc_graph#condqp1| Heap1Heap all_nodes@@1))) (< NoPerm FullPerm))  (and (select all_nodes@@1 (|sk_acc_graph#condqp1| (|acc_graph#condqp1| Heap2Heap all_nodes@@1) (|acc_graph#condqp1| Heap1Heap all_nodes@@1))) (< NoPerm FullPerm))) (=> (and (select all_nodes@@1 (|sk_acc_graph#condqp1| (|acc_graph#condqp1| Heap2Heap all_nodes@@1) (|acc_graph#condqp1| Heap1Heap all_nodes@@1))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap2Heap) null (read_fields (|sk_acc_graph#condqp1| (|acc_graph#condqp1| Heap2Heap all_nodes@@1) (|acc_graph#condqp1| Heap1Heap all_nodes@@1)))) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap1Heap) null (read_fields (|sk_acc_graph#condqp1| (|acc_graph#condqp1| Heap2Heap all_nodes@@1) (|acc_graph#condqp1| Heap1Heap all_nodes@@1))))))) (= (|acc_graph#condqp1| Heap2Heap all_nodes@@1) (|acc_graph#condqp1| Heap1Heap all_nodes@@1)))
 :qid |stdinbpl.488:15|
 :skolemid |94|
 :pattern ( (|acc_graph#condqp1| Heap2Heap all_nodes@@1) (|acc_graph#condqp1| Heap1Heap all_nodes@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_5811| (|Set#Union_5811| a@@2 b@@2)) (|Set#Card_5811| (|Set#Intersection_5811| a@@2 b@@2))) (+ (|Set#Card_5811| a@@2) (|Set#Card_5811| b@@2)))
 :qid |stdinbpl.251:18|
 :skolemid |42|
 :pattern ( (|Set#Card_5811| (|Set#Union_5811| a@@2 b@@2)))
 :pattern ( (|Set#Card_5811| (|Set#Intersection_5811| a@@2 b@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9495) (ExhaleHeap T@PolymorphicMapType_9495) (Mask@@0 T@PolymorphicMapType_9516) (pm_f_5 T@Field_9555_5709) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9555_5709 Mask@@0 null pm_f_5) (IsPredicateField_9555_29211 pm_f_5)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_9555_53) ) (!  (=> (select (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5 f_16) (= (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@2) o2_5 f_16) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_9568_9569) ) (!  (=> (select (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@2) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_9555_5709) ) (!  (=> (select (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@2) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_9555_15795) ) (!  (=> (select (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_5708_53) ) (!  (=> (select (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@2) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_5708_9569) ) (!  (=> (select (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@2) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_15777_15778) ) (!  (=> (select (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@2) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_15790_15795) ) (!  (=> (select (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@2) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_5735_53) ) (!  (=> (select (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@2) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_5735_9569) ) (!  (=> (select (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@2) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap) o2_5@@8 f_16@@8))
))) (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_16698_16699) ) (!  (=> (select (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@2) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap) o2_5@@9 f_16@@9))
))) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_16712_16717) ) (!  (=> (select (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@2) null (PredicateMaskField_9555 pm_f_5))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@2) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap) o2_5@@10 f_16@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_9555_29211 pm_f_5))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9495) (ExhaleHeap@@0 T@PolymorphicMapType_9495) (Mask@@1 T@PolymorphicMapType_9516) (pm_f_5@@0 T@Field_16698_16699) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5735_5736 Mask@@1 null pm_f_5@@0) (IsPredicateField_5735_5736 pm_f_5@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_9555_53) ) (!  (=> (select (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@3) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@11 f_16@@11))
)) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_9568_9569) ) (!  (=> (select (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@3) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_9555_5709) ) (!  (=> (select (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@3) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_9555_15795) ) (!  (=> (select (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@3) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_5708_53) ) (!  (=> (select (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@3) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_5708_9569) ) (!  (=> (select (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@3) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_15777_15778) ) (!  (=> (select (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@3) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_15790_15795) ) (!  (=> (select (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@3) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@18 f_16@@18))
))) (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_5735_53) ) (!  (=> (select (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@3) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@19 f_16@@19))
))) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_5735_9569) ) (!  (=> (select (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@3) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_16698_16699) ) (!  (=> (select (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@3) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_16712_16717) ) (!  (=> (select (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) null (PredicateMaskField_5735 pm_f_5@@0))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@3) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@0) o2_5@@22 f_16@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5735_5736 pm_f_5@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9495) (ExhaleHeap@@1 T@PolymorphicMapType_9495) (Mask@@2 T@PolymorphicMapType_9516) (pm_f_5@@1 T@Field_15777_15778) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5708_5709 Mask@@2 null pm_f_5@@1) (IsPredicateField_5708_5709 pm_f_5@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_9555_53) ) (!  (=> (select (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@4) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@23 f_16@@23))
)) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_9568_9569) ) (!  (=> (select (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@4) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_9555_5709) ) (!  (=> (select (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@4) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_9555_15795) ) (!  (=> (select (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@4) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_5708_53) ) (!  (=> (select (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@4) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_5708_9569) ) (!  (=> (select (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@4) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@28 f_16@@28))
))) (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_15777_15778) ) (!  (=> (select (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@4) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@29 f_16@@29))
))) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_15790_15795) ) (!  (=> (select (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_5735_53) ) (!  (=> (select (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@4) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_5735_9569) ) (!  (=> (select (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@4) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_16698_16699) ) (!  (=> (select (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@4) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_16712_16717) ) (!  (=> (select (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@4) null (PredicateMaskField_5708 pm_f_5@@1))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@4) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@1) o2_5@@34 f_16@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5708_5709 pm_f_5@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9495) (ExhaleHeap@@2 T@PolymorphicMapType_9495) (Mask@@3 T@PolymorphicMapType_9516) (pm_f_5@@2 T@Field_9555_5709) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9555_5709 Mask@@3 null pm_f_5@@2) (IsWandField_9555_33663 pm_f_5@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_9555_53) ) (!  (=> (select (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@5) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@35 f_16@@35))
)) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_9568_9569) ) (!  (=> (select (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@5) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_9555_5709) ) (!  (=> (select (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@5) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_9555_15795) ) (!  (=> (select (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@38 f_16@@38))
))) (forall ((o2_5@@39 T@Ref) (f_16@@39 T@Field_5708_53) ) (!  (=> (select (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@39 f_16@@39) (= (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@5) o2_5@@39 f_16@@39) (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@39 f_16@@39)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@39 f_16@@39))
))) (forall ((o2_5@@40 T@Ref) (f_16@@40 T@Field_5708_9569) ) (!  (=> (select (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@40 f_16@@40) (= (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@5) o2_5@@40 f_16@@40) (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@40 f_16@@40)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@40 f_16@@40))
))) (forall ((o2_5@@41 T@Ref) (f_16@@41 T@Field_15777_15778) ) (!  (=> (select (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@41 f_16@@41) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@5) o2_5@@41 f_16@@41) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@41 f_16@@41)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@41 f_16@@41))
))) (forall ((o2_5@@42 T@Ref) (f_16@@42 T@Field_15790_15795) ) (!  (=> (select (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@42 f_16@@42) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@5) o2_5@@42 f_16@@42) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@42 f_16@@42)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@42 f_16@@42))
))) (forall ((o2_5@@43 T@Ref) (f_16@@43 T@Field_5735_53) ) (!  (=> (select (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@43 f_16@@43) (= (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@5) o2_5@@43 f_16@@43) (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@43 f_16@@43)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@43 f_16@@43))
))) (forall ((o2_5@@44 T@Ref) (f_16@@44 T@Field_5735_9569) ) (!  (=> (select (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@44 f_16@@44) (= (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@5) o2_5@@44 f_16@@44) (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@44 f_16@@44)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@44 f_16@@44))
))) (forall ((o2_5@@45 T@Ref) (f_16@@45 T@Field_16698_16699) ) (!  (=> (select (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@45 f_16@@45) (= (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@5) o2_5@@45 f_16@@45) (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@45 f_16@@45)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@45 f_16@@45))
))) (forall ((o2_5@@46 T@Ref) (f_16@@46 T@Field_16712_16717) ) (!  (=> (select (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@5) null (WandMaskField_9555 pm_f_5@@2))) o2_5@@46 f_16@@46) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@5) o2_5@@46 f_16@@46) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@46 f_16@@46)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@2) o2_5@@46 f_16@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_9555_33663 pm_f_5@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9495) (ExhaleHeap@@3 T@PolymorphicMapType_9495) (Mask@@4 T@PolymorphicMapType_9516) (pm_f_5@@3 T@Field_16698_16699) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5735_5736 Mask@@4 null pm_f_5@@3) (IsWandField_5735_33306 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@47 T@Ref) (f_16@@47 T@Field_9555_53) ) (!  (=> (select (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@47 f_16@@47) (= (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@6) o2_5@@47 f_16@@47) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@47 f_16@@47)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@47 f_16@@47))
)) (forall ((o2_5@@48 T@Ref) (f_16@@48 T@Field_9568_9569) ) (!  (=> (select (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@48 f_16@@48) (= (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@6) o2_5@@48 f_16@@48) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@48 f_16@@48)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@48 f_16@@48))
))) (forall ((o2_5@@49 T@Ref) (f_16@@49 T@Field_9555_5709) ) (!  (=> (select (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@49 f_16@@49) (= (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@6) o2_5@@49 f_16@@49) (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@49 f_16@@49)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@49 f_16@@49))
))) (forall ((o2_5@@50 T@Ref) (f_16@@50 T@Field_9555_15795) ) (!  (=> (select (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@50 f_16@@50) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@6) o2_5@@50 f_16@@50) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@50 f_16@@50)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@50 f_16@@50))
))) (forall ((o2_5@@51 T@Ref) (f_16@@51 T@Field_5708_53) ) (!  (=> (select (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@51 f_16@@51) (= (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@6) o2_5@@51 f_16@@51) (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@51 f_16@@51)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@51 f_16@@51))
))) (forall ((o2_5@@52 T@Ref) (f_16@@52 T@Field_5708_9569) ) (!  (=> (select (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@52 f_16@@52) (= (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@6) o2_5@@52 f_16@@52) (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@52 f_16@@52)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@52 f_16@@52))
))) (forall ((o2_5@@53 T@Ref) (f_16@@53 T@Field_15777_15778) ) (!  (=> (select (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@53 f_16@@53) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@6) o2_5@@53 f_16@@53) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@53 f_16@@53)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@53 f_16@@53))
))) (forall ((o2_5@@54 T@Ref) (f_16@@54 T@Field_15790_15795) ) (!  (=> (select (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@54 f_16@@54) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@6) o2_5@@54 f_16@@54) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@54 f_16@@54)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@54 f_16@@54))
))) (forall ((o2_5@@55 T@Ref) (f_16@@55 T@Field_5735_53) ) (!  (=> (select (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@55 f_16@@55) (= (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@6) o2_5@@55 f_16@@55) (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@55 f_16@@55)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@55 f_16@@55))
))) (forall ((o2_5@@56 T@Ref) (f_16@@56 T@Field_5735_9569) ) (!  (=> (select (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@56 f_16@@56) (= (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@6) o2_5@@56 f_16@@56) (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@56 f_16@@56)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@56 f_16@@56))
))) (forall ((o2_5@@57 T@Ref) (f_16@@57 T@Field_16698_16699) ) (!  (=> (select (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@57 f_16@@57) (= (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@6) o2_5@@57 f_16@@57) (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@57 f_16@@57)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@57 f_16@@57))
))) (forall ((o2_5@@58 T@Ref) (f_16@@58 T@Field_16712_16717) ) (!  (=> (select (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) null (WandMaskField_5735 pm_f_5@@3))) o2_5@@58 f_16@@58) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@6) o2_5@@58 f_16@@58) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@58 f_16@@58)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@3) o2_5@@58 f_16@@58))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_5735_33306 pm_f_5@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9495) (ExhaleHeap@@4 T@PolymorphicMapType_9495) (Mask@@5 T@PolymorphicMapType_9516) (pm_f_5@@4 T@Field_15777_15778) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5708_5709 Mask@@5 null pm_f_5@@4) (IsWandField_5708_32949 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_16@@59 T@Field_9555_53) ) (!  (=> (select (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@59 f_16@@59) (= (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@7) o2_5@@59 f_16@@59) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@59 f_16@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@59 f_16@@59))
)) (forall ((o2_5@@60 T@Ref) (f_16@@60 T@Field_9568_9569) ) (!  (=> (select (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@60 f_16@@60) (= (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@7) o2_5@@60 f_16@@60) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@60 f_16@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@60 f_16@@60))
))) (forall ((o2_5@@61 T@Ref) (f_16@@61 T@Field_9555_5709) ) (!  (=> (select (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@61 f_16@@61) (= (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@7) o2_5@@61 f_16@@61) (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@61 f_16@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@61 f_16@@61))
))) (forall ((o2_5@@62 T@Ref) (f_16@@62 T@Field_9555_15795) ) (!  (=> (select (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@62 f_16@@62) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@7) o2_5@@62 f_16@@62) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@62 f_16@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@62 f_16@@62))
))) (forall ((o2_5@@63 T@Ref) (f_16@@63 T@Field_5708_53) ) (!  (=> (select (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@63 f_16@@63) (= (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@7) o2_5@@63 f_16@@63) (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@63 f_16@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@63 f_16@@63))
))) (forall ((o2_5@@64 T@Ref) (f_16@@64 T@Field_5708_9569) ) (!  (=> (select (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@64 f_16@@64) (= (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@7) o2_5@@64 f_16@@64) (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@64 f_16@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@64 f_16@@64))
))) (forall ((o2_5@@65 T@Ref) (f_16@@65 T@Field_15777_15778) ) (!  (=> (select (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@65 f_16@@65) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@7) o2_5@@65 f_16@@65) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@65 f_16@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@65 f_16@@65))
))) (forall ((o2_5@@66 T@Ref) (f_16@@66 T@Field_15790_15795) ) (!  (=> (select (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@66 f_16@@66) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) o2_5@@66 f_16@@66) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@66 f_16@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@66 f_16@@66))
))) (forall ((o2_5@@67 T@Ref) (f_16@@67 T@Field_5735_53) ) (!  (=> (select (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@67 f_16@@67) (= (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@7) o2_5@@67 f_16@@67) (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@67 f_16@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@67 f_16@@67))
))) (forall ((o2_5@@68 T@Ref) (f_16@@68 T@Field_5735_9569) ) (!  (=> (select (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@68 f_16@@68) (= (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@7) o2_5@@68 f_16@@68) (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@68 f_16@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@68 f_16@@68))
))) (forall ((o2_5@@69 T@Ref) (f_16@@69 T@Field_16698_16699) ) (!  (=> (select (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@69 f_16@@69) (= (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@7) o2_5@@69 f_16@@69) (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@69 f_16@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@69 f_16@@69))
))) (forall ((o2_5@@70 T@Ref) (f_16@@70 T@Field_16712_16717) ) (!  (=> (select (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@7) null (WandMaskField_5708 pm_f_5@@4))) o2_5@@70 f_16@@70) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@7) o2_5@@70 f_16@@70) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@70 f_16@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@4) o2_5@@70 f_16@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_5708_32949 pm_f_5@@4))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.294:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9495) (ExhaleHeap@@5 T@PolymorphicMapType_9495) (Mask@@6 T@PolymorphicMapType_9516) (pm_f_5@@5 T@Field_9555_5709) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9555_5709 Mask@@6 null pm_f_5@@5) (IsPredicateField_9555_29211 pm_f_5@@5)) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@8) null (PredicateMaskField_9555 pm_f_5@@5)) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@5) null (PredicateMaskField_9555 pm_f_5@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsPredicateField_9555_29211 pm_f_5@@5) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@5) null (PredicateMaskField_9555 pm_f_5@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9495) (ExhaleHeap@@6 T@PolymorphicMapType_9495) (Mask@@7 T@PolymorphicMapType_9516) (pm_f_5@@6 T@Field_16698_16699) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5735_5736 Mask@@7 null pm_f_5@@6) (IsPredicateField_5735_5736 pm_f_5@@6)) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@9) null (PredicateMaskField_5735 pm_f_5@@6)) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@6) null (PredicateMaskField_5735 pm_f_5@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsPredicateField_5735_5736 pm_f_5@@6) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@6) null (PredicateMaskField_5735 pm_f_5@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9495) (ExhaleHeap@@7 T@PolymorphicMapType_9495) (Mask@@8 T@PolymorphicMapType_9516) (pm_f_5@@7 T@Field_15777_15778) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_5708_5709 Mask@@8 null pm_f_5@@7) (IsPredicateField_5708_5709 pm_f_5@@7)) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@10) null (PredicateMaskField_5708 pm_f_5@@7)) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@7) null (PredicateMaskField_5708 pm_f_5@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_5708_5709 pm_f_5@@7) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@7) null (PredicateMaskField_5708 pm_f_5@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9495) (ExhaleHeap@@8 T@PolymorphicMapType_9495) (Mask@@9 T@PolymorphicMapType_9516) (pm_f_5@@8 T@Field_9555_5709) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_9555_5709 Mask@@9 null pm_f_5@@8) (IsWandField_9555_33663 pm_f_5@@8)) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@11) null (WandMaskField_9555 pm_f_5@@8)) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@8) null (WandMaskField_9555 pm_f_5@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_9555_33663 pm_f_5@@8) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@8) null (WandMaskField_9555 pm_f_5@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9495) (ExhaleHeap@@9 T@PolymorphicMapType_9495) (Mask@@10 T@PolymorphicMapType_9516) (pm_f_5@@9 T@Field_16698_16699) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_5735_5736 Mask@@10 null pm_f_5@@9) (IsWandField_5735_33306 pm_f_5@@9)) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@12) null (WandMaskField_5735 pm_f_5@@9)) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@9) null (WandMaskField_5735 pm_f_5@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_5735_33306 pm_f_5@@9) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@9) null (WandMaskField_5735 pm_f_5@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9495) (ExhaleHeap@@10 T@PolymorphicMapType_9495) (Mask@@11 T@PolymorphicMapType_9516) (pm_f_5@@10 T@Field_15777_15778) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_5708_5709 Mask@@11 null pm_f_5@@10) (IsWandField_5708_32949 pm_f_5@@10)) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@13) null (WandMaskField_5708 pm_f_5@@10)) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@10) null (WandMaskField_5708 pm_f_5@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_5708_32949 pm_f_5@@10) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@10) null (WandMaskField_5708 pm_f_5@@10)))
)))
(assert (forall ((node@@1 T@Ref) (node2 T@Ref) ) (!  (=> (= (read_fields node@@1) (read_fields node2)) (= node@@1 node2))
 :qid |stdinbpl.414:15|
 :skolemid |85|
 :pattern ( (read_fields node@@1) (read_fields node2))
)))
(assert (forall ((node@@2 T@Ref) (node2@@0 T@Ref) ) (!  (=> (= (|read_fields#sm| node@@2) (|read_fields#sm| node2@@0)) (= node@@2 node2@@0))
 :qid |stdinbpl.418:15|
 :skolemid |86|
 :pattern ( (|read_fields#sm| node@@2) (|read_fields#sm| node2@@0))
)))
(assert (forall ((all_nodes@@2 (Array T@Ref Bool)) (all_nodes2 (Array T@Ref Bool)) ) (!  (=> (= (acc_graph all_nodes@@2) (acc_graph all_nodes2)) (= all_nodes@@2 all_nodes2))
 :qid |stdinbpl.468:15|
 :skolemid |91|
 :pattern ( (acc_graph all_nodes@@2) (acc_graph all_nodes2))
)))
(assert (forall ((all_nodes@@3 (Array T@Ref Bool)) (all_nodes2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|acc_graph#sm| all_nodes@@3) (|acc_graph#sm| all_nodes2@@0)) (= all_nodes@@3 all_nodes2@@0))
 :qid |stdinbpl.472:15|
 :skolemid |92|
 :pattern ( (|acc_graph#sm| all_nodes@@3) (|acc_graph#sm| all_nodes2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9495) (ExhaleHeap@@11 T@PolymorphicMapType_9495) (Mask@@12 T@PolymorphicMapType_9516) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@14) o_12 $allocated) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@11) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@11) o_12 $allocated))
)))
(assert (forall ((p T@Field_16698_16699) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16698_16698 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16698_16698 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_15777_15778) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_15777_15777 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15777_15777 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_9555_5709) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9555_9555 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9555_9555 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_5705_3235 visited)))
(assert  (not (IsWandField_5705_3235 visited)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9495) (ExhaleHeap@@12 T@PolymorphicMapType_9495) (Mask@@13 T@PolymorphicMapType_9516) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@15 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9516) (o_2@@11 T@Ref) (f_4@@11 T@Field_16712_16717) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5735_42154 f_4@@11))) (not (IsWandField_5735_42170 f_4@@11))) (<= (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9516) (o_2@@12 T@Ref) (f_4@@12 T@Field_5735_9569) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5735_9569 f_4@@12))) (not (IsWandField_5735_9569 f_4@@12))) (<= (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9516) (o_2@@13 T@Ref) (f_4@@13 T@Field_16698_16699) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5735_5736 f_4@@13))) (not (IsWandField_5735_33306 f_4@@13))) (<= (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9516) (o_2@@14 T@Ref) (f_4@@14 T@Field_5735_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5735_3235 f_4@@14))) (not (IsWandField_5735_3235 f_4@@14))) (<= (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9516) (o_2@@15 T@Ref) (f_4@@15 T@Field_15790_15795) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5708_41491 f_4@@15))) (not (IsWandField_5708_41507 f_4@@15))) (<= (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9516) (o_2@@16 T@Ref) (f_4@@16 T@Field_5708_9569) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5708_9569 f_4@@16))) (not (IsWandField_5708_9569 f_4@@16))) (<= (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9516) (o_2@@17 T@Ref) (f_4@@17 T@Field_15777_15778) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5708_5709 f_4@@17))) (not (IsWandField_5708_32949 f_4@@17))) (<= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9516) (o_2@@18 T@Ref) (f_4@@18 T@Field_5708_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5708_3235 f_4@@18))) (not (IsWandField_5708_3235 f_4@@18))) (<= (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9516) (o_2@@19 T@Ref) (f_4@@19 T@Field_9555_15795) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@@22) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5705_40828 f_4@@19))) (not (IsWandField_5705_40844 f_4@@19))) (<= (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@@22) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@@22) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9516) (o_2@@20 T@Ref) (f_4@@20 T@Field_9568_9569) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@@23) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5705_9569 f_4@@20))) (not (IsWandField_5705_9569 f_4@@20))) (<= (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@@23) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@@23) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9516) (o_2@@21 T@Ref) (f_4@@21 T@Field_9555_5709) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@@24) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_9555_29211 f_4@@21))) (not (IsWandField_9555_33663 f_4@@21))) (<= (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@@24) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@@24) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9516) (o_2@@22 T@Ref) (f_4@@22 T@Field_9555_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@@25) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5705_3235 f_4@@22))) (not (IsWandField_5705_3235 f_4@@22))) (<= (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@@25) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@@25) o_2@@22 f_4@@22))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_5812| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.276:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.275:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_5812| a@@4 b@@3))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9516) (o_2@@23 T@Ref) (f_4@@23 T@Field_9555_15795) ) (! (= (HasDirectPerm_9555_28273 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9555_28273 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9516) (o_2@@24 T@Ref) (f_4@@24 T@Field_9568_9569) ) (! (= (HasDirectPerm_9555_9569 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9555_9569 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9516) (o_2@@25 T@Ref) (f_4@@25 T@Field_9555_53) ) (! (= (HasDirectPerm_9555_53 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9555_53 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9516) (o_2@@26 T@Ref) (f_4@@26 T@Field_9555_5709) ) (! (= (HasDirectPerm_9555_5709 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9555_5709 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9516) (o_2@@27 T@Ref) (f_4@@27 T@Field_16712_16717) ) (! (= (HasDirectPerm_5735_27388 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5735_27388 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9516) (o_2@@28 T@Ref) (f_4@@28 T@Field_5735_9569) ) (! (= (HasDirectPerm_5735_9569 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5735_9569 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9516) (o_2@@29 T@Ref) (f_4@@29 T@Field_5735_53) ) (! (= (HasDirectPerm_5735_53 Mask@@32 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@@32) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5735_53 Mask@@32 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9516) (o_2@@30 T@Ref) (f_4@@30 T@Field_16698_16699) ) (! (= (HasDirectPerm_5735_5736 Mask@@33 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@@33) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5735_5736 Mask@@33 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9516) (o_2@@31 T@Ref) (f_4@@31 T@Field_15790_15795) ) (! (= (HasDirectPerm_5708_26511 Mask@@34 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@@34) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5708_26511 Mask@@34 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9516) (o_2@@32 T@Ref) (f_4@@32 T@Field_5708_9569) ) (! (= (HasDirectPerm_5708_9569 Mask@@35 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@@35) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5708_9569 Mask@@35 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9516) (o_2@@33 T@Ref) (f_4@@33 T@Field_5708_53) ) (! (= (HasDirectPerm_5708_53 Mask@@36 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@@36) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5708_53 Mask@@36 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9516) (o_2@@34 T@Ref) (f_4@@34 T@Field_15777_15778) ) (! (= (HasDirectPerm_5708_5709 Mask@@37 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@@37) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5708_5709 Mask@@37 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9495) (ExhaleHeap@@13 T@PolymorphicMapType_9495) (Mask@@38 T@PolymorphicMapType_9516) (o_12@@0 T@Ref) (f_16@@71 T@Field_9555_15795) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_9555_28273 Mask@@38 o_12@@0 f_16@@71) (= (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@16) o_12@@0 f_16@@71) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@13) o_12@@0 f_16@@71))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| ExhaleHeap@@13) o_12@@0 f_16@@71))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9495) (ExhaleHeap@@14 T@PolymorphicMapType_9495) (Mask@@39 T@PolymorphicMapType_9516) (o_12@@1 T@Ref) (f_16@@72 T@Field_9568_9569) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_9555_9569 Mask@@39 o_12@@1 f_16@@72) (= (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@17) o_12@@1 f_16@@72) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@14) o_12@@1 f_16@@72))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| ExhaleHeap@@14) o_12@@1 f_16@@72))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9495) (ExhaleHeap@@15 T@PolymorphicMapType_9495) (Mask@@40 T@PolymorphicMapType_9516) (o_12@@2 T@Ref) (f_16@@73 T@Field_9555_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_9555_53 Mask@@40 o_12@@2 f_16@@73) (= (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@18) o_12@@2 f_16@@73) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@15) o_12@@2 f_16@@73))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| ExhaleHeap@@15) o_12@@2 f_16@@73))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9495) (ExhaleHeap@@16 T@PolymorphicMapType_9495) (Mask@@41 T@PolymorphicMapType_9516) (o_12@@3 T@Ref) (f_16@@74 T@Field_9555_5709) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_9555_5709 Mask@@41 o_12@@3 f_16@@74) (= (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@19) o_12@@3 f_16@@74) (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@16) o_12@@3 f_16@@74))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| ExhaleHeap@@16) o_12@@3 f_16@@74))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9495) (ExhaleHeap@@17 T@PolymorphicMapType_9495) (Mask@@42 T@PolymorphicMapType_9516) (o_12@@4 T@Ref) (f_16@@75 T@Field_16712_16717) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_5735_27388 Mask@@42 o_12@@4 f_16@@75) (= (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@20) o_12@@4 f_16@@75) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@17) o_12@@4 f_16@@75))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| ExhaleHeap@@17) o_12@@4 f_16@@75))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9495) (ExhaleHeap@@18 T@PolymorphicMapType_9495) (Mask@@43 T@PolymorphicMapType_9516) (o_12@@5 T@Ref) (f_16@@76 T@Field_5735_9569) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_5735_9569 Mask@@43 o_12@@5 f_16@@76) (= (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@21) o_12@@5 f_16@@76) (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@18) o_12@@5 f_16@@76))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| ExhaleHeap@@18) o_12@@5 f_16@@76))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9495) (ExhaleHeap@@19 T@PolymorphicMapType_9495) (Mask@@44 T@PolymorphicMapType_9516) (o_12@@6 T@Ref) (f_16@@77 T@Field_5735_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@44) (=> (HasDirectPerm_5735_53 Mask@@44 o_12@@6 f_16@@77) (= (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@22) o_12@@6 f_16@@77) (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@19) o_12@@6 f_16@@77))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@44) (select (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| ExhaleHeap@@19) o_12@@6 f_16@@77))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9495) (ExhaleHeap@@20 T@PolymorphicMapType_9495) (Mask@@45 T@PolymorphicMapType_9516) (o_12@@7 T@Ref) (f_16@@78 T@Field_16698_16699) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@45) (=> (HasDirectPerm_5735_5736 Mask@@45 o_12@@7 f_16@@78) (= (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@23) o_12@@7 f_16@@78) (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@20) o_12@@7 f_16@@78))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@45) (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| ExhaleHeap@@20) o_12@@7 f_16@@78))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9495) (ExhaleHeap@@21 T@PolymorphicMapType_9495) (Mask@@46 T@PolymorphicMapType_9516) (o_12@@8 T@Ref) (f_16@@79 T@Field_15790_15795) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@46) (=> (HasDirectPerm_5708_26511 Mask@@46 o_12@@8 f_16@@79) (= (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@24) o_12@@8 f_16@@79) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@21) o_12@@8 f_16@@79))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@46) (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| ExhaleHeap@@21) o_12@@8 f_16@@79))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9495) (ExhaleHeap@@22 T@PolymorphicMapType_9495) (Mask@@47 T@PolymorphicMapType_9516) (o_12@@9 T@Ref) (f_16@@80 T@Field_5708_9569) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@47) (=> (HasDirectPerm_5708_9569 Mask@@47 o_12@@9 f_16@@80) (= (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@25) o_12@@9 f_16@@80) (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@22) o_12@@9 f_16@@80))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@47) (select (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| ExhaleHeap@@22) o_12@@9 f_16@@80))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9495) (ExhaleHeap@@23 T@PolymorphicMapType_9495) (Mask@@48 T@PolymorphicMapType_9516) (o_12@@10 T@Ref) (f_16@@81 T@Field_5708_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@48) (=> (HasDirectPerm_5708_53 Mask@@48 o_12@@10 f_16@@81) (= (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@26) o_12@@10 f_16@@81) (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@23) o_12@@10 f_16@@81))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@48) (select (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| ExhaleHeap@@23) o_12@@10 f_16@@81))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9495) (ExhaleHeap@@24 T@PolymorphicMapType_9495) (Mask@@49 T@PolymorphicMapType_9516) (o_12@@11 T@Ref) (f_16@@82 T@Field_15777_15778) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@49) (=> (HasDirectPerm_5708_5709 Mask@@49 o_12@@11 f_16@@82) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@27) o_12@@11 f_16@@82) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@24) o_12@@11 f_16@@82))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@49) (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| ExhaleHeap@@24) o_12@@11 f_16@@82))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_16712_16717) ) (! (= (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_5735_9569) ) (! (= (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_16698_16699) ) (! (= (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_5735_53) ) (! (= (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_15790_15795) ) (! (= (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_5708_9569) ) (! (= (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_15777_15778) ) (! (= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_5708_53) ) (! (= (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_9555_15795) ) (! (= (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_9568_9569) ) (! (= (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_9555_5709) ) (! (= (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_9555_53) ) (! (= (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9516) (SummandMask1 T@PolymorphicMapType_9516) (SummandMask2 T@PolymorphicMapType_9516) (o_2@@47 T@Ref) (f_4@@47 T@Field_16712_16717) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9516) (SummandMask1@@0 T@PolymorphicMapType_9516) (SummandMask2@@0 T@PolymorphicMapType_9516) (o_2@@48 T@Ref) (f_4@@48 T@Field_5735_9569) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9516) (SummandMask1@@1 T@PolymorphicMapType_9516) (SummandMask2@@1 T@PolymorphicMapType_9516) (o_2@@49 T@Ref) (f_4@@49 T@Field_16698_16699) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9516) (SummandMask1@@2 T@PolymorphicMapType_9516) (SummandMask2@@2 T@PolymorphicMapType_9516) (o_2@@50 T@Ref) (f_4@@50 T@Field_5735_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9516) (SummandMask1@@3 T@PolymorphicMapType_9516) (SummandMask2@@3 T@PolymorphicMapType_9516) (o_2@@51 T@Ref) (f_4@@51 T@Field_15790_15795) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9516) (SummandMask1@@4 T@PolymorphicMapType_9516) (SummandMask2@@4 T@PolymorphicMapType_9516) (o_2@@52 T@Ref) (f_4@@52 T@Field_5708_9569) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9516) (SummandMask1@@5 T@PolymorphicMapType_9516) (SummandMask2@@5 T@PolymorphicMapType_9516) (o_2@@53 T@Ref) (f_4@@53 T@Field_15777_15778) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9516) (SummandMask1@@6 T@PolymorphicMapType_9516) (SummandMask2@@6 T@PolymorphicMapType_9516) (o_2@@54 T@Ref) (f_4@@54 T@Field_5708_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9516) (SummandMask1@@7 T@PolymorphicMapType_9516) (SummandMask2@@7 T@PolymorphicMapType_9516) (o_2@@55 T@Ref) (f_4@@55 T@Field_9555_15795) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9516) (SummandMask1@@8 T@PolymorphicMapType_9516) (SummandMask2@@8 T@PolymorphicMapType_9516) (o_2@@56 T@Ref) (f_4@@56 T@Field_9568_9569) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9516) (SummandMask1@@9 T@PolymorphicMapType_9516) (SummandMask2@@9 T@PolymorphicMapType_9516) (o_2@@57 T@Ref) (f_4@@57 T@Field_9555_5709) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9516) (SummandMask1@@10 T@PolymorphicMapType_9516) (SummandMask2@@10 T@PolymorphicMapType_9516) (o_2@@58 T@Ref) (f_4@@58 T@Field_9555_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_5811| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.240:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_5811| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_5811| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_5811| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_5811| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.255:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_5811| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_5811| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_5812| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.277:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_5812| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_5811| a@@8 x) y))
 :qid |stdinbpl.220:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_5811| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_5811| a@@9 b@@7) y@@0))
 :qid |stdinbpl.230:18|
 :skolemid |35|
 :pattern ( (|Set#Union_5811| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_5811| a@@10 b@@8) y@@1))
 :qid |stdinbpl.232:18|
 :skolemid |36|
 :pattern ( (|Set#Union_5811| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_5811| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.216:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_5811| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_5811| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.257:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_5811| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_5811| (|Set#Difference_5811| a@@13 b@@10)) (|Set#Card_5811| (|Set#Difference_5811| b@@10 a@@13))) (|Set#Card_5811| (|Set#Intersection_5811| a@@13 b@@10))) (|Set#Card_5811| (|Set#Union_5811| a@@13 b@@10))) (= (|Set#Card_5811| (|Set#Difference_5811| a@@13 b@@10)) (- (|Set#Card_5811| a@@13) (|Set#Card_5811| (|Set#Intersection_5811| a@@13 b@@10)))))
 :qid |stdinbpl.259:18|
 :skolemid |45|
 :pattern ( (|Set#Card_5811| (|Set#Difference_5811| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_5811| s))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Set#Card_5811| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_5811| a@@14 x@@1) x@@1)
 :qid |stdinbpl.218:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_5811| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_5811| (|Set#UnionOne_5811| a@@15 x@@2)) (|Set#Card_5811| a@@15)))
 :qid |stdinbpl.222:18|
 :skolemid |32|
 :pattern ( (|Set#Card_5811| (|Set#UnionOne_5811| a@@15 x@@2)))
)))
(assert (forall ((node@@3 T@Ref) ) (! (= (getPredWandId_5708_5709 (read_fields node@@3)) 0)
 :qid |stdinbpl.408:15|
 :skolemid |84|
 :pattern ( (read_fields node@@3))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_5811| (|Set#Singleton_5811| r@@0)) 1)
 :qid |stdinbpl.213:18|
 :skolemid |28|
 :pattern ( (|Set#Card_5811| (|Set#Singleton_5811| r@@0)))
)))
(assert (forall ((all_nodes@@4 (Array T@Ref Bool)) ) (! (= (getPredWandId_5735_5736 (acc_graph all_nodes@@4)) 1)
 :qid |stdinbpl.462:15|
 :skolemid |90|
 :pattern ( (acc_graph all_nodes@@4))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_5811| r@@1) r@@1)
 :qid |stdinbpl.211:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_5811| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_5811| a@@16 (|Set#Union_5811| a@@16 b@@11)) (|Set#Union_5811| a@@16 b@@11))
 :qid |stdinbpl.245:18|
 :skolemid |39|
 :pattern ( (|Set#Union_5811| a@@16 (|Set#Union_5811| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5811| a@@17 (|Set#Intersection_5811| a@@17 b@@12)) (|Set#Intersection_5811| a@@17 b@@12))
 :qid |stdinbpl.249:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_5811| a@@17 (|Set#Intersection_5811| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_5811| o@@4))
 :qid |stdinbpl.205:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_5811| o@@4))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9495) (o_11 T@Ref) (f_17 T@Field_16712_16717) (v T@PolymorphicMapType_10044) ) (! (succHeap Heap@@28 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@28) (store (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@28) o_11 f_17 v) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@28) (store (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@28) o_11 f_17 v) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@28) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9495) (o_11@@0 T@Ref) (f_17@@0 T@Field_16698_16699) (v@@0 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@29) (store (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@29) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@29) (store (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@29) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@29) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9495) (o_11@@1 T@Ref) (f_17@@1 T@Field_5735_9569) (v@@1 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@30) (store (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@30) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@30) (store (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@30) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@30) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9495) (o_11@@2 T@Ref) (f_17@@2 T@Field_5735_53) (v@@2 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@31) (store (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@31) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@31) (store (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@31) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@31) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9495) (o_11@@3 T@Ref) (f_17@@3 T@Field_15790_15795) (v@@3 T@PolymorphicMapType_10044) ) (! (succHeap Heap@@32 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@32) (store (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@32) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@32) (store (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@32) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@32) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9495) (o_11@@4 T@Ref) (f_17@@4 T@Field_15777_15778) (v@@4 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@33) (store (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@33) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@33) (store (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@33) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@33) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9495) (o_11@@5 T@Ref) (f_17@@5 T@Field_5708_9569) (v@@5 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@34) (store (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@34) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@34) (store (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@34) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@34) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9495) (o_11@@6 T@Ref) (f_17@@6 T@Field_5708_53) (v@@6 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@35) (store (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@35) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@35) (store (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@35) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@35) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9495) (o_11@@7 T@Ref) (f_17@@7 T@Field_9555_15795) (v@@7 T@PolymorphicMapType_10044) ) (! (succHeap Heap@@36 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@36) (store (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@36) o_11@@7 f_17@@7 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@36) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@36) (store (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@36) o_11@@7 f_17@@7 v@@7)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9495) (o_11@@8 T@Ref) (f_17@@8 T@Field_9555_5709) (v@@8 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@37) (store (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@37) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@37) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@37) (store (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@37) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9495) (o_11@@9 T@Ref) (f_17@@9 T@Field_9568_9569) (v@@9 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@38) (store (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@38) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@38) (store (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@38) o_11@@9 f_17@@9 v@@9) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@38) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9495) (o_11@@10 T@Ref) (f_17@@10 T@Field_9555_53) (v@@10 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_9495 (store (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@39) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9495 (store (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@39) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@39) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@39)))
)))
(assert (forall ((node@@4 T@Ref) ) (! (= (PredicateMaskField_5708 (read_fields node@@4)) (|read_fields#sm| node@@4))
 :qid |stdinbpl.400:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_5708 (read_fields node@@4)))
)))
(assert (forall ((all_nodes@@5 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_5735 (acc_graph all_nodes@@5)) (|acc_graph#sm| all_nodes@@5))
 :qid |stdinbpl.454:15|
 :skolemid |88|
 :pattern ( (PredicateMaskField_5735 (acc_graph all_nodes@@5)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.289:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.290:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_5811| s@@0) 0) (= s@@0 |Set#Empty_5811|)) (=> (not (= (|Set#Card_5811| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.208:33|
 :skolemid |24|
))))
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Set#Card_5811| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_5811| (|Set#UnionOne_5811| a@@20 x@@4)) (+ (|Set#Card_5811| a@@20) 1)))
 :qid |stdinbpl.224:18|
 :skolemid |33|
 :pattern ( (|Set#Card_5811| (|Set#UnionOne_5811| a@@20 x@@4)))
)))
(assert (forall ((o_11@@11 T@Ref) (f_10 T@Field_9568_9569) (Heap@@40 T@PolymorphicMapType_9495) ) (!  (=> (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@40) o_11@@11 $allocated) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@40) (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@40) o_11@@11 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@40) o_11@@11 f_10))
)))
(assert (forall ((p@@3 T@Field_16698_16699) (v_1@@2 T@FrameType) (q T@Field_16698_16699) (w@@2 T@FrameType) (r@@2 T@Field_16698_16699) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16698_16698 p@@3 v_1@@2 q w@@2) (InsidePredicate_16698_16698 q w@@2 r@@2 u)) (InsidePredicate_16698_16698 p@@3 v_1@@2 r@@2 u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_16698 p@@3 v_1@@2 q w@@2) (InsidePredicate_16698_16698 q w@@2 r@@2 u))
)))
(assert (forall ((p@@4 T@Field_16698_16699) (v_1@@3 T@FrameType) (q@@0 T@Field_16698_16699) (w@@3 T@FrameType) (r@@3 T@Field_15777_15778) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16698_16698 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_16698_15777 q@@0 w@@3 r@@3 u@@0)) (InsidePredicate_16698_15777 p@@4 v_1@@3 r@@3 u@@0))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_16698 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_16698_15777 q@@0 w@@3 r@@3 u@@0))
)))
(assert (forall ((p@@5 T@Field_16698_16699) (v_1@@4 T@FrameType) (q@@1 T@Field_16698_16699) (w@@4 T@FrameType) (r@@4 T@Field_9555_5709) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16698_16698 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_16698_9555 q@@1 w@@4 r@@4 u@@1)) (InsidePredicate_16698_9555 p@@5 v_1@@4 r@@4 u@@1))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_16698 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_16698_9555 q@@1 w@@4 r@@4 u@@1))
)))
(assert (forall ((p@@6 T@Field_16698_16699) (v_1@@5 T@FrameType) (q@@2 T@Field_15777_15778) (w@@5 T@FrameType) (r@@5 T@Field_16698_16699) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16698_15777 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_15777_16698 q@@2 w@@5 r@@5 u@@2)) (InsidePredicate_16698_16698 p@@6 v_1@@5 r@@5 u@@2))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_15777 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_15777_16698 q@@2 w@@5 r@@5 u@@2))
)))
(assert (forall ((p@@7 T@Field_16698_16699) (v_1@@6 T@FrameType) (q@@3 T@Field_15777_15778) (w@@6 T@FrameType) (r@@6 T@Field_15777_15778) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_16698_15777 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_15777_15777 q@@3 w@@6 r@@6 u@@3)) (InsidePredicate_16698_15777 p@@7 v_1@@6 r@@6 u@@3))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_15777 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_15777_15777 q@@3 w@@6 r@@6 u@@3))
)))
(assert (forall ((p@@8 T@Field_16698_16699) (v_1@@7 T@FrameType) (q@@4 T@Field_15777_15778) (w@@7 T@FrameType) (r@@7 T@Field_9555_5709) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_16698_15777 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_15777_9555 q@@4 w@@7 r@@7 u@@4)) (InsidePredicate_16698_9555 p@@8 v_1@@7 r@@7 u@@4))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_15777 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_15777_9555 q@@4 w@@7 r@@7 u@@4))
)))
(assert (forall ((p@@9 T@Field_16698_16699) (v_1@@8 T@FrameType) (q@@5 T@Field_9555_5709) (w@@8 T@FrameType) (r@@8 T@Field_16698_16699) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_16698_9555 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9555_16698 q@@5 w@@8 r@@8 u@@5)) (InsidePredicate_16698_16698 p@@9 v_1@@8 r@@8 u@@5))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_9555 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9555_16698 q@@5 w@@8 r@@8 u@@5))
)))
(assert (forall ((p@@10 T@Field_16698_16699) (v_1@@9 T@FrameType) (q@@6 T@Field_9555_5709) (w@@9 T@FrameType) (r@@9 T@Field_15777_15778) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_16698_9555 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9555_15777 q@@6 w@@9 r@@9 u@@6)) (InsidePredicate_16698_15777 p@@10 v_1@@9 r@@9 u@@6))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_9555 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9555_15777 q@@6 w@@9 r@@9 u@@6))
)))
(assert (forall ((p@@11 T@Field_16698_16699) (v_1@@10 T@FrameType) (q@@7 T@Field_9555_5709) (w@@10 T@FrameType) (r@@10 T@Field_9555_5709) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_16698_9555 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9555_9555 q@@7 w@@10 r@@10 u@@7)) (InsidePredicate_16698_9555 p@@11 v_1@@10 r@@10 u@@7))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16698_9555 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9555_9555 q@@7 w@@10 r@@10 u@@7))
)))
(assert (forall ((p@@12 T@Field_15777_15778) (v_1@@11 T@FrameType) (q@@8 T@Field_16698_16699) (w@@11 T@FrameType) (r@@11 T@Field_16698_16699) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_16698 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_16698_16698 q@@8 w@@11 r@@11 u@@8)) (InsidePredicate_15777_16698 p@@12 v_1@@11 r@@11 u@@8))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_16698 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_16698_16698 q@@8 w@@11 r@@11 u@@8))
)))
(assert (forall ((p@@13 T@Field_15777_15778) (v_1@@12 T@FrameType) (q@@9 T@Field_16698_16699) (w@@12 T@FrameType) (r@@12 T@Field_15777_15778) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_16698 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_16698_15777 q@@9 w@@12 r@@12 u@@9)) (InsidePredicate_15777_15777 p@@13 v_1@@12 r@@12 u@@9))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_16698 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_16698_15777 q@@9 w@@12 r@@12 u@@9))
)))
(assert (forall ((p@@14 T@Field_15777_15778) (v_1@@13 T@FrameType) (q@@10 T@Field_16698_16699) (w@@13 T@FrameType) (r@@13 T@Field_9555_5709) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_16698 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_16698_9555 q@@10 w@@13 r@@13 u@@10)) (InsidePredicate_15777_9555 p@@14 v_1@@13 r@@13 u@@10))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_16698 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_16698_9555 q@@10 w@@13 r@@13 u@@10))
)))
(assert (forall ((p@@15 T@Field_15777_15778) (v_1@@14 T@FrameType) (q@@11 T@Field_15777_15778) (w@@14 T@FrameType) (r@@14 T@Field_16698_16699) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_15777 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_15777_16698 q@@11 w@@14 r@@14 u@@11)) (InsidePredicate_15777_16698 p@@15 v_1@@14 r@@14 u@@11))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_15777 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_15777_16698 q@@11 w@@14 r@@14 u@@11))
)))
(assert (forall ((p@@16 T@Field_15777_15778) (v_1@@15 T@FrameType) (q@@12 T@Field_15777_15778) (w@@15 T@FrameType) (r@@15 T@Field_15777_15778) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_15777 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_15777_15777 q@@12 w@@15 r@@15 u@@12)) (InsidePredicate_15777_15777 p@@16 v_1@@15 r@@15 u@@12))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_15777 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_15777_15777 q@@12 w@@15 r@@15 u@@12))
)))
(assert (forall ((p@@17 T@Field_15777_15778) (v_1@@16 T@FrameType) (q@@13 T@Field_15777_15778) (w@@16 T@FrameType) (r@@16 T@Field_9555_5709) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_15777 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_15777_9555 q@@13 w@@16 r@@16 u@@13)) (InsidePredicate_15777_9555 p@@17 v_1@@16 r@@16 u@@13))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_15777 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_15777_9555 q@@13 w@@16 r@@16 u@@13))
)))
(assert (forall ((p@@18 T@Field_15777_15778) (v_1@@17 T@FrameType) (q@@14 T@Field_9555_5709) (w@@17 T@FrameType) (r@@17 T@Field_16698_16699) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_9555 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9555_16698 q@@14 w@@17 r@@17 u@@14)) (InsidePredicate_15777_16698 p@@18 v_1@@17 r@@17 u@@14))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_9555 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9555_16698 q@@14 w@@17 r@@17 u@@14))
)))
(assert (forall ((p@@19 T@Field_15777_15778) (v_1@@18 T@FrameType) (q@@15 T@Field_9555_5709) (w@@18 T@FrameType) (r@@18 T@Field_15777_15778) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_9555 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9555_15777 q@@15 w@@18 r@@18 u@@15)) (InsidePredicate_15777_15777 p@@19 v_1@@18 r@@18 u@@15))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_9555 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9555_15777 q@@15 w@@18 r@@18 u@@15))
)))
(assert (forall ((p@@20 T@Field_15777_15778) (v_1@@19 T@FrameType) (q@@16 T@Field_9555_5709) (w@@19 T@FrameType) (r@@19 T@Field_9555_5709) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_15777_9555 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9555_9555 q@@16 w@@19 r@@19 u@@16)) (InsidePredicate_15777_9555 p@@20 v_1@@19 r@@19 u@@16))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15777_9555 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9555_9555 q@@16 w@@19 r@@19 u@@16))
)))
(assert (forall ((p@@21 T@Field_9555_5709) (v_1@@20 T@FrameType) (q@@17 T@Field_16698_16699) (w@@20 T@FrameType) (r@@20 T@Field_16698_16699) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_16698 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_16698_16698 q@@17 w@@20 r@@20 u@@17)) (InsidePredicate_9555_16698 p@@21 v_1@@20 r@@20 u@@17))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_16698 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_16698_16698 q@@17 w@@20 r@@20 u@@17))
)))
(assert (forall ((p@@22 T@Field_9555_5709) (v_1@@21 T@FrameType) (q@@18 T@Field_16698_16699) (w@@21 T@FrameType) (r@@21 T@Field_15777_15778) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_16698 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_16698_15777 q@@18 w@@21 r@@21 u@@18)) (InsidePredicate_9555_15777 p@@22 v_1@@21 r@@21 u@@18))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_16698 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_16698_15777 q@@18 w@@21 r@@21 u@@18))
)))
(assert (forall ((p@@23 T@Field_9555_5709) (v_1@@22 T@FrameType) (q@@19 T@Field_16698_16699) (w@@22 T@FrameType) (r@@22 T@Field_9555_5709) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_16698 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_16698_9555 q@@19 w@@22 r@@22 u@@19)) (InsidePredicate_9555_9555 p@@23 v_1@@22 r@@22 u@@19))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_16698 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_16698_9555 q@@19 w@@22 r@@22 u@@19))
)))
(assert (forall ((p@@24 T@Field_9555_5709) (v_1@@23 T@FrameType) (q@@20 T@Field_15777_15778) (w@@23 T@FrameType) (r@@23 T@Field_16698_16699) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_15777 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_15777_16698 q@@20 w@@23 r@@23 u@@20)) (InsidePredicate_9555_16698 p@@24 v_1@@23 r@@23 u@@20))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_15777 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_15777_16698 q@@20 w@@23 r@@23 u@@20))
)))
(assert (forall ((p@@25 T@Field_9555_5709) (v_1@@24 T@FrameType) (q@@21 T@Field_15777_15778) (w@@24 T@FrameType) (r@@24 T@Field_15777_15778) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_15777 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_15777_15777 q@@21 w@@24 r@@24 u@@21)) (InsidePredicate_9555_15777 p@@25 v_1@@24 r@@24 u@@21))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_15777 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_15777_15777 q@@21 w@@24 r@@24 u@@21))
)))
(assert (forall ((p@@26 T@Field_9555_5709) (v_1@@25 T@FrameType) (q@@22 T@Field_15777_15778) (w@@25 T@FrameType) (r@@25 T@Field_9555_5709) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_15777 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_15777_9555 q@@22 w@@25 r@@25 u@@22)) (InsidePredicate_9555_9555 p@@26 v_1@@25 r@@25 u@@22))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_15777 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_15777_9555 q@@22 w@@25 r@@25 u@@22))
)))
(assert (forall ((p@@27 T@Field_9555_5709) (v_1@@26 T@FrameType) (q@@23 T@Field_9555_5709) (w@@26 T@FrameType) (r@@26 T@Field_16698_16699) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_9555 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9555_16698 q@@23 w@@26 r@@26 u@@23)) (InsidePredicate_9555_16698 p@@27 v_1@@26 r@@26 u@@23))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_9555 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9555_16698 q@@23 w@@26 r@@26 u@@23))
)))
(assert (forall ((p@@28 T@Field_9555_5709) (v_1@@27 T@FrameType) (q@@24 T@Field_9555_5709) (w@@27 T@FrameType) (r@@27 T@Field_15777_15778) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_9555 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9555_15777 q@@24 w@@27 r@@27 u@@24)) (InsidePredicate_9555_15777 p@@28 v_1@@27 r@@27 u@@24))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_9555 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9555_15777 q@@24 w@@27 r@@27 u@@24))
)))
(assert (forall ((p@@29 T@Field_9555_5709) (v_1@@28 T@FrameType) (q@@25 T@Field_9555_5709) (w@@28 T@FrameType) (r@@28 T@Field_9555_5709) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9555_9555 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9555_9555 q@@25 w@@28 r@@28 u@@25)) (InsidePredicate_9555_9555 p@@29 v_1@@28 r@@28 u@@25))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9555_9555 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9555_9555 q@@25 w@@28 r@@28 u@@25))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.295:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_5811| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.228:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_5811| a@@22 b@@15) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@12 () T@PolymorphicMapType_9495)
(declare-fun Mask@6 () T@PolymorphicMapType_9516)
(declare-fun graph () (Array T@Ref Bool))
(declare-fun Heap@9 () T@PolymorphicMapType_9495)
(declare-fun Heap@10 () T@PolymorphicMapType_9495)
(declare-fun Heap@11 () T@PolymorphicMapType_9495)
(declare-fun freshVersion@2 () T@FrameType)
(declare-fun QPMask@0 () T@PolymorphicMapType_9516)
(declare-fun FrameFragment_3668 (Int) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_9516)
(declare-fun Mask@5 () T@PolymorphicMapType_9516)
(declare-fun node_2_1 () T@Ref)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_9516)
(declare-fun FrameFragment_3235 (Bool) T@FrameType)
(declare-fun Heap@8 () T@PolymorphicMapType_9495)
(declare-fun n () T@Ref)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun getPredWandId_5705_3235 (T@Field_9555_53) Int)
(declare-fun getPredWandId_5705_5709 (T@Field_9555_5709) Int)
(declare-fun getPredWandId_5705_9569 (T@Field_9568_9569) Int)
(declare-fun getPredWandId_5705_51497 (T@Field_9555_15795) Int)
(declare-fun getPredWandId_5708_3235 (T@Field_5708_53) Int)
(declare-fun getPredWandId_5708_9569 (T@Field_5708_9569) Int)
(declare-fun getPredWandId_5708_52144 (T@Field_15790_15795) Int)
(declare-fun getPredWandId_5735_3235 (T@Field_5735_53) Int)
(declare-fun getPredWandId_5735_9569 (T@Field_5735_9569) Int)
(declare-fun getPredWandId_5735_52791 (T@Field_16712_16717) Int)
(declare-fun Heap@5 () T@PolymorphicMapType_9495)
(declare-fun Heap@6 () T@PolymorphicMapType_9495)
(declare-fun Heap@7 () T@PolymorphicMapType_9495)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun Mask@4 () T@PolymorphicMapType_9516)
(declare-fun Mask@3 () T@PolymorphicMapType_9516)
(declare-fun Heap@4 () T@PolymorphicMapType_9495)
(declare-fun diff () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_9495)
(declare-fun Heap@2 () T@PolymorphicMapType_9495)
(declare-fun Heap@3 () T@PolymorphicMapType_9495)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_9516)
(declare-fun Mask@1 () T@PolymorphicMapType_9516)
(declare-fun Heap@0 () T@PolymorphicMapType_9495)
(declare-fun Heap@@41 () T@PolymorphicMapType_9495)
(declare-fun Mask@0 () T@PolymorphicMapType_9516)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon18_correct  (=> (state Heap@12 Mask@6) (=> (and (state Heap@12 Mask@6) (= (ControlFlow 0 10) (- 0 9))) false))))
(let ((anon27_Else_correct  (=> (HasDirectPerm_5735_5736 Mask@6 null (acc_graph graph)) (=> (and (= Heap@12 Heap@9) (= (ControlFlow 0 12) 10)) anon18_correct))))
(let ((anon27_Then_correct  (=> (not (HasDirectPerm_5735_5736 Mask@6 null (acc_graph graph))) (=> (and (and (= Heap@10 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@9) (store (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@9) null (|acc_graph#sm| graph) ZeroPMask) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@9) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@9))) (= Heap@11 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@10) (store (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@10) null (acc_graph graph) freshVersion@2) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@10) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@10)))) (and (= Heap@12 Heap@11) (= (ControlFlow 0 11) 10))) anon18_correct))))
(let ((anon24_Else_correct  (=> (= Mask@6 (PolymorphicMapType_9516 (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| QPMask@0) (store (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| QPMask@0) null (acc_graph graph) (+ (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| QPMask@0) null (acc_graph graph)) FullPerm)) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| QPMask@0) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| QPMask@0))) (=> (and (and (state Heap@9 Mask@6) (state Heap@9 Mask@6)) (and (|acc_graph#trigger_5735| Heap@9 (acc_graph graph)) (= (select (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@9) null (acc_graph graph)) (FrameFragment_3668 (|acc_graph#condqp1| Heap@9 graph))))) (and (=> (= (ControlFlow 0 13) 11) anon27_Then_correct) (=> (= (ControlFlow 0 13) 12) anon27_Else_correct))))))
(let ((anon15_correct true))
(let ((anon14_correct  (=> (and (= UnfoldingMask@0 (PolymorphicMapType_9516 (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@5) (store (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node_2_1) (- (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node_2_1)) FullPerm)) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@5) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@5))) (not (= node_2_1 null))) (=> (and (and (= UnfoldingMask@1 (PolymorphicMapType_9516 (store (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| UnfoldingMask@0) node_2_1 visited (+ (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| UnfoldingMask@0) node_2_1 visited) FullPerm)) (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| UnfoldingMask@0) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| UnfoldingMask@0))) (state Heap@9 UnfoldingMask@1)) (and (state Heap@9 UnfoldingMask@1) (= (ControlFlow 0 4) 2))) anon15_correct))))
(let ((anon26_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 7) 4)) anon14_correct)))
(let ((anon26_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= FullPerm (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node_2_1)))) (=> (<= FullPerm (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node_2_1))) (=> (= (ControlFlow 0 5) 4) anon14_correct))))))
(let ((anon25_Then_correct  (=> (select graph node_2_1) (=> (and (|read_fields#trigger_5708| Heap@9 (read_fields node_2_1)) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@9) null (read_fields node_2_1)) (FrameFragment_3235 (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@9) node_2_1 visited)))) (and (=> (= (ControlFlow 0 8) 5) anon26_Then_correct) (=> (= (ControlFlow 0 8) 7) anon26_Else_correct))))))
(let ((anon25_Else_correct  (=> (and (not (select graph node_2_1)) (= (ControlFlow 0 3) 2)) anon15_correct)))
(let ((anon10_correct  (=> (= Heap@9 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@8) (store (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n) (PolymorphicMapType_10044 (store (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) n visited true) (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))) (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@8) null (|read_fields#sm| n))))) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@8) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@8))) (=> (and (state Heap@9 Mask@5) (state Heap@9 Mask@5)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((node@@5 T@Ref) (node_4 T@Ref) ) (!  (=> (and (and (and (and (not (= node@@5 node_4)) (select graph node@@5)) (select graph node_4)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= node@@5 node_4)))
 :qid |stdinbpl.713:17|
 :skolemid |101|
 :pattern ( (neverTriggered2 node@@5) (neverTriggered2 node_4))
))) (=> (forall ((node@@6 T@Ref) (node_4@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= node@@6 node_4@@0)) (select graph node@@6)) (select graph node_4@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= node@@6 node_4@@0)))
 :qid |stdinbpl.713:17|
 :skolemid |101|
 :pattern ( (neverTriggered2 node@@6) (neverTriggered2 node_4@@0))
)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((node@@7 T@Ref) ) (!  (=> (select graph node@@7) (>= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node@@7)) FullPerm))
 :qid |stdinbpl.720:17|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@9) null (read_fields node@@7)))
 :pattern ( (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node@@7)))
 :pattern ( (select graph node@@7))
))) (=> (forall ((node@@8 T@Ref) ) (!  (=> (select graph node@@8) (>= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node@@8)) FullPerm))
 :qid |stdinbpl.720:17|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@9) null (read_fields node@@8)))
 :pattern ( (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node@@8)))
 :pattern ( (select graph node@@8))
)) (=> (and (and (forall ((node@@9 T@Ref) ) (!  (=> (and (select graph node@@9) (< NoPerm FullPerm)) (and (= (invRecv2 node@@9) node@@9) (qpRange2 node@@9)))
 :qid |stdinbpl.726:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@9) null (read_fields node@@9)))
 :pattern ( (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node@@9)))
 :pattern ( (select graph node@@9))
)) (forall ((node_1_1 T@Ref) ) (!  (=> (and (and (select graph (invRecv2 node_1_1)) (< NoPerm FullPerm)) (qpRange2 node_1_1)) (= (invRecv2 node_1_1) node_1_1))
 :qid |stdinbpl.730:22|
 :skolemid |104|
 :pattern ( (invRecv2 node_1_1))
))) (and (forall ((node_1_1@@0 T@Ref) ) (!  (=> (and (and (select graph (invRecv2 node_1_1@@0)) (< NoPerm FullPerm)) (qpRange2 node_1_1@@0)) (and (= (invRecv2 node_1_1@@0) node_1_1@@0) (= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| QPMask@0) null (read_fields node_1_1@@0)) (- (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node_1_1@@0)) FullPerm))))
 :qid |stdinbpl.736:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| QPMask@0) null (read_fields node_1_1@@0)))
)) (forall ((node_1_1@@1 T@Ref) ) (!  (=> (not (and (and (select graph (invRecv2 node_1_1@@1)) (< NoPerm FullPerm)) (qpRange2 node_1_1@@1))) (= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| QPMask@0) null (read_fields node_1_1@@1)) (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) null (read_fields node_1_1@@1))))
 :qid |stdinbpl.740:22|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| QPMask@0) null (read_fields node_1_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_9555_53) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_5705_3235 f_5))) (not (= (getPredWandId_5705_3235 f_5) 0))) (= (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@5) o_4 f_5) (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@5) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_9555_5709) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_9555_29211 f_5@@0))) (not (= (getPredWandId_5705_5709 f_5@@0) 0))) (= (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@5) o_4@@0 f_5@@0) (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@5) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_9568_9569) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_5705_9569 f_5@@1))) (not (= (getPredWandId_5705_9569 f_5@@1) 0))) (= (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@5) o_4@@1 f_5@@1) (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@5) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_9555_15795) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_5705_40828 f_5@@2))) (not (= (getPredWandId_5705_51497 f_5@@2) 0))) (= (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@5) o_4@@2 f_5@@2) (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@5) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_5708_53) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_5708_3235 f_5@@3))) (not (= (getPredWandId_5708_3235 f_5@@3) 0))) (= (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@5) o_4@@3 f_5@@3) (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@5) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_15777_15778) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_5708_5709 f_5@@4))) (not (= (getPredWandId_5708_5709 f_5@@4) 0))) (= (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) o_4@@4 f_5@@4) (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@5) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_5708_9569) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_5708_9569 f_5@@5))) (not (= (getPredWandId_5708_9569 f_5@@5) 0))) (= (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@5) o_4@@5 f_5@@5) (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@5) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_15790_15795) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_5708_41491 f_5@@6))) (not (= (getPredWandId_5708_52144 f_5@@6) 0))) (= (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@5) o_4@@6 f_5@@6) (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@5) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_5735_53) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_5735_3235 f_5@@7))) (not (= (getPredWandId_5735_3235 f_5@@7) 0))) (= (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@5) o_4@@7 f_5@@7) (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| QPMask@0) o_4@@7 f_5@@7)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@5) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| QPMask@0) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_16698_16699) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_5735_5736 f_5@@8))) (not (= (getPredWandId_5735_5736 f_5@@8) 0))) (= (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@5) o_4@@8 f_5@@8) (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| QPMask@0) o_4@@8 f_5@@8)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@5) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| QPMask@0) o_4@@8 f_5@@8))
))) (forall ((o_4@@9 T@Ref) (f_5@@9 T@Field_5735_9569) ) (!  (=> (or (or (not (= o_4@@9 null)) (not (IsPredicateField_5735_9569 f_5@@9))) (not (= (getPredWandId_5735_9569 f_5@@9) 0))) (= (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@5) o_4@@9 f_5@@9) (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| QPMask@0) o_4@@9 f_5@@9)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@5) o_4@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| QPMask@0) o_4@@9 f_5@@9))
))) (forall ((o_4@@10 T@Ref) (f_5@@10 T@Field_16712_16717) ) (!  (=> (or (or (not (= o_4@@10 null)) (not (IsPredicateField_5735_42154 f_5@@10))) (not (= (getPredWandId_5735_52791 f_5@@10) 0))) (= (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@5) o_4@@10 f_5@@10) (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| QPMask@0) o_4@@10 f_5@@10)))
 :qid |stdinbpl.746:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@5) o_4@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| QPMask@0) o_4@@10 f_5@@10))
))) (and (and (=> (= (ControlFlow 0 14) 13) anon24_Else_correct) (=> (= (ControlFlow 0 14) 8) anon25_Then_correct)) (=> (= (ControlFlow 0 14) 3) anon25_Else_correct))))))))))))
(let ((anon23_Else_correct  (=> (HasDirectPerm_5708_5709 Mask@5 null (read_fields n)) (=> (and (= Heap@8 Heap@5) (= (ControlFlow 0 18) 14)) anon10_correct))))
(let ((anon23_Then_correct  (=> (not (HasDirectPerm_5708_5709 Mask@5 null (read_fields n))) (=> (and (and (= Heap@6 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@5) (store (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@5) null (|read_fields#sm| n) ZeroPMask) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@5) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@5))) (= Heap@7 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@6) (store (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@6) null (read_fields n) freshVersion@1) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@6) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@6)))) (and (= Heap@8 Heap@7) (= (ControlFlow 0 17) 14))) anon10_correct))))
(let ((anon8_correct  (=> (and (= Mask@4 (PolymorphicMapType_9516 (store (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@3) n visited (- (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@3) n visited) FullPerm)) (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@3) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@3))) (= Mask@5 (PolymorphicMapType_9516 (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@4) (store (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@4) null (read_fields n) (+ (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@4) null (read_fields n)) FullPerm)) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@4) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@4)))) (=> (and (and (state Heap@5 Mask@5) (state Heap@5 Mask@5)) (and (|read_fields#trigger_5708| Heap@5 (read_fields n)) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@5) null (read_fields n)) (FrameFragment_3235 (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@5) n visited))))) (and (=> (= (ControlFlow 0 19) 17) anon23_Then_correct) (=> (= (ControlFlow 0 19) 18) anon23_Else_correct))))))
(let ((anon22_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 22) 19)) anon8_correct)))
(let ((anon22_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (<= FullPerm (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@3) n visited))) (=> (<= FullPerm (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@3) n visited)) (=> (= (ControlFlow 0 20) 19) anon8_correct))))))
(let ((anon6_correct  (=> (= Heap@5 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@4) (store (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff) (PolymorphicMapType_10044 (store (|PolymorphicMapType_10044_5705_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) diff visited true) (|PolymorphicMapType_10044_5705_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_5705_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_5705_30160#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_15777_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_15777_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_15777_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_15777_31010#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_16698_3235#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_16698_9569#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_16698_15778#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))) (|PolymorphicMapType_10044_16698_31860#PolymorphicMapType_10044| (select (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@4) null (|read_fields#sm| diff))))) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@4) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@4))) (=> (and (state Heap@5 Mask@3) (state Heap@5 Mask@3)) (and (=> (= (ControlFlow 0 23) 20) anon22_Then_correct) (=> (= (ControlFlow 0 23) 22) anon22_Else_correct))))))
(let ((anon21_Else_correct  (=> (HasDirectPerm_5708_5709 Mask@3 null (read_fields diff)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 25) 23)) anon6_correct))))
(let ((anon21_Then_correct  (=> (not (HasDirectPerm_5708_5709 Mask@3 null (read_fields diff))) (=> (and (and (= Heap@2 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@1) (store (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@1) null (|read_fields#sm| diff) ZeroPMask) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@1) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@1))) (= Heap@3 (PolymorphicMapType_9495 (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@2) (store (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@2) null (read_fields diff) freshVersion@0) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@2) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 24) 23))) anon6_correct))))
(let ((anon4_correct  (=> (and (= Mask@2 (PolymorphicMapType_9516 (store (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@1) diff visited (- (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@1) diff visited) FullPerm)) (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@1) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@1))) (= Mask@3 (PolymorphicMapType_9516 (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@2) (store (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@2) null (read_fields diff) (+ (select (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@2) null (read_fields diff)) FullPerm)) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@2) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@2)))) (=> (and (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)) (and (|read_fields#trigger_5708| Heap@1 (read_fields diff)) (= (select (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@1) null (read_fields diff)) (FrameFragment_3235 (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@1) diff visited))))) (and (=> (= (ControlFlow 0 26) 24) anon21_Then_correct) (=> (= (ControlFlow 0 26) 25) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 29) 26)) anon4_correct)))
(let ((anon20_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= FullPerm (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@1) diff visited))) (=> (<= FullPerm (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@1) diff visited)) (=> (= (ControlFlow 0 27) 26) anon4_correct))))))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 30) (- 0 32)) (= FullPerm (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@1) diff visited))) (=> (= FullPerm (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@1) diff visited)) (=> (and (= Heap@0 (PolymorphicMapType_9495 (store (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@41) diff visited true) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@@41) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@@41))) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (= FullPerm (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@1) n visited))) (=> (= FullPerm (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@1) n visited)) (=> (and (= Heap@1 (PolymorphicMapType_9495 (store (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@0) n visited false) (|PolymorphicMapType_9495_5411_5412#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_5708_5709#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_5712_19553#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_5735_5736#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_5741_25400#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_5708_53#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_5708_9569#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_5735_53#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_5735_9569#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_9555_5709#PolymorphicMapType_9495| Heap@0) (|PolymorphicMapType_9495_9555_28315#PolymorphicMapType_9495| Heap@0))) (state Heap@1 Mask@1)) (and (=> (= (ControlFlow 0 30) 27) anon20_Then_correct) (=> (= (ControlFlow 0 30) 29) anon20_Else_correct))))))))))
(let ((anon19_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@41 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@41) n $allocated) (select (|PolymorphicMapType_9495_5408_53#PolymorphicMapType_9495| Heap@@41) diff $allocated)) (and (|Set#Equal_5812| graph (|Set#UnionOne_5811| (|Set#Singleton_5811| diff) n)) (state Heap@@41 ZeroMask))) (=> (and (and (and (not (= n null)) (= Mask@0 (PolymorphicMapType_9516 (store (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| ZeroMask) n visited (+ (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| ZeroMask) n visited) FullPerm)) (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| ZeroMask) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| ZeroMask)))) (and (state Heap@@41 Mask@0) (state Heap@@41 Mask@0))) (and (and (not (= diff null)) (= Mask@1 (PolymorphicMapType_9516 (store (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@0) diff visited (+ (select (|PolymorphicMapType_9516_5705_3235#PolymorphicMapType_9516| Mask@0) diff visited) FullPerm)) (|PolymorphicMapType_9516_5708_5709#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5735_5736#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5705_5709#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5705_9569#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5705_38739#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5708_3235#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5708_9569#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5708_39070#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5735_3235#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5735_9569#PolymorphicMapType_9516| Mask@0) (|PolymorphicMapType_9516_5735_39401#PolymorphicMapType_9516| Mask@0)))) (and (state Heap@@41 Mask@1) (state Heap@@41 Mask@1)))) (and (=> (= (ControlFlow 0 33) 1) anon19_Then_correct) (=> (= (ControlFlow 0 33) 30) anon19_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 34) 33) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
