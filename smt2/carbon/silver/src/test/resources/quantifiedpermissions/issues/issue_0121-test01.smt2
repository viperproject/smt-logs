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
(declare-sort T@Field_7865_53 0)
(declare-sort T@Field_7878_7879 0)
(declare-sort T@Field_14045_14047 0)
(declare-sort T@Field_4903_14162 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4903_14179 0)
(declare-sort T@Field_14161_15604 0)
(declare-sort T@Field_14161_4909 0)
(declare-sort T@Field_14161_53 0)
(declare-sort T@Field_14161_14162 0)
(declare-sort T@Field_14174_14179 0)
(declare-datatypes ((T@PolymorphicMapType_7826 0)) (((PolymorphicMapType_7826 (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| (Array T@Ref T@Field_14045_14047 Real)) (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| (Array T@Ref T@Field_7878_7879 Real)) (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| (Array T@Ref T@Field_7865_53 Real)) (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| (Array T@Ref T@Field_4903_14162 Real)) (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| (Array T@Ref T@Field_4903_14179 Real)) (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| (Array T@Ref T@Field_14161_15604 Real)) (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| (Array T@Ref T@Field_14161_4909 Real)) (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| (Array T@Ref T@Field_14161_53 Real)) (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| (Array T@Ref T@Field_14161_14162 Real)) (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| (Array T@Ref T@Field_14174_14179 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8354 0)) (((PolymorphicMapType_8354 (|PolymorphicMapType_8354_7865_53#PolymorphicMapType_8354| (Array T@Ref T@Field_7865_53 Bool)) (|PolymorphicMapType_8354_7865_7879#PolymorphicMapType_8354| (Array T@Ref T@Field_7878_7879 Bool)) (|PolymorphicMapType_8354_7865_23420#PolymorphicMapType_8354| (Array T@Ref T@Field_14045_14047 Bool)) (|PolymorphicMapType_8354_7865_14162#PolymorphicMapType_8354| (Array T@Ref T@Field_4903_14162 Bool)) (|PolymorphicMapType_8354_7865_23842#PolymorphicMapType_8354| (Array T@Ref T@Field_4903_14179 Bool)) (|PolymorphicMapType_8354_14161_53#PolymorphicMapType_8354| (Array T@Ref T@Field_14161_53 Bool)) (|PolymorphicMapType_8354_14161_7879#PolymorphicMapType_8354| (Array T@Ref T@Field_14161_4909 Bool)) (|PolymorphicMapType_8354_14161_24488#PolymorphicMapType_8354| (Array T@Ref T@Field_14161_15604 Bool)) (|PolymorphicMapType_8354_14161_14162#PolymorphicMapType_8354| (Array T@Ref T@Field_14161_14162 Bool)) (|PolymorphicMapType_8354_14161_24910#PolymorphicMapType_8354| (Array T@Ref T@Field_14174_14179 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7805 0)) (((PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| (Array T@Ref T@Field_7865_53 Bool)) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| (Array T@Ref T@Field_7878_7879 T@Ref)) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| (Array T@Ref T@Field_14045_14047 (Array T@Ref Bool))) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| (Array T@Ref T@Field_4903_14162 T@FrameType)) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| (Array T@Ref T@Field_4903_14179 T@PolymorphicMapType_8354)) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| (Array T@Ref T@Field_14161_15604 (Array T@Ref Bool))) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| (Array T@Ref T@Field_14161_4909 T@Ref)) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| (Array T@Ref T@Field_14161_53 Bool)) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| (Array T@Ref T@Field_14161_14162 T@FrameType)) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| (Array T@Ref T@Field_14174_14179 T@PolymorphicMapType_8354)) ) ) ))
(declare-fun $allocated () T@Field_7865_53)
(declare-fun S_1 () T@Field_14045_14047)
(declare-fun f_7 () T@Field_7878_7879)
(declare-fun succHeap (T@PolymorphicMapType_7805 T@PolymorphicMapType_7805) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7805 T@PolymorphicMapType_7805) Bool)
(declare-fun state (T@PolymorphicMapType_7805 T@PolymorphicMapType_7826) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7826) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8354)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun p_14 (T@Ref) T@Field_14161_14162)
(declare-fun IsPredicateField_4912_4913 (T@Field_14161_14162) Bool)
(declare-fun |p#trigger_4912| (T@PolymorphicMapType_7805 T@Field_14161_14162) Bool)
(declare-fun |p#everUsed_4912| (T@Field_14161_14162) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7805 T@PolymorphicMapType_7805 T@PolymorphicMapType_7826) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4912 (T@Field_14161_14162) T@Field_14174_14179)
(declare-fun HasDirectPerm_14161_14162 (T@PolymorphicMapType_7826 T@Ref T@Field_14161_14162) Bool)
(declare-fun IsPredicateField_4903_22338 (T@Field_4903_14162) Bool)
(declare-fun PredicateMaskField_4903 (T@Field_4903_14162) T@Field_4903_14179)
(declare-fun HasDirectPerm_4903_14162 (T@PolymorphicMapType_7826 T@Ref T@Field_4903_14162) Bool)
(declare-fun IsWandField_14161_26075 (T@Field_14161_14162) Bool)
(declare-fun WandMaskField_14161 (T@Field_14161_14162) T@Field_14174_14179)
(declare-fun IsWandField_4903_25718 (T@Field_4903_14162) Bool)
(declare-fun WandMaskField_4903 (T@Field_4903_14162) T@Field_4903_14179)
(declare-fun |p#sm| (T@Ref) T@Field_14174_14179)
(declare-fun dummyHeap () T@PolymorphicMapType_7805)
(declare-fun ZeroMask () T@PolymorphicMapType_7826)
(declare-fun InsidePredicate_14161_14161 (T@Field_14161_14162 T@FrameType T@Field_14161_14162 T@FrameType) Bool)
(declare-fun InsidePredicate_7865_7865 (T@Field_4903_14162 T@FrameType T@Field_4903_14162 T@FrameType) Bool)
(declare-fun IsPredicateField_4903_14071 (T@Field_14045_14047) Bool)
(declare-fun IsWandField_4903_14098 (T@Field_14045_14047) Bool)
(declare-fun IsPredicateField_4908_4909 (T@Field_7878_7879) Bool)
(declare-fun IsWandField_4908_4909 (T@Field_7878_7879) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14161_33060 (T@Field_14174_14179) Bool)
(declare-fun IsWandField_14161_33076 (T@Field_14174_14179) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14161_53 (T@Field_14161_53) Bool)
(declare-fun IsWandField_14161_53 (T@Field_14161_53) Bool)
(declare-fun IsPredicateField_14161_4909 (T@Field_14161_4909) Bool)
(declare-fun IsWandField_14161_4909 (T@Field_14161_4909) Bool)
(declare-fun IsPredicateField_14161_32397 (T@Field_14161_15604) Bool)
(declare-fun IsWandField_14161_32413 (T@Field_14161_15604) Bool)
(declare-fun IsPredicateField_4903_32224 (T@Field_4903_14179) Bool)
(declare-fun IsWandField_4903_32240 (T@Field_4903_14179) Bool)
(declare-fun IsPredicateField_4903_53 (T@Field_7865_53) Bool)
(declare-fun IsWandField_4903_53 (T@Field_7865_53) Bool)
(declare-fun HasDirectPerm_14161_22050 (T@PolymorphicMapType_7826 T@Ref T@Field_14174_14179) Bool)
(declare-fun HasDirectPerm_14161_53 (T@PolymorphicMapType_7826 T@Ref T@Field_14161_53) Bool)
(declare-fun HasDirectPerm_14161_4909 (T@PolymorphicMapType_7826 T@Ref T@Field_14161_4909) Bool)
(declare-fun HasDirectPerm_14161_21127 (T@PolymorphicMapType_7826 T@Ref T@Field_14161_15604) Bool)
(declare-fun HasDirectPerm_4903_20847 (T@PolymorphicMapType_7826 T@Ref T@Field_4903_14179) Bool)
(declare-fun HasDirectPerm_4903_53 (T@PolymorphicMapType_7826 T@Ref T@Field_7865_53) Bool)
(declare-fun HasDirectPerm_4908_4909 (T@PolymorphicMapType_7826 T@Ref T@Field_7878_7879) Bool)
(declare-fun HasDirectPerm_4903_15604 (T@PolymorphicMapType_7826 T@Ref T@Field_14045_14047) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7826 T@PolymorphicMapType_7826 T@PolymorphicMapType_7826) Bool)
(declare-fun getPredWandId_4912_4913 (T@Field_14161_14162) Int)
(declare-fun |p#condqp1| (T@PolymorphicMapType_7805 T@Ref) Int)
(declare-fun |sk_p#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_14161_7865 (T@Field_14161_14162 T@FrameType T@Field_4903_14162 T@FrameType) Bool)
(declare-fun InsidePredicate_7865_14161 (T@Field_4903_14162 T@FrameType T@Field_14161_14162 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7805) (Heap1 T@PolymorphicMapType_7805) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7805) (Mask T@PolymorphicMapType_7826) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7805) (Heap1@@0 T@PolymorphicMapType_7805) (Heap2 T@PolymorphicMapType_7805) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14174_14179) ) (!  (not (select (|PolymorphicMapType_8354_14161_24910#PolymorphicMapType_8354| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_14161_24910#PolymorphicMapType_8354| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14161_14162) ) (!  (not (select (|PolymorphicMapType_8354_14161_14162#PolymorphicMapType_8354| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_14161_14162#PolymorphicMapType_8354| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14161_15604) ) (!  (not (select (|PolymorphicMapType_8354_14161_24488#PolymorphicMapType_8354| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_14161_24488#PolymorphicMapType_8354| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14161_4909) ) (!  (not (select (|PolymorphicMapType_8354_14161_7879#PolymorphicMapType_8354| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_14161_7879#PolymorphicMapType_8354| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14161_53) ) (!  (not (select (|PolymorphicMapType_8354_14161_53#PolymorphicMapType_8354| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_14161_53#PolymorphicMapType_8354| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4903_14179) ) (!  (not (select (|PolymorphicMapType_8354_7865_23842#PolymorphicMapType_8354| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_7865_23842#PolymorphicMapType_8354| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4903_14162) ) (!  (not (select (|PolymorphicMapType_8354_7865_14162#PolymorphicMapType_8354| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_7865_14162#PolymorphicMapType_8354| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_14045_14047) ) (!  (not (select (|PolymorphicMapType_8354_7865_23420#PolymorphicMapType_8354| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_7865_23420#PolymorphicMapType_8354| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7878_7879) ) (!  (not (select (|PolymorphicMapType_8354_7865_7879#PolymorphicMapType_8354| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_7865_7879#PolymorphicMapType_8354| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7865_53) ) (!  (not (select (|PolymorphicMapType_8354_7865_53#PolymorphicMapType_8354| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8354_7865_53#PolymorphicMapType_8354| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.291:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_4912_4913 (p_14 this))
 :qid |stdinbpl.407:15|
 :skolemid |83|
 :pattern ( (p_14 this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7805) (this@@0 T@Ref) ) (! (|p#everUsed_4912| (p_14 this@@0))
 :qid |stdinbpl.426:15|
 :skolemid |87|
 :pattern ( (|p#trigger_4912| Heap@@0 (p_14 this@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.294:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7805) (ExhaleHeap T@PolymorphicMapType_7805) (Mask@@0 T@PolymorphicMapType_7826) (pm_f_13 T@Field_14161_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_14161_14162 Mask@@0 null pm_f_13) (IsPredicateField_4912_4913 pm_f_13)) (= (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@1) null (PredicateMaskField_4912 pm_f_13)) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap) null (PredicateMaskField_4912 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4912_4913 pm_f_13) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap) null (PredicateMaskField_4912 pm_f_13)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7805) (ExhaleHeap@@0 T@PolymorphicMapType_7805) (Mask@@1 T@PolymorphicMapType_7826) (pm_f_13@@0 T@Field_4903_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4903_14162 Mask@@1 null pm_f_13@@0) (IsPredicateField_4903_22338 pm_f_13@@0)) (= (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@2) null (PredicateMaskField_4903 pm_f_13@@0)) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@0) null (PredicateMaskField_4903 pm_f_13@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4903_22338 pm_f_13@@0) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@0) null (PredicateMaskField_4903 pm_f_13@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7805) (ExhaleHeap@@1 T@PolymorphicMapType_7805) (Mask@@2 T@PolymorphicMapType_7826) (pm_f_13@@1 T@Field_14161_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_14161_14162 Mask@@2 null pm_f_13@@1) (IsWandField_14161_26075 pm_f_13@@1)) (= (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@3) null (WandMaskField_14161 pm_f_13@@1)) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@1) null (WandMaskField_14161 pm_f_13@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_14161_26075 pm_f_13@@1) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@1) null (WandMaskField_14161 pm_f_13@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7805) (ExhaleHeap@@2 T@PolymorphicMapType_7805) (Mask@@3 T@PolymorphicMapType_7826) (pm_f_13@@2 T@Field_4903_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4903_14162 Mask@@3 null pm_f_13@@2) (IsWandField_4903_25718 pm_f_13@@2)) (= (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@4) null (WandMaskField_4903 pm_f_13@@2)) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@2) null (WandMaskField_4903 pm_f_13@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_4903_25718 pm_f_13@@2) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@2) null (WandMaskField_4903 pm_f_13@@2)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (p_14 this@@1) (p_14 this2)) (= this@@1 this2))
 :qid |stdinbpl.417:15|
 :skolemid |85|
 :pattern ( (p_14 this@@1) (p_14 this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|p#sm| this@@2) (|p#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.421:15|
 :skolemid |86|
 :pattern ( (|p#sm| this@@2) (|p#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7805) (ExhaleHeap@@3 T@PolymorphicMapType_7805) (Mask@@4 T@PolymorphicMapType_7826) (pm_f_13@@3 T@Field_14161_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14161_14162 Mask@@4 null pm_f_13@@3) (IsPredicateField_4912_4913 pm_f_13@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_7865_53) ) (!  (=> (select (|PolymorphicMapType_8354_7865_53#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13 f_30) (= (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@5) o2_13 f_30) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_7878_7879) ) (!  (=> (select (|PolymorphicMapType_8354_7865_7879#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@5) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_14045_14047) ) (!  (=> (select (|PolymorphicMapType_8354_7865_23420#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@5) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_4903_14162) ) (!  (=> (select (|PolymorphicMapType_8354_7865_14162#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@5) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_4903_14179) ) (!  (=> (select (|PolymorphicMapType_8354_7865_23842#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@5) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_14161_53) ) (!  (=> (select (|PolymorphicMapType_8354_14161_53#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@5) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_14161_4909) ) (!  (=> (select (|PolymorphicMapType_8354_14161_7879#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@5) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_14161_15604) ) (!  (=> (select (|PolymorphicMapType_8354_14161_24488#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@5) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_14161_14162) ) (!  (=> (select (|PolymorphicMapType_8354_14161_14162#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@5) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8354_14161_24910#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) null (PredicateMaskField_4912 pm_f_13@@3))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@5) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@3) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4912_4913 pm_f_13@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7805) (ExhaleHeap@@4 T@PolymorphicMapType_7805) (Mask@@5 T@PolymorphicMapType_7826) (pm_f_13@@4 T@Field_4903_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4903_14162 Mask@@5 null pm_f_13@@4) (IsPredicateField_4903_22338 pm_f_13@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_7865_53) ) (!  (=> (select (|PolymorphicMapType_8354_7865_53#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@6) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@9 f_30@@9))
)) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_7878_7879) ) (!  (=> (select (|PolymorphicMapType_8354_7865_7879#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@6) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_14045_14047) ) (!  (=> (select (|PolymorphicMapType_8354_7865_23420#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@6) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_4903_14162) ) (!  (=> (select (|PolymorphicMapType_8354_7865_14162#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@6) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_4903_14179) ) (!  (=> (select (|PolymorphicMapType_8354_7865_23842#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_14161_53) ) (!  (=> (select (|PolymorphicMapType_8354_14161_53#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@6) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@14 f_30@@14))
))) (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_14161_4909) ) (!  (=> (select (|PolymorphicMapType_8354_14161_7879#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@6) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@15 f_30@@15))
))) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_14161_15604) ) (!  (=> (select (|PolymorphicMapType_8354_14161_24488#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@6) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_14161_14162) ) (!  (=> (select (|PolymorphicMapType_8354_14161_14162#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@6) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8354_14161_24910#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@6) null (PredicateMaskField_4903 pm_f_13@@4))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@6) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@4) o2_13@@18 f_30@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4903_22338 pm_f_13@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7805) (ExhaleHeap@@5 T@PolymorphicMapType_7805) (Mask@@6 T@PolymorphicMapType_7826) (pm_f_13@@5 T@Field_14161_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_14161_14162 Mask@@6 null pm_f_13@@5) (IsWandField_14161_26075 pm_f_13@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_7865_53) ) (!  (=> (select (|PolymorphicMapType_8354_7865_53#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@7) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@19 f_30@@19))
)) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_7878_7879) ) (!  (=> (select (|PolymorphicMapType_8354_7865_7879#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@7) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_14045_14047) ) (!  (=> (select (|PolymorphicMapType_8354_7865_23420#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@7) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_4903_14162) ) (!  (=> (select (|PolymorphicMapType_8354_7865_14162#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@7) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@22 f_30@@22))
))) (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_4903_14179) ) (!  (=> (select (|PolymorphicMapType_8354_7865_23842#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@7) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@23 f_30@@23))
))) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_14161_53) ) (!  (=> (select (|PolymorphicMapType_8354_14161_53#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@7) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_14161_4909) ) (!  (=> (select (|PolymorphicMapType_8354_14161_7879#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@7) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_14161_15604) ) (!  (=> (select (|PolymorphicMapType_8354_14161_24488#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@7) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_14161_14162) ) (!  (=> (select (|PolymorphicMapType_8354_14161_14162#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@7) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8354_14161_24910#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) null (WandMaskField_14161 pm_f_13@@5))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@7) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@5) o2_13@@28 f_30@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_14161_26075 pm_f_13@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7805) (ExhaleHeap@@6 T@PolymorphicMapType_7805) (Mask@@7 T@PolymorphicMapType_7826) (pm_f_13@@6 T@Field_4903_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4903_14162 Mask@@7 null pm_f_13@@6) (IsWandField_4903_25718 pm_f_13@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_7865_53) ) (!  (=> (select (|PolymorphicMapType_8354_7865_53#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@8) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@29 f_30@@29))
)) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_7878_7879) ) (!  (=> (select (|PolymorphicMapType_8354_7865_7879#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@8) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@30 f_30@@30))
))) (forall ((o2_13@@31 T@Ref) (f_30@@31 T@Field_14045_14047) ) (!  (=> (select (|PolymorphicMapType_8354_7865_23420#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@31 f_30@@31) (= (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@8) o2_13@@31 f_30@@31) (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@31 f_30@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@31 f_30@@31))
))) (forall ((o2_13@@32 T@Ref) (f_30@@32 T@Field_4903_14162) ) (!  (=> (select (|PolymorphicMapType_8354_7865_14162#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@32 f_30@@32) (= (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@8) o2_13@@32 f_30@@32) (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@32 f_30@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@32 f_30@@32))
))) (forall ((o2_13@@33 T@Ref) (f_30@@33 T@Field_4903_14179) ) (!  (=> (select (|PolymorphicMapType_8354_7865_23842#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@33 f_30@@33) (= (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) o2_13@@33 f_30@@33) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@33 f_30@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@33 f_30@@33))
))) (forall ((o2_13@@34 T@Ref) (f_30@@34 T@Field_14161_53) ) (!  (=> (select (|PolymorphicMapType_8354_14161_53#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@34 f_30@@34) (= (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@8) o2_13@@34 f_30@@34) (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@34 f_30@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@34 f_30@@34))
))) (forall ((o2_13@@35 T@Ref) (f_30@@35 T@Field_14161_4909) ) (!  (=> (select (|PolymorphicMapType_8354_14161_7879#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@35 f_30@@35) (= (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@8) o2_13@@35 f_30@@35) (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@35 f_30@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@35 f_30@@35))
))) (forall ((o2_13@@36 T@Ref) (f_30@@36 T@Field_14161_15604) ) (!  (=> (select (|PolymorphicMapType_8354_14161_24488#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@36 f_30@@36) (= (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@8) o2_13@@36 f_30@@36) (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@36 f_30@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@36 f_30@@36))
))) (forall ((o2_13@@37 T@Ref) (f_30@@37 T@Field_14161_14162) ) (!  (=> (select (|PolymorphicMapType_8354_14161_14162#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@37 f_30@@37) (= (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@8) o2_13@@37 f_30@@37) (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@37 f_30@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@37 f_30@@37))
))) (forall ((o2_13@@38 T@Ref) (f_30@@38 T@Field_14174_14179) ) (!  (=> (select (|PolymorphicMapType_8354_14161_24910#PolymorphicMapType_8354| (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@8) null (WandMaskField_4903 pm_f_13@@6))) o2_13@@38 f_30@@38) (= (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@8) o2_13@@38 f_30@@38) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@38 f_30@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@6) o2_13@@38 f_30@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_4903_25718 pm_f_13@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7805) (ExhaleHeap@@7 T@PolymorphicMapType_7805) (Mask@@8 T@PolymorphicMapType_7826) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@9) o_22 $allocated) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@7) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@7) o_22 $allocated))
)))
(assert (forall ((p T@Field_14161_14162) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14161_14161 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14161_14161 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4903_14162) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7865_7865 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7865_7865 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4903_14071 S_1)))
(assert  (not (IsWandField_4903_14098 S_1)))
(assert  (not (IsPredicateField_4908_4909 f_7)))
(assert  (not (IsWandField_4908_4909 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7805) (ExhaleHeap@@8 T@PolymorphicMapType_7805) (Mask@@9 T@PolymorphicMapType_7826) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7826) (o_2@@9 T@Ref) (f_4@@9 T@Field_14174_14179) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_14161_33060 f_4@@9))) (not (IsWandField_14161_33076 f_4@@9))) (<= (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7826) (o_2@@10 T@Ref) (f_4@@10 T@Field_14161_14162) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4912_4913 f_4@@10))) (not (IsWandField_14161_26075 f_4@@10))) (<= (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7826) (o_2@@11 T@Ref) (f_4@@11 T@Field_14161_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_14161_53 f_4@@11))) (not (IsWandField_14161_53 f_4@@11))) (<= (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7826) (o_2@@12 T@Ref) (f_4@@12 T@Field_14161_4909) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_14161_4909 f_4@@12))) (not (IsWandField_14161_4909 f_4@@12))) (<= (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7826) (o_2@@13 T@Ref) (f_4@@13 T@Field_14161_15604) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_14161_32397 f_4@@13))) (not (IsWandField_14161_32413 f_4@@13))) (<= (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7826) (o_2@@14 T@Ref) (f_4@@14 T@Field_4903_14179) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4903_32224 f_4@@14))) (not (IsWandField_4903_32240 f_4@@14))) (<= (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7826) (o_2@@15 T@Ref) (f_4@@15 T@Field_4903_14162) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4903_22338 f_4@@15))) (not (IsWandField_4903_25718 f_4@@15))) (<= (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7826) (o_2@@16 T@Ref) (f_4@@16 T@Field_7865_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4903_53 f_4@@16))) (not (IsWandField_4903_53 f_4@@16))) (<= (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7826) (o_2@@17 T@Ref) (f_4@@17 T@Field_7878_7879) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4908_4909 f_4@@17))) (not (IsWandField_4908_4909 f_4@@17))) (<= (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7826) (o_2@@18 T@Ref) (f_4@@18 T@Field_14045_14047) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4903_14071 f_4@@18))) (not (IsWandField_4903_14098 f_4@@18))) (<= (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7826) (o_2@@19 T@Ref) (f_4@@19 T@Field_14174_14179) ) (! (= (HasDirectPerm_14161_22050 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14161_22050 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7826) (o_2@@20 T@Ref) (f_4@@20 T@Field_14161_14162) ) (! (= (HasDirectPerm_14161_14162 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14161_14162 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7826) (o_2@@21 T@Ref) (f_4@@21 T@Field_14161_53) ) (! (= (HasDirectPerm_14161_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14161_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7826) (o_2@@22 T@Ref) (f_4@@22 T@Field_14161_4909) ) (! (= (HasDirectPerm_14161_4909 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14161_4909 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7826) (o_2@@23 T@Ref) (f_4@@23 T@Field_14161_15604) ) (! (= (HasDirectPerm_14161_21127 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14161_21127 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7826) (o_2@@24 T@Ref) (f_4@@24 T@Field_4903_14179) ) (! (= (HasDirectPerm_4903_20847 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4903_20847 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7826) (o_2@@25 T@Ref) (f_4@@25 T@Field_4903_14162) ) (! (= (HasDirectPerm_4903_14162 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4903_14162 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7826) (o_2@@26 T@Ref) (f_4@@26 T@Field_7865_53) ) (! (= (HasDirectPerm_4903_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4903_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7826) (o_2@@27 T@Ref) (f_4@@27 T@Field_7878_7879) ) (! (= (HasDirectPerm_4908_4909 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4908_4909 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7826) (o_2@@28 T@Ref) (f_4@@28 T@Field_14045_14047) ) (! (= (HasDirectPerm_4903_15604 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4903_15604 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7805) (ExhaleHeap@@9 T@PolymorphicMapType_7805) (Mask@@30 T@PolymorphicMapType_7826) (o_22@@0 T@Ref) (f_30@@39 T@Field_14174_14179) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_14161_22050 Mask@@30 o_22@@0 f_30@@39) (= (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@11) o_22@@0 f_30@@39) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@9) o_22@@0 f_30@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| ExhaleHeap@@9) o_22@@0 f_30@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7805) (ExhaleHeap@@10 T@PolymorphicMapType_7805) (Mask@@31 T@PolymorphicMapType_7826) (o_22@@1 T@Ref) (f_30@@40 T@Field_14161_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_14161_14162 Mask@@31 o_22@@1 f_30@@40) (= (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@12) o_22@@1 f_30@@40) (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@10) o_22@@1 f_30@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| ExhaleHeap@@10) o_22@@1 f_30@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7805) (ExhaleHeap@@11 T@PolymorphicMapType_7805) (Mask@@32 T@PolymorphicMapType_7826) (o_22@@2 T@Ref) (f_30@@41 T@Field_14161_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_14161_53 Mask@@32 o_22@@2 f_30@@41) (= (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@13) o_22@@2 f_30@@41) (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@11) o_22@@2 f_30@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| ExhaleHeap@@11) o_22@@2 f_30@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7805) (ExhaleHeap@@12 T@PolymorphicMapType_7805) (Mask@@33 T@PolymorphicMapType_7826) (o_22@@3 T@Ref) (f_30@@42 T@Field_14161_4909) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_14161_4909 Mask@@33 o_22@@3 f_30@@42) (= (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@14) o_22@@3 f_30@@42) (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@12) o_22@@3 f_30@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| ExhaleHeap@@12) o_22@@3 f_30@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7805) (ExhaleHeap@@13 T@PolymorphicMapType_7805) (Mask@@34 T@PolymorphicMapType_7826) (o_22@@4 T@Ref) (f_30@@43 T@Field_14161_15604) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_14161_21127 Mask@@34 o_22@@4 f_30@@43) (= (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@15) o_22@@4 f_30@@43) (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@13) o_22@@4 f_30@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| ExhaleHeap@@13) o_22@@4 f_30@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7805) (ExhaleHeap@@14 T@PolymorphicMapType_7805) (Mask@@35 T@PolymorphicMapType_7826) (o_22@@5 T@Ref) (f_30@@44 T@Field_4903_14179) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_4903_20847 Mask@@35 o_22@@5 f_30@@44) (= (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@16) o_22@@5 f_30@@44) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@14) o_22@@5 f_30@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| ExhaleHeap@@14) o_22@@5 f_30@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7805) (ExhaleHeap@@15 T@PolymorphicMapType_7805) (Mask@@36 T@PolymorphicMapType_7826) (o_22@@6 T@Ref) (f_30@@45 T@Field_4903_14162) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_4903_14162 Mask@@36 o_22@@6 f_30@@45) (= (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@17) o_22@@6 f_30@@45) (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@15) o_22@@6 f_30@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| ExhaleHeap@@15) o_22@@6 f_30@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7805) (ExhaleHeap@@16 T@PolymorphicMapType_7805) (Mask@@37 T@PolymorphicMapType_7826) (o_22@@7 T@Ref) (f_30@@46 T@Field_7865_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_4903_53 Mask@@37 o_22@@7 f_30@@46) (= (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@18) o_22@@7 f_30@@46) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@16) o_22@@7 f_30@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| ExhaleHeap@@16) o_22@@7 f_30@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7805) (ExhaleHeap@@17 T@PolymorphicMapType_7805) (Mask@@38 T@PolymorphicMapType_7826) (o_22@@8 T@Ref) (f_30@@47 T@Field_7878_7879) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_4908_4909 Mask@@38 o_22@@8 f_30@@47) (= (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@19) o_22@@8 f_30@@47) (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@17) o_22@@8 f_30@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| ExhaleHeap@@17) o_22@@8 f_30@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7805) (ExhaleHeap@@18 T@PolymorphicMapType_7805) (Mask@@39 T@PolymorphicMapType_7826) (o_22@@9 T@Ref) (f_30@@48 T@Field_14045_14047) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_4903_15604 Mask@@39 o_22@@9 f_30@@48) (= (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@20) o_22@@9 f_30@@48) (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@18) o_22@@9 f_30@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| ExhaleHeap@@18) o_22@@9 f_30@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_14174_14179) ) (! (= (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_14161_14162) ) (! (= (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_14161_53) ) (! (= (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14161_4909) ) (! (= (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_14161_15604) ) (! (= (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_4903_14179) ) (! (= (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4903_14162) ) (! (= (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_7865_53) ) (! (= (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_7878_7879) ) (! (= (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14045_14047) ) (! (= (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7826) (SummandMask1 T@PolymorphicMapType_7826) (SummandMask2 T@PolymorphicMapType_7826) (o_2@@39 T@Ref) (f_4@@39 T@Field_14174_14179) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7826) (SummandMask1@@0 T@PolymorphicMapType_7826) (SummandMask2@@0 T@PolymorphicMapType_7826) (o_2@@40 T@Ref) (f_4@@40 T@Field_14161_14162) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7826) (SummandMask1@@1 T@PolymorphicMapType_7826) (SummandMask2@@1 T@PolymorphicMapType_7826) (o_2@@41 T@Ref) (f_4@@41 T@Field_14161_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7826) (SummandMask1@@2 T@PolymorphicMapType_7826) (SummandMask2@@2 T@PolymorphicMapType_7826) (o_2@@42 T@Ref) (f_4@@42 T@Field_14161_4909) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7826) (SummandMask1@@3 T@PolymorphicMapType_7826) (SummandMask2@@3 T@PolymorphicMapType_7826) (o_2@@43 T@Ref) (f_4@@43 T@Field_14161_15604) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7826) (SummandMask1@@4 T@PolymorphicMapType_7826) (SummandMask2@@4 T@PolymorphicMapType_7826) (o_2@@44 T@Ref) (f_4@@44 T@Field_4903_14179) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7826) (SummandMask1@@5 T@PolymorphicMapType_7826) (SummandMask2@@5 T@PolymorphicMapType_7826) (o_2@@45 T@Ref) (f_4@@45 T@Field_4903_14162) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7826) (SummandMask1@@6 T@PolymorphicMapType_7826) (SummandMask2@@6 T@PolymorphicMapType_7826) (o_2@@46 T@Ref) (f_4@@46 T@Field_7865_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7826) (SummandMask1@@7 T@PolymorphicMapType_7826) (SummandMask2@@7 T@PolymorphicMapType_7826) (o_2@@47 T@Ref) (f_4@@47 T@Field_7878_7879) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7826) (SummandMask1@@8 T@PolymorphicMapType_7826) (SummandMask2@@8 T@PolymorphicMapType_7826) (o_2@@48 T@Ref) (f_4@@48 T@Field_14045_14047) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_4912_4913 (p_14 this@@3)) 0)
 :qid |stdinbpl.411:15|
 :skolemid |84|
 :pattern ( (p_14 this@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_7805) (Heap1Heap T@PolymorphicMapType_7805) (this@@4 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap2Heap) this@@4 S_1) (|sk_p#condqp1| (|p#condqp1| Heap2Heap this@@4) (|p#condqp1| Heap1Heap this@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))  (and (select (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap1Heap) this@@4 S_1) (|sk_p#condqp1| (|p#condqp1| Heap2Heap this@@4) (|p#condqp1| Heap1Heap this@@4))) (< NoPerm (/ (to_real 1) (to_real 2))))) (=> (and (select (select (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap2Heap) this@@4 S_1) (|sk_p#condqp1| (|p#condqp1| Heap2Heap this@@4) (|p#condqp1| Heap1Heap this@@4))) (< NoPerm (/ (to_real 1) (to_real 2)))) (= (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap2Heap) (|sk_p#condqp1| (|p#condqp1| Heap2Heap this@@4) (|p#condqp1| Heap1Heap this@@4)) f_7) (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap1Heap) (|sk_p#condqp1| (|p#condqp1| Heap2Heap this@@4) (|p#condqp1| Heap1Heap this@@4)) f_7)))) (= (|p#condqp1| Heap2Heap this@@4) (|p#condqp1| Heap1Heap this@@4)))
 :qid |stdinbpl.437:15|
 :skolemid |88|
 :pattern ( (|p#condqp1| Heap2Heap this@@4) (|p#condqp1| Heap1Heap this@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7805) (o_35 T@Ref) (f_11 T@Field_14174_14179) (v T@PolymorphicMapType_8354) ) (! (succHeap Heap@@21 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@21) (store (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@21) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@21) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@21) (store (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@21) o_35 f_11 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7805) (o_35@@0 T@Ref) (f_11@@0 T@Field_14161_14162) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@22) (store (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@22) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@22) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@22) (store (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@22) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7805) (o_35@@1 T@Ref) (f_11@@1 T@Field_14161_15604) (v@@1 (Array T@Ref Bool)) ) (! (succHeap Heap@@23 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@23) (store (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@23) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@23) (store (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@23) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@23) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7805) (o_35@@2 T@Ref) (f_11@@2 T@Field_14161_4909) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@24) (store (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@24) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@24) (store (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@24) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@24) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7805) (o_35@@3 T@Ref) (f_11@@3 T@Field_14161_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@25) (store (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@25) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@25) (store (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@25) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@25) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7805) (o_35@@4 T@Ref) (f_11@@4 T@Field_4903_14179) (v@@4 T@PolymorphicMapType_8354) ) (! (succHeap Heap@@26 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@26) (store (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@26) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@26) (store (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@26) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@26) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7805) (o_35@@5 T@Ref) (f_11@@5 T@Field_4903_14162) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@27) (store (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@27) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@27) (store (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@27) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@27) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7805) (o_35@@6 T@Ref) (f_11@@6 T@Field_14045_14047) (v@@6 (Array T@Ref Bool)) ) (! (succHeap Heap@@28 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@28) (store (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@28) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@28) (store (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@28) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@28) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7805) (o_35@@7 T@Ref) (f_11@@7 T@Field_7878_7879) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@29) (store (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@29) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@29) (store (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@29) o_35@@7 f_11@@7 v@@7) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@29) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7805) (o_35@@8 T@Ref) (f_11@@8 T@Field_7865_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_7805 (store (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@30) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7805 (store (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@30) o_35@@8 f_11@@8 v@@8) (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_4903_14759#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_4903_14162#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_4903_20889#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_21169#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_4909#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_53#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_14162#PolymorphicMapType_7805| Heap@@30) (|PolymorphicMapType_7805_14161_22092#PolymorphicMapType_7805| Heap@@30)))
)))
(assert (forall ((this@@5 T@Ref) ) (! (= (PredicateMaskField_4912 (p_14 this@@5)) (|p#sm| this@@5))
 :qid |stdinbpl.403:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_4912 (p_14 this@@5)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.289:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.290:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_35@@9 T@Ref) (f_31 T@Field_7878_7879) (Heap@@31 T@PolymorphicMapType_7805) ) (!  (=> (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@31) o_35@@9 $allocated) (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@31) (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@31) o_35@@9 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@31) o_35@@9 f_31))
)))
(assert (forall ((p@@2 T@Field_14161_14162) (v_1@@1 T@FrameType) (q T@Field_14161_14162) (w@@1 T@FrameType) (r T@Field_14161_14162) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14161_14161 p@@2 v_1@@1 q w@@1) (InsidePredicate_14161_14161 q w@@1 r u)) (InsidePredicate_14161_14161 p@@2 v_1@@1 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14161_14161 p@@2 v_1@@1 q w@@1) (InsidePredicate_14161_14161 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14161_14162) (v_1@@2 T@FrameType) (q@@0 T@Field_14161_14162) (w@@2 T@FrameType) (r@@0 T@Field_4903_14162) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14161_14161 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14161_7865 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14161_7865 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14161_14161 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14161_7865 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14161_14162) (v_1@@3 T@FrameType) (q@@1 T@Field_4903_14162) (w@@3 T@FrameType) (r@@1 T@Field_14161_14162) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14161_7865 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7865_14161 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14161_14161 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14161_7865 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7865_14161 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14161_14162) (v_1@@4 T@FrameType) (q@@2 T@Field_4903_14162) (w@@4 T@FrameType) (r@@2 T@Field_4903_14162) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14161_7865 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7865_7865 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14161_7865 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14161_7865 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7865_7865 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4903_14162) (v_1@@5 T@FrameType) (q@@3 T@Field_14161_14162) (w@@5 T@FrameType) (r@@3 T@Field_14161_14162) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7865_14161 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14161_14161 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7865_14161 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7865_14161 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14161_14161 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4903_14162) (v_1@@6 T@FrameType) (q@@4 T@Field_14161_14162) (w@@6 T@FrameType) (r@@4 T@Field_4903_14162) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7865_14161 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14161_7865 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7865_7865 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7865_14161 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14161_7865 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4903_14162) (v_1@@7 T@FrameType) (q@@5 T@Field_4903_14162) (w@@7 T@FrameType) (r@@5 T@Field_14161_14162) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7865_7865 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7865_14161 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7865_14161 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7865_7865 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7865_14161 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4903_14162) (v_1@@8 T@FrameType) (q@@6 T@Field_4903_14162) (w@@8 T@FrameType) (r@@6 T@Field_4903_14162) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7865_7865 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7865_7865 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7865_7865 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7865_7865 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7865_7865 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.295:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun y_5 () T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_7805)
(declare-fun QPMask@0 () T@PolymorphicMapType_7826)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun this@@6 () T@Ref)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (select xs y_5) (not (= (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@32) y_5 f_7) null)))) (= (ControlFlow 0 6) 3)) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (select xs y_5) (not (= (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@32) y_5 f_7) null))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_4908_4909 QPMask@0 y_5 f_7)) (=> (HasDirectPerm_4908_4909 QPMask@0 y_5 f_7) (=> (= (ControlFlow 0 4) 3) anon7_correct))))))
(let ((anon11_Else_correct  (=> (not (select xs y_5)) (and (=> (= (ControlFlow 0 9) 4) anon12_Then_correct) (=> (= (ControlFlow 0 9) 6) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (select xs y_5) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_4908_4909 QPMask@0 y_5 f_7)) (=> (HasDirectPerm_4908_4909 QPMask@0 y_5 f_7) (and (=> (= (ControlFlow 0 7) 4) anon12_Then_correct) (=> (= (ControlFlow 0 7) 6) anon12_Else_correct)))))))
(let ((anon10_Else_correct true))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 12)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= x_1 x_1_1)))
 :qid |stdinbpl.566:15|
 :skolemid |97|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.566:15|
 :skolemid |97|
)) (=> (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select xs x_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 x_1@@1) (= (invRecv2 x_1@@1) x_1@@1)))
 :qid |stdinbpl.572:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@32) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) x_1@@1 f_7))
 :pattern ( (select xs x_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select xs (invRecv2 o_4)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4)) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.576:22|
 :skolemid |99|
 :pattern ( (invRecv2 o_4))
))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs x_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.582:15|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@32) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) x_1@@2 f_7))
 :pattern ( (select xs x_1@@2))
))) (=> (forall ((x_1@@3 T@Ref) ) (!  (=> (select xs x_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.582:15|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@32) x_1@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) x_1@@3 f_7))
 :pattern ( (select xs x_1@@3))
)) (=> (and (forall ((x_1@@4 T@Ref) ) (!  (=> (and (select xs x_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= x_1@@4 null)))
 :qid |stdinbpl.588:22|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_7805_4609_4610#PolymorphicMapType_7805| Heap@@32) x_1@@4 f_7))
 :pattern ( (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) x_1@@4 f_7))
 :pattern ( (select xs x_1@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv2 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (invRecv2 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| ZeroMask) o_4@@0 f_7) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select xs (invRecv2 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.594:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) o_4@@0 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_7865_53) ) (!  (=> true (= (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_7826_4903_53#PolymorphicMapType_7826| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_7878_7879) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7826_4908_4909#PolymorphicMapType_7826| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14045_14047) ) (!  (=> true (= (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7826_4903_15486#PolymorphicMapType_7826| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_4903_14162) ) (!  (=> true (= (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7826_4903_14162#PolymorphicMapType_7826| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4903_14179) ) (!  (=> true (= (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7826_4903_30333#PolymorphicMapType_7826| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_14161_53) ) (!  (=> true (= (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| ZeroMask) o_4@@6 f_5@@4) (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| ZeroMask) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_7826_14161_53#PolymorphicMapType_7826| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_14161_4909) ) (!  (=> true (= (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| ZeroMask) o_4@@7 f_5@@5) (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| ZeroMask) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_7826_14161_4909#PolymorphicMapType_7826| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_14161_15604) ) (!  (=> true (= (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| ZeroMask) o_4@@8 f_5@@6) (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| ZeroMask) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_7826_14161_30433#PolymorphicMapType_7826| QPMask@0) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_14161_14162) ) (!  (=> true (= (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| ZeroMask) o_4@@9 f_5@@7) (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| QPMask@0) o_4@@9 f_5@@7)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| ZeroMask) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_7826_14161_14162#PolymorphicMapType_7826| QPMask@0) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_14174_14179) ) (!  (=> true (= (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| ZeroMask) o_4@@10 f_5@@8) (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| QPMask@0) o_4@@10 f_5@@8)))
 :qid |stdinbpl.598:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| ZeroMask) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_7826_14161_30768#PolymorphicMapType_7826| QPMask@0) o_4@@10 f_5@@8))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (and (=> (= (ControlFlow 0 10) 2) anon10_Else_correct) (=> (= (ControlFlow 0 10) 7) anon11_Then_correct)) (=> (= (ControlFlow 0 10) 9) anon11_Else_correct)))))))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_7805_4606_53#PolymorphicMapType_7805| Heap@@32) this@@6 $allocated)) (and (select xs this@@6) (state Heap@@32 ZeroMask))) (and (=> (= (ControlFlow 0 13) 1) anon9_Then_correct) (=> (= (ControlFlow 0 13) 10) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
