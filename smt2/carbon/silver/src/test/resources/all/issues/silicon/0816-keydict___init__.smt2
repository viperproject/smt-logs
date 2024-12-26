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
(declare-sort T@Field_5565_53 0)
(declare-sort T@Field_5578_5579 0)
(declare-sort T@Field_9038_9043 0)
(declare-sort T@OptionDomainType_9041 0)
(declare-sort T@Field_3196_15609 0)
(declare-sort T@Field_3196_15476 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5526 0)) (((PolymorphicMapType_5526 (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| (Array T@Ref T@Field_9038_9043 Real)) (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| (Array T@Ref T@Field_5565_53 Real)) (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| (Array T@Ref T@Field_5578_5579 Real)) (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| (Array T@Ref T@Field_3196_15476 Real)) (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| (Array T@Ref T@Field_3196_15609 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6054 0)) (((PolymorphicMapType_6054 (|PolymorphicMapType_6054_5565_53#PolymorphicMapType_6054| (Array T@Ref T@Field_5565_53 Bool)) (|PolymorphicMapType_6054_5565_5579#PolymorphicMapType_6054| (Array T@Ref T@Field_5578_5579 Bool)) (|PolymorphicMapType_6054_5565_9043#PolymorphicMapType_6054| (Array T@Ref T@Field_9038_9043 Bool)) (|PolymorphicMapType_6054_5565_15476#PolymorphicMapType_6054| (Array T@Ref T@Field_3196_15476 Bool)) (|PolymorphicMapType_6054_5565_16793#PolymorphicMapType_6054| (Array T@Ref T@Field_3196_15609 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5505 0)) (((PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| (Array T@Ref T@Field_5565_53 Bool)) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| (Array T@Ref T@Field_5578_5579 T@Ref)) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| (Array T@Ref T@Field_9038_9043 T@OptionDomainType_9041)) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| (Array T@Ref T@Field_3196_15609 T@PolymorphicMapType_6054)) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| (Array T@Ref T@Field_3196_15476 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5565_53)
(declare-fun keydict_val () T@Field_9038_9043)
(declare-fun succHeap (T@PolymorphicMapType_5505 T@PolymorphicMapType_5505) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5505 T@PolymorphicMapType_5505) Bool)
(declare-fun state (T@PolymorphicMapType_5505 T@PolymorphicMapType_5526) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5526) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6054)
(declare-fun |keydict___contains__'| (T@PolymorphicMapType_5505 T@Ref T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |keydict___contains__#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun FrameFragment_10786 (T@OptionDomainType_9041) T@FrameType)
(declare-fun keydict___item__ (T@PolymorphicMapType_5505 T@Ref T@Ref) T@Ref)
(declare-fun Option_tag_3197 (T@OptionDomainType_9041) Int)
(declare-fun |keydict___item__'| (T@PolymorphicMapType_5505 T@Ref T@Ref) T@Ref)
(declare-fun dummyFunction_3231 (T@Ref) Bool)
(declare-fun |keydict___item__#triggerStateless| (T@Ref T@Ref) T@Ref)
(declare-fun |keydict___item__inv'| (T@PolymorphicMapType_5505 T@Ref T@Ref) T@Ref)
(declare-fun |keydict___item__inv#triggerStateless| (T@Ref T@Ref) T@Ref)
(declare-fun dummyFunction_2157 (Bool) Bool)
(declare-fun |keydict___contains__#triggerStateless| (T@Ref T@Ref) Bool)
(declare-fun |keydict___item__#frame| (T@FrameType T@Ref T@Ref) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |keydict___item__inv#frame| (T@FrameType T@Ref T@Ref) T@Ref)
(declare-fun None_3197 () T@OptionDomainType_9041)
(declare-fun |keydict___contains__#frame| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5505 T@PolymorphicMapType_5505 T@PolymorphicMapType_5526) Bool)
(declare-fun IsPredicateField_3196_15567 (T@Field_3196_15476) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3196 (T@Field_3196_15476) T@Field_3196_15609)
(declare-fun HasDirectPerm_3196_15540 (T@PolymorphicMapType_5526 T@Ref T@Field_3196_15476) Bool)
(declare-fun IsWandField_3196_17320 (T@Field_3196_15476) Bool)
(declare-fun WandMaskField_3196 (T@Field_3196_15476) T@Field_3196_15609)
(declare-fun dummyHeap () T@PolymorphicMapType_5505)
(declare-fun ZeroMask () T@PolymorphicMapType_5526)
(declare-fun InsidePredicate_5565_5565 (T@Field_3196_15476 T@FrameType T@Field_3196_15476 T@FrameType) Bool)
(declare-fun IsPredicateField_3196_9065 (T@Field_9038_9043) Bool)
(declare-fun IsWandField_3196_9091 (T@Field_9038_9043) Bool)
(declare-fun |keydict___item__#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun keydict___item__inv (T@PolymorphicMapType_5505 T@Ref T@Ref) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3196_20871 (T@Field_3196_15609) Bool)
(declare-fun IsWandField_3196_20887 (T@Field_3196_15609) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3196_5579 (T@Field_5578_5579) Bool)
(declare-fun IsWandField_3196_5579 (T@Field_5578_5579) Bool)
(declare-fun IsPredicateField_3196_53 (T@Field_5565_53) Bool)
(declare-fun IsWandField_3196_53 (T@Field_5565_53) Bool)
(declare-fun HasDirectPerm_3196_21325 (T@PolymorphicMapType_5526 T@Ref T@Field_3196_15609) Bool)
(declare-fun HasDirectPerm_3196_5579 (T@PolymorphicMapType_5526 T@Ref T@Field_5578_5579) Bool)
(declare-fun HasDirectPerm_3196_53 (T@PolymorphicMapType_5526 T@Ref T@Field_5565_53) Bool)
(declare-fun HasDirectPerm_3196_11758 (T@PolymorphicMapType_5526 T@Ref T@Field_9038_9043) Bool)
(declare-fun Some_3197 (T@Ref) T@OptionDomainType_9041)
(declare-fun get_Option_value_9041 (T@OptionDomainType_9041) T@Ref)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5526 T@PolymorphicMapType_5526 T@PolymorphicMapType_5526) Bool)
(declare-fun keydict___contains__ (T@PolymorphicMapType_5505 T@Ref T@Ref) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5505) (Heap1 T@PolymorphicMapType_5505) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5505) (Mask T@PolymorphicMapType_5526) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5505) (Heap1@@0 T@PolymorphicMapType_5505) (Heap2 T@PolymorphicMapType_5505) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3196_15609) ) (!  (not (select (|PolymorphicMapType_6054_5565_16793#PolymorphicMapType_6054| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6054_5565_16793#PolymorphicMapType_6054| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3196_15476) ) (!  (not (select (|PolymorphicMapType_6054_5565_15476#PolymorphicMapType_6054| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6054_5565_15476#PolymorphicMapType_6054| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9038_9043) ) (!  (not (select (|PolymorphicMapType_6054_5565_9043#PolymorphicMapType_6054| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6054_5565_9043#PolymorphicMapType_6054| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5578_5579) ) (!  (not (select (|PolymorphicMapType_6054_5565_5579#PolymorphicMapType_6054| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6054_5565_5579#PolymorphicMapType_6054| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5565_53) ) (!  (not (select (|PolymorphicMapType_6054_5565_53#PolymorphicMapType_6054| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6054_5565_53#PolymorphicMapType_6054| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5505) (Mask@@0 T@PolymorphicMapType_5526) (self T@Ref) (key_1 T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 0) (|keydict___contains__#trigger| (FrameFragment_10786 (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@0) (keydict___item__ Heap@@0 self key_1) keydict_val)) self key_1))) (= (|keydict___contains__'| Heap@@0 self key_1) (= (Option_tag_3197 (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@0) (keydict___item__ Heap@@0 self key_1) keydict_val)) 1)))
 :qid |stdinbpl.377:15|
 :skolemid |36|
 :pattern ( (state Heap@@0 Mask@@0) (|keydict___contains__'| Heap@@0 self key_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5505) (self@@0 T@Ref) (key_1@@0 T@Ref) ) (! (dummyFunction_3231 (|keydict___item__#triggerStateless| self@@0 key_1@@0))
 :qid |stdinbpl.261:15|
 :skolemid |27|
 :pattern ( (|keydict___item__'| Heap@@1 self@@0 key_1@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5505) (self@@1 T@Ref) (val_ref_1 T@Ref) ) (! (dummyFunction_3231 (|keydict___item__inv#triggerStateless| self@@1 val_ref_1))
 :qid |stdinbpl.321:15|
 :skolemid |31|
 :pattern ( (|keydict___item__inv'| Heap@@2 self@@1 val_ref_1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5505) (self@@2 T@Ref) (key_1@@1 T@Ref) ) (! (dummyFunction_2157 (|keydict___contains__#triggerStateless| self@@2 key_1@@1))
 :qid |stdinbpl.364:15|
 :skolemid |34|
 :pattern ( (|keydict___contains__'| Heap@@3 self@@2 key_1@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5505) (Mask@@1 T@PolymorphicMapType_5526) (self@@3 T@Ref) (key_1@@2 T@Ref) ) (!  (=> (state Heap@@4 Mask@@1) (= (|keydict___item__'| Heap@@4 self@@3 key_1@@2) (|keydict___item__#frame| EmptyFrame self@@3 key_1@@2)))
 :qid |stdinbpl.268:15|
 :skolemid |28|
 :pattern ( (state Heap@@4 Mask@@1) (|keydict___item__'| Heap@@4 self@@3 key_1@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5505) (Mask@@2 T@PolymorphicMapType_5526) (self@@4 T@Ref) (val_ref_1@@0 T@Ref) ) (!  (=> (state Heap@@5 Mask@@2) (= (|keydict___item__inv'| Heap@@5 self@@4 val_ref_1@@0) (|keydict___item__inv#frame| EmptyFrame self@@4 val_ref_1@@0)))
 :qid |stdinbpl.328:15|
 :skolemid |32|
 :pattern ( (state Heap@@5 Mask@@2) (|keydict___item__inv'| Heap@@5 self@@4 val_ref_1@@0))
)))
(assert (= (Option_tag_3197 None_3197) 0))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5505) (Mask@@3 T@PolymorphicMapType_5526) (self@@5 T@Ref) (key_1@@3 T@Ref) ) (!  (=> (state Heap@@6 Mask@@3) (= (|keydict___contains__'| Heap@@6 self@@5 key_1@@3) (|keydict___contains__#frame| (FrameFragment_10786 (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@6) (keydict___item__ Heap@@6 self@@5 key_1@@3) keydict_val)) self@@5 key_1@@3)))
 :qid |stdinbpl.371:15|
 :skolemid |35|
 :pattern ( (state Heap@@6 Mask@@3) (|keydict___contains__'| Heap@@6 self@@5 key_1@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5505) (ExhaleHeap T@PolymorphicMapType_5505) (Mask@@4 T@PolymorphicMapType_5526) (pm_f_5 T@Field_3196_15476) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_3196_15540 Mask@@4 null pm_f_5) (IsPredicateField_3196_15567 pm_f_5)) (= (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@7) null (PredicateMaskField_3196 pm_f_5)) (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap) null (PredicateMaskField_3196 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@4) (IsPredicateField_3196_15567 pm_f_5) (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap) null (PredicateMaskField_3196 pm_f_5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5505) (ExhaleHeap@@0 T@PolymorphicMapType_5505) (Mask@@5 T@PolymorphicMapType_5526) (pm_f_5@@0 T@Field_3196_15476) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_3196_15540 Mask@@5 null pm_f_5@@0) (IsWandField_3196_17320 pm_f_5@@0)) (= (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@8) null (WandMaskField_3196 pm_f_5@@0)) (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap@@0) null (WandMaskField_3196 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@5) (IsWandField_3196_17320 pm_f_5@@0) (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap@@0) null (WandMaskField_3196 pm_f_5@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5505) (ExhaleHeap@@1 T@PolymorphicMapType_5505) (Mask@@6 T@PolymorphicMapType_5526) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@9) o_12 $allocated) (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_3196_15476) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5565_5565 p v_1 p w))
 :qid |stdinbpl.194:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5565_5565 p v_1 p w))
)))
(assert  (not (IsPredicateField_3196_9065 keydict_val)))
(assert  (not (IsWandField_3196_9091 keydict_val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5505) (ExhaleHeap@@2 T@PolymorphicMapType_5505) (Mask@@7 T@PolymorphicMapType_5526) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5505) (Mask@@8 T@PolymorphicMapType_5526) (self@@6 T@Ref) (key_1@@4 T@Ref) ) (!  (=> (and (state Heap@@11 Mask@@8) (or (< AssumeFunctionsAbove 1) (|keydict___item__#trigger| EmptyFrame self@@6 key_1@@4))) (= (keydict___item__inv Heap@@11 self@@6 (|keydict___item__'| Heap@@11 self@@6 key_1@@4)) key_1@@4))
 :qid |stdinbpl.274:15|
 :skolemid |29|
 :pattern ( (state Heap@@11 Mask@@8) (|keydict___item__'| Heap@@11 self@@6 key_1@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5526) (o_2@@4 T@Ref) (f_4@@4 T@Field_3196_15609) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3196_20871 f_4@@4))) (not (IsWandField_3196_20887 f_4@@4))) (<= (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5526) (o_2@@5 T@Ref) (f_4@@5 T@Field_3196_15476) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3196_15567 f_4@@5))) (not (IsWandField_3196_17320 f_4@@5))) (<= (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5526) (o_2@@6 T@Ref) (f_4@@6 T@Field_5578_5579) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3196_5579 f_4@@6))) (not (IsWandField_3196_5579 f_4@@6))) (<= (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5526) (o_2@@7 T@Ref) (f_4@@7 T@Field_5565_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3196_53 f_4@@7))) (not (IsWandField_3196_53 f_4@@7))) (<= (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5526) (o_2@@8 T@Ref) (f_4@@8 T@Field_9038_9043) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3196_9065 f_4@@8))) (not (IsWandField_3196_9091 f_4@@8))) (<= (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5526) (o_2@@9 T@Ref) (f_4@@9 T@Field_3196_15609) ) (! (= (HasDirectPerm_3196_21325 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3196_21325 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5526) (o_2@@10 T@Ref) (f_4@@10 T@Field_3196_15476) ) (! (= (HasDirectPerm_3196_15540 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3196_15540 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5526) (o_2@@11 T@Ref) (f_4@@11 T@Field_5578_5579) ) (! (= (HasDirectPerm_3196_5579 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3196_5579 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5526) (o_2@@12 T@Ref) (f_4@@12 T@Field_5565_53) ) (! (= (HasDirectPerm_3196_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3196_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5526) (o_2@@13 T@Ref) (f_4@@13 T@Field_9038_9043) ) (! (= (HasDirectPerm_3196_11758 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3196_11758 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5505) (ExhaleHeap@@3 T@PolymorphicMapType_5505) (Mask@@19 T@PolymorphicMapType_5526) (pm_f_5@@1 T@Field_3196_15476) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_3196_15540 Mask@@19 null pm_f_5@@1) (IsPredicateField_3196_15567 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_5565_53) ) (!  (=> (select (|PolymorphicMapType_6054_5565_53#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@12) null (PredicateMaskField_3196 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@12) o2_5 f_16) (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_5578_5579) ) (!  (=> (select (|PolymorphicMapType_6054_5565_5579#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@12) null (PredicateMaskField_3196 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@12) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_6054_5565_9043#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@12) null (PredicateMaskField_3196 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@12) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_3196_15476) ) (!  (=> (select (|PolymorphicMapType_6054_5565_15476#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@12) null (PredicateMaskField_3196 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@12) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_3196_15609) ) (!  (=> (select (|PolymorphicMapType_6054_5565_16793#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@12) null (PredicateMaskField_3196 pm_f_5@@1))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@12) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap@@3) o2_5@@3 f_16@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@19) (IsPredicateField_3196_15567 pm_f_5@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5505) (ExhaleHeap@@4 T@PolymorphicMapType_5505) (Mask@@20 T@PolymorphicMapType_5526) (pm_f_5@@2 T@Field_3196_15476) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_3196_15540 Mask@@20 null pm_f_5@@2) (IsWandField_3196_17320 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_5565_53) ) (!  (=> (select (|PolymorphicMapType_6054_5565_53#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@13) null (WandMaskField_3196 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@13) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@4 f_16@@4))
)) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_5578_5579) ) (!  (=> (select (|PolymorphicMapType_6054_5565_5579#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@13) null (WandMaskField_3196 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@13) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_6054_5565_9043#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@13) null (WandMaskField_3196 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@13) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_3196_15476) ) (!  (=> (select (|PolymorphicMapType_6054_5565_15476#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@13) null (WandMaskField_3196 pm_f_5@@2))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@13) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_3196_15609) ) (!  (=> (select (|PolymorphicMapType_6054_5565_16793#PolymorphicMapType_6054| (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@13) null (WandMaskField_3196 pm_f_5@@2))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@13) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap@@4) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@20) (IsWandField_3196_17320 pm_f_5@@2))
)))
(assert (forall ((t_2 T@OptionDomainType_9041) ) (!  (or (= t_2 (Some_3197 (get_Option_value_9041 t_2))) (= t_2 None_3197))
 :qid |stdinbpl.237:19|
 :skolemid |25|
 :pattern ( (Option_tag_3197 t_2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.182:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5505) (ExhaleHeap@@5 T@PolymorphicMapType_5505) (Mask@@21 T@PolymorphicMapType_5526) (o_12@@0 T@Ref) (f_16@@9 T@Field_3196_15609) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_3196_21325 Mask@@21 o_12@@0 f_16@@9) (= (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@14) o_12@@0 f_16@@9) (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap@@5) o_12@@0 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| ExhaleHeap@@5) o_12@@0 f_16@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5505) (ExhaleHeap@@6 T@PolymorphicMapType_5505) (Mask@@22 T@PolymorphicMapType_5526) (o_12@@1 T@Ref) (f_16@@10 T@Field_3196_15476) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_3196_15540 Mask@@22 o_12@@1 f_16@@10) (= (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@15) o_12@@1 f_16@@10) (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| ExhaleHeap@@6) o_12@@1 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| ExhaleHeap@@6) o_12@@1 f_16@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5505) (ExhaleHeap@@7 T@PolymorphicMapType_5505) (Mask@@23 T@PolymorphicMapType_5526) (o_12@@2 T@Ref) (f_16@@11 T@Field_5578_5579) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_3196_5579 Mask@@23 o_12@@2 f_16@@11) (= (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@16) o_12@@2 f_16@@11) (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| ExhaleHeap@@7) o_12@@2 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| ExhaleHeap@@7) o_12@@2 f_16@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5505) (ExhaleHeap@@8 T@PolymorphicMapType_5505) (Mask@@24 T@PolymorphicMapType_5526) (o_12@@3 T@Ref) (f_16@@12 T@Field_5565_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_3196_53 Mask@@24 o_12@@3 f_16@@12) (= (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@17) o_12@@3 f_16@@12) (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| ExhaleHeap@@8) o_12@@3 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| ExhaleHeap@@8) o_12@@3 f_16@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5505) (ExhaleHeap@@9 T@PolymorphicMapType_5505) (Mask@@25 T@PolymorphicMapType_5526) (o_12@@4 T@Ref) (f_16@@13 T@Field_9038_9043) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_3196_11758 Mask@@25 o_12@@4 f_16@@13) (= (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@18) o_12@@4 f_16@@13) (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| ExhaleHeap@@9) o_12@@4 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| ExhaleHeap@@9) o_12@@4 f_16@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3196_15609) ) (! (= (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3196_15476) ) (! (= (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5578_5579) ) (! (= (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5565_53) ) (! (= (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9038_9043) ) (! (= (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5505) (self@@7 T@Ref) (key_1@@5 T@Ref) ) (!  (and (= (keydict___item__ Heap@@19 self@@7 key_1@@5) (|keydict___item__'| Heap@@19 self@@7 key_1@@5)) (dummyFunction_3231 (|keydict___item__#triggerStateless| self@@7 key_1@@5)))
 :qid |stdinbpl.257:15|
 :skolemid |26|
 :pattern ( (keydict___item__ Heap@@19 self@@7 key_1@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5505) (self@@8 T@Ref) (val_ref_1@@1 T@Ref) ) (!  (and (= (keydict___item__inv Heap@@20 self@@8 val_ref_1@@1) (|keydict___item__inv'| Heap@@20 self@@8 val_ref_1@@1)) (dummyFunction_3231 (|keydict___item__inv#triggerStateless| self@@8 val_ref_1@@1)))
 :qid |stdinbpl.317:15|
 :skolemid |30|
 :pattern ( (keydict___item__inv Heap@@20 self@@8 val_ref_1@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5526) (SummandMask1 T@PolymorphicMapType_5526) (SummandMask2 T@PolymorphicMapType_5526) (o_2@@19 T@Ref) (f_4@@19 T@Field_3196_15609) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5526) (SummandMask1@@0 T@PolymorphicMapType_5526) (SummandMask2@@0 T@PolymorphicMapType_5526) (o_2@@20 T@Ref) (f_4@@20 T@Field_3196_15476) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5526) (SummandMask1@@1 T@PolymorphicMapType_5526) (SummandMask2@@1 T@PolymorphicMapType_5526) (o_2@@21 T@Ref) (f_4@@21 T@Field_5578_5579) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5526) (SummandMask1@@2 T@PolymorphicMapType_5526) (SummandMask2@@2 T@PolymorphicMapType_5526) (o_2@@22 T@Ref) (f_4@@22 T@Field_5565_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5526) (SummandMask1@@3 T@PolymorphicMapType_5526) (SummandMask2@@3 T@PolymorphicMapType_5526) (o_2@@23 T@Ref) (f_4@@23 T@Field_9038_9043) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((value_1 T@Ref) ) (! (= (Option_tag_3197 (Some_3197 value_1)) 1)
 :qid |stdinbpl.225:19|
 :skolemid |23|
 :pattern ( (Some_3197 value_1))
)))
(assert (forall ((value_1@@0 T@Ref) ) (! (= value_1@@0 (get_Option_value_9041 (Some_3197 value_1@@0)))
 :qid |stdinbpl.219:19|
 :skolemid |22|
 :pattern ( (Some_3197 value_1@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5505) (o_11 T@Ref) (f_17 T@Field_3196_15476) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@21) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@21) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@21) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@21) (store (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@21) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@21) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@21) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@21) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@21) (store (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@21) o_11 f_17 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5505) (o_11@@0 T@Ref) (f_17@@0 T@Field_3196_15609) (v@@0 T@PolymorphicMapType_6054) ) (! (succHeap Heap@@22 (PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@22) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@22) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@22) (store (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@22) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@22) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@22) (store (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5505) (o_11@@1 T@Ref) (f_17@@1 T@Field_9038_9043) (v@@1 T@OptionDomainType_9041) ) (! (succHeap Heap@@23 (PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@23) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@23) (store (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@23) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@23) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@23) (store (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@23) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5505) (o_11@@2 T@Ref) (f_17@@2 T@Field_5578_5579) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@24) (store (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@24) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@24) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@24) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5505 (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@24) (store (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@24) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@24) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@24) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5505) (o_11@@3 T@Ref) (f_17@@3 T@Field_5565_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_5505 (store (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@25) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@25) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@25) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5505 (store (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@25) (|PolymorphicMapType_5505_3196_10765#PolymorphicMapType_5505| Heap@@25) (|PolymorphicMapType_5505_3196_15653#PolymorphicMapType_5505| Heap@@25) (|PolymorphicMapType_5505_5565_15476#PolymorphicMapType_5505| Heap@@25)))
)))
(assert (forall ((o_11@@4 T@Ref) (f_10 T@Field_5578_5579) (Heap@@26 T@PolymorphicMapType_5505) ) (!  (=> (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@26) o_11@@4 $allocated) (select (|PolymorphicMapType_5505_3048_53#PolymorphicMapType_5505| Heap@@26) (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@26) o_11@@4 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5505_3051_3052#PolymorphicMapType_5505| Heap@@26) o_11@@4 f_10))
)))
(assert (forall ((p@@1 T@Field_3196_15476) (v_1@@0 T@FrameType) (q T@Field_3196_15476) (w@@0 T@FrameType) (r T@Field_3196_15476) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5565_5565 p@@1 v_1@@0 q w@@0) (InsidePredicate_5565_5565 q w@@0 r u)) (InsidePredicate_5565_5565 p@@1 v_1@@0 r u))
 :qid |stdinbpl.189:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5565_5565 p@@1 v_1@@0 q w@@0) (InsidePredicate_5565_5565 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5505) (self@@9 T@Ref) (key_1@@6 T@Ref) ) (!  (and (= (keydict___contains__ Heap@@27 self@@9 key_1@@6) (|keydict___contains__'| Heap@@27 self@@9 key_1@@6)) (dummyFunction_2157 (|keydict___contains__#triggerStateless| self@@9 key_1@@6)))
 :qid |stdinbpl.360:15|
 :skolemid |33|
 :pattern ( (keydict___contains__ Heap@@27 self@@9 key_1@@6))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_5526)
(declare-fun PostHeap@0 () T@PolymorphicMapType_5505)
(declare-fun self@@10 () T@Ref)
(declare-fun key_2 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun Heap@@28 () T@PolymorphicMapType_5505)
(set-info :boogie-vc-id keydict___init__)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon17_Else_correct true))
(let ((anon17_Then_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| QPMask@1) (keydict___item__ PostHeap@0 self@@10 key_2) keydict_val))))))
(let ((anon16_Else_correct true))
(let ((anon14_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((key_1_1 T@Ref) (key_1_2 T@Ref) ) (!  (=> (and (and (not (= key_1_1 key_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (keydict___item__ PostHeap@0 self@@10 key_1_1) (keydict___item__ PostHeap@0 self@@10 key_1_2))))
 :qid |stdinbpl.479:15|
 :skolemid |37|
))) (=> (forall ((key_1_1@@0 T@Ref) (key_1_2@@0 T@Ref) ) (!  (=> (and (and (not (= key_1_1@@0 key_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (keydict___item__ PostHeap@0 self@@10 key_1_1@@0) (keydict___item__ PostHeap@0 self@@10 key_1_2@@0))))
 :qid |stdinbpl.479:15|
 :skolemid |37|
)) (=> (and (and (forall ((key_1_1@@1 T@Ref) ) (!  (=> (< NoPerm FullPerm) (and (qpRange1 (keydict___item__ PostHeap@0 self@@10 key_1_1@@1)) (= (invRecv1 (keydict___item__ PostHeap@0 self@@10 key_1_1@@1)) key_1_1@@1)))
 :qid |stdinbpl.485:22|
 :skolemid |38|
 :pattern ( (|keydict___item__#frame| EmptyFrame self@@10 key_1_1@@1))
 :pattern ( (|keydict___item__#frame| EmptyFrame self@@10 key_1_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (< NoPerm FullPerm) (qpRange1 o_4)) (= (keydict___item__ PostHeap@0 self@@10 (invRecv1 o_4)) o_4))
 :qid |stdinbpl.489:22|
 :skolemid |39|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((key_1_1@@2 T@Ref) ) (! (not (= (keydict___item__ PostHeap@0 self@@10 key_1_1@@2) null))
 :qid |stdinbpl.495:22|
 :skolemid |40|
 :pattern ( (|keydict___item__#frame| EmptyFrame self@@10 key_1_1@@2))
 :pattern ( (|keydict___item__#frame| EmptyFrame self@@10 key_1_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (< NoPerm FullPerm) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (keydict___item__ PostHeap@0 self@@10 (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| QPMask@1) o_4@@0 keydict_val) (+ (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| ZeroMask) o_4@@0 keydict_val) FullPerm)))) (=> (not (and (< NoPerm FullPerm) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| QPMask@1) o_4@@0 keydict_val) (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| ZeroMask) o_4@@0 keydict_val))))
 :qid |stdinbpl.501:22|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| QPMask@1) o_4@@0 keydict_val))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_5565_53) ) (!  (=> true (= (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.505:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_5526_3196_53#PolymorphicMapType_5526| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_5578_5579) ) (!  (=> true (= (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.505:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_5526_3196_5579#PolymorphicMapType_5526| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_9038_9043) ) (!  (=> (not (= f_5@@1 keydict_val)) (= (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.505:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_5526_3196_11538#PolymorphicMapType_5526| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_3196_15476) ) (!  (=> true (= (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.505:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_5526_3196_15476#PolymorphicMapType_5526| QPMask@1) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_3196_15609) ) (!  (=> true (= (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| QPMask@1) o_4@@5 f_5@@3)))
 :qid |stdinbpl.505:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_5526_3196_19742#PolymorphicMapType_5526| QPMask@1) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@1) (state PostHeap@0 QPMask@1))) (and (and (=> (= (ControlFlow 0 10) 6) anon16_Else_correct) (=> (= (ControlFlow 0 10) 8) anon17_Then_correct)) (=> (= (ControlFlow 0 10) 9) anon17_Else_correct))))))))
(let ((anon15_Else_correct true))
(let ((anon15_Then_correct true))
(let ((anon13_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (state PostHeap@0 ZeroMask)) (and (and (=> (= (ControlFlow 0 12) 10) anon14_Else_correct) (=> (= (ControlFlow 0 12) 4) anon15_Then_correct)) (=> (= (ControlFlow 0 12) 5) anon15_Else_correct)))))
(let ((anon13_Else_correct true))
(let ((anon0_correct  (=> (state Heap@@28 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 13) 12) anon13_Then_correct) (=> (= (ControlFlow 0 13) 2) anon13_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
