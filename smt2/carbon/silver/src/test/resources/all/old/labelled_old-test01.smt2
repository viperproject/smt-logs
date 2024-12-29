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
(declare-sort T@Field_6643_53 0)
(declare-sort T@Field_6656_6657 0)
(declare-sort T@Field_10019_1201 0)
(declare-sort T@Field_3166_20602 0)
(declare-sort T@Field_3166_20469 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6604 0)) (((PolymorphicMapType_6604 (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| (Array T@Ref T@Field_10019_1201 Real)) (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| (Array T@Ref T@Field_6656_6657 Real)) (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| (Array T@Ref T@Field_6643_53 Real)) (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| (Array T@Ref T@Field_3166_20469 Real)) (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| (Array T@Ref T@Field_3166_20602 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7132 0)) (((PolymorphicMapType_7132 (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| (Array T@Ref T@Field_6643_53 Bool)) (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| (Array T@Ref T@Field_6656_6657 Bool)) (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| (Array T@Ref T@Field_10019_1201 Bool)) (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| (Array T@Ref T@Field_3166_20469 Bool)) (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| (Array T@Ref T@Field_3166_20602 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6583 0)) (((PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| (Array T@Ref T@Field_6643_53 Bool)) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| (Array T@Ref T@Field_6656_6657 T@Ref)) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| (Array T@Ref T@Field_10019_1201 Int)) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| (Array T@Ref T@Field_3166_20602 T@PolymorphicMapType_7132)) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| (Array T@Ref T@Field_3166_20469 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6643_53)
(declare-fun tk () T@Field_6656_6657)
(declare-fun f_7 () T@Field_10019_1201)
(declare-fun succHeap (T@PolymorphicMapType_6583 T@PolymorphicMapType_6583) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6583 T@PolymorphicMapType_6583) Bool)
(declare-fun state (T@PolymorphicMapType_6583 T@PolymorphicMapType_6604) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6604) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7132)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6583 T@PolymorphicMapType_6583 T@PolymorphicMapType_6604) Bool)
(declare-fun IsPredicateField_3166_20560 (T@Field_3166_20469) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3166 (T@Field_3166_20469) T@Field_3166_20602)
(declare-fun HasDirectPerm_3166_20533 (T@PolymorphicMapType_6604 T@Ref T@Field_3166_20469) Bool)
(declare-fun IsWandField_3166_22307 (T@Field_3166_20469) Bool)
(declare-fun WandMaskField_3166 (T@Field_3166_20469) T@Field_3166_20602)
(declare-fun dummyHeap () T@PolymorphicMapType_6583)
(declare-fun ZeroMask () T@PolymorphicMapType_6604)
(declare-fun InsidePredicate_6643_6643 (T@Field_3166_20469 T@FrameType T@Field_3166_20469 T@FrameType) Bool)
(declare-fun IsPredicateField_3163_3164 (T@Field_6656_6657) Bool)
(declare-fun IsWandField_3163_3164 (T@Field_6656_6657) Bool)
(declare-fun IsPredicateField_3166_1201 (T@Field_10019_1201) Bool)
(declare-fun IsWandField_3166_1201 (T@Field_10019_1201) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3166_25824 (T@Field_3166_20602) Bool)
(declare-fun IsWandField_3166_25840 (T@Field_3166_20602) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3166_53 (T@Field_6643_53) Bool)
(declare-fun IsWandField_3166_53 (T@Field_6643_53) Bool)
(declare-fun HasDirectPerm_3166_26278 (T@PolymorphicMapType_6604 T@Ref T@Field_3166_20602) Bool)
(declare-fun HasDirectPerm_3166_6657 (T@PolymorphicMapType_6604 T@Ref T@Field_6656_6657) Bool)
(declare-fun HasDirectPerm_3166_53 (T@PolymorphicMapType_6604 T@Ref T@Field_6643_53) Bool)
(declare-fun HasDirectPerm_3166_1201 (T@PolymorphicMapType_6604 T@Ref T@Field_10019_1201) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6604 T@PolymorphicMapType_6604 T@PolymorphicMapType_6604) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6583) (Heap1 T@PolymorphicMapType_6583) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6583) (Mask T@PolymorphicMapType_6604) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6583) (Heap1@@0 T@PolymorphicMapType_6583) (Heap2 T@PolymorphicMapType_6583) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3166_20602) ) (!  (not (select (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3166_20469) ) (!  (not (select (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10019_1201) ) (!  (not (select (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6656_6657) ) (!  (not (select (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6643_53) ) (!  (not (select (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6583) (ExhaleHeap T@PolymorphicMapType_6583) (Mask@@0 T@PolymorphicMapType_6604) (pm_f_13 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3166_20533 Mask@@0 null pm_f_13) (IsPredicateField_3166_20560 pm_f_13)) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@0) null (PredicateMaskField_3166 pm_f_13)) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap) null (PredicateMaskField_3166 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3166_20560 pm_f_13) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap) null (PredicateMaskField_3166 pm_f_13)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6583) (ExhaleHeap@@0 T@PolymorphicMapType_6583) (Mask@@1 T@PolymorphicMapType_6604) (pm_f_13@@0 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3166_20533 Mask@@1 null pm_f_13@@0) (IsWandField_3166_22307 pm_f_13@@0)) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@1) null (WandMaskField_3166 pm_f_13@@0)) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@0) null (WandMaskField_3166 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3166_22307 pm_f_13@@0) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@0) null (WandMaskField_3166 pm_f_13@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6583) (ExhaleHeap@@1 T@PolymorphicMapType_6583) (Mask@@2 T@PolymorphicMapType_6604) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@2) o_22 $allocated) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_3166_20469) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6643_6643 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6643_6643 p v_1 p w))
)))
(assert  (not (IsPredicateField_3163_3164 tk)))
(assert  (not (IsWandField_3163_3164 tk)))
(assert  (not (IsPredicateField_3166_1201 f_7)))
(assert  (not (IsWandField_3166_1201 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6583) (ExhaleHeap@@2 T@PolymorphicMapType_6583) (Mask@@3 T@PolymorphicMapType_6604) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6604) (o_2@@4 T@Ref) (f_4@@4 T@Field_3166_20602) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3166_25824 f_4@@4))) (not (IsWandField_3166_25840 f_4@@4))) (<= (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6604) (o_2@@5 T@Ref) (f_4@@5 T@Field_3166_20469) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3166_20560 f_4@@5))) (not (IsWandField_3166_22307 f_4@@5))) (<= (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6604) (o_2@@6 T@Ref) (f_4@@6 T@Field_6643_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3166_53 f_4@@6))) (not (IsWandField_3166_53 f_4@@6))) (<= (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6604) (o_2@@7 T@Ref) (f_4@@7 T@Field_6656_6657) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3163_3164 f_4@@7))) (not (IsWandField_3163_3164 f_4@@7))) (<= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6604) (o_2@@8 T@Ref) (f_4@@8 T@Field_10019_1201) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3166_1201 f_4@@8))) (not (IsWandField_3166_1201 f_4@@8))) (<= (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6604) (o_2@@9 T@Ref) (f_4@@9 T@Field_3166_20602) ) (! (= (HasDirectPerm_3166_26278 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_26278 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6604) (o_2@@10 T@Ref) (f_4@@10 T@Field_3166_20469) ) (! (= (HasDirectPerm_3166_20533 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_20533 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6604) (o_2@@11 T@Ref) (f_4@@11 T@Field_6656_6657) ) (! (= (HasDirectPerm_3166_6657 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_6657 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6604) (o_2@@12 T@Ref) (f_4@@12 T@Field_6643_53) ) (! (= (HasDirectPerm_3166_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6604) (o_2@@13 T@Ref) (f_4@@13 T@Field_10019_1201) ) (! (= (HasDirectPerm_3166_1201 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_1201 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6583) (ExhaleHeap@@3 T@PolymorphicMapType_6583) (Mask@@14 T@PolymorphicMapType_6604) (pm_f_13@@1 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3166_20533 Mask@@14 null pm_f_13@@1) (IsPredicateField_3166_20560 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_6643_53) ) (!  (=> (select (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@4) o2_13 f_30) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_6656_6657) ) (!  (=> (select (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@4) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_10019_1201) ) (!  (=> (select (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@4) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_3166_20469) ) (!  (=> (select (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@4) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_3166_20602) ) (!  (=> (select (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3166_20560 pm_f_13@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6583) (ExhaleHeap@@4 T@PolymorphicMapType_6583) (Mask@@15 T@PolymorphicMapType_6604) (pm_f_13@@2 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3166_20533 Mask@@15 null pm_f_13@@2) (IsWandField_3166_22307 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_6643_53) ) (!  (=> (select (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@5) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_6656_6657) ) (!  (=> (select (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@5) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_10019_1201) ) (!  (=> (select (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@5) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_3166_20469) ) (!  (=> (select (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@5) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_3166_20602) ) (!  (=> (select (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3166_22307 pm_f_13@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6583) (ExhaleHeap@@5 T@PolymorphicMapType_6583) (Mask@@16 T@PolymorphicMapType_6604) (o_22@@0 T@Ref) (f_30@@9 T@Field_3166_20602) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3166_26278 Mask@@16 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@6) o_22@@0 f_30@@9) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@5) o_22@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@5) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6583) (ExhaleHeap@@6 T@PolymorphicMapType_6583) (Mask@@17 T@PolymorphicMapType_6604) (o_22@@1 T@Ref) (f_30@@10 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3166_20533 Mask@@17 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@7) o_22@@1 f_30@@10) (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@6) o_22@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@6) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6583) (ExhaleHeap@@7 T@PolymorphicMapType_6583) (Mask@@18 T@PolymorphicMapType_6604) (o_22@@2 T@Ref) (f_30@@11 T@Field_6656_6657) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3166_6657 Mask@@18 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@8) o_22@@2 f_30@@11) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@7) o_22@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@7) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6583) (ExhaleHeap@@8 T@PolymorphicMapType_6583) (Mask@@19 T@PolymorphicMapType_6604) (o_22@@3 T@Ref) (f_30@@12 T@Field_6643_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3166_53 Mask@@19 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@9) o_22@@3 f_30@@12) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@8) o_22@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@8) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6583) (ExhaleHeap@@9 T@PolymorphicMapType_6583) (Mask@@20 T@PolymorphicMapType_6604) (o_22@@4 T@Ref) (f_30@@13 T@Field_10019_1201) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3166_1201 Mask@@20 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@10) o_22@@4 f_30@@13) (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@9) o_22@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@9) o_22@@4 f_30@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3166_20602) ) (! (= (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3166_20469) ) (! (= (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6643_53) ) (! (= (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6656_6657) ) (! (= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10019_1201) ) (! (= (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6604) (SummandMask1 T@PolymorphicMapType_6604) (SummandMask2 T@PolymorphicMapType_6604) (o_2@@19 T@Ref) (f_4@@19 T@Field_3166_20602) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6604) (SummandMask1@@0 T@PolymorphicMapType_6604) (SummandMask2@@0 T@PolymorphicMapType_6604) (o_2@@20 T@Ref) (f_4@@20 T@Field_3166_20469) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6604) (SummandMask1@@1 T@PolymorphicMapType_6604) (SummandMask2@@1 T@PolymorphicMapType_6604) (o_2@@21 T@Ref) (f_4@@21 T@Field_6643_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6604) (SummandMask1@@2 T@PolymorphicMapType_6604) (SummandMask2@@2 T@PolymorphicMapType_6604) (o_2@@22 T@Ref) (f_4@@22 T@Field_6656_6657) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6604) (SummandMask1@@3 T@PolymorphicMapType_6604) (SummandMask2@@3 T@PolymorphicMapType_6604) (o_2@@23 T@Ref) (f_4@@23 T@Field_10019_1201) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6583) (o_35 T@Ref) (f_11 T@Field_3166_20469) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@11) (store (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@11) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@11) (store (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@11) o_35 f_11 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6583) (o_35@@0 T@Ref) (f_11@@0 T@Field_3166_20602) (v@@0 T@PolymorphicMapType_7132) ) (! (succHeap Heap@@12 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@12) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@12) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@12) (store (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@12) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@12) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@12) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@12) (store (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@12) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6583) (o_35@@1 T@Ref) (f_11@@1 T@Field_10019_1201) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@13) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@13) (store (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@13) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@13) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@13) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@13) (store (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@13) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@13) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6583) (o_35@@2 T@Ref) (f_11@@2 T@Field_6656_6657) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@14) (store (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@14) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@14) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@14) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@14) (store (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@14) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@14) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@14) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6583) (o_35@@3 T@Ref) (f_11@@3 T@Field_6643_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6583 (store (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@15) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (store (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@15) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@15)))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_6656_6657) (Heap@@16 T@PolymorphicMapType_6583) ) (!  (=> (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@16) o_35@@4 $allocated) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@16) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@16) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@16) o_35@@4 f_31))
)))
(assert (forall ((p@@1 T@Field_3166_20469) (v_1@@0 T@FrameType) (q T@Field_3166_20469) (w@@0 T@FrameType) (r T@Field_3166_20469) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6643_6643 p@@1 v_1@@0 q w@@0) (InsidePredicate_6643_6643 q w@@0 r u)) (InsidePredicate_6643_6643 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6643_6643 p@@1 v_1@@0 q w@@0) (InsidePredicate_6643_6643 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_6604)
(declare-fun Mask@1 () T@PolymorphicMapType_6604)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_6583)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_6583)
(declare-fun Mask@0 () T@PolymorphicMapType_6604)
(declare-fun Heap@1 () T@PolymorphicMapType_6583)
(declare-fun Heap@@17 () T@PolymorphicMapType_6583)
(declare-fun m_17 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_6583)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon2_correct  (=> (= Mask@2 (PolymorphicMapType_6604 (store (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@1) freshObj@0 f_7 (- (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@1) freshObj@0 f_7) FullPerm)) (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@1) (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@1) (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@1) (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@1))) (=> (and (IdenticalOnKnownLocations Heap@2 ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3166_1201 Mask@0 freshObj@0 f_7)) (=> (HasDirectPerm_3166_1201 Mask@0 freshObj@0 f_7) (=> (= (ControlFlow 0 2) (- 0 1)) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@1) freshObj@0 f_7) 15)))))))))
(let ((anon3_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 7) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= FullPerm (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@1) freshObj@0 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@1) freshObj@0 f_7)) (=> (= (ControlFlow 0 5) 2) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@17) m_17 $allocated)) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@17) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_6583 (store (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@17) freshObj@0 $allocated true) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@17) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@17) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@17) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@17)))) (and (= Mask@0 (PolymorphicMapType_6604 (store (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ZeroMask) freshObj@0 f_7 (+ (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ZeroMask) freshObj@0 f_7) FullPerm)) (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ZeroMask) (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ZeroMask) (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ZeroMask) (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ZeroMask))) (state Heap@0 Mask@0))) (and (=> (= (ControlFlow 0 8) (- 0 18)) (= FullPerm (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@0) freshObj@0 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@0) freshObj@0 f_7)) (=> (= Heap@1 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@0) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@0) (store (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@0) freshObj@0 f_7 15) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@0) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@0))) (=> (and (state Heap@1 Mask@0) (state Heap@1 Mask@0)) (and (=> (= (ControlFlow 0 8) (- 0 17)) (= FullPerm (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@0) freshObj@0 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@0) freshObj@0 f_7)) (=> (= Heap@2 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@1) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@1) (store (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@1) freshObj@0 f_7 3) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@1) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@1))) (=> (and (state Heap@2 Mask@0) (not (= freshObj@0 null))) (=> (and (and (= Mask@1 (PolymorphicMapType_6604 (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@0) (store (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@0) freshObj@0 tk (+ (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@0) freshObj@0 tk) FullPerm)) (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@0) (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@0) (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@0))) (state Heap@2 Mask@1)) (and (state Heap@2 Mask@1) (state Heap@2 Mask@1))) (and (=> (= (ControlFlow 0 8) (- 0 16)) (HasDirectPerm_3166_1201 Mask@1 freshObj@0 f_7)) (=> (HasDirectPerm_3166_1201 Mask@1 freshObj@0 f_7) (and (=> (= (ControlFlow 0 8) (- 0 15)) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@2) freshObj@0 f_7) 3)) (=> (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@2) freshObj@0 f_7) 3) (and (=> (= (ControlFlow 0 8) (- 0 14)) true) (and (=> (= (ControlFlow 0 8) (- 0 13)) (HasDirectPerm_3166_1201 Mask@0 freshObj@0 f_7)) (=> (HasDirectPerm_3166_1201 Mask@0 freshObj@0 f_7) (and (=> (= (ControlFlow 0 8) (- 0 12)) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@1) freshObj@0 f_7) 15)) (=> (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@1) freshObj@0 f_7) 15) (=> (state Heap@2 Mask@1) (and (=> (= (ControlFlow 0 8) (- 0 11)) (= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@1) freshObj@0 tk) FullPerm)) (=> (= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@1) freshObj@0 tk) FullPerm) (and (=> (= (ControlFlow 0 8) (- 0 10)) true) (and (=> (= (ControlFlow 0 8) (- 0 9)) (= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@0) freshObj@0 tk) NoPerm)) (=> (= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@0) freshObj@0 tk) NoPerm) (=> (state Heap@2 Mask@1) (and (=> (= (ControlFlow 0 8) 5) anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) anon3_Else_correct))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 8) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-sort T@Field_6643_53 0)
(declare-sort T@Field_6656_6657 0)
(declare-sort T@Field_10019_1201 0)
(declare-sort T@Field_3166_20602 0)
(declare-sort T@Field_3166_20469 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6604 0)) (((PolymorphicMapType_6604 (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| (Array T@Ref T@Field_10019_1201 Real)) (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| (Array T@Ref T@Field_6656_6657 Real)) (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| (Array T@Ref T@Field_6643_53 Real)) (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| (Array T@Ref T@Field_3166_20469 Real)) (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| (Array T@Ref T@Field_3166_20602 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7132 0)) (((PolymorphicMapType_7132 (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| (Array T@Ref T@Field_6643_53 Bool)) (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| (Array T@Ref T@Field_6656_6657 Bool)) (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| (Array T@Ref T@Field_10019_1201 Bool)) (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| (Array T@Ref T@Field_3166_20469 Bool)) (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| (Array T@Ref T@Field_3166_20602 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6583 0)) (((PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| (Array T@Ref T@Field_6643_53 Bool)) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| (Array T@Ref T@Field_6656_6657 T@Ref)) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| (Array T@Ref T@Field_10019_1201 Int)) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| (Array T@Ref T@Field_3166_20602 T@PolymorphicMapType_7132)) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| (Array T@Ref T@Field_3166_20469 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6643_53)
(declare-fun tk () T@Field_6656_6657)
(declare-fun f_7 () T@Field_10019_1201)
(declare-fun succHeap (T@PolymorphicMapType_6583 T@PolymorphicMapType_6583) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6583 T@PolymorphicMapType_6583) Bool)
(declare-fun state (T@PolymorphicMapType_6583 T@PolymorphicMapType_6604) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6604) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7132)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6583 T@PolymorphicMapType_6583 T@PolymorphicMapType_6604) Bool)
(declare-fun IsPredicateField_3166_20560 (T@Field_3166_20469) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3166 (T@Field_3166_20469) T@Field_3166_20602)
(declare-fun HasDirectPerm_3166_20533 (T@PolymorphicMapType_6604 T@Ref T@Field_3166_20469) Bool)
(declare-fun IsWandField_3166_22307 (T@Field_3166_20469) Bool)
(declare-fun WandMaskField_3166 (T@Field_3166_20469) T@Field_3166_20602)
(declare-fun dummyHeap () T@PolymorphicMapType_6583)
(declare-fun ZeroMask () T@PolymorphicMapType_6604)
(declare-fun InsidePredicate_6643_6643 (T@Field_3166_20469 T@FrameType T@Field_3166_20469 T@FrameType) Bool)
(declare-fun IsPredicateField_3163_3164 (T@Field_6656_6657) Bool)
(declare-fun IsWandField_3163_3164 (T@Field_6656_6657) Bool)
(declare-fun IsPredicateField_3166_1201 (T@Field_10019_1201) Bool)
(declare-fun IsWandField_3166_1201 (T@Field_10019_1201) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3166_25824 (T@Field_3166_20602) Bool)
(declare-fun IsWandField_3166_25840 (T@Field_3166_20602) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3166_53 (T@Field_6643_53) Bool)
(declare-fun IsWandField_3166_53 (T@Field_6643_53) Bool)
(declare-fun HasDirectPerm_3166_26278 (T@PolymorphicMapType_6604 T@Ref T@Field_3166_20602) Bool)
(declare-fun HasDirectPerm_3166_6657 (T@PolymorphicMapType_6604 T@Ref T@Field_6656_6657) Bool)
(declare-fun HasDirectPerm_3166_53 (T@PolymorphicMapType_6604 T@Ref T@Field_6643_53) Bool)
(declare-fun HasDirectPerm_3166_1201 (T@PolymorphicMapType_6604 T@Ref T@Field_10019_1201) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6604 T@PolymorphicMapType_6604 T@PolymorphicMapType_6604) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6583) (Heap1 T@PolymorphicMapType_6583) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6583) (Mask T@PolymorphicMapType_6604) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6583) (Heap1@@0 T@PolymorphicMapType_6583) (Heap2 T@PolymorphicMapType_6583) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3166_20602) ) (!  (not (select (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3166_20469) ) (!  (not (select (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10019_1201) ) (!  (not (select (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6656_6657) ) (!  (not (select (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6643_53) ) (!  (not (select (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6583) (ExhaleHeap T@PolymorphicMapType_6583) (Mask@@0 T@PolymorphicMapType_6604) (pm_f_13 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3166_20533 Mask@@0 null pm_f_13) (IsPredicateField_3166_20560 pm_f_13)) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@0) null (PredicateMaskField_3166 pm_f_13)) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap) null (PredicateMaskField_3166 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3166_20560 pm_f_13) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap) null (PredicateMaskField_3166 pm_f_13)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6583) (ExhaleHeap@@0 T@PolymorphicMapType_6583) (Mask@@1 T@PolymorphicMapType_6604) (pm_f_13@@0 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3166_20533 Mask@@1 null pm_f_13@@0) (IsWandField_3166_22307 pm_f_13@@0)) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@1) null (WandMaskField_3166 pm_f_13@@0)) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@0) null (WandMaskField_3166 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3166_22307 pm_f_13@@0) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@0) null (WandMaskField_3166 pm_f_13@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6583) (ExhaleHeap@@1 T@PolymorphicMapType_6583) (Mask@@2 T@PolymorphicMapType_6604) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@2) o_22 $allocated) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_3166_20469) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6643_6643 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6643_6643 p v_1 p w))
)))
(assert  (not (IsPredicateField_3163_3164 tk)))
(assert  (not (IsWandField_3163_3164 tk)))
(assert  (not (IsPredicateField_3166_1201 f_7)))
(assert  (not (IsWandField_3166_1201 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6583) (ExhaleHeap@@2 T@PolymorphicMapType_6583) (Mask@@3 T@PolymorphicMapType_6604) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6604) (o_2@@4 T@Ref) (f_4@@4 T@Field_3166_20602) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3166_25824 f_4@@4))) (not (IsWandField_3166_25840 f_4@@4))) (<= (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6604) (o_2@@5 T@Ref) (f_4@@5 T@Field_3166_20469) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3166_20560 f_4@@5))) (not (IsWandField_3166_22307 f_4@@5))) (<= (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6604) (o_2@@6 T@Ref) (f_4@@6 T@Field_6643_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3166_53 f_4@@6))) (not (IsWandField_3166_53 f_4@@6))) (<= (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6604) (o_2@@7 T@Ref) (f_4@@7 T@Field_6656_6657) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3163_3164 f_4@@7))) (not (IsWandField_3163_3164 f_4@@7))) (<= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6604) (o_2@@8 T@Ref) (f_4@@8 T@Field_10019_1201) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3166_1201 f_4@@8))) (not (IsWandField_3166_1201 f_4@@8))) (<= (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6604) (o_2@@9 T@Ref) (f_4@@9 T@Field_3166_20602) ) (! (= (HasDirectPerm_3166_26278 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_26278 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6604) (o_2@@10 T@Ref) (f_4@@10 T@Field_3166_20469) ) (! (= (HasDirectPerm_3166_20533 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_20533 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6604) (o_2@@11 T@Ref) (f_4@@11 T@Field_6656_6657) ) (! (= (HasDirectPerm_3166_6657 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_6657 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6604) (o_2@@12 T@Ref) (f_4@@12 T@Field_6643_53) ) (! (= (HasDirectPerm_3166_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6604) (o_2@@13 T@Ref) (f_4@@13 T@Field_10019_1201) ) (! (= (HasDirectPerm_3166_1201 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3166_1201 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6583) (ExhaleHeap@@3 T@PolymorphicMapType_6583) (Mask@@14 T@PolymorphicMapType_6604) (pm_f_13@@1 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_3166_20533 Mask@@14 null pm_f_13@@1) (IsPredicateField_3166_20560 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_6643_53) ) (!  (=> (select (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@4) o2_13 f_30) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_6656_6657) ) (!  (=> (select (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@4) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_10019_1201) ) (!  (=> (select (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@4) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_3166_20469) ) (!  (=> (select (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@4) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_3166_20602) ) (!  (=> (select (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) null (PredicateMaskField_3166 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@4) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@3) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_3166_20560 pm_f_13@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6583) (ExhaleHeap@@4 T@PolymorphicMapType_6583) (Mask@@15 T@PolymorphicMapType_6604) (pm_f_13@@2 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_3166_20533 Mask@@15 null pm_f_13@@2) (IsWandField_3166_22307 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_6643_53) ) (!  (=> (select (|PolymorphicMapType_7132_6643_53#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@5) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_6656_6657) ) (!  (=> (select (|PolymorphicMapType_7132_6643_6657#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@5) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_10019_1201) ) (!  (=> (select (|PolymorphicMapType_7132_6643_1201#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@5) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_3166_20469) ) (!  (=> (select (|PolymorphicMapType_7132_6643_20469#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@5) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_3166_20602) ) (!  (=> (select (|PolymorphicMapType_7132_6643_21780#PolymorphicMapType_7132| (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) null (WandMaskField_3166 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@5) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@4) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_3166_22307 pm_f_13@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6583) (ExhaleHeap@@5 T@PolymorphicMapType_6583) (Mask@@16 T@PolymorphicMapType_6604) (o_22@@0 T@Ref) (f_30@@9 T@Field_3166_20602) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_3166_26278 Mask@@16 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@6) o_22@@0 f_30@@9) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@5) o_22@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| ExhaleHeap@@5) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6583) (ExhaleHeap@@6 T@PolymorphicMapType_6583) (Mask@@17 T@PolymorphicMapType_6604) (o_22@@1 T@Ref) (f_30@@10 T@Field_3166_20469) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_3166_20533 Mask@@17 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@7) o_22@@1 f_30@@10) (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@6) o_22@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| ExhaleHeap@@6) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6583) (ExhaleHeap@@7 T@PolymorphicMapType_6583) (Mask@@18 T@PolymorphicMapType_6604) (o_22@@2 T@Ref) (f_30@@11 T@Field_6656_6657) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_3166_6657 Mask@@18 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@8) o_22@@2 f_30@@11) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@7) o_22@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| ExhaleHeap@@7) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6583) (ExhaleHeap@@8 T@PolymorphicMapType_6583) (Mask@@19 T@PolymorphicMapType_6604) (o_22@@3 T@Ref) (f_30@@12 T@Field_6643_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_3166_53 Mask@@19 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@9) o_22@@3 f_30@@12) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@8) o_22@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| ExhaleHeap@@8) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6583) (ExhaleHeap@@9 T@PolymorphicMapType_6583) (Mask@@20 T@PolymorphicMapType_6604) (o_22@@4 T@Ref) (f_30@@13 T@Field_10019_1201) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_3166_1201 Mask@@20 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@10) o_22@@4 f_30@@13) (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@9) o_22@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| ExhaleHeap@@9) o_22@@4 f_30@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3166_20602) ) (! (= (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3166_20469) ) (! (= (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6643_53) ) (! (= (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6656_6657) ) (! (= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_10019_1201) ) (! (= (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6604) (SummandMask1 T@PolymorphicMapType_6604) (SummandMask2 T@PolymorphicMapType_6604) (o_2@@19 T@Ref) (f_4@@19 T@Field_3166_20602) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6604_3166_24709#PolymorphicMapType_6604| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6604) (SummandMask1@@0 T@PolymorphicMapType_6604) (SummandMask2@@0 T@PolymorphicMapType_6604) (o_2@@20 T@Ref) (f_4@@20 T@Field_3166_20469) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6604_3166_20469#PolymorphicMapType_6604| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6604) (SummandMask1@@1 T@PolymorphicMapType_6604) (SummandMask2@@1 T@PolymorphicMapType_6604) (o_2@@21 T@Ref) (f_4@@21 T@Field_6643_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6604_3166_53#PolymorphicMapType_6604| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6604) (SummandMask1@@2 T@PolymorphicMapType_6604) (SummandMask2@@2 T@PolymorphicMapType_6604) (o_2@@22 T@Ref) (f_4@@22 T@Field_6656_6657) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6604_3163_3164#PolymorphicMapType_6604| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6604) (SummandMask1@@3 T@PolymorphicMapType_6604) (SummandMask2@@3 T@PolymorphicMapType_6604) (o_2@@23 T@Ref) (f_4@@23 T@Field_10019_1201) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6604_3166_1201#PolymorphicMapType_6604| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6583) (o_35 T@Ref) (f_11 T@Field_3166_20469) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@11) (store (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@11) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@11) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@11) (store (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@11) o_35 f_11 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6583) (o_35@@0 T@Ref) (f_11@@0 T@Field_3166_20602) (v@@0 T@PolymorphicMapType_7132) ) (! (succHeap Heap@@12 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@12) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@12) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@12) (store (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@12) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@12) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@12) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@12) (store (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@12) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6583) (o_35@@1 T@Ref) (f_11@@1 T@Field_10019_1201) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@13) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@13) (store (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@13) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@13) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@13) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@13) (store (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@13) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@13) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6583) (o_35@@2 T@Ref) (f_11@@2 T@Field_6656_6657) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@14) (store (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@14) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@14) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@14) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@14) (store (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@14) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@14) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@14) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6583) (o_35@@3 T@Ref) (f_11@@3 T@Field_6643_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6583 (store (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@15) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6583 (store (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@15) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_3166_1201#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_3166_20646#PolymorphicMapType_6583| Heap@@15) (|PolymorphicMapType_6583_6643_20469#PolymorphicMapType_6583| Heap@@15)))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_6656_6657) (Heap@@16 T@PolymorphicMapType_6583) ) (!  (=> (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@16) o_35@@4 $allocated) (select (|PolymorphicMapType_6583_3035_53#PolymorphicMapType_6583| Heap@@16) (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@16) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6583_3038_3039#PolymorphicMapType_6583| Heap@@16) o_35@@4 f_31))
)))
(assert (forall ((p@@1 T@Field_3166_20469) (v_1@@0 T@FrameType) (q T@Field_3166_20469) (w@@0 T@FrameType) (r T@Field_3166_20469) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6643_6643 p@@1 v_1@@0 q w@@0) (InsidePredicate_6643_6643 q w@@0 r u)) (InsidePredicate_6643_6643 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6643_6643 p@@1 v_1@@0 q w@@0) (InsidePredicate_6643_6643 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

