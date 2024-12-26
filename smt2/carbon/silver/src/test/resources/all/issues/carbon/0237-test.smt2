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
(declare-sort T@Field_7627_53 0)
(declare-sort T@Field_7640_7641 0)
(declare-sort T@Field_13856_13857 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13870_13875 0)
(declare-sort T@Field_4730_53 0)
(declare-sort T@Field_4730_7641 0)
(declare-sort T@Field_7627_4731 0)
(declare-sort T@Field_7627_13875 0)
(declare-datatypes ((T@PolymorphicMapType_7588 0)) (((PolymorphicMapType_7588 (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| (Array T@Ref T@Field_7640_7641 Real)) (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| (Array T@Ref T@Field_13856_13857 Real)) (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| (Array T@Ref T@Field_7627_4731 Real)) (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| (Array T@Ref T@Field_7627_53 Real)) (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| (Array T@Ref T@Field_7627_13875 Real)) (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| (Array T@Ref T@Field_4730_7641 Real)) (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| (Array T@Ref T@Field_4730_53 Real)) (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| (Array T@Ref T@Field_13870_13875 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8116 0)) (((PolymorphicMapType_8116 (|PolymorphicMapType_8116_4724_4725#PolymorphicMapType_8116| (Array T@Ref T@Field_7640_7641 Bool)) (|PolymorphicMapType_8116_4724_53#PolymorphicMapType_8116| (Array T@Ref T@Field_7627_53 Bool)) (|PolymorphicMapType_8116_4724_13857#PolymorphicMapType_8116| (Array T@Ref T@Field_7627_4731 Bool)) (|PolymorphicMapType_8116_4724_22023#PolymorphicMapType_8116| (Array T@Ref T@Field_7627_13875 Bool)) (|PolymorphicMapType_8116_13856_4725#PolymorphicMapType_8116| (Array T@Ref T@Field_4730_7641 Bool)) (|PolymorphicMapType_8116_13856_53#PolymorphicMapType_8116| (Array T@Ref T@Field_4730_53 Bool)) (|PolymorphicMapType_8116_13856_13857#PolymorphicMapType_8116| (Array T@Ref T@Field_13856_13857 Bool)) (|PolymorphicMapType_8116_13856_22873#PolymorphicMapType_8116| (Array T@Ref T@Field_13870_13875 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7567 0)) (((PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| (Array T@Ref T@Field_7627_53 Bool)) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| (Array T@Ref T@Field_7640_7641 T@Ref)) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| (Array T@Ref T@Field_13856_13857 T@FrameType)) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| (Array T@Ref T@Field_13870_13875 T@PolymorphicMapType_8116)) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| (Array T@Ref T@Field_4730_53 Bool)) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| (Array T@Ref T@Field_4730_7641 T@Ref)) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| (Array T@Ref T@Field_7627_4731 T@FrameType)) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| (Array T@Ref T@Field_7627_13875 T@PolymorphicMapType_8116)) ) ) ))
(declare-fun $allocated () T@Field_7627_53)
(declare-fun f_7 () T@Field_7640_7641)
(declare-fun succHeap (T@PolymorphicMapType_7567 T@PolymorphicMapType_7567) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7567 T@PolymorphicMapType_7567) Bool)
(declare-fun state (T@PolymorphicMapType_7567 T@PolymorphicMapType_7588) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7588) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7567 T@PolymorphicMapType_7567 T@PolymorphicMapType_7588) Bool)
(declare-fun IsPredicateField_7627_21077 (T@Field_7627_4731) Bool)
(declare-fun HasDirectPerm_7627_4731 (T@PolymorphicMapType_7588 T@Ref T@Field_7627_4731) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7627 (T@Field_7627_4731) T@Field_7627_13875)
(declare-fun IsPredicateField_4730_4731 (T@Field_13856_13857) Bool)
(declare-fun HasDirectPerm_4730_4731 (T@PolymorphicMapType_7588 T@Ref T@Field_13856_13857) Bool)
(declare-fun PredicateMaskField_4730 (T@Field_13856_13857) T@Field_13870_13875)
(declare-fun IsWandField_7627_24038 (T@Field_7627_4731) Bool)
(declare-fun WandMaskField_7627 (T@Field_7627_4731) T@Field_7627_13875)
(declare-fun IsWandField_4730_23681 (T@Field_13856_13857) Bool)
(declare-fun WandMaskField_4730 (T@Field_13856_13857) T@Field_13870_13875)
(declare-fun ZeroPMask () T@PolymorphicMapType_8116)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun P ((Array T@Ref Bool)) T@Field_13856_13857)
(declare-fun |P#trigger_4730| (T@PolymorphicMapType_7567 T@Field_13856_13857) Bool)
(declare-fun |P#everUsed_4730| (T@Field_13856_13857) Bool)
(declare-fun |Set#Union_4796| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_4796| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_4796| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_4796| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |P#sm| ((Array T@Ref Bool)) T@Field_13870_13875)
(declare-fun dummyHeap () T@PolymorphicMapType_7567)
(declare-fun ZeroMask () T@PolymorphicMapType_7588)
(declare-fun InsidePredicate_13856_13856 (T@Field_13856_13857 T@FrameType T@Field_13856_13857 T@FrameType) Bool)
(declare-fun InsidePredicate_7627_7627 (T@Field_7627_4731 T@FrameType T@Field_7627_4731 T@FrameType) Bool)
(declare-fun IsPredicateField_4724_4725 (T@Field_7640_7641) Bool)
(declare-fun IsWandField_4724_4725 (T@Field_7640_7641) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4730_29749 (T@Field_13870_13875) Bool)
(declare-fun IsWandField_4730_29765 (T@Field_13870_13875) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4730_53 (T@Field_4730_53) Bool)
(declare-fun IsWandField_4730_53 (T@Field_4730_53) Bool)
(declare-fun IsPredicateField_4730_4725 (T@Field_4730_7641) Bool)
(declare-fun IsWandField_4730_4725 (T@Field_4730_7641) Bool)
(declare-fun IsPredicateField_4724_29086 (T@Field_7627_13875) Bool)
(declare-fun IsWandField_4724_29102 (T@Field_7627_13875) Bool)
(declare-fun IsPredicateField_4724_53 (T@Field_7627_53) Bool)
(declare-fun IsWandField_4724_53 (T@Field_7627_53) Bool)
(declare-fun HasDirectPerm_7627_20464 (T@PolymorphicMapType_7588 T@Ref T@Field_7627_13875) Bool)
(declare-fun HasDirectPerm_7627_7641 (T@PolymorphicMapType_7588 T@Ref T@Field_7640_7641) Bool)
(declare-fun HasDirectPerm_7627_53 (T@PolymorphicMapType_7588 T@Ref T@Field_7627_53) Bool)
(declare-fun HasDirectPerm_4730_19579 (T@PolymorphicMapType_7588 T@Ref T@Field_13870_13875) Bool)
(declare-fun HasDirectPerm_4730_7641 (T@PolymorphicMapType_7588 T@Ref T@Field_4730_7641) Bool)
(declare-fun HasDirectPerm_4730_53 (T@PolymorphicMapType_7588 T@Ref T@Field_4730_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7588 T@PolymorphicMapType_7588 T@PolymorphicMapType_7588) Bool)
(declare-fun |Set#Difference_4796| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_4796| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_4730_4731 (T@Field_13856_13857) Int)
(declare-fun |Set#Empty_4796| () (Array T@Ref Bool))
(declare-fun |P#condqp1| (T@PolymorphicMapType_7567 (Array T@Ref Bool)) Int)
(declare-fun |sk_P#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_13856_7627 (T@Field_13856_13857 T@FrameType T@Field_7627_4731 T@FrameType) Bool)
(declare-fun InsidePredicate_7627_13856 (T@Field_7627_4731 T@FrameType T@Field_13856_13857 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7567) (Heap1 T@PolymorphicMapType_7567) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7567) (Mask T@PolymorphicMapType_7588) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7567) (ExhaleHeap T@PolymorphicMapType_7567) (Mask@@0 T@PolymorphicMapType_7588) (pm_f_9 T@Field_7627_4731) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7627_4731 Mask@@0 null pm_f_9) (IsPredicateField_7627_21077 pm_f_9)) (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_7640_7641) ) (!  (=> (select (|PolymorphicMapType_8116_4724_4725#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) null (PredicateMaskField_7627 pm_f_9))) o2_9 f_24) (= (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@0) o2_9 f_24) (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_7627_53) ) (!  (=> (select (|PolymorphicMapType_8116_4724_53#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) null (PredicateMaskField_7627 pm_f_9))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@0) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_7627_4731) ) (!  (=> (select (|PolymorphicMapType_8116_4724_13857#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) null (PredicateMaskField_7627 pm_f_9))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@0) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_7627_13875) ) (!  (=> (select (|PolymorphicMapType_8116_4724_22023#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) null (PredicateMaskField_7627 pm_f_9))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_4730_7641) ) (!  (=> (select (|PolymorphicMapType_8116_13856_4725#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) null (PredicateMaskField_7627 pm_f_9))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@0) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_4730_53) ) (!  (=> (select (|PolymorphicMapType_8116_13856_53#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) null (PredicateMaskField_7627 pm_f_9))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@0) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_13856_13857) ) (!  (=> (select (|PolymorphicMapType_8116_13856_13857#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) null (PredicateMaskField_7627 pm_f_9))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@0) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_13870_13875) ) (!  (=> (select (|PolymorphicMapType_8116_13856_22873#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@0) null (PredicateMaskField_7627 pm_f_9))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@0) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap) o2_9@@6 f_24@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7627_21077 pm_f_9))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7567) (ExhaleHeap@@0 T@PolymorphicMapType_7567) (Mask@@1 T@PolymorphicMapType_7588) (pm_f_9@@0 T@Field_13856_13857) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4730_4731 Mask@@1 null pm_f_9@@0) (IsPredicateField_4730_4731 pm_f_9@@0)) (and (and (and (and (and (and (and (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_7640_7641) ) (!  (=> (select (|PolymorphicMapType_8116_4724_4725#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) null (PredicateMaskField_4730 pm_f_9@@0))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@1) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@7 f_24@@7))
)) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_7627_53) ) (!  (=> (select (|PolymorphicMapType_8116_4724_53#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) null (PredicateMaskField_4730 pm_f_9@@0))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@1) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@8 f_24@@8))
))) (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_7627_4731) ) (!  (=> (select (|PolymorphicMapType_8116_4724_13857#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) null (PredicateMaskField_4730 pm_f_9@@0))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@1) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@9 f_24@@9))
))) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_7627_13875) ) (!  (=> (select (|PolymorphicMapType_8116_4724_22023#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) null (PredicateMaskField_4730 pm_f_9@@0))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@1) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_4730_7641) ) (!  (=> (select (|PolymorphicMapType_8116_13856_4725#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) null (PredicateMaskField_4730 pm_f_9@@0))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@1) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_4730_53) ) (!  (=> (select (|PolymorphicMapType_8116_13856_53#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) null (PredicateMaskField_4730 pm_f_9@@0))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@1) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_13856_13857) ) (!  (=> (select (|PolymorphicMapType_8116_13856_13857#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) null (PredicateMaskField_4730 pm_f_9@@0))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@1) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_13870_13875) ) (!  (=> (select (|PolymorphicMapType_8116_13856_22873#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) null (PredicateMaskField_4730 pm_f_9@@0))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@1) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@0) o2_9@@14 f_24@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4730_4731 pm_f_9@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7567) (ExhaleHeap@@1 T@PolymorphicMapType_7567) (Mask@@2 T@PolymorphicMapType_7588) (pm_f_9@@1 T@Field_7627_4731) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7627_4731 Mask@@2 null pm_f_9@@1) (IsWandField_7627_24038 pm_f_9@@1)) (and (and (and (and (and (and (and (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_7640_7641) ) (!  (=> (select (|PolymorphicMapType_8116_4724_4725#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) null (WandMaskField_7627 pm_f_9@@1))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@2) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@15 f_24@@15))
)) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_7627_53) ) (!  (=> (select (|PolymorphicMapType_8116_4724_53#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) null (WandMaskField_7627 pm_f_9@@1))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@2) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@16 f_24@@16))
))) (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_7627_4731) ) (!  (=> (select (|PolymorphicMapType_8116_4724_13857#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) null (WandMaskField_7627 pm_f_9@@1))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@2) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@17 f_24@@17))
))) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_7627_13875) ) (!  (=> (select (|PolymorphicMapType_8116_4724_22023#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) null (WandMaskField_7627 pm_f_9@@1))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@18 f_24@@18))
))) (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_4730_7641) ) (!  (=> (select (|PolymorphicMapType_8116_13856_4725#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) null (WandMaskField_7627 pm_f_9@@1))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@2) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@19 f_24@@19))
))) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_4730_53) ) (!  (=> (select (|PolymorphicMapType_8116_13856_53#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) null (WandMaskField_7627 pm_f_9@@1))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@2) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_13856_13857) ) (!  (=> (select (|PolymorphicMapType_8116_13856_13857#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) null (WandMaskField_7627 pm_f_9@@1))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@2) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_13870_13875) ) (!  (=> (select (|PolymorphicMapType_8116_13856_22873#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@2) null (WandMaskField_7627 pm_f_9@@1))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@2) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@1) o2_9@@22 f_24@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_7627_24038 pm_f_9@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7567) (ExhaleHeap@@2 T@PolymorphicMapType_7567) (Mask@@3 T@PolymorphicMapType_7588) (pm_f_9@@2 T@Field_13856_13857) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4730_4731 Mask@@3 null pm_f_9@@2) (IsWandField_4730_23681 pm_f_9@@2)) (and (and (and (and (and (and (and (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_7640_7641) ) (!  (=> (select (|PolymorphicMapType_8116_4724_4725#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) null (WandMaskField_4730 pm_f_9@@2))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@3) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@23 f_24@@23))
)) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_7627_53) ) (!  (=> (select (|PolymorphicMapType_8116_4724_53#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) null (WandMaskField_4730 pm_f_9@@2))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@3) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_7627_4731) ) (!  (=> (select (|PolymorphicMapType_8116_4724_13857#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) null (WandMaskField_4730 pm_f_9@@2))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@3) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_7627_13875) ) (!  (=> (select (|PolymorphicMapType_8116_4724_22023#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) null (WandMaskField_4730 pm_f_9@@2))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@3) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_4730_7641) ) (!  (=> (select (|PolymorphicMapType_8116_13856_4725#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) null (WandMaskField_4730 pm_f_9@@2))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@3) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_4730_53) ) (!  (=> (select (|PolymorphicMapType_8116_13856_53#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) null (WandMaskField_4730 pm_f_9@@2))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@3) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@28 f_24@@28))
))) (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_13856_13857) ) (!  (=> (select (|PolymorphicMapType_8116_13856_13857#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) null (WandMaskField_4730 pm_f_9@@2))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@3) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@29 f_24@@29))
))) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_13870_13875) ) (!  (=> (select (|PolymorphicMapType_8116_13856_22873#PolymorphicMapType_8116| (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) null (WandMaskField_4730 pm_f_9@@2))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@3) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@2) o2_9@@30 f_24@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4730_23681 pm_f_9@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7567) (Heap1@@0 T@PolymorphicMapType_7567) (Heap2 T@PolymorphicMapType_7567) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13870_13875) ) (!  (not (select (|PolymorphicMapType_8116_13856_22873#PolymorphicMapType_8116| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8116_13856_22873#PolymorphicMapType_8116| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13856_13857) ) (!  (not (select (|PolymorphicMapType_8116_13856_13857#PolymorphicMapType_8116| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8116_13856_13857#PolymorphicMapType_8116| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4730_53) ) (!  (not (select (|PolymorphicMapType_8116_13856_53#PolymorphicMapType_8116| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8116_13856_53#PolymorphicMapType_8116| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4730_7641) ) (!  (not (select (|PolymorphicMapType_8116_13856_4725#PolymorphicMapType_8116| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8116_13856_4725#PolymorphicMapType_8116| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7627_13875) ) (!  (not (select (|PolymorphicMapType_8116_4724_22023#PolymorphicMapType_8116| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8116_4724_22023#PolymorphicMapType_8116| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7627_4731) ) (!  (not (select (|PolymorphicMapType_8116_4724_13857#PolymorphicMapType_8116| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8116_4724_13857#PolymorphicMapType_8116| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7627_53) ) (!  (not (select (|PolymorphicMapType_8116_4724_53#PolymorphicMapType_8116| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8116_4724_53#PolymorphicMapType_8116| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7640_7641) ) (!  (not (select (|PolymorphicMapType_8116_4724_4725#PolymorphicMapType_8116| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8116_4724_4725#PolymorphicMapType_8116| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.291:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((b_24 (Array T@Ref Bool)) ) (! (IsPredicateField_4730_4731 (P b_24))
 :qid |stdinbpl.404:15|
 :skolemid |83|
 :pattern ( (P b_24))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7567) (b_24@@0 (Array T@Ref Bool)) ) (! (|P#everUsed_4730| (P b_24@@0))
 :qid |stdinbpl.423:15|
 :skolemid |87|
 :pattern ( (|P#trigger_4730| Heap@@4 (P b_24@@0)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_4796| (|Set#Union_4796| a@@0 b@@0) b@@0) (|Set#Union_4796| a@@0 b@@0))
 :qid |stdinbpl.243:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4796| (|Set#Union_4796| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4796| (|Set#Intersection_4796| a@@1 b@@1) b@@1) (|Set#Intersection_4796| a@@1 b@@1))
 :qid |stdinbpl.247:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4796| (|Set#Intersection_4796| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_4796| r) o) (= r o))
 :qid |stdinbpl.212:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_4796| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_4796| (|Set#Union_4796| a@@2 b@@2)) (|Set#Card_4796| (|Set#Intersection_4796| a@@2 b@@2))) (+ (|Set#Card_4796| a@@2) (|Set#Card_4796| b@@2)))
 :qid |stdinbpl.251:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4796| (|Set#Union_4796| a@@2 b@@2)))
 :pattern ( (|Set#Card_4796| (|Set#Intersection_4796| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.294:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7567) (ExhaleHeap@@3 T@PolymorphicMapType_7567) (Mask@@4 T@PolymorphicMapType_7588) (pm_f_9@@3 T@Field_7627_4731) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7627_4731 Mask@@4 null pm_f_9@@3) (IsPredicateField_7627_21077 pm_f_9@@3)) (= (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@5) null (PredicateMaskField_7627 pm_f_9@@3)) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@3) null (PredicateMaskField_7627 pm_f_9@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_7627_21077 pm_f_9@@3) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@3) null (PredicateMaskField_7627 pm_f_9@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7567) (ExhaleHeap@@4 T@PolymorphicMapType_7567) (Mask@@5 T@PolymorphicMapType_7588) (pm_f_9@@4 T@Field_13856_13857) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4730_4731 Mask@@5 null pm_f_9@@4) (IsPredicateField_4730_4731 pm_f_9@@4)) (= (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@6) null (PredicateMaskField_4730 pm_f_9@@4)) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@4) null (PredicateMaskField_4730 pm_f_9@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4730_4731 pm_f_9@@4) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@4) null (PredicateMaskField_4730 pm_f_9@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7567) (ExhaleHeap@@5 T@PolymorphicMapType_7567) (Mask@@6 T@PolymorphicMapType_7588) (pm_f_9@@5 T@Field_7627_4731) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7627_4731 Mask@@6 null pm_f_9@@5) (IsWandField_7627_24038 pm_f_9@@5)) (= (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@7) null (WandMaskField_7627 pm_f_9@@5)) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@5) null (WandMaskField_7627 pm_f_9@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_7627_24038 pm_f_9@@5) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@5) null (WandMaskField_7627 pm_f_9@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7567) (ExhaleHeap@@6 T@PolymorphicMapType_7567) (Mask@@7 T@PolymorphicMapType_7588) (pm_f_9@@6 T@Field_13856_13857) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4730_4731 Mask@@7 null pm_f_9@@6) (IsWandField_4730_23681 pm_f_9@@6)) (= (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@8) null (WandMaskField_4730 pm_f_9@@6)) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@6) null (WandMaskField_4730 pm_f_9@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_4730_23681 pm_f_9@@6) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@6) null (WandMaskField_4730 pm_f_9@@6)))
)))
(assert (forall ((b_24@@1 (Array T@Ref Bool)) (b2 (Array T@Ref Bool)) ) (!  (=> (= (P b_24@@1) (P b2)) (= b_24@@1 b2))
 :qid |stdinbpl.414:15|
 :skolemid |85|
 :pattern ( (P b_24@@1) (P b2))
)))
(assert (forall ((b_24@@2 (Array T@Ref Bool)) (b2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|P#sm| b_24@@2) (|P#sm| b2@@0)) (= b_24@@2 b2@@0))
 :qid |stdinbpl.418:15|
 :skolemid |86|
 :pattern ( (|P#sm| b_24@@2) (|P#sm| b2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7567) (ExhaleHeap@@7 T@PolymorphicMapType_7567) (Mask@@8 T@PolymorphicMapType_7588) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@9) o_27 $allocated) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_13856_13857) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13856_13856 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13856_13856 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7627_4731) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7627_7627 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7627_7627 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4724_4725 f_7)))
(assert  (not (IsWandField_4724_4725 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7567) (ExhaleHeap@@8 T@PolymorphicMapType_7567) (Mask@@9 T@PolymorphicMapType_7588) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7588) (o_2@@7 T@Ref) (f_4@@7 T@Field_13870_13875) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4730_29749 f_4@@7))) (not (IsWandField_4730_29765 f_4@@7))) (<= (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7588) (o_2@@8 T@Ref) (f_4@@8 T@Field_4730_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4730_53 f_4@@8))) (not (IsWandField_4730_53 f_4@@8))) (<= (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7588) (o_2@@9 T@Ref) (f_4@@9 T@Field_13856_13857) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4730_4731 f_4@@9))) (not (IsWandField_4730_23681 f_4@@9))) (<= (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7588) (o_2@@10 T@Ref) (f_4@@10 T@Field_4730_7641) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4730_4725 f_4@@10))) (not (IsWandField_4730_4725 f_4@@10))) (<= (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7588) (o_2@@11 T@Ref) (f_4@@11 T@Field_7627_13875) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4724_29086 f_4@@11))) (not (IsWandField_4724_29102 f_4@@11))) (<= (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7588) (o_2@@12 T@Ref) (f_4@@12 T@Field_7627_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4724_53 f_4@@12))) (not (IsWandField_4724_53 f_4@@12))) (<= (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7588) (o_2@@13 T@Ref) (f_4@@13 T@Field_7627_4731) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7627_21077 f_4@@13))) (not (IsWandField_7627_24038 f_4@@13))) (<= (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7588) (o_2@@14 T@Ref) (f_4@@14 T@Field_7640_7641) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4724_4725 f_4@@14))) (not (IsWandField_4724_4725 f_4@@14))) (<= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7588) (o_2@@15 T@Ref) (f_4@@15 T@Field_7627_13875) ) (! (= (HasDirectPerm_7627_20464 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7627_20464 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7588) (o_2@@16 T@Ref) (f_4@@16 T@Field_7640_7641) ) (! (= (HasDirectPerm_7627_7641 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7627_7641 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7588) (o_2@@17 T@Ref) (f_4@@17 T@Field_7627_53) ) (! (= (HasDirectPerm_7627_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7627_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7588) (o_2@@18 T@Ref) (f_4@@18 T@Field_7627_4731) ) (! (= (HasDirectPerm_7627_4731 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7627_4731 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7588) (o_2@@19 T@Ref) (f_4@@19 T@Field_13870_13875) ) (! (= (HasDirectPerm_4730_19579 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4730_19579 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7588) (o_2@@20 T@Ref) (f_4@@20 T@Field_4730_7641) ) (! (= (HasDirectPerm_4730_7641 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4730_7641 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7588) (o_2@@21 T@Ref) (f_4@@21 T@Field_4730_53) ) (! (= (HasDirectPerm_4730_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4730_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7588) (o_2@@22 T@Ref) (f_4@@22 T@Field_13856_13857) ) (! (= (HasDirectPerm_4730_4731 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4730_4731 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7567) (ExhaleHeap@@9 T@PolymorphicMapType_7567) (Mask@@26 T@PolymorphicMapType_7588) (o_27@@0 T@Ref) (f_24@@31 T@Field_7627_13875) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_7627_20464 Mask@@26 o_27@@0 f_24@@31) (= (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@11) o_27@@0 f_24@@31) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@9) o_27@@0 f_24@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| ExhaleHeap@@9) o_27@@0 f_24@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7567) (ExhaleHeap@@10 T@PolymorphicMapType_7567) (Mask@@27 T@PolymorphicMapType_7588) (o_27@@1 T@Ref) (f_24@@32 T@Field_7640_7641) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_7627_7641 Mask@@27 o_27@@1 f_24@@32) (= (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@12) o_27@@1 f_24@@32) (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap@@10) o_27@@1 f_24@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| ExhaleHeap@@10) o_27@@1 f_24@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7567) (ExhaleHeap@@11 T@PolymorphicMapType_7567) (Mask@@28 T@PolymorphicMapType_7588) (o_27@@2 T@Ref) (f_24@@33 T@Field_7627_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_7627_53 Mask@@28 o_27@@2 f_24@@33) (= (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@13) o_27@@2 f_24@@33) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@11) o_27@@2 f_24@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| ExhaleHeap@@11) o_27@@2 f_24@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7567) (ExhaleHeap@@12 T@PolymorphicMapType_7567) (Mask@@29 T@PolymorphicMapType_7588) (o_27@@3 T@Ref) (f_24@@34 T@Field_7627_4731) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_7627_4731 Mask@@29 o_27@@3 f_24@@34) (= (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@14) o_27@@3 f_24@@34) (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap@@12) o_27@@3 f_24@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| ExhaleHeap@@12) o_27@@3 f_24@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7567) (ExhaleHeap@@13 T@PolymorphicMapType_7567) (Mask@@30 T@PolymorphicMapType_7588) (o_27@@4 T@Ref) (f_24@@35 T@Field_13870_13875) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_4730_19579 Mask@@30 o_27@@4 f_24@@35) (= (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@15) o_27@@4 f_24@@35) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@13) o_27@@4 f_24@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| ExhaleHeap@@13) o_27@@4 f_24@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7567) (ExhaleHeap@@14 T@PolymorphicMapType_7567) (Mask@@31 T@PolymorphicMapType_7588) (o_27@@5 T@Ref) (f_24@@36 T@Field_4730_7641) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_4730_7641 Mask@@31 o_27@@5 f_24@@36) (= (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@16) o_27@@5 f_24@@36) (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap@@14) o_27@@5 f_24@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| ExhaleHeap@@14) o_27@@5 f_24@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7567) (ExhaleHeap@@15 T@PolymorphicMapType_7567) (Mask@@32 T@PolymorphicMapType_7588) (o_27@@6 T@Ref) (f_24@@37 T@Field_4730_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_4730_53 Mask@@32 o_27@@6 f_24@@37) (= (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@17) o_27@@6 f_24@@37) (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap@@15) o_27@@6 f_24@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| ExhaleHeap@@15) o_27@@6 f_24@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7567) (ExhaleHeap@@16 T@PolymorphicMapType_7567) (Mask@@33 T@PolymorphicMapType_7588) (o_27@@7 T@Ref) (f_24@@38 T@Field_13856_13857) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_4730_4731 Mask@@33 o_27@@7 f_24@@38) (= (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@18) o_27@@7 f_24@@38) (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap@@16) o_27@@7 f_24@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| ExhaleHeap@@16) o_27@@7 f_24@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_13870_13875) ) (! (= (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_4730_53) ) (! (= (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_13856_13857) ) (! (= (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_4730_7641) ) (! (= (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_7627_13875) ) (! (= (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_7627_53) ) (! (= (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_7627_4731) ) (! (= (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7640_7641) ) (! (= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7588) (SummandMask1 T@PolymorphicMapType_7588) (SummandMask2 T@PolymorphicMapType_7588) (o_2@@31 T@Ref) (f_4@@31 T@Field_13870_13875) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7588) (SummandMask1@@0 T@PolymorphicMapType_7588) (SummandMask2@@0 T@PolymorphicMapType_7588) (o_2@@32 T@Ref) (f_4@@32 T@Field_4730_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7588) (SummandMask1@@1 T@PolymorphicMapType_7588) (SummandMask2@@1 T@PolymorphicMapType_7588) (o_2@@33 T@Ref) (f_4@@33 T@Field_13856_13857) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7588) (SummandMask1@@2 T@PolymorphicMapType_7588) (SummandMask2@@2 T@PolymorphicMapType_7588) (o_2@@34 T@Ref) (f_4@@34 T@Field_4730_7641) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7588) (SummandMask1@@3 T@PolymorphicMapType_7588) (SummandMask2@@3 T@PolymorphicMapType_7588) (o_2@@35 T@Ref) (f_4@@35 T@Field_7627_13875) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7588) (SummandMask1@@4 T@PolymorphicMapType_7588) (SummandMask2@@4 T@PolymorphicMapType_7588) (o_2@@36 T@Ref) (f_4@@36 T@Field_7627_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7588) (SummandMask1@@5 T@PolymorphicMapType_7588) (SummandMask2@@5 T@PolymorphicMapType_7588) (o_2@@37 T@Ref) (f_4@@37 T@Field_7627_4731) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7588) (SummandMask1@@6 T@PolymorphicMapType_7588) (SummandMask2@@6 T@PolymorphicMapType_7588) (o_2@@38 T@Ref) (f_4@@38 T@Field_7640_7641) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_4796| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.240:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4796| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_4796| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_4796| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_4796| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.255:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4796| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_4796| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_4796| a@@6 x) y))
 :qid |stdinbpl.220:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4796| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_4796| a@@7 b@@5) y@@0))
 :qid |stdinbpl.230:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4796| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_4796| a@@8 b@@6) y@@1))
 :qid |stdinbpl.232:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4796| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_4796| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.216:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4796| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_4796| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.257:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4796| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_4796| (|Set#Difference_4796| a@@11 b@@8)) (|Set#Card_4796| (|Set#Difference_4796| b@@8 a@@11))) (|Set#Card_4796| (|Set#Intersection_4796| a@@11 b@@8))) (|Set#Card_4796| (|Set#Union_4796| a@@11 b@@8))) (= (|Set#Card_4796| (|Set#Difference_4796| a@@11 b@@8)) (- (|Set#Card_4796| a@@11) (|Set#Card_4796| (|Set#Intersection_4796| a@@11 b@@8)))))
 :qid |stdinbpl.259:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4796| (|Set#Difference_4796| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_4796| s))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4796| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_4796| a@@12 x@@1) x@@1)
 :qid |stdinbpl.218:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4796| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_4796| (|Set#UnionOne_4796| a@@13 x@@2)) (|Set#Card_4796| a@@13)))
 :qid |stdinbpl.222:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4796| (|Set#UnionOne_4796| a@@13 x@@2)))
)))
(assert (forall ((b_24@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_4730_4731 (P b_24@@3)) 0)
 :qid |stdinbpl.408:15|
 :skolemid |84|
 :pattern ( (P b_24@@3))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_4796| (|Set#Singleton_4796| r@@0)) 1)
 :qid |stdinbpl.213:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4796| (|Set#Singleton_4796| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_4796| r@@1) r@@1)
 :qid |stdinbpl.211:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_4796| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_4796| a@@14 (|Set#Union_4796| a@@14 b@@9)) (|Set#Union_4796| a@@14 b@@9))
 :qid |stdinbpl.245:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4796| a@@14 (|Set#Union_4796| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4796| a@@15 (|Set#Intersection_4796| a@@15 b@@10)) (|Set#Intersection_4796| a@@15 b@@10))
 :qid |stdinbpl.249:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4796| a@@15 (|Set#Intersection_4796| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_4796| o@@3))
 :qid |stdinbpl.205:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4796| o@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7567) (o_20 T@Ref) (f_31 T@Field_13870_13875) (v T@PolymorphicMapType_8116) ) (! (succHeap Heap@@19 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@19) (store (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@19) o_20 f_31 v) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@19) (store (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@19) o_20 f_31 v) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@19) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7567) (o_20@@0 T@Ref) (f_31@@0 T@Field_13856_13857) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@20) (store (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@20) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@20) (store (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@20) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@20) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7567) (o_20@@1 T@Ref) (f_31@@1 T@Field_4730_7641) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@21) (store (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@21) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@21) (store (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@21) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@21) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7567) (o_20@@2 T@Ref) (f_31@@2 T@Field_4730_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@22) (store (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@22) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@22) (store (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@22) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@22) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7567) (o_20@@3 T@Ref) (f_31@@3 T@Field_7627_13875) (v@@3 T@PolymorphicMapType_8116) ) (! (succHeap Heap@@23 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@23) (store (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@23) o_20@@3 f_31@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@23) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@23) (store (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@23) o_20@@3 f_31@@3 v@@3)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7567) (o_20@@4 T@Ref) (f_31@@4 T@Field_7627_4731) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@24) (store (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@24) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@24) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@24) (store (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@24) o_20@@4 f_31@@4 v@@4) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7567) (o_20@@5 T@Ref) (f_31@@5 T@Field_7640_7641) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@25) (store (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@25) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@25) (store (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@25) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@25) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7567) (o_20@@6 T@Ref) (f_31@@6 T@Field_7627_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_7567 (store (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@26) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7567 (store (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@26) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@26) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@26)))
)))
(assert (forall ((b_24@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_4730 (P b_24@@4)) (|P#sm| b_24@@4))
 :qid |stdinbpl.400:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_4730 (P b_24@@4)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.289:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.290:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_4796| s@@0) 0) (= s@@0 |Set#Empty_4796|)) (=> (not (= (|Set#Card_4796| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.208:33|
 :skolemid |24|
))))
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4796| s@@0))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_7567) (Heap1Heap T@PolymorphicMapType_7567) (b_24@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select b_24@@5 (|sk_P#condqp1| (|P#condqp1| Heap2Heap b_24@@5) (|P#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm))  (and (select b_24@@5 (|sk_P#condqp1| (|P#condqp1| Heap2Heap b_24@@5) (|P#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm))) (=> (and (select b_24@@5 (|sk_P#condqp1| (|P#condqp1| Heap2Heap b_24@@5) (|P#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap2Heap) (|sk_P#condqp1| (|P#condqp1| Heap2Heap b_24@@5) (|P#condqp1| Heap1Heap b_24@@5)) f_7) (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap1Heap) (|sk_P#condqp1| (|P#condqp1| Heap2Heap b_24@@5) (|P#condqp1| Heap1Heap b_24@@5)) f_7)))) (= (|P#condqp1| Heap2Heap b_24@@5) (|P#condqp1| Heap1Heap b_24@@5)))
 :qid |stdinbpl.434:15|
 :skolemid |88|
 :pattern ( (|P#condqp1| Heap2Heap b_24@@5) (|P#condqp1| Heap1Heap b_24@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_4796| (|Set#UnionOne_4796| a@@18 x@@4)) (+ (|Set#Card_4796| a@@18) 1)))
 :qid |stdinbpl.224:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4796| (|Set#UnionOne_4796| a@@18 x@@4)))
)))
(assert (forall ((o_20@@7 T@Ref) (f_17 T@Field_7640_7641) (Heap@@27 T@PolymorphicMapType_7567) ) (!  (=> (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@27) o_20@@7 $allocated) (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@27) (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@27) o_20@@7 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@27) o_20@@7 f_17))
)))
(assert (forall ((p@@2 T@Field_13856_13857) (v_1@@1 T@FrameType) (q T@Field_13856_13857) (w@@1 T@FrameType) (r@@2 T@Field_13856_13857) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13856_13856 p@@2 v_1@@1 q w@@1) (InsidePredicate_13856_13856 q w@@1 r@@2 u)) (InsidePredicate_13856_13856 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13856_13856 p@@2 v_1@@1 q w@@1) (InsidePredicate_13856_13856 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_13856_13857) (v_1@@2 T@FrameType) (q@@0 T@Field_13856_13857) (w@@2 T@FrameType) (r@@3 T@Field_7627_4731) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13856_13856 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13856_7627 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_13856_7627 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13856_13856 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13856_7627 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_13856_13857) (v_1@@3 T@FrameType) (q@@1 T@Field_7627_4731) (w@@3 T@FrameType) (r@@4 T@Field_13856_13857) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13856_7627 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7627_13856 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_13856_13856 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13856_7627 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7627_13856 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_13856_13857) (v_1@@4 T@FrameType) (q@@2 T@Field_7627_4731) (w@@4 T@FrameType) (r@@5 T@Field_7627_4731) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13856_7627 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7627_7627 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_13856_7627 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13856_7627 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7627_7627 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_7627_4731) (v_1@@5 T@FrameType) (q@@3 T@Field_13856_13857) (w@@5 T@FrameType) (r@@6 T@Field_13856_13857) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7627_13856 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13856_13856 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_7627_13856 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7627_13856 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13856_13856 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_7627_4731) (v_1@@6 T@FrameType) (q@@4 T@Field_13856_13857) (w@@6 T@FrameType) (r@@7 T@Field_7627_4731) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7627_13856 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13856_7627 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_7627_7627 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7627_13856 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13856_7627 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_7627_4731) (v_1@@7 T@FrameType) (q@@5 T@Field_7627_4731) (w@@7 T@FrameType) (r@@8 T@Field_13856_13857) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7627_7627 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7627_13856 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_7627_13856 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7627_7627 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7627_13856 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_7627_4731) (v_1@@8 T@FrameType) (q@@6 T@Field_7627_4731) (w@@8 T@FrameType) (r@@9 T@Field_7627_4731) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7627_7627 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7627_7627 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_7627_7627 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7627_7627 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7627_7627 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.295:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_4796| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.228:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4796| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_7588)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@4 () T@PolymorphicMapType_7567)
(declare-fun Heap@1 () T@PolymorphicMapType_7567)
(declare-fun Heap@2 () T@PolymorphicMapType_7567)
(declare-fun Heap@3 () T@PolymorphicMapType_7567)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Heap@@28 () T@PolymorphicMapType_7567)
(declare-fun l_2 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_7567)
(declare-fun Mask@0 () T@PolymorphicMapType_7588)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_7588)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun FrameFragment_3437 (Int) T@FrameType)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (HasDirectPerm_4730_4731 Mask@1 null (P (|Set#Singleton_4796| freshObj@0))) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 3) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (HasDirectPerm_4730_4731 Mask@1 null (P (|Set#Singleton_4796| freshObj@0)))) (=> (and (and (= Heap@2 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@1) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@1) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@1) (store (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@1) null (|P#sm| (|Set#Singleton_4796| freshObj@0)) ZeroPMask) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@1) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@1) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@1) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@1))) (= Heap@3 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@2) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@2) (store (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@2) null (P (|Set#Singleton_4796| freshObj@0)) freshVersion@0) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@2) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@2) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@2) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@2) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 2) 1))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@28 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@28) l_2 $allocated)) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@28) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_7567 (store (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@@28) freshObj@0 $allocated true) (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@@28) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@@28) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@@28) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@@28) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@@28) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@@28) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@@28)))) (and (= Mask@0 (PolymorphicMapType_7588 (store (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| ZeroMask) freshObj@0 f_7 (+ (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| ZeroMask) freshObj@0 f_7) FullPerm)) (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| ZeroMask) (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| ZeroMask) (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| ZeroMask) (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| ZeroMask) (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| ZeroMask) (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| ZeroMask) (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| ZeroMask))) (state Heap@0 Mask@0))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (= FullPerm (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@0) freshObj@0 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@0) freshObj@0 f_7)) (=> (and (= Heap@1 (PolymorphicMapType_7567 (|PolymorphicMapType_7567_4427_53#PolymorphicMapType_7567| Heap@0) (store (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@0) freshObj@0 f_7 null) (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@0) (|PolymorphicMapType_7567_4736_18185#PolymorphicMapType_7567| Heap@0) (|PolymorphicMapType_7567_4730_53#PolymorphicMapType_7567| Heap@0) (|PolymorphicMapType_7567_4730_7641#PolymorphicMapType_7567| Heap@0) (|PolymorphicMapType_7567_7627_4731#PolymorphicMapType_7567| Heap@0) (|PolymorphicMapType_7567_7627_20506#PolymorphicMapType_7567| Heap@0))) (state Heap@1 Mask@0)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((l$0 T@Ref) (l$0_1 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0 l$0_1)) (select (|Set#Singleton_4796| freshObj@0) l$0)) (select (|Set#Singleton_4796| freshObj@0) l$0_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0 l$0_1)))
 :qid |stdinbpl.548:17|
 :skolemid |95|
 :pattern ( (neverTriggered2 l$0) (neverTriggered2 l$0_1))
))) (=> (forall ((l$0@@0 T@Ref) (l$0_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0@@0 l$0_1@@0)) (select (|Set#Singleton_4796| freshObj@0) l$0@@0)) (select (|Set#Singleton_4796| freshObj@0) l$0_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0@@0 l$0_1@@0)))
 :qid |stdinbpl.548:17|
 :skolemid |95|
 :pattern ( (neverTriggered2 l$0@@0) (neverTriggered2 l$0_1@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((l$0@@1 T@Ref) ) (!  (=> (select (|Set#Singleton_4796| freshObj@0) l$0@@1) (>= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@0) l$0@@1 f_7) FullPerm))
 :qid |stdinbpl.555:17|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@1) l$0@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) l$0@@1 f_7))
 :pattern ( (select (|Set#Singleton_4796| freshObj@0) l$0@@1))
))) (=> (forall ((l$0@@2 T@Ref) ) (!  (=> (select (|Set#Singleton_4796| freshObj@0) l$0@@2) (>= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@0) l$0@@2 f_7) FullPerm))
 :qid |stdinbpl.555:17|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@1) l$0@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) l$0@@2 f_7))
 :pattern ( (select (|Set#Singleton_4796| freshObj@0) l$0@@2))
)) (=> (forall ((l$0@@3 T@Ref) ) (!  (=> (and (select (|Set#Singleton_4796| freshObj@0) l$0@@3) (< NoPerm FullPerm)) (and (qpRange2 l$0@@3) (= (invRecv2 l$0@@3) l$0@@3)))
 :qid |stdinbpl.561:22|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_7567_4430_4431#PolymorphicMapType_7567| Heap@1) l$0@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) l$0@@3 f_7))
 :pattern ( (select (|Set#Singleton_4796| freshObj@0) l$0@@3))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (select (|Set#Singleton_4796| freshObj@0) (invRecv2 o_4)) (and (< NoPerm FullPerm) (qpRange2 o_4))) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.565:22|
 :skolemid |98|
 :pattern ( (invRecv2 o_4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (select (|Set#Singleton_4796| freshObj@0) (invRecv2 o_4@@0)) (and (< NoPerm FullPerm) (qpRange2 o_4@@0))) (and (= (invRecv2 o_4@@0) o_4@@0) (= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) o_4@@0 f_7) (- (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@0) o_4@@0 f_7) FullPerm)))) (=> (not (and (select (|Set#Singleton_4796| freshObj@0) (invRecv2 o_4@@0)) (and (< NoPerm FullPerm) (qpRange2 o_4@@0)))) (= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@0) o_4@@0 f_7))))
 :qid |stdinbpl.571:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) o_4@@0 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_7627_53) ) (!  (=> true (= (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| Mask@0) o_4@@1 f_5) (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.577:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_7640_7641) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| Mask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.577:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_7627_4731) ) (!  (=> true (= (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| Mask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.577:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_7627_13875) ) (!  (=> true (= (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| Mask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.577:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4730_53) ) (!  (=> true (= (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| Mask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.577:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_4730_7641) ) (!  (=> true (= (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| Mask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.577:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_13856_13857) ) (!  (=> true (= (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| Mask@0) o_4@@7 f_5@@5) (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.577:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_13870_13875) ) (!  (=> true (= (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| Mask@0) o_4@@8 f_5@@6) (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.577:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| QPMask@0) o_4@@8 f_5@@6))
))) (= Mask@1 (PolymorphicMapType_7588 (|PolymorphicMapType_7588_4724_4725#PolymorphicMapType_7588| QPMask@0) (store (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| QPMask@0) null (P (|Set#Singleton_4796| freshObj@0)) (+ (select (|PolymorphicMapType_7588_4730_4731#PolymorphicMapType_7588| QPMask@0) null (P (|Set#Singleton_4796| freshObj@0))) FullPerm)) (|PolymorphicMapType_7588_4724_4731#PolymorphicMapType_7588| QPMask@0) (|PolymorphicMapType_7588_4724_53#PolymorphicMapType_7588| QPMask@0) (|PolymorphicMapType_7588_4724_27594#PolymorphicMapType_7588| QPMask@0) (|PolymorphicMapType_7588_4730_4725#PolymorphicMapType_7588| QPMask@0) (|PolymorphicMapType_7588_4730_53#PolymorphicMapType_7588| QPMask@0) (|PolymorphicMapType_7588_4730_27925#PolymorphicMapType_7588| QPMask@0)))) (and (and (state Heap@1 Mask@1) (state Heap@1 Mask@1)) (and (|P#trigger_4730| Heap@1 (P (|Set#Singleton_4796| freshObj@0))) (= (select (|PolymorphicMapType_7567_4730_4731#PolymorphicMapType_7567| Heap@1) null (P (|Set#Singleton_4796| freshObj@0))) (FrameFragment_3437 (|P#condqp1| Heap@1 (|Set#Singleton_4796| freshObj@0))))))) (and (=> (= (ControlFlow 0 4) 2) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 4) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
