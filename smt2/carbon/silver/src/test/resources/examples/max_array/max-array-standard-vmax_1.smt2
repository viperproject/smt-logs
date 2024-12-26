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
(declare-fun len_1 (T@IArrayDomainType) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@IArrayDomainType)
(declare-fun second (T@Ref) Int)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_11060) (ExhaleHeap T@PolymorphicMapType_11060) (Mask@@0 T@PolymorphicMapType_11081) (pm_f_8 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7620_32855 Mask@@0 null pm_f_8) (IsPredicateField_7620_32882 pm_f_8)) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@0) null (PredicateMaskField_7620 pm_f_8)) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap) null (PredicateMaskField_7620 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7620_32882 pm_f_8) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap) null (PredicateMaskField_7620 pm_f_8)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11060) (ExhaleHeap@@0 T@PolymorphicMapType_11060) (Mask@@1 T@PolymorphicMapType_11081) (pm_f_8@@0 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7620_32855 Mask@@1 null pm_f_8@@0) (IsWandField_7620_34629 pm_f_8@@0)) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@1) null (WandMaskField_7620 pm_f_8@@0)) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@0) null (WandMaskField_7620 pm_f_8@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7620_34629 pm_f_8@@0) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@0) null (WandMaskField_7620 pm_f_8@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11060) (ExhaleHeap@@1 T@PolymorphicMapType_11060) (Mask@@2 T@PolymorphicMapType_11081) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@2) o_23 $allocated) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@1) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@1) o_23 $allocated))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_11060) (ExhaleHeap@@3 T@PolymorphicMapType_11060) (Mask@@14 T@PolymorphicMapType_11081) (pm_f_8@@1 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7620_32855 Mask@@14 null pm_f_8@@1) (IsPredicateField_7620_32882 pm_f_8@@1)) (and (and (and (and (forall ((o2_8 T@Ref) (f_25 T@Field_11120_53) ) (!  (=> (select (|PolymorphicMapType_11609_11120_53#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_8@@1))) o2_8 f_25) (= (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@4) o2_8 f_25) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8 f_25))
)) (forall ((o2_8@@0 T@Ref) (f_25@@0 T@Field_11133_11134) ) (!  (=> (select (|PolymorphicMapType_11609_11120_11134#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_8@@1))) o2_8@@0 f_25@@0) (= (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@4) o2_8@@0 f_25@@0) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8@@0 f_25@@0))
))) (forall ((o2_8@@1 T@Ref) (f_25@@1 T@Field_14577_1545) ) (!  (=> (select (|PolymorphicMapType_11609_11120_1545#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_8@@1))) o2_8@@1 f_25@@1) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@4) o2_8@@1 f_25@@1) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8@@1 f_25@@1))
))) (forall ((o2_8@@2 T@Ref) (f_25@@2 T@Field_7620_32791) ) (!  (=> (select (|PolymorphicMapType_11609_11120_32791#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_8@@1))) o2_8@@2 f_25@@2) (= (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@4) o2_8@@2 f_25@@2) (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8@@2 f_25@@2))
))) (forall ((o2_8@@3 T@Ref) (f_25@@3 T@Field_7620_32924) ) (!  (=> (select (|PolymorphicMapType_11609_11120_34102#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) null (PredicateMaskField_7620 pm_f_8@@1))) o2_8@@3 f_25@@3) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@4) o2_8@@3 f_25@@3) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@3) o2_8@@3 f_25@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7620_32882 pm_f_8@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11060) (ExhaleHeap@@4 T@PolymorphicMapType_11060) (Mask@@15 T@PolymorphicMapType_11081) (pm_f_8@@2 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7620_32855 Mask@@15 null pm_f_8@@2) (IsWandField_7620_34629 pm_f_8@@2)) (and (and (and (and (forall ((o2_8@@4 T@Ref) (f_25@@4 T@Field_11120_53) ) (!  (=> (select (|PolymorphicMapType_11609_11120_53#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_8@@2))) o2_8@@4 f_25@@4) (= (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@5) o2_8@@4 f_25@@4) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@4 f_25@@4))
)) (forall ((o2_8@@5 T@Ref) (f_25@@5 T@Field_11133_11134) ) (!  (=> (select (|PolymorphicMapType_11609_11120_11134#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_8@@2))) o2_8@@5 f_25@@5) (= (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@5) o2_8@@5 f_25@@5) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@5 f_25@@5))
))) (forall ((o2_8@@6 T@Ref) (f_25@@6 T@Field_14577_1545) ) (!  (=> (select (|PolymorphicMapType_11609_11120_1545#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_8@@2))) o2_8@@6 f_25@@6) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@5) o2_8@@6 f_25@@6) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@6 f_25@@6))
))) (forall ((o2_8@@7 T@Ref) (f_25@@7 T@Field_7620_32791) ) (!  (=> (select (|PolymorphicMapType_11609_11120_32791#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_8@@2))) o2_8@@7 f_25@@7) (= (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@5) o2_8@@7 f_25@@7) (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@7 f_25@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@7 f_25@@7))
))) (forall ((o2_8@@8 T@Ref) (f_25@@8 T@Field_7620_32924) ) (!  (=> (select (|PolymorphicMapType_11609_11120_34102#PolymorphicMapType_11609| (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) null (WandMaskField_7620 pm_f_8@@2))) o2_8@@8 f_25@@8) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@5) o2_8@@8 f_25@@8) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@8 f_25@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@4) o2_8@@8 f_25@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7620_34629 pm_f_8@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11060) (ExhaleHeap@@5 T@PolymorphicMapType_11060) (Mask@@16 T@PolymorphicMapType_11081) (o_23@@0 T@Ref) (f_25@@9 T@Field_7620_32924) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7620_38629 Mask@@16 o_23@@0 f_25@@9) (= (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@6) o_23@@0 f_25@@9) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@5) o_23@@0 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| ExhaleHeap@@5) o_23@@0 f_25@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11060) (ExhaleHeap@@6 T@PolymorphicMapType_11060) (Mask@@17 T@PolymorphicMapType_11081) (o_23@@1 T@Ref) (f_25@@10 T@Field_7620_32791) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7620_32855 Mask@@17 o_23@@1 f_25@@10) (= (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@7) o_23@@1 f_25@@10) (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@6) o_23@@1 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| ExhaleHeap@@6) o_23@@1 f_25@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11060) (ExhaleHeap@@7 T@PolymorphicMapType_11060) (Mask@@18 T@PolymorphicMapType_11081) (o_23@@2 T@Ref) (f_25@@11 T@Field_11133_11134) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7620_11134 Mask@@18 o_23@@2 f_25@@11) (= (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@8) o_23@@2 f_25@@11) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@7) o_23@@2 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| ExhaleHeap@@7) o_23@@2 f_25@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11060) (ExhaleHeap@@8 T@PolymorphicMapType_11060) (Mask@@19 T@PolymorphicMapType_11081) (o_23@@3 T@Ref) (f_25@@12 T@Field_11120_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7620_53 Mask@@19 o_23@@3 f_25@@12) (= (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@9) o_23@@3 f_25@@12) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@8) o_23@@3 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| ExhaleHeap@@8) o_23@@3 f_25@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11060) (ExhaleHeap@@9 T@PolymorphicMapType_11060) (Mask@@20 T@PolymorphicMapType_11081) (o_23@@4 T@Ref) (f_25@@13 T@Field_14577_1545) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7620_1545 Mask@@20 o_23@@4 f_25@@13) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@10) o_23@@4 f_25@@13) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@9) o_23@@4 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@@9) o_23@@4 f_25@@13))
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
(assert (forall ((a_2 T@IArrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.247:15|
 :skolemid |23|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType) (i Int) ) (!  (and (= (first (loc a_2@@0 i)) a_2@@0) (= (second (loc a_2@@0 i)) i))
 :qid |stdinbpl.241:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11060) (o_27 T@Ref) (f_30 T@Field_7620_32791) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@11) (store (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@11) o_27 f_30 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@11) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@11) (store (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@11) o_27 f_30 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11060) (o_27@@0 T@Ref) (f_30@@0 T@Field_7620_32924) (v@@0 T@PolymorphicMapType_11609) ) (! (succHeap Heap@@12 (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@12) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@12) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@12) (store (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@12) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@12) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@12) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@12) (store (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@12) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11060) (o_27@@1 T@Ref) (f_30@@1 T@Field_14577_1545) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@13) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@13) (store (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@13) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@13) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@13) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@13) (store (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@13) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@13) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11060) (o_27@@2 T@Ref) (f_30@@2 T@Field_11133_11134) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@14) (store (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@14) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@14) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@14) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@14) (store (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@14) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@14) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@14) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11060) (o_27@@3 T@Ref) (f_30@@3 T@Field_11120_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_11060 (store (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@15) o_27@@3 f_30@@3 v@@3) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11060 (store (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@15) o_27@@3 f_30@@3 v@@3) (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_7620_32968#PolymorphicMapType_11060| Heap@@15) (|PolymorphicMapType_11060_11120_32791#PolymorphicMapType_11060| Heap@@15)))
)))
(assert (forall ((o_27@@4 T@Ref) (f_24 T@Field_11133_11134) (Heap@@16 T@PolymorphicMapType_11060) ) (!  (=> (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@16) o_27@@4 $allocated) (select (|PolymorphicMapType_11060_7458_53#PolymorphicMapType_11060| Heap@@16) (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@16) o_27@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11060_7461_7462#PolymorphicMapType_11060| Heap@@16) o_27@@4 f_24))
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
(declare-fun j$2 () Int)
(declare-fun a_2@@1 () T@IArrayDomainType)
(declare-fun QPMask@7 () T@PolymorphicMapType_11081)
(declare-fun at () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11060)
(declare-fun Heap@@17 () T@PolymorphicMapType_11060)
(declare-fun j$1 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_11081)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun j$5_1 () Int)
(declare-fun k@0 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_11081)
(declare-fun at@1 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11060)
(declare-fun j$4_1 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_11081)
(declare-fun j$5_5 () Int)
(declare-fun k@1 () Int)
(declare-fun at@3 () Int)
(declare-fun j$4_5 () Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_11081)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_11081)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun j$2_2 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_11060)
(declare-fun at@2 () Int)
(declare-fun j$1_2 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_11081)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_11081)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_11081)
(declare-fun at@0 () Int)
(declare-fun j$5 () Int)
(declare-fun j$4 () Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id vmax_1)
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
 (=> (= (ControlFlow 0 0) 101) (let ((anon15_correct true))
(let ((anon71_Else_correct  (=> (and (not (and (<= 0 j$2) (< j$2 (len_1 a_2@@1)))) (= (ControlFlow 0 90) 86)) anon15_correct)))
(let ((anon71_Then_correct  (=> (and (<= 0 j$2) (< j$2 (len_1 a_2@@1))) (and (=> (= (ControlFlow 0 87) (- 0 89)) (HasDirectPerm_7620_1545 QPMask@7 (loc a_2@@1 j$2) val)) (=> (HasDirectPerm_7620_1545 QPMask@7 (loc a_2@@1 j$2) val) (and (=> (= (ControlFlow 0 87) (- 0 88)) (HasDirectPerm_7620_1545 QPMask@7 (loc a_2@@1 at) val)) (=> (HasDirectPerm_7620_1545 QPMask@7 (loc a_2@@1 at) val) (=> (= (ControlFlow 0 87) 86) anon15_correct))))))))
(let ((anon70_Else_correct true))
(let ((anon12_correct  (=> (state PostHeap@0 QPMask@7) (and (and (=> (= (ControlFlow 0 91) 85) anon70_Else_correct) (=> (= (ControlFlow 0 91) 87) anon71_Then_correct)) (=> (= (ControlFlow 0 91) 90) anon71_Else_correct)))))
(let ((anon69_Else_correct  (=> (and (and (not (= (len_1 a_2@@1) 0)) (<= 0 at)) (and (< at (len_1 a_2@@1)) (= (ControlFlow 0 93) 91))) anon12_correct)))
(let ((anon69_Then_correct  (=> (= (len_1 a_2@@1) 0) (=> (and (= at (- 0 1)) (= (ControlFlow 0 92) 91)) anon12_correct))))
(let ((anon67_Else_correct  (=> (and (forall ((j$1_1 Int) ) (!  (=> (and (<= 0 j$1_1) (< j$1_1 (len_1 a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| PostHeap@0) (loc a_2@@1 j$1_1) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$1_1) val)))
 :qid |stdinbpl.396:20|
 :skolemid |36|
 :pattern ( (loc a_2@@1 j$1_1))
)) (state PostHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 94) 92) anon69_Then_correct) (=> (= (ControlFlow 0 94) 93) anon69_Else_correct)))))
(let ((anon8_correct true))
(let ((anon68_Else_correct  (=> (and (not (and (<= 0 j$1) (< j$1 (len_1 a_2@@1)))) (= (ControlFlow 0 84) 80)) anon8_correct)))
(let ((anon68_Then_correct  (=> (and (<= 0 j$1) (< j$1 (len_1 a_2@@1))) (and (=> (= (ControlFlow 0 81) (- 0 83)) (HasDirectPerm_7620_1545 QPMask@7 (loc a_2@@1 j$1) val)) (=> (HasDirectPerm_7620_1545 QPMask@7 (loc a_2@@1 j$1) val) (and (=> (= (ControlFlow 0 81) (- 0 82)) (HasDirectPerm_7620_1545 QPMask@0 (loc a_2@@1 j$1) val)) (=> (HasDirectPerm_7620_1545 QPMask@0 (loc a_2@@1 j$1) val) (=> (= (ControlFlow 0 81) 80) anon8_correct))))))))
(let ((anon66_Else_correct  (and (=> (= (ControlFlow 0 95) (- 0 96)) (forall ((j$0_1 Int) (j$0_1_1 Int) ) (!  (=> (and (and (and (and (not (= j$0_1 j$0_1_1)) (and (<= 0 j$0_1) (< j$0_1 (len_1 a_2@@1)))) (and (<= 0 j$0_1_1) (< j$0_1_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_1) (loc a_2@@1 j$0_1_1))))
 :qid |stdinbpl.353:15|
 :skolemid |30|
))) (=> (forall ((j$0_1@@0 Int) (j$0_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$0_1@@0 j$0_1_1@@0)) (and (<= 0 j$0_1@@0) (< j$0_1@@0 (len_1 a_2@@1)))) (and (<= 0 j$0_1_1@@0) (< j$0_1_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_1@@0) (loc a_2@@1 j$0_1_1@@0))))
 :qid |stdinbpl.353:15|
 :skolemid |30|
)) (=> (and (and (forall ((j$0_1@@1 Int) ) (!  (=> (and (and (<= 0 j$0_1@@1) (< j$0_1@@1 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@1 j$0_1@@1)) (= (invRecv2 (loc a_2@@1 j$0_1@@1)) j$0_1@@1)))
 :qid |stdinbpl.359:22|
 :skolemid |31|
 :pattern ( (loc a_2@@1 j$0_1@@1))
 :pattern ( (loc a_2@@1 j$0_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (loc a_2@@1 (invRecv2 o_4)) o_4))
 :qid |stdinbpl.363:22|
 :skolemid |32|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((j$0_1@@2 Int) ) (!  (=> (and (<= 0 j$0_1@@2) (< j$0_1@@2 (len_1 a_2@@1))) (not (= (loc a_2@@1 j$0_1@@2) null)))
 :qid |stdinbpl.369:22|
 :skolemid |33|
 :pattern ( (loc a_2@@1 j$0_1@@2))
 :pattern ( (loc a_2@@1 j$0_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@7) o_4@@0 val) (+ (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@0 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@7) o_4@@0 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.375:22|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@7) o_4@@0 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@7) o_4@@1 f_5)))
 :qid |stdinbpl.379:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@7) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@7) o_4@@2 f_5@@0)))
 :qid |stdinbpl.379:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@7) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14577_1545) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@7) o_4@@3 f_5@@1)))
 :qid |stdinbpl.379:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@7) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@7) o_4@@4 f_5@@2)))
 :qid |stdinbpl.379:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@7) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@7) o_4@@5 f_5@@3)))
 :qid |stdinbpl.379:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@7) o_4@@5 f_5@@3))
))) (state PostHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 95) 94) anon67_Else_correct) (=> (= (ControlFlow 0 95) 81) anon68_Then_correct)) (=> (= (ControlFlow 0 95) 84) anon68_Else_correct))))))))
(let ((anon66_Then_correct true))
(let ((anon65_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 97) 79) anon66_Then_correct) (=> (= (ControlFlow 0 97) 95) anon66_Else_correct)))))
(let ((anon37_correct true))
(let ((anon82_Else_correct  (=> (and (not (and (<= 0 j$5_1) (< j$5_1 k@0))) (= (ControlFlow 0 65) 61)) anon37_correct)))
(let ((anon82_Then_correct  (=> (and (<= 0 j$5_1) (< j$5_1 k@0)) (and (=> (= (ControlFlow 0 62) (- 0 64)) (HasDirectPerm_7620_1545 QPMask@6 (loc a_2@@1 j$5_1) val)) (=> (HasDirectPerm_7620_1545 QPMask@6 (loc a_2@@1 j$5_1) val) (and (=> (= (ControlFlow 0 62) (- 0 63)) (HasDirectPerm_7620_1545 QPMask@6 (loc a_2@@1 at@1) val)) (=> (HasDirectPerm_7620_1545 QPMask@6 (loc a_2@@1 at@1) val) (=> (= (ControlFlow 0 62) 61) anon37_correct))))))))
(let ((anon81_Else_correct true))
(let ((anon79_Else_correct  (=> (forall ((j$4_3 Int) ) (!  (=> (and (<= 0 j$4_3) (< j$4_3 (len_1 a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$4_3) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4_3) val)))
 :qid |stdinbpl.585:28|
 :skolemid |52|
 :pattern ( (loc a_2@@1 j$4_3))
)) (=> (and (and (state ExhaleHeap@0 QPMask@6) (<= 0 at@1)) (and (< at@1 k@0) (state ExhaleHeap@0 QPMask@6))) (and (and (=> (= (ControlFlow 0 66) 60) anon81_Else_correct) (=> (= (ControlFlow 0 66) 62) anon82_Then_correct)) (=> (= (ControlFlow 0 66) 65) anon82_Else_correct))))))
(let ((anon33_correct true))
(let ((anon80_Else_correct  (=> (and (not (and (<= 0 j$4_1) (< j$4_1 (len_1 a_2@@1)))) (= (ControlFlow 0 59) 55)) anon33_correct)))
(let ((anon80_Then_correct  (=> (and (<= 0 j$4_1) (< j$4_1 (len_1 a_2@@1))) (and (=> (= (ControlFlow 0 56) (- 0 58)) (HasDirectPerm_7620_1545 QPMask@6 (loc a_2@@1 j$4_1) val)) (=> (HasDirectPerm_7620_1545 QPMask@6 (loc a_2@@1 j$4_1) val) (and (=> (= (ControlFlow 0 56) (- 0 57)) (HasDirectPerm_7620_1545 QPMask@0 (loc a_2@@1 j$4_1) val)) (=> (HasDirectPerm_7620_1545 QPMask@0 (loc a_2@@1 j$4_1) val) (=> (= (ControlFlow 0 56) 55) anon33_correct))))))))
(let ((anon78_Else_correct  (and (=> (= (ControlFlow 0 67) (- 0 68)) (forall ((j$3_2 Int) (j$3_2_1 Int) ) (!  (=> (and (and (and (and (not (= j$3_2 j$3_2_1)) (and (<= 0 j$3_2) (< j$3_2 (len_1 a_2@@1)))) (and (<= 0 j$3_2_1) (< j$3_2_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_2) (loc a_2@@1 j$3_2_1))))
 :qid |stdinbpl.542:23|
 :skolemid |46|
))) (=> (forall ((j$3_2@@0 Int) (j$3_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3_2@@0 j$3_2_1@@0)) (and (<= 0 j$3_2@@0) (< j$3_2@@0 (len_1 a_2@@1)))) (and (<= 0 j$3_2_1@@0) (< j$3_2_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_2@@0) (loc a_2@@1 j$3_2_1@@0))))
 :qid |stdinbpl.542:23|
 :skolemid |46|
)) (=> (and (and (forall ((j$3_2@@1 Int) ) (!  (=> (and (and (<= 0 j$3_2@@1) (< j$3_2@@1 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange5 (loc a_2@@1 j$3_2@@1)) (= (invRecv5 (loc a_2@@1 j$3_2@@1)) j$3_2@@1)))
 :qid |stdinbpl.548:30|
 :skolemid |47|
 :pattern ( (loc a_2@@1 j$3_2@@1))
 :pattern ( (loc a_2@@1 j$3_2@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@6)) (< (invRecv5 o_4@@6) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_4@@6)) (= (loc a_2@@1 (invRecv5 o_4@@6)) o_4@@6))
 :qid |stdinbpl.552:30|
 :skolemid |48|
 :pattern ( (invRecv5 o_4@@6))
))) (and (forall ((j$3_2@@2 Int) ) (!  (=> (and (<= 0 j$3_2@@2) (< j$3_2@@2 (len_1 a_2@@1))) (not (= (loc a_2@@1 j$3_2@@2) null)))
 :qid |stdinbpl.558:30|
 :skolemid |49|
 :pattern ( (loc a_2@@1 j$3_2@@2))
 :pattern ( (loc a_2@@1 j$3_2@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@7)) (< (invRecv5 o_4@@7) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv5 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@6) o_4@@7 val) (+ (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@7 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@7)) (< (invRecv5 o_4@@7) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange5 o_4@@7))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@6) o_4@@7 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@7 val))))
 :qid |stdinbpl.564:30|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@6) o_4@@7 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_4@@8 f_5@@4) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@6) o_4@@8 f_5@@4)))
 :qid |stdinbpl.568:37|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@6) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_4@@9 f_5@@5) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@6) o_4@@9 f_5@@5)))
 :qid |stdinbpl.568:37|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@6) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_14577_1545) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@10 f_5@@6) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@6) o_4@@10 f_5@@6)))
 :qid |stdinbpl.568:37|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@6) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_4@@11 f_5@@7) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@6) o_4@@11 f_5@@7)))
 :qid |stdinbpl.568:37|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@6) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_4@@12 f_5@@8) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@6) o_4@@12 f_5@@8)))
 :qid |stdinbpl.568:37|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@6) o_4@@12 f_5@@8))
))) (state ExhaleHeap@0 QPMask@6)) (and (and (=> (= (ControlFlow 0 67) 66) anon79_Else_correct) (=> (= (ControlFlow 0 67) 56) anon80_Then_correct)) (=> (= (ControlFlow 0 67) 59) anon80_Else_correct))))))))
(let ((anon78_Then_correct true))
(let ((anon77_Then_correct  (=> (<= 1 k@0) (=> (and (<= k@0 (len_1 a_2@@1)) (state ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 69) 54) anon78_Then_correct) (=> (= (ControlFlow 0 69) 67) anon78_Else_correct))))))
(let ((anon49_correct true))
(let ((anon88_Else_correct  (=> (and (not (and (<= 0 j$5_5) (< j$5_5 k@1))) (= (ControlFlow 0 39) 36)) anon49_correct)))
(let ((anon88_Then_correct  (=> (and (<= 0 j$5_5) (< j$5_5 k@1)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$5_5) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 at@3) val))) (=> (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$5_5) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 at@3) val)) (=> (= (ControlFlow 0 37) 36) anon49_correct))))))
(let ((anon87_Else_correct true))
(let ((anon85_Else_correct  (=> (forall ((j$4_6_1 Int) ) (!  (=> (and (<= 0 j$4_6_1) (< j$4_6_1 (len_1 a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$4_6_1) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4_6_1) val)))
 :qid |stdinbpl.746:28|
 :skolemid |68|
 :pattern ( (loc a_2@@1 j$4_6_1))
)) (and (=> (= (ControlFlow 0 40) (- 0 42)) (<= 0 at@3)) (=> (<= 0 at@3) (and (=> (= (ControlFlow 0 40) (- 0 41)) (< at@3 k@1)) (=> (< at@3 k@1) (and (and (=> (= (ControlFlow 0 40) 35) anon87_Else_correct) (=> (= (ControlFlow 0 40) 37) anon88_Then_correct)) (=> (= (ControlFlow 0 40) 39) anon88_Else_correct)))))))))
(let ((anon45_correct true))
(let ((anon86_Else_correct  (=> (and (not (and (<= 0 j$4_5) (< j$4_5 (len_1 a_2@@1)))) (= (ControlFlow 0 34) 31)) anon45_correct)))
(let ((anon86_Then_correct  (=> (and (<= 0 j$4_5) (< j$4_5 (len_1 a_2@@1))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$4_5) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4_5) val))) (=> (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$4_5) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4_5) val)) (=> (= (ControlFlow 0 32) 31) anon45_correct))))))
(let ((anon42_correct  (=> (state ExhaleHeap@0 QPMask@2) (=> (and (= k@1 (+ k@0 1)) (state ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 43) (- 0 47)) (<= 1 k@1)) (=> (<= 1 k@1) (and (=> (= (ControlFlow 0 43) (- 0 46)) (<= k@1 (len_1 a_2@@1))) (=> (<= k@1 (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 43) (- 0 45)) (forall ((j$3_4 Int) (j$3_4_1 Int) ) (!  (=> (and (and (and (and (not (= j$3_4 j$3_4_1)) (and (<= 0 j$3_4) (< j$3_4 (len_1 a_2@@1)))) (and (<= 0 j$3_4_1) (< j$3_4_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_4) (loc a_2@@1 j$3_4_1))))
 :qid |stdinbpl.705:25|
 :skolemid |62|
 :pattern ( (neverTriggered7 j$3_4) (neverTriggered7 j$3_4_1))
))) (=> (forall ((j$3_4@@0 Int) (j$3_4_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3_4@@0 j$3_4_1@@0)) (and (<= 0 j$3_4@@0) (< j$3_4@@0 (len_1 a_2@@1)))) (and (<= 0 j$3_4_1@@0) (< j$3_4_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_4@@0) (loc a_2@@1 j$3_4_1@@0))))
 :qid |stdinbpl.705:25|
 :skolemid |62|
 :pattern ( (neverTriggered7 j$3_4@@0) (neverTriggered7 j$3_4_1@@0))
)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((j$3_4@@1 Int) ) (!  (=> (and (<= 0 j$3_4@@1) (< j$3_4@@1 (len_1 a_2@@1))) (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) (loc a_2@@1 j$3_4@@1) val) FullPerm))
 :qid |stdinbpl.712:25|
 :skolemid |63|
 :pattern ( (loc a_2@@1 j$3_4@@1))
 :pattern ( (loc a_2@@1 j$3_4@@1))
))) (=> (forall ((j$3_4@@2 Int) ) (!  (=> (and (<= 0 j$3_4@@2) (< j$3_4@@2 (len_1 a_2@@1))) (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) (loc a_2@@1 j$3_4@@2) val) FullPerm))
 :qid |stdinbpl.712:25|
 :skolemid |63|
 :pattern ( (loc a_2@@1 j$3_4@@2))
 :pattern ( (loc a_2@@1 j$3_4@@2))
)) (=> (forall ((j$3_4@@3 Int) ) (!  (=> (and (and (<= 0 j$3_4@@3) (< j$3_4@@3 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange7 (loc a_2@@1 j$3_4@@3)) (= (invRecv7 (loc a_2@@1 j$3_4@@3)) j$3_4@@3)))
 :qid |stdinbpl.718:30|
 :skolemid |64|
 :pattern ( (loc a_2@@1 j$3_4@@3))
 :pattern ( (loc a_2@@1 j$3_4@@3))
)) (=> (and (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv7 o_4@@13)) (< (invRecv7 o_4@@13) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_4@@13))) (= (loc a_2@@1 (invRecv7 o_4@@13)) o_4@@13))
 :qid |stdinbpl.722:30|
 :skolemid |65|
 :pattern ( (invRecv7 o_4@@13))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv7 o_4@@14)) (< (invRecv7 o_4@@14) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_4@@14))) (and (= (loc a_2@@1 (invRecv7 o_4@@14)) o_4@@14) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@5) o_4@@14 val) (- (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_4@@14 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv7 o_4@@14)) (< (invRecv7 o_4@@14) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange7 o_4@@14)))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@5) o_4@@14 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_4@@14 val))))
 :qid |stdinbpl.728:30|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@5) o_4@@14 val))
))) (=> (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@2) o_4@@15 f_5@@9) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@5) o_4@@15 f_5@@9)))
 :qid |stdinbpl.734:37|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@5) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@2) o_4@@16 f_5@@10) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@5) o_4@@16 f_5@@10)))
 :qid |stdinbpl.734:37|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@5) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_14577_1545) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_4@@17 f_5@@11) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@5) o_4@@17 f_5@@11)))
 :qid |stdinbpl.734:37|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@5) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@2) o_4@@18 f_5@@12) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@5) o_4@@18 f_5@@12)))
 :qid |stdinbpl.734:37|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@5) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@2) o_4@@19 f_5@@13) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@5) o_4@@19 f_5@@13)))
 :qid |stdinbpl.734:37|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@5) o_4@@19 f_5@@13))
))) (and (and (=> (= (ControlFlow 0 43) 40) anon85_Else_correct) (=> (= (ControlFlow 0 43) 32) anon86_Then_correct)) (=> (= (ControlFlow 0 43) 34) anon86_Else_correct)))))))))))))))))
(let ((anon84_Else_correct  (=> (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 k@0) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 at@1) val)) (=> (and (= at@3 at@1) (= (ControlFlow 0 49) 43)) anon42_correct))))
(let ((anon84_Then_correct  (=> (and (and (< (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 at@1) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 k@0) val)) (state ExhaleHeap@0 QPMask@2)) (and (= at@3 k@0) (= (ControlFlow 0 48) 43))) anon42_correct)))
(let ((anon83_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (=> (and (<= 1 k@0) (<= k@0 (len_1 a_2@@1))) (and (=> (= (ControlFlow 0 50) (- 0 53)) (forall ((j$3_3 Int) (j$3_3_1 Int) ) (!  (=> (and (and (and (and (not (= j$3_3 j$3_3_1)) (and (<= 0 j$3_3) (< j$3_3 (len_1 a_2@@1)))) (and (<= 0 j$3_3_1) (< j$3_3_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_3) (loc a_2@@1 j$3_3_1))))
 :qid |stdinbpl.624:23|
 :skolemid |54|
))) (=> (forall ((j$3_3@@0 Int) (j$3_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3_3@@0 j$3_3_1@@0)) (and (<= 0 j$3_3@@0) (< j$3_3@@0 (len_1 a_2@@1)))) (and (<= 0 j$3_3_1@@0) (< j$3_3_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_3@@0) (loc a_2@@1 j$3_3_1@@0))))
 :qid |stdinbpl.624:23|
 :skolemid |54|
)) (=> (and (and (forall ((j$3_3@@1 Int) ) (!  (=> (and (and (<= 0 j$3_3@@1) (< j$3_3@@1 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@1 j$3_3@@1)) (= (invRecv6 (loc a_2@@1 j$3_3@@1)) j$3_3@@1)))
 :qid |stdinbpl.630:30|
 :skolemid |55|
 :pattern ( (loc a_2@@1 j$3_3@@1))
 :pattern ( (loc a_2@@1 j$3_3@@1))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_4@@20)) (< (invRecv6 o_4@@20) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_4@@20)) (= (loc a_2@@1 (invRecv6 o_4@@20)) o_4@@20))
 :qid |stdinbpl.634:30|
 :skolemid |56|
 :pattern ( (invRecv6 o_4@@20))
))) (and (forall ((j$3_3@@2 Int) ) (!  (=> (and (<= 0 j$3_3@@2) (< j$3_3@@2 (len_1 a_2@@1))) (not (= (loc a_2@@1 j$3_3@@2) null)))
 :qid |stdinbpl.640:30|
 :skolemid |57|
 :pattern ( (loc a_2@@1 j$3_3@@2))
 :pattern ( (loc a_2@@1 j$3_3@@2))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_4@@21)) (< (invRecv6 o_4@@21) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv6 o_4@@21)) o_4@@21)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_4@@21 val) (+ (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@21 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_4@@21)) (< (invRecv6 o_4@@21) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange6 o_4@@21))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_4@@21 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@21 val))))
 :qid |stdinbpl.646:30|
 :skolemid |58|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_4@@21 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_4@@22 f_5@@14) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@2) o_4@@22 f_5@@14)))
 :qid |stdinbpl.650:37|
 :skolemid |59|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@2) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_4@@23 f_5@@15) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@2) o_4@@23 f_5@@15)))
 :qid |stdinbpl.650:37|
 :skolemid |59|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@2) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_14577_1545) ) (!  (=> (not (= f_5@@16 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@24 f_5@@16) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_4@@24 f_5@@16)))
 :qid |stdinbpl.650:37|
 :skolemid |59|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@2) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_4@@25 f_5@@17) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@2) o_4@@25 f_5@@17)))
 :qid |stdinbpl.650:37|
 :skolemid |59|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@2) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_4@@26 f_5@@18) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@2) o_4@@26 f_5@@18)))
 :qid |stdinbpl.650:37|
 :skolemid |59|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@2) o_4@@26 f_5@@18))
))) (and (and (and (state ExhaleHeap@0 QPMask@2) (forall ((j$4_4 Int) ) (!  (=> (and (<= 0 j$4_4) (< j$4_4 (len_1 a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$4_4) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4_4) val)))
 :qid |stdinbpl.656:28|
 :skolemid |60|
 :pattern ( (loc a_2@@1 j$4_4))
))) (and (<= 0 at@1) (< at@1 k@0))) (and (and (forall ((j$5_4 Int) ) (!  (=> (and (<= 0 j$5_4) (< j$5_4 k@0)) (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$5_4) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 at@1) val)))
 :qid |stdinbpl.662:28|
 :skolemid |61|
 :pattern ( (loc a_2@@1 j$5_4))
)) (state ExhaleHeap@0 QPMask@2)) (and (< k@0 (len_1 a_2@@1)) (state ExhaleHeap@0 QPMask@2))))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 at@1) val)) (=> (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 at@1) val) (and (=> (= (ControlFlow 0 50) (- 0 51)) (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 k@0) val)) (=> (HasDirectPerm_7620_1545 QPMask@2 (loc a_2@@1 k@0) val) (and (=> (= (ControlFlow 0 50) 48) anon84_Then_correct) (=> (= (ControlFlow 0 50) 49) anon84_Else_correct))))))))))))))
(let ((anon62_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (<= 0 j$2_2) (< j$2_2 (len_1 a_2@@1)))) (= (ControlFlow 0 18) 15)) anon62_correct)))
(let ((anon93_Then_correct  (=> (and (<= 0 j$2_2) (< j$2_2 (len_1 a_2@@1))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@0) (loc a_2@@1 j$2_2) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@0) (loc a_2@@1 at@2) val))) (=> (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@0) (loc a_2@@1 j$2_2) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@0) (loc a_2@@1 at@2) val)) (=> (= (ControlFlow 0 16) 15) anon62_correct))))))
(let ((anon92_Else_correct true))
(let ((anon91_Else_correct  (=> (not (= (len_1 a_2@@1) 0)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (<= 0 at@2)) (=> (<= 0 at@2) (and (=> (= (ControlFlow 0 21) (- 0 22)) (< at@2 (len_1 a_2@@1))) (=> (< at@2 (len_1 a_2@@1)) (and (and (=> (= (ControlFlow 0 21) 14) anon92_Else_correct) (=> (= (ControlFlow 0 21) 16) anon93_Then_correct)) (=> (= (ControlFlow 0 21) 18) anon93_Else_correct)))))))))
(let ((anon91_Then_correct  (=> (= (len_1 a_2@@1) 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (= at@2 (- 0 1))) (=> (= at@2 (- 0 1)) (and (and (=> (= (ControlFlow 0 19) 14) anon92_Else_correct) (=> (= (ControlFlow 0 19) 16) anon93_Then_correct)) (=> (= (ControlFlow 0 19) 18) anon93_Else_correct)))))))
(let ((anon89_Else_correct  (=> (forall ((j$1_3_1 Int) ) (!  (=> (and (<= 0 j$1_3_1) (< j$1_3_1 (len_1 a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@0) (loc a_2@@1 j$1_3_1) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$1_3_1) val)))
 :qid |stdinbpl.878:20|
 :skolemid |84|
 :pattern ( (loc a_2@@1 j$1_3_1))
)) (and (=> (= (ControlFlow 0 24) 19) anon91_Then_correct) (=> (= (ControlFlow 0 24) 21) anon91_Else_correct)))))
(let ((anon55_correct true))
(let ((anon90_Else_correct  (=> (and (not (and (<= 0 j$1_2) (< j$1_2 (len_1 a_2@@1)))) (= (ControlFlow 0 13) 10)) anon55_correct)))
(let ((anon90_Then_correct  (=> (and (<= 0 j$1_2) (< j$1_2 (len_1 a_2@@1))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@0) (loc a_2@@1 j$1_2) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$1_2) val))) (=> (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@0) (loc a_2@@1 j$1_2) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$1_2) val)) (=> (= (ControlFlow 0 11) 10) anon55_correct))))))
(let ((anon52_correct  (=> (state Heap@0 Mask@0) (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((j$0_2 Int) (j$0_2_1 Int) ) (!  (=> (and (and (and (and (not (= j$0_2 j$0_2_1)) (and (<= 0 j$0_2) (< j$0_2 (len_1 a_2@@1)))) (and (<= 0 j$0_2_1) (< j$0_2_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_2) (loc a_2@@1 j$0_2_1))))
 :qid |stdinbpl.837:17|
 :skolemid |78|
 :pattern ( (neverTriggered3 j$0_2) (neverTriggered3 j$0_2_1))
))) (=> (forall ((j$0_2@@0 Int) (j$0_2_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$0_2@@0 j$0_2_1@@0)) (and (<= 0 j$0_2@@0) (< j$0_2@@0 (len_1 a_2@@1)))) (and (<= 0 j$0_2_1@@0) (< j$0_2_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$0_2@@0) (loc a_2@@1 j$0_2_1@@0))))
 :qid |stdinbpl.837:17|
 :skolemid |78|
 :pattern ( (neverTriggered3 j$0_2@@0) (neverTriggered3 j$0_2_1@@0))
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((j$0_2@@1 Int) ) (!  (=> (and (<= 0 j$0_2@@1) (< j$0_2@@1 (len_1 a_2@@1))) (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@0) (loc a_2@@1 j$0_2@@1) val) FullPerm))
 :qid |stdinbpl.844:17|
 :skolemid |79|
 :pattern ( (loc a_2@@1 j$0_2@@1))
 :pattern ( (loc a_2@@1 j$0_2@@1))
))) (=> (forall ((j$0_2@@2 Int) ) (!  (=> (and (<= 0 j$0_2@@2) (< j$0_2@@2 (len_1 a_2@@1))) (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@0) (loc a_2@@1 j$0_2@@2) val) FullPerm))
 :qid |stdinbpl.844:17|
 :skolemid |79|
 :pattern ( (loc a_2@@1 j$0_2@@2))
 :pattern ( (loc a_2@@1 j$0_2@@2))
)) (=> (forall ((j$0_2@@3 Int) ) (!  (=> (and (and (<= 0 j$0_2@@3) (< j$0_2@@3 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@1 j$0_2@@3)) (= (invRecv3 (loc a_2@@1 j$0_2@@3)) j$0_2@@3)))
 :qid |stdinbpl.850:22|
 :skolemid |80|
 :pattern ( (loc a_2@@1 j$0_2@@3))
 :pattern ( (loc a_2@@1 j$0_2@@3))
)) (=> (and (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_4@@27)) (< (invRecv3 o_4@@27) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_4@@27))) (= (loc a_2@@1 (invRecv3 o_4@@27)) o_4@@27))
 :qid |stdinbpl.854:22|
 :skolemid |81|
 :pattern ( (invRecv3 o_4@@27))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_4@@28)) (< (invRecv3 o_4@@28) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_4@@28))) (and (= (loc a_2@@1 (invRecv3 o_4@@28)) o_4@@28) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@4) o_4@@28 val) (- (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@0) o_4@@28 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_4@@28)) (< (invRecv3 o_4@@28) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange3 o_4@@28)))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@4) o_4@@28 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@0) o_4@@28 val))))
 :qid |stdinbpl.860:22|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@4) o_4@@28 val))
))) (=> (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| Mask@0) o_4@@29 f_5@@19) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@4) o_4@@29 f_5@@19)))
 :qid |stdinbpl.866:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@4) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| Mask@0) o_4@@30 f_5@@20) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@4) o_4@@30 f_5@@20)))
 :qid |stdinbpl.866:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@4) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_14577_1545) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| Mask@0) o_4@@31 f_5@@21) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@4) o_4@@31 f_5@@21)))
 :qid |stdinbpl.866:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@4) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| Mask@0) o_4@@32 f_5@@22) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@4) o_4@@32 f_5@@22)))
 :qid |stdinbpl.866:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@4) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| Mask@0) o_4@@33 f_5@@23) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@4) o_4@@33 f_5@@23)))
 :qid |stdinbpl.866:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@4) o_4@@33 f_5@@23))
))) (and (and (=> (= (ControlFlow 0 25) 24) anon89_Else_correct) (=> (= (ControlFlow 0 25) 11) anon90_Then_correct)) (=> (= (ControlFlow 0 25) 13) anon90_Else_correct))))))))))))
(let ((anon83_Else_correct  (=> (and (and (not (< k@0 (len_1 a_2@@1))) (state ExhaleHeap@0 QPMask@1)) (and (<= 1 k@0) (<= k@0 (len_1 a_2@@1)))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (forall ((j$3_5 Int) (j$3_5_1 Int) ) (!  (=> (and (and (and (and (not (= j$3_5 j$3_5_1)) (and (<= 0 j$3_5) (< j$3_5 (len_1 a_2@@1)))) (and (<= 0 j$3_5_1) (< j$3_5_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_5) (loc a_2@@1 j$3_5_1))))
 :qid |stdinbpl.780:21|
 :skolemid |70|
))) (=> (forall ((j$3_5@@0 Int) (j$3_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3_5@@0 j$3_5_1@@0)) (and (<= 0 j$3_5@@0) (< j$3_5@@0 (len_1 a_2@@1)))) (and (<= 0 j$3_5_1@@0) (< j$3_5_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3_5@@0) (loc a_2@@1 j$3_5_1@@0))))
 :qid |stdinbpl.780:21|
 :skolemid |70|
)) (=> (and (and (forall ((j$3_5@@1 Int) ) (!  (=> (and (and (<= 0 j$3_5@@1) (< j$3_5@@1 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange8 (loc a_2@@1 j$3_5@@1)) (= (invRecv8 (loc a_2@@1 j$3_5@@1)) j$3_5@@1)))
 :qid |stdinbpl.786:28|
 :skolemid |71|
 :pattern ( (loc a_2@@1 j$3_5@@1))
 :pattern ( (loc a_2@@1 j$3_5@@1))
)) (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_4@@34)) (< (invRecv8 o_4@@34) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_4@@34)) (= (loc a_2@@1 (invRecv8 o_4@@34)) o_4@@34))
 :qid |stdinbpl.790:28|
 :skolemid |72|
 :pattern ( (invRecv8 o_4@@34))
))) (and (forall ((j$3_5@@2 Int) ) (!  (=> (and (<= 0 j$3_5@@2) (< j$3_5@@2 (len_1 a_2@@1))) (not (= (loc a_2@@1 j$3_5@@2) null)))
 :qid |stdinbpl.796:28|
 :skolemid |73|
 :pattern ( (loc a_2@@1 j$3_5@@2))
 :pattern ( (loc a_2@@1 j$3_5@@2))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_4@@35)) (< (invRecv8 o_4@@35) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_4@@35)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv8 o_4@@35)) o_4@@35)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@3) o_4@@35 val) (+ (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@35 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_4@@35)) (< (invRecv8 o_4@@35) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange8 o_4@@35))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@3) o_4@@35 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@35 val))))
 :qid |stdinbpl.802:28|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@3) o_4@@35 val))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_4@@36 f_5@@24) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@3) o_4@@36 f_5@@24)))
 :qid |stdinbpl.806:35|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_4@@36 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@3) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_4@@37 f_5@@25) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@3) o_4@@37 f_5@@25)))
 :qid |stdinbpl.806:35|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_4@@37 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@3) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_14577_1545) ) (!  (=> (not (= f_5@@26 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@38 f_5@@26) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@3) o_4@@38 f_5@@26)))
 :qid |stdinbpl.806:35|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@38 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@3) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_4@@39 f_5@@27) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@3) o_4@@39 f_5@@27)))
 :qid |stdinbpl.806:35|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_4@@39 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@3) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_4@@40 f_5@@28) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@3) o_4@@40 f_5@@28)))
 :qid |stdinbpl.806:35|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_4@@40 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@3) o_4@@40 f_5@@28))
))) (state ExhaleHeap@0 QPMask@3)) (and (forall ((j$4_7 Int) ) (!  (=> (and (<= 0 j$4_7) (< j$4_7 (len_1 a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$4_7) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4_7) val)))
 :qid |stdinbpl.812:26|
 :skolemid |76|
 :pattern ( (loc a_2@@1 j$4_7))
)) (<= 0 at@1))) (and (and (and (< at@1 k@0) (forall ((j$5_7 Int) ) (!  (=> (and (<= 0 j$5_7) (< j$5_7 k@0)) (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 j$5_7) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| ExhaleHeap@0) (loc a_2@@1 at@1) val)))
 :qid |stdinbpl.818:26|
 :skolemid |77|
 :pattern ( (loc a_2@@1 j$5_7))
))) (and (state ExhaleHeap@0 QPMask@3) (state ExhaleHeap@0 QPMask@3))) (and (and (= Heap@0 ExhaleHeap@0) (= Mask@0 QPMask@3)) (and (= at@2 at@1) (= (ControlFlow 0 29) 25))))) anon52_correct)))))))
(let ((anon75_Else_correct  (=> (and (forall ((j$5_1_1 Int) ) (!  (=> (and (<= 0 j$5_1_1) (< j$5_1_1 1)) (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$5_1_1) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 0) val)))
 :qid |stdinbpl.518:28|
 :skolemid |45|
 :pattern ( (loc a_2@@1 j$5_1_1))
)) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1)) (and (and (=> (= (ControlFlow 0 70) 69) anon77_Then_correct) (=> (= (ControlFlow 0 70) 50) anon83_Then_correct)) (=> (= (ControlFlow 0 70) 29) anon83_Else_correct)))))
(let ((anon72_Then_correct  (=> (= (len_1 a_2@@1) 0) (=> (and (= at@0 (- 0 1)) (state Heap@@17 QPMask@0)) (=> (and (and (= Heap@0 Heap@@17) (= Mask@0 QPMask@0)) (and (= at@2 at@0) (= (ControlFlow 0 28) 25))) anon52_correct)))))
(let ((anon26_correct true))
(let ((anon76_Else_correct  (=> (and (not (and (<= 0 j$5) (< j$5 1))) (= (ControlFlow 0 9) 6)) anon26_correct)))
(let ((anon76_Then_correct  (=> (and (<= 0 j$5) (< j$5 1)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$5) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 0) val))) (=> (<= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$5) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 0) val)) (=> (= (ControlFlow 0 7) 6) anon26_correct))))))
(let ((anon73_Else_correct  (=> (forall ((j$4_1_1 Int) ) (!  (=> (and (<= 0 j$4_1_1) (< j$4_1_1 (len_1 a_2@@1))) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4_1_1) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4_1_1) val)))
 :qid |stdinbpl.503:28|
 :skolemid |44|
 :pattern ( (loc a_2@@1 j$4_1_1))
)) (and (=> (= (ControlFlow 0 71) (- 0 73)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 71) (- 0 72)) (< 0 1)) (=> (< 0 1) (and (and (=> (= (ControlFlow 0 71) 70) anon75_Else_correct) (=> (= (ControlFlow 0 71) 7) anon76_Then_correct)) (=> (= (ControlFlow 0 71) 9) anon76_Else_correct)))))))))
(let ((anon22_correct true))
(let ((anon74_Else_correct  (=> (and (not (and (<= 0 j$4) (< j$4 (len_1 a_2@@1)))) (= (ControlFlow 0 5) 2)) anon22_correct)))
(let ((anon74_Then_correct  (=> (and (<= 0 j$4) (< j$4 (len_1 a_2@@1))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4) val))) (=> (= (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4) val) (select (|PolymorphicMapType_11060_7620_1545#PolymorphicMapType_11060| Heap@@17) (loc a_2@@1 j$4) val)) (=> (= (ControlFlow 0 3) 2) anon22_correct))))))
(let ((anon72_Else_correct  (=> (not (= (len_1 a_2@@1) 0)) (=> (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (=> (= (ControlFlow 0 74) (- 0 78)) (<= 1 1)) (=> (<= 1 1) (and (=> (= (ControlFlow 0 74) (- 0 77)) (<= 1 (len_1 a_2@@1))) (=> (<= 1 (len_1 a_2@@1)) (and (=> (= (ControlFlow 0 74) (- 0 76)) (forall ((j$3 Int) (j$3_1 Int) ) (!  (=> (and (and (and (and (not (= j$3 j$3_1)) (and (<= 0 j$3) (< j$3 (len_1 a_2@@1)))) (and (<= 0 j$3_1) (< j$3_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3) (loc a_2@@1 j$3_1))))
 :qid |stdinbpl.462:25|
 :skolemid |38|
 :pattern ( (neverTriggered4 j$3) (neverTriggered4 j$3_1))
))) (=> (forall ((j$3@@0 Int) (j$3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j$3@@0 j$3_1@@0)) (and (<= 0 j$3@@0) (< j$3@@0 (len_1 a_2@@1)))) (and (<= 0 j$3_1@@0) (< j$3_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j$3@@0) (loc a_2@@1 j$3_1@@0))))
 :qid |stdinbpl.462:25|
 :skolemid |38|
 :pattern ( (neverTriggered4 j$3@@0) (neverTriggered4 j$3_1@@0))
)) (and (=> (= (ControlFlow 0 74) (- 0 75)) (forall ((j$3@@1 Int) ) (!  (=> (and (<= 0 j$3@@1) (< j$3@@1 (len_1 a_2@@1))) (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) (loc a_2@@1 j$3@@1) val) FullPerm))
 :qid |stdinbpl.469:25|
 :skolemid |39|
 :pattern ( (loc a_2@@1 j$3@@1))
 :pattern ( (loc a_2@@1 j$3@@1))
))) (=> (forall ((j$3@@2 Int) ) (!  (=> (and (<= 0 j$3@@2) (< j$3@@2 (len_1 a_2@@1))) (>= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) (loc a_2@@1 j$3@@2) val) FullPerm))
 :qid |stdinbpl.469:25|
 :skolemid |39|
 :pattern ( (loc a_2@@1 j$3@@2))
 :pattern ( (loc a_2@@1 j$3@@2))
)) (=> (forall ((j$3@@3 Int) ) (!  (=> (and (and (<= 0 j$3@@3) (< j$3@@3 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange4 (loc a_2@@1 j$3@@3)) (= (invRecv4 (loc a_2@@1 j$3@@3)) j$3@@3)))
 :qid |stdinbpl.475:30|
 :skolemid |40|
 :pattern ( (loc a_2@@1 j$3@@3))
 :pattern ( (loc a_2@@1 j$3@@3))
)) (=> (and (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_4@@41)) (< (invRecv4 o_4@@41) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_4@@41))) (= (loc a_2@@1 (invRecv4 o_4@@41)) o_4@@41))
 :qid |stdinbpl.479:30|
 :skolemid |41|
 :pattern ( (invRecv4 o_4@@41))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_4@@42)) (< (invRecv4 o_4@@42) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_4@@42))) (and (= (loc a_2@@1 (invRecv4 o_4@@42)) o_4@@42) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@42 val) (- (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_4@@42 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv4 o_4@@42)) (< (invRecv4 o_4@@42) (len_1 a_2@@1))) (and (< NoPerm FullPerm) (qpRange4 o_4@@42)))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@42 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_4@@42 val))))
 :qid |stdinbpl.485:30|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@42 val))
))) (=> (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@0) o_4@@43 f_5@@29) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_4@@43 f_5@@29)))
 :qid |stdinbpl.491:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@1) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@0) o_4@@44 f_5@@30) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_4@@44 f_5@@30)))
 :qid |stdinbpl.491:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@1) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_14577_1545) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_4@@45 f_5@@31) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@45 f_5@@31)))
 :qid |stdinbpl.491:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@1) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@0) o_4@@46 f_5@@32) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_4@@46 f_5@@32)))
 :qid |stdinbpl.491:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@1) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@0) o_4@@47 f_5@@33) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_4@@47 f_5@@33)))
 :qid |stdinbpl.491:37|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@1) o_4@@47 f_5@@33))
))) (and (and (=> (= (ControlFlow 0 74) 71) anon73_Else_correct) (=> (= (ControlFlow 0 74) 3) anon74_Then_correct)) (=> (= (ControlFlow 0 74) 5) anon74_Else_correct)))))))))))))))))
(let ((anon64_Else_correct  (and (=> (= (ControlFlow 0 98) (- 0 99)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (<= 0 j_1) (< j_1 (len_1 a_2@@1)))) (and (<= 0 j_1_1) (< j_1_1 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1) (loc a_2@@1 j_1_1))))
 :qid |stdinbpl.302:15|
 :skolemid |24|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (<= 0 j_1@@0) (< j_1@@0 (len_1 a_2@@1)))) (and (<= 0 j_1_1@@0) (< j_1_1@@0 (len_1 a_2@@1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 j_1@@0) (loc a_2@@1 j_1_1@@0))))
 :qid |stdinbpl.302:15|
 :skolemid |24|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (and (<= 0 j_1@@1) (< j_1@@1 (len_1 a_2@@1))) (< NoPerm FullPerm)) (and (qpRange1 (loc a_2@@1 j_1@@1)) (= (invRecv1 (loc a_2@@1 j_1@@1)) j_1@@1)))
 :qid |stdinbpl.308:22|
 :skolemid |25|
 :pattern ( (loc a_2@@1 j_1@@1))
 :pattern ( (loc a_2@@1 j_1@@1))
)) (forall ((o_4@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@48)) (< (invRecv1 o_4@@48) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4@@48)) (= (loc a_2@@1 (invRecv1 o_4@@48)) o_4@@48))
 :qid |stdinbpl.312:22|
 :skolemid |26|
 :pattern ( (invRecv1 o_4@@48))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (and (<= 0 j_1@@2) (< j_1@@2 (len_1 a_2@@1))) (not (= (loc a_2@@1 j_1@@2) null)))
 :qid |stdinbpl.318:22|
 :skolemid |27|
 :pattern ( (loc a_2@@1 j_1@@2))
 :pattern ( (loc a_2@@1 j_1@@2))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@49)) (< (invRecv1 o_4@@49) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4@@49)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv1 o_4@@49)) o_4@@49)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_4@@49 val) (+ (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@49 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@49)) (< (invRecv1 o_4@@49) (len_1 a_2@@1))) (< NoPerm FullPerm)) (qpRange1 o_4@@49))) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_4@@49 val) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@49 val))))
 :qid |stdinbpl.324:22|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_4@@49 val))
)))) (=> (and (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@34 T@Field_11120_53) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_4@@50 f_5@@34) (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@0) o_4@@50 f_5@@34)))
 :qid |stdinbpl.328:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| ZeroMask) o_4@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_11081_7620_53#PolymorphicMapType_11081| QPMask@0) o_4@@50 f_5@@34))
)) (forall ((o_4@@51 T@Ref) (f_5@@35 T@Field_11133_11134) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_4@@51 f_5@@35) (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@0) o_4@@51 f_5@@35)))
 :qid |stdinbpl.328:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| ZeroMask) o_4@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_11081_7620_11134#PolymorphicMapType_11081| QPMask@0) o_4@@51 f_5@@35))
))) (forall ((o_4@@52 T@Ref) (f_5@@36 T@Field_14577_1545) ) (!  (=> (not (= f_5@@36 val)) (= (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@52 f_5@@36) (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_4@@52 f_5@@36)))
 :qid |stdinbpl.328:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| ZeroMask) o_4@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_11081_7620_1545#PolymorphicMapType_11081| QPMask@0) o_4@@52 f_5@@36))
))) (forall ((o_4@@53 T@Ref) (f_5@@37 T@Field_7620_32791) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_4@@53 f_5@@37) (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@0) o_4@@53 f_5@@37)))
 :qid |stdinbpl.328:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| ZeroMask) o_4@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_11081_7620_32791#PolymorphicMapType_11081| QPMask@0) o_4@@53 f_5@@37))
))) (forall ((o_4@@54 T@Ref) (f_5@@38 T@Field_7620_32924) ) (!  (=> true (= (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_4@@54 f_5@@38) (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@0) o_4@@54 f_5@@38)))
 :qid |stdinbpl.328:29|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| ZeroMask) o_4@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_11081_7620_37046#PolymorphicMapType_11081| QPMask@0) o_4@@54 f_5@@38))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 98) 97) anon65_Then_correct) (=> (= (ControlFlow 0 98) 28) anon72_Then_correct)) (=> (= (ControlFlow 0 98) 74) anon72_Else_correct))))))))
(let ((anon64_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 100) 1) anon64_Then_correct) (=> (= (ControlFlow 0 100) 98) anon64_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 101) 100) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
