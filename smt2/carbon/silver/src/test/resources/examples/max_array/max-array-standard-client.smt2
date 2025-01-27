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
(declare-sort T@Field_11120_53 0)
(declare-sort T@Field_11133_11134 0)
(declare-sort T@Field_14577_1545 0)
(declare-sort T@Field_7620_32924 0)
(declare-sort T@Field_7620_32791 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11081 0)) (((PolymorphicMapType_11081 (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| (Array T@Ref T@Field_14577_1545 Real)) (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| (Array T@Ref T@Field_11120_53 Real)) (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| (Array T@Ref T@Field_11133_11134 Real)) (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| (Array T@Ref T@Field_7620_32791 Real)) (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| (Array T@Ref T@Field_7620_32924 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11609 0)) (((PolymorphicMapType_11609 (|PolymorphicMapType_11609_11120_53#PolymorphicMapType_11609| (Array T@Ref T@Field_11120_53 Bool)) (|PolymorphicMapType_11609_11120_11134#PolymorphicMapType_11609| (Array T@Ref T@Field_11133_11134 Bool)) (|PolymorphicMapType_11609_11120_1545#PolymorphicMapType_11609| (Array T@Ref T@Field_14577_1545 Bool)) (|PolymorphicMapType_11609_11120_32791#PolymorphicMapType_11609| (Array T@Ref T@Field_7620_32791 Bool)) (|PolymorphicMapType_11609_11120_34102#PolymorphicMapType_11609| (Array T@Ref T@Field_7620_32924 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11060 0)) (((PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| (Array T@Ref T@Field_11120_53 Bool)) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| (Array T@Ref T@Field_11133_11134 T@Ref)) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| (Array T@Ref T@Field_14577_1545 Int)) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| (Array T@Ref T@Field_7620_32924 T@PolymorphicMapType_11609)) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| (Array T@Ref T@Field_7620_32791 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11120_53)
(declare-fun val () T@Field_14577_1545)
(declare-fun succHeap (T@PolymorphicMapType_11060 T@PolymorphicMapType_11060) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11060 T@PolymorphicMapType_11060) Bool)
(declare-fun state (T@PolymorphicMapType_11060 T@PolymorphicMapType_11081) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11081) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11609)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11060 T@PolymorphicMapType_11060 T@PolymorphicMapType_11081) Bool)
(declare-fun IsPredicateField_7620_32882 (T@Field_7620_32791) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7620 (T@Field_7620_32791) T@Field_7620_32924)
(declare-fun HasDirectPerm_7620_32855 (T@PolymorphicMapType_11081 T@Ref T@Field_7620_32791) Bool)
(declare-fun IsWandField_7620_34629 (T@Field_7620_32791) Bool)
(declare-fun WandMaskField_7620 (T@Field_7620_32791) T@Field_7620_32924)
(declare-fun dummyHeap () T@PolymorphicMapType_11060)
(declare-fun ZeroMask () T@PolymorphicMapType_11081)
(declare-fun InsidePredicate_11120_11120 (T@Field_7620_32791 T@FrameType T@Field_7620_32791 T@FrameType) Bool)
(declare-fun IsPredicateField_7620_1545 (T@Field_14577_1545) Bool)
(declare-fun IsWandField_7620_1545 (T@Field_14577_1545) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7620_38175 (T@Field_7620_32924) Bool)
(declare-fun IsWandField_7620_38191 (T@Field_7620_32924) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7620_11134 (T@Field_11133_11134) Bool)
(declare-fun IsWandField_7620_11134 (T@Field_11133_11134) Bool)
(declare-fun IsPredicateField_7620_53 (T@Field_11120_53) Bool)
(declare-fun IsWandField_7620_53 (T@Field_11120_53) Bool)
(declare-fun HasDirectPerm_7620_38629 (T@PolymorphicMapType_11081 T@Ref T@Field_7620_32924) Bool)
(declare-fun HasDirectPerm_7620_11134 (T@PolymorphicMapType_11081 T@Ref T@Field_11133_11134) Bool)
(declare-fun HasDirectPerm_7620_53 (T@PolymorphicMapType_11081 T@Ref T@Field_11120_53) Bool)
(declare-fun HasDirectPerm_7620_1545 (T@PolymorphicMapType_11081 T@Ref T@Field_14577_1545) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11081 T@PolymorphicMapType_11081 T@PolymorphicMapType_11081) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_11060) (Heap1 T@PolymorphicMapType_11060) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11060) (Mask T@PolymorphicMapType_11081) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11060) (Heap1@@0 T@PolymorphicMapType_11060) (Heap2 T@PolymorphicMapType_11060) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7620_32924) ) (!  (not (select (|PolymorphicMapType_11609_11120_34102#PolymorphicMapType_11609| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11609_11120_34102#PolymorphicMapType_11609| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7620_32791) ) (!  (not (select (|PolymorphicMapType_11609_11120_32791#PolymorphicMapType_11609| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11609_11120_32791#PolymorphicMapType_11609| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14577_1545) ) (!  (not (select (|PolymorphicMapType_11609_11120_1545#PolymorphicMapType_11609| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11609_11120_1545#PolymorphicMapType_11609| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11133_11134) ) (!  (not (select (|PolymorphicMapType_11609_11120_11134#PolymorphicMapType_11609| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11609_11120_11134#PolymorphicMapType_11609| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11120_53) ) (!  (not (select (|PolymorphicMapType_11609_11120_53#PolymorphicMapType_11609| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11609_11120_53#PolymorphicMapType_11609| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11060) (ExhaleHeap T@PolymorphicMapType_11060) (Mask@@0 T@PolymorphicMapType_11081) (pm_f_30 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7620_32855 Mask@@0 null pm_f_30) (IsPredicateField_7620_32882 pm_f_30)) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@0) null (PredicateMaskField_7620 pm_f_30)) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap) null (PredicateMaskField_7620 pm_f_30)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7620_32882 pm_f_30) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap) null (PredicateMaskField_7620 pm_f_30)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11060) (ExhaleHeap@@0 T@PolymorphicMapType_11060) (Mask@@1 T@PolymorphicMapType_11081) (pm_f_30@@0 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7620_32855 Mask@@1 null pm_f_30@@0) (IsWandField_7620_34629 pm_f_30@@0)) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@1) null (WandMaskField_7620 pm_f_30@@0)) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@0) null (WandMaskField_7620 pm_f_30@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7620_34629 pm_f_30@@0) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@0) null (WandMaskField_7620 pm_f_30@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11060) (ExhaleHeap@@1 T@PolymorphicMapType_11060) (Mask@@2 T@PolymorphicMapType_11081) (o_7 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@2) o_7 $allocated) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@1) o_7 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@1) o_7 $allocated))
)))
(assert (forall ((p T@Field_7620_32791) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11120_11120 p v_1 p w))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11120_11120 p v_1 p w))
)))
(assert  (not (IsPredicateField_7620_1545 val)))
(assert  (not (IsWandField_7620_1545 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11060) (ExhaleHeap@@2 T@PolymorphicMapType_11060) (Mask@@3 T@PolymorphicMapType_11081) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_11081) (o_2@@4 T@Ref) (f_4@@4 T@Field_7620_32924) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7620_38175 f_4@@4))) (not (IsWandField_7620_38191 f_4@@4))) (<= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_11081) (o_2@@5 T@Ref) (f_4@@5 T@Field_7620_32791) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7620_32882 f_4@@5))) (not (IsWandField_7620_34629 f_4@@5))) (<= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11081) (o_2@@6 T@Ref) (f_4@@6 T@Field_11133_11134) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7620_11134 f_4@@6))) (not (IsWandField_7620_11134 f_4@@6))) (<= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11081) (o_2@@7 T@Ref) (f_4@@7 T@Field_11120_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7620_53 f_4@@7))) (not (IsWandField_7620_53 f_4@@7))) (<= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11081) (o_2@@8 T@Ref) (f_4@@8 T@Field_14577_1545) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7620_1545 f_4@@8))) (not (IsWandField_7620_1545 f_4@@8))) (<= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11081) (o_2@@9 T@Ref) (f_4@@9 T@Field_7620_32924) ) (! (= (HasDirectPerm_7620_38629 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7620_38629 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11081) (o_2@@10 T@Ref) (f_4@@10 T@Field_7620_32791) ) (! (= (HasDirectPerm_7620_32855 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7620_32855 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11081) (o_2@@11 T@Ref) (f_4@@11 T@Field_11133_11134) ) (! (= (HasDirectPerm_7620_11134 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7620_11134 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11081) (o_2@@12 T@Ref) (f_4@@12 T@Field_11120_53) ) (! (= (HasDirectPerm_7620_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7620_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11081) (o_2@@13 T@Ref) (f_4@@13 T@Field_14577_1545) ) (! (= (HasDirectPerm_7620_1545 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7620_1545 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11060) (ExhaleHeap@@3 T@PolymorphicMapType_11060) (Mask@@14 T@PolymorphicMapType_11081) (pm_f_30@@1 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7620_32855 Mask@@14 null pm_f_30@@1) (IsPredicateField_7620_32882 pm_f_30@@1)) (and (and (and (and (forall ((o2_30 T@Ref) (f_13 T@Field_11120_53) ) (!  (=> (select (|PolymorphicMapType_11609_11120_53#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_30@@1))) o2_30 f_13) (= (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@4) o2_30 f_13) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30 f_13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30 f_13))
)) (forall ((o2_30@@0 T@Ref) (f_13@@0 T@Field_11133_11134) ) (!  (=> (select (|PolymorphicMapType_11609_11120_11134#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_30@@1))) o2_30@@0 f_13@@0) (= (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@4) o2_30@@0 f_13@@0) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30@@0 f_13@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30@@0 f_13@@0))
))) (forall ((o2_30@@1 T@Ref) (f_13@@1 T@Field_14577_1545) ) (!  (=> (select (|PolymorphicMapType_11609_11120_1545#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_30@@1))) o2_30@@1 f_13@@1) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@4) o2_30@@1 f_13@@1) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30@@1 f_13@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30@@1 f_13@@1))
))) (forall ((o2_30@@2 T@Ref) (f_13@@2 T@Field_7620_32791) ) (!  (=> (select (|PolymorphicMapType_11609_11120_32791#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_30@@1))) o2_30@@2 f_13@@2) (= (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@4) o2_30@@2 f_13@@2) (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30@@2 f_13@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30@@2 f_13@@2))
))) (forall ((o2_30@@3 T@Ref) (f_13@@3 T@Field_7620_32924) ) (!  (=> (select (|PolymorphicMapType_11609_11120_34102#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_30@@1))) o2_30@@3 f_13@@3) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) o2_30@@3 f_13@@3) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30@@3 f_13@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@3) o2_30@@3 f_13@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7620_32882 pm_f_30@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11060) (ExhaleHeap@@4 T@PolymorphicMapType_11060) (Mask@@15 T@PolymorphicMapType_11081) (pm_f_30@@2 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7620_32855 Mask@@15 null pm_f_30@@2) (IsWandField_7620_34629 pm_f_30@@2)) (and (and (and (and (forall ((o2_30@@4 T@Ref) (f_13@@4 T@Field_11120_53) ) (!  (=> (select (|PolymorphicMapType_11609_11120_53#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_30@@2))) o2_30@@4 f_13@@4) (= (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@5) o2_30@@4 f_13@@4) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@4 f_13@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@4 f_13@@4))
)) (forall ((o2_30@@5 T@Ref) (f_13@@5 T@Field_11133_11134) ) (!  (=> (select (|PolymorphicMapType_11609_11120_11134#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_30@@2))) o2_30@@5 f_13@@5) (= (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@5) o2_30@@5 f_13@@5) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@5 f_13@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@5 f_13@@5))
))) (forall ((o2_30@@6 T@Ref) (f_13@@6 T@Field_14577_1545) ) (!  (=> (select (|PolymorphicMapType_11609_11120_1545#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_30@@2))) o2_30@@6 f_13@@6) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@5) o2_30@@6 f_13@@6) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@6 f_13@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@6 f_13@@6))
))) (forall ((o2_30@@7 T@Ref) (f_13@@7 T@Field_7620_32791) ) (!  (=> (select (|PolymorphicMapType_11609_11120_32791#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_30@@2))) o2_30@@7 f_13@@7) (= (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@5) o2_30@@7 f_13@@7) (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@7 f_13@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@7 f_13@@7))
))) (forall ((o2_30@@8 T@Ref) (f_13@@8 T@Field_7620_32924) ) (!  (=> (select (|PolymorphicMapType_11609_11120_34102#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_30@@2))) o2_30@@8 f_13@@8) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) o2_30@@8 f_13@@8) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@8 f_13@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@4) o2_30@@8 f_13@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7620_34629 pm_f_30@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11060) (ExhaleHeap@@5 T@PolymorphicMapType_11060) (Mask@@16 T@PolymorphicMapType_11081) (o_7@@0 T@Ref) (f_13@@9 T@Field_7620_32924) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7620_38629 Mask@@16 o_7@@0 f_13@@9) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@6) o_7@@0 f_13@@9) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@5) o_7@@0 f_13@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@5) o_7@@0 f_13@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11060) (ExhaleHeap@@6 T@PolymorphicMapType_11060) (Mask@@17 T@PolymorphicMapType_11081) (o_7@@1 T@Ref) (f_13@@10 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7620_32855 Mask@@17 o_7@@1 f_13@@10) (= (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@7) o_7@@1 f_13@@10) (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@6) o_7@@1 f_13@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@6) o_7@@1 f_13@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11060) (ExhaleHeap@@7 T@PolymorphicMapType_11060) (Mask@@18 T@PolymorphicMapType_11081) (o_7@@2 T@Ref) (f_13@@11 T@Field_11133_11134) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7620_11134 Mask@@18 o_7@@2 f_13@@11) (= (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@8) o_7@@2 f_13@@11) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@7) o_7@@2 f_13@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@7) o_7@@2 f_13@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11060) (ExhaleHeap@@8 T@PolymorphicMapType_11060) (Mask@@19 T@PolymorphicMapType_11081) (o_7@@3 T@Ref) (f_13@@12 T@Field_11120_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7620_53 Mask@@19 o_7@@3 f_13@@12) (= (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@9) o_7@@3 f_13@@12) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@8) o_7@@3 f_13@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@8) o_7@@3 f_13@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11060) (ExhaleHeap@@9 T@PolymorphicMapType_11060) (Mask@@20 T@PolymorphicMapType_11081) (o_7@@4 T@Ref) (f_13@@13 T@Field_14577_1545) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7620_1545 Mask@@20 o_7@@4 f_13@@13) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@10) o_7@@4 f_13@@13) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@9) o_7@@4 f_13@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@9) o_7@@4 f_13@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7620_32924) ) (! (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7620_32791) ) (! (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11133_11134) ) (! (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11120_53) ) (! (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14577_1545) ) (! (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11081) (SummandMask1 T@PolymorphicMapType_11081) (SummandMask2 T@PolymorphicMapType_11081) (o_2@@19 T@Ref) (f_4@@19 T@Field_7620_32924) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11081) (SummandMask1@@0 T@PolymorphicMapType_11081) (SummandMask2@@0 T@PolymorphicMapType_11081) (o_2@@20 T@Ref) (f_4@@20 T@Field_7620_32791) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11081) (SummandMask1@@1 T@PolymorphicMapType_11081) (SummandMask2@@1 T@PolymorphicMapType_11081) (o_2@@21 T@Ref) (f_4@@21 T@Field_11133_11134) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11081) (SummandMask1@@2 T@PolymorphicMapType_11081) (SummandMask2@@2 T@PolymorphicMapType_11081) (o_2@@22 T@Ref) (f_4@@22 T@Field_11120_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11081) (SummandMask1@@3 T@PolymorphicMapType_11081) (SummandMask2@@3 T@PolymorphicMapType_11081) (o_2@@23 T@Ref) (f_4@@23 T@Field_14577_1545) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a_2 T@IArrayDomainType) ) (! (>= (len a_2) 0)
 :qid |stdinbpl.247:15|
 :skolemid |23|
 :pattern ( (len a_2))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType) (i Int) ) (!  (and (= (first_1 (loc a_2@@0 i)) a_2@@0) (= (second_1 (loc a_2@@0 i)) i))
 :qid |stdinbpl.241:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11060) (o_55 T@Ref) (f_9 T@Field_7620_32791) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@11) (store (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@11) o_55 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@11) (store (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@11) o_55 f_9 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11060) (o_55@@0 T@Ref) (f_9@@0 T@Field_7620_32924) (v@@0 T@PolymorphicMapType_11609) ) (! (succHeap Heap@@12 (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@12) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@12) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@12) (store (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@12) o_55@@0 f_9@@0 v@@0) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@12) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@12) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@12) (store (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@12) o_55@@0 f_9@@0 v@@0) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11060) (o_55@@1 T@Ref) (f_9@@1 T@Field_14577_1545) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@13) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@13) (store (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@13) o_55@@1 f_9@@1 v@@1) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@13) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@13) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@13) (store (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@13) o_55@@1 f_9@@1 v@@1) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@13) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11060) (o_55@@2 T@Ref) (f_9@@2 T@Field_11133_11134) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@14) (store (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@14) o_55@@2 f_9@@2 v@@2) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@14) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@14) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@14) (store (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@14) o_55@@2 f_9@@2 v@@2) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@14) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@14) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11060) (o_55@@3 T@Ref) (f_9@@3 T@Field_11120_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_11060 (store (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@15) o_55@@3 f_9@@3 v@@3) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (store (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@15) o_55@@3 f_9@@3 v@@3) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@15)))
)))
(assert (forall ((o_55@@4 T@Ref) (f_54 T@Field_11133_11134) (Heap@@16 T@PolymorphicMapType_11060) ) (!  (=> (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@16) o_55@@4 $allocated) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@16) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@16) o_55@@4 f_54) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@16) o_55@@4 f_54))
)))
(assert (forall ((p@@1 T@Field_7620_32791) (v_1@@0 T@FrameType) (q T@Field_7620_32791) (w@@0 T@FrameType) (r T@Field_7620_32791) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11120_11120 p@@1 v_1@@0 q w@@0) (InsidePredicate_11120_11120 q w@@0 r u)) (InsidePredicate_11120_11120 p@@1 v_1@@0 r u))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11120_11120 p@@1 v_1@@0 q w@@0) (InsidePredicate_11120_11120 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a_2@@1 () T@IArrayDomainType)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11060)
(declare-fun x@0 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_11081)
(declare-fun Heap@@17 () T@PolymorphicMapType_11060)
(declare-fun QPMask@0 () T@PolymorphicMapType_11081)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_11081)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun i_8 () Int)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(set-info :boogie-vc-id client)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon9_correct  (=> (forall ((j$2_3 Int) ) (!  (=> (and (<= 0 j$2_3) (< j$2_3 (len a_2@@1))) (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$2_3) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 x@0) val)))
 :qid |stdinbpl.1108:22|
 :skolemid |106|
 :pattern ( (loc a_2@@1 j$2_3))
)) (=> (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 7) (- 0 13)) (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 0) val)) (=> (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 0) val) (and (=> (= (ControlFlow 0 7) (- 0 12)) (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 0) val) x@0)) (=> (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 0) val) x@0) (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 7) (- 0 11)) (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 (- (len a_2@@1) 1)) val)) (=> (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 (- (len a_2@@1) 1)) val) (and (=> (= (ControlFlow 0 7) (- 0 10)) (= x@0 (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 (- (len a_2@@1) 1)) val))) (=> (= x@0 (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 (- (len a_2@@1) 1)) val)) (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 7) (- 0 9)) (= x@0 2)) (=> (= x@0 2) (=> (state ExhaleHeap@0 QPMask@2) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 1) val)) (=> (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 1) val) (=> (= (ControlFlow 0 7) (- 0 6)) (< (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 1) val) x@0)))))))))))))))))))))
(let ((anon13_Else_correct  (=> (and (and (not (= (len a_2@@1) 0)) (<= 0 x@0)) (and (< x@0 (len a_2@@1)) (= (ControlFlow 0 15) 7))) anon9_correct)))
(let ((anon13_Then_correct  (=> (= (len a_2@@1) 0) (=> (and (= x@0 (- 0 1)) (= (ControlFlow 0 14) 7)) anon9_correct))))
(let ((anon11_Else_correct  (=> (forall ((i_1 Int) ) (!  (=> (and (<= 0 i_1) (< i_1 (len a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 i_1) val) i_1))
 :qid |stdinbpl.1000:20|
 :skolemid |92|
 :pattern ( (loc a_2@@1 i_1))
)) (=> (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (forall ((j_2_2 Int) (j_2_3 Int) ) (!  (=> (and (and (and (and (not (= j_2_2 j_2_3)) (and (<= 0 j_2_2) (< j_2_2 (len a_2@@1)))) (and (<= 0 j_2_3) (< j_2_3 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_2_2) (loc a_2@@1 j_2_3))))
 :qid |stdinbpl.1021:19|
 :skolemid |93|
 :pattern ( (neverTriggered10 j_2_2) (neverTriggered10 j_2_3))
))) (=> (forall ((j_2_2@@0 Int) (j_2_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_2_2@@0 j_2_3@@0)) (and (<= 0 j_2_2@@0) (< j_2_2@@0 (len a_2@@1)))) (and (<= 0 j_2_3@@0) (< j_2_3@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_2_2@@0) (loc a_2@@1 j_2_3@@0))))
 :qid |stdinbpl.1021:19|
 :skolemid |93|
 :pattern ( (neverTriggered10 j_2_2@@0) (neverTriggered10 j_2_3@@0))
)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (forall ((j_2_2@@1 Int) ) (!  (=> (and (<= 0 j_2_2@@1) (< j_2_2@@1 (len a_2@@1))) (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) (loc a_2@@1 j_2_2@@1) val) FullPerm))
 :qid |stdinbpl.1028:19|
 :skolemid |94|
 :pattern ( (loc a_2@@1 j_2_2@@1))
 :pattern ( (loc a_2@@1 j_2_2@@1))
))) (=> (forall ((j_2_2@@2 Int) ) (!  (=> (and (<= 0 j_2_2@@2) (< j_2_2@@2 (len a_2@@1))) (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) (loc a_2@@1 j_2_2@@2) val) FullPerm))
 :qid |stdinbpl.1028:19|
 :skolemid |94|
 :pattern ( (loc a_2@@1 j_2_2@@2))
 :pattern ( (loc a_2@@1 j_2_2@@2))
)) (=> (forall ((j_2_2@@3 Int) ) (!  (=> (and (and (<= 0 j_2_2@@3) (< j_2_2@@3 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange10 (loc a_2@@1 j_2_2@@3)) (= (invRecv10 (loc a_2@@1 j_2_2@@3)) j_2_2@@3)))
 :qid |stdinbpl.1034:24|
 :skolemid |95|
 :pattern ( (loc a_2@@1 j_2_2@@3))
 :pattern ( (loc a_2@@1 j_2_2@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv10 o_9)) (< (invRecv10 o_9) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange10 o_9))) (= (loc a_2@@1 (invRecv10 o_9)) o_9))
 :qid |stdinbpl.1038:24|
 :skolemid |96|
 :pattern ( (invRecv10 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange10 o_9@@0))) (and (= (loc a_2@@1 (invRecv10 o_9@@0)) o_9@@0) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@0 val) (- (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_9@@0 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv10 o_9@@0)) (< (invRecv10 o_9@@0) (len a_2@@1))) (and (< NoPerm FullPerm) (qpRange10 o_9@@0)))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@0 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_9@@0 val))))
 :qid |stdinbpl.1044:24|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@0 val))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.1050:31|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1050:31|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14577_1545) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1050:31|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1050:31|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@0) o_9@@5 f_5@@3) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1050:31|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_9@@5 f_5@@3))
))) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((j$0 Int) (j$0_3 Int) ) (!  (=> (and (and (and (and (not (= j$0 j$0_3)) (and (<= 0 j$0) (< j$0 (len a_2@@1)))) (and (<= 0 j$0_3) (< j$0_3 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0) (loc a_2@@1 j$0_3))))
 :qid |stdinbpl.1066:17|
 :skolemid |99|
))) (=> (forall ((j$0@@0 Int) (j$0_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j$0@@0 j$0_3@@0)) (and (<= 0 j$0@@0) (< j$0@@0 (len a_2@@1)))) (and (<= 0 j$0_3@@0) (< j$0_3@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0@@0) (loc a_2@@1 j$0_3@@0))))
 :qid |stdinbpl.1066:17|
 :skolemid |99|
)) (=> (and (and (forall ((j$0@@1 Int) ) (!  (=> (and (and (<= 0 j$0@@1) (< j$0@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange11 (loc a_2@@1 j$0@@1)) (= (invRecv11 (loc a_2@@1 j$0@@1)) j$0@@1)))
 :qid |stdinbpl.1072:24|
 :skolemid |100|
 :pattern ( (loc a_2@@1 j$0@@1))
 :pattern ( (loc a_2@@1 j$0@@1))
)) (forall ((o_9@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv11 o_9@@6)) (< (invRecv11 o_9@@6) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange11 o_9@@6)) (= (loc a_2@@1 (invRecv11 o_9@@6)) o_9@@6))
 :qid |stdinbpl.1076:24|
 :skolemid |101|
 :pattern ( (invRecv11 o_9@@6))
))) (and (forall ((j$0@@2 Int) ) (!  (=> (and (<= 0 j$0@@2) (< j$0@@2 (len a_2@@1))) (not (= (loc a_2@@1 j$0@@2) null)))
 :qid |stdinbpl.1082:24|
 :skolemid |102|
 :pattern ( (loc a_2@@1 j$0@@2))
 :pattern ( (loc a_2@@1 j$0@@2))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv11 o_9@@7)) (< (invRecv11 o_9@@7) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange11 o_9@@7)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv11 o_9@@7)) o_9@@7)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_9@@7 val) (+ (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@7 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv11 o_9@@7)) (< (invRecv11 o_9@@7) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange11 o_9@@7))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_9@@7 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@7 val))))
 :qid |stdinbpl.1088:24|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_9@@7 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_9@@8 f_5@@4) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@2) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1092:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@2) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_9@@9 f_5@@5) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@2) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1092:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@2) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_14577_1545) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@10 f_5@@6) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1092:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_9@@11 f_5@@7) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@2) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1092:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@2) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_9@@12 f_5@@8) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@2) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1092:31|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@2) o_9@@12 f_5@@8))
))) (and (state ExhaleHeap@0 QPMask@2) (forall ((j$1_3 Int) ) (!  (=> (and (<= 0 j$1_3) (< j$1_3 (len a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$1_3) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$1_3) val)))
 :qid |stdinbpl.1098:22|
 :skolemid |105|
 :pattern ( (loc a_2@@1 j$1_3))
)))) (and (=> (= (ControlFlow 0 16) 14) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))))))))))))))
(let ((anon5_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (<= 0 i_8) (< i_8 (len a_2@@1)))) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon12_Then_correct  (=> (and (<= 0 i_8) (< i_8 (len a_2@@1))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_7620_1545 QPMask@0 (loc a_2@@1 i_8) val)) (=> (HasDirectPerm_7620_1545 QPMask@0 (loc a_2@@1 i_8) val) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (<= 0 j_1) (< j_1 (len a_2@@1)))) (and (<= 0 j_1_1) (< j_1_1 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1) (loc a_2@@1 j_1_1))))
 :qid |stdinbpl.953:15|
 :skolemid |86|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (<= 0 j_1@@0) (< j_1@@0 (len a_2@@1)))) (and (<= 0 j_1_1@@0) (< j_1_1@@0 (len a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1@@0) (loc a_2@@1 j_1_1@@0))))
 :qid |stdinbpl.953:15|
 :skolemid |86|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (and (<= 0 j_1@@1) (< j_1@@1 (len a_2@@1))) (< NoPerm FullPerm)) (and (qpRange9 (loc a_2@@1 j_1@@1)) (= (invRecv9 (loc a_2@@1 j_1@@1)) j_1@@1)))
 :qid |stdinbpl.959:22|
 :skolemid |87|
 :pattern ( (loc a_2@@1 j_1@@1))
 :pattern ( (loc a_2@@1 j_1@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv9 o_9@@13)) (< (invRecv9 o_9@@13) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange9 o_9@@13)) (= (loc a_2@@1 (invRecv9 o_9@@13)) o_9@@13))
 :qid |stdinbpl.963:22|
 :skolemid |88|
 :pattern ( (invRecv9 o_9@@13))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (and (<= 0 j_1@@2) (< j_1@@2 (len a_2@@1))) (not (= (loc a_2@@1 j_1@@2) null)))
 :qid |stdinbpl.969:22|
 :skolemid |89|
 :pattern ( (loc a_2@@1 j_1@@2))
 :pattern ( (loc a_2@@1 j_1@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv9 o_9@@14)) (< (invRecv9 o_9@@14) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange9 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv9 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_9@@14 val) (+ (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_9@@14 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv9 o_9@@14)) (< (invRecv9 o_9@@14) (len a_2@@1))) (< NoPerm FullPerm)) (qpRange9 o_9@@14))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_9@@14 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_9@@14 val))))
 :qid |stdinbpl.975:22|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_9@@14 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@0) o_9@@15 f_5@@9)))
 :qid |stdinbpl.979:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@0) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@0) o_9@@16 f_5@@10)))
 :qid |stdinbpl.979:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@0) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_14577_1545) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_9@@17 f_5@@11)))
 :qid |stdinbpl.979:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@0) o_9@@18 f_5@@12)))
 :qid |stdinbpl.979:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@0) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@0) o_9@@19 f_5@@13)))
 :qid |stdinbpl.979:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@0) o_9@@19 f_5@@13))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 20) 16) anon11_Else_correct) (=> (= (ControlFlow 0 20) 3) anon12_Then_correct)) (=> (= (ControlFlow 0 20) 5) anon12_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (= (len a_2@@1) 3)) (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 22) 1) anon10_Then_correct) (=> (= (ControlFlow 0 22) 20) anon10_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23) 22) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
