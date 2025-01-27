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
(declare-sort T@Field_8275_53 0)
(declare-sort T@Field_8288_8289 0)
(declare-sort T@Field_14575_14576 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14588_14593 0)
(declare-sort T@Field_5157_5154 0)
(declare-sort T@Field_5157_53 0)
(declare-sort T@Field_5157_14461 0)
(declare-sort T@Field_5153_5158 0)
(declare-sort T@Field_14459_14461 0)
(declare-sort T@Field_5153_14593 0)
(declare-datatypes ((T@PolymorphicMapType_8236 0)) (((PolymorphicMapType_8236 (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| (Array T@Ref T@Field_8288_8289 Real)) (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| (Array T@Ref T@Field_14575_14576 Real)) (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| (Array T@Ref T@Field_5153_5158 Real)) (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| (Array T@Ref T@Field_8275_53 Real)) (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| (Array T@Ref T@Field_14459_14461 Real)) (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| (Array T@Ref T@Field_5153_14593 Real)) (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| (Array T@Ref T@Field_5157_5154 Real)) (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| (Array T@Ref T@Field_5157_53 Real)) (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| (Array T@Ref T@Field_5157_14461 Real)) (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| (Array T@Ref T@Field_14588_14593 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8764 0)) (((PolymorphicMapType_8764 (|PolymorphicMapType_8764_5153_5154#PolymorphicMapType_8764| (Array T@Ref T@Field_8288_8289 Bool)) (|PolymorphicMapType_8764_5153_53#PolymorphicMapType_8764| (Array T@Ref T@Field_8275_53 Bool)) (|PolymorphicMapType_8764_5153_24612#PolymorphicMapType_8764| (Array T@Ref T@Field_14459_14461 Bool)) (|PolymorphicMapType_8764_5153_14576#PolymorphicMapType_8764| (Array T@Ref T@Field_5153_5158 Bool)) (|PolymorphicMapType_8764_5153_25034#PolymorphicMapType_8764| (Array T@Ref T@Field_5153_14593 Bool)) (|PolymorphicMapType_8764_14575_5154#PolymorphicMapType_8764| (Array T@Ref T@Field_5157_5154 Bool)) (|PolymorphicMapType_8764_14575_53#PolymorphicMapType_8764| (Array T@Ref T@Field_5157_53 Bool)) (|PolymorphicMapType_8764_14575_25680#PolymorphicMapType_8764| (Array T@Ref T@Field_5157_14461 Bool)) (|PolymorphicMapType_8764_14575_14576#PolymorphicMapType_8764| (Array T@Ref T@Field_14575_14576 Bool)) (|PolymorphicMapType_8764_14575_26102#PolymorphicMapType_8764| (Array T@Ref T@Field_14588_14593 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8215 0)) (((PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| (Array T@Ref T@Field_8275_53 Bool)) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| (Array T@Ref T@Field_8288_8289 T@Ref)) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| (Array T@Ref T@Field_14575_14576 T@FrameType)) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| (Array T@Ref T@Field_14588_14593 T@PolymorphicMapType_8764)) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| (Array T@Ref T@Field_5157_5154 T@Ref)) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| (Array T@Ref T@Field_5157_53 Bool)) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| (Array T@Ref T@Field_5157_14461 (Array T@Ref Bool))) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| (Array T@Ref T@Field_5153_5158 T@FrameType)) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| (Array T@Ref T@Field_14459_14461 (Array T@Ref Bool))) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| (Array T@Ref T@Field_5153_14593 T@PolymorphicMapType_8764)) ) ) ))
(declare-fun $allocated () T@Field_8275_53)
(declare-fun all () T@Field_14459_14461)
(declare-fun f_7 () T@Field_8288_8289)
(declare-fun succHeap (T@PolymorphicMapType_8215 T@PolymorphicMapType_8215) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8215 T@PolymorphicMapType_8215) Bool)
(declare-fun state (T@PolymorphicMapType_8215 T@PolymorphicMapType_8236) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8236) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8764)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun inv (T@Ref) T@Field_14575_14576)
(declare-fun IsPredicateField_5157_5158 (T@Field_14575_14576) Bool)
(declare-fun |inv#trigger_5157| (T@PolymorphicMapType_8215 T@Field_14575_14576) Bool)
(declare-fun |inv#everUsed_5157| (T@Field_14575_14576) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8215 T@PolymorphicMapType_8215 T@PolymorphicMapType_8236) Bool)
(declare-fun IsPredicateField_5153_23870 (T@Field_5153_5158) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5153 (T@Field_5153_5158) T@Field_5153_14593)
(declare-fun HasDirectPerm_5153_5158 (T@PolymorphicMapType_8236 T@Ref T@Field_5153_5158) Bool)
(declare-fun PredicateMaskField_5157 (T@Field_14575_14576) T@Field_14588_14593)
(declare-fun HasDirectPerm_5157_5158 (T@PolymorphicMapType_8236 T@Ref T@Field_14575_14576) Bool)
(declare-fun IsWandField_5153_27267 (T@Field_5153_5158) Bool)
(declare-fun WandMaskField_5153 (T@Field_5153_5158) T@Field_5153_14593)
(declare-fun IsWandField_5157_26910 (T@Field_14575_14576) Bool)
(declare-fun WandMaskField_5157 (T@Field_14575_14576) T@Field_14588_14593)
(declare-fun |inv#sm| (T@Ref) T@Field_14588_14593)
(declare-fun dummyHeap () T@PolymorphicMapType_8215)
(declare-fun ZeroMask () T@PolymorphicMapType_8236)
(declare-fun InsidePredicate_14575_14575 (T@Field_14575_14576 T@FrameType T@Field_14575_14576 T@FrameType) Bool)
(declare-fun InsidePredicate_8275_8275 (T@Field_5153_5158 T@FrameType T@Field_5153_5158 T@FrameType) Bool)
(declare-fun IsPredicateField_5148_14485 (T@Field_14459_14461) Bool)
(declare-fun IsWandField_5148_14512 (T@Field_14459_14461) Bool)
(declare-fun IsPredicateField_5153_5154 (T@Field_8288_8289) Bool)
(declare-fun IsWandField_5153_5154 (T@Field_8288_8289) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5157_34256 (T@Field_14588_14593) Bool)
(declare-fun IsWandField_5157_34272 (T@Field_14588_14593) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5157_34083 (T@Field_5157_14461) Bool)
(declare-fun IsWandField_5157_34099 (T@Field_5157_14461) Bool)
(declare-fun IsPredicateField_5157_53 (T@Field_5157_53) Bool)
(declare-fun IsWandField_5157_53 (T@Field_5157_53) Bool)
(declare-fun IsPredicateField_5157_5154 (T@Field_5157_5154) Bool)
(declare-fun IsWandField_5157_5154 (T@Field_5157_5154) Bool)
(declare-fun IsPredicateField_5153_33420 (T@Field_5153_14593) Bool)
(declare-fun IsWandField_5153_33436 (T@Field_5153_14593) Bool)
(declare-fun IsPredicateField_5153_53 (T@Field_8275_53) Bool)
(declare-fun IsWandField_5153_53 (T@Field_8275_53) Bool)
(declare-fun HasDirectPerm_5153_23257 (T@PolymorphicMapType_8236 T@Ref T@Field_5153_14593) Bool)
(declare-fun HasDirectPerm_5153_23011 (T@PolymorphicMapType_8236 T@Ref T@Field_14459_14461) Bool)
(declare-fun HasDirectPerm_5153_53 (T@PolymorphicMapType_8236 T@Ref T@Field_8275_53) Bool)
(declare-fun HasDirectPerm_5153_5154 (T@PolymorphicMapType_8236 T@Ref T@Field_8288_8289) Bool)
(declare-fun HasDirectPerm_5157_22147 (T@PolymorphicMapType_8236 T@Ref T@Field_14588_14593) Bool)
(declare-fun HasDirectPerm_5157_21902 (T@PolymorphicMapType_8236 T@Ref T@Field_5157_14461) Bool)
(declare-fun HasDirectPerm_5157_53 (T@PolymorphicMapType_8236 T@Ref T@Field_5157_53) Bool)
(declare-fun HasDirectPerm_5157_5154 (T@PolymorphicMapType_8236 T@Ref T@Field_5157_5154) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8236 T@PolymorphicMapType_8236 T@PolymorphicMapType_8236) Bool)
(declare-fun getPredWandId_5157_5158 (T@Field_14575_14576) Int)
(declare-fun InsidePredicate_14575_8275 (T@Field_14575_14576 T@FrameType T@Field_5153_5158 T@FrameType) Bool)
(declare-fun InsidePredicate_8275_14575 (T@Field_5153_5158 T@FrameType T@Field_14575_14576 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8215) (Heap1 T@PolymorphicMapType_8215) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8215) (Mask T@PolymorphicMapType_8236) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8215) (Heap1@@0 T@PolymorphicMapType_8215) (Heap2 T@PolymorphicMapType_8215) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14588_14593) ) (!  (not (select (|PolymorphicMapType_8764_14575_26102#PolymorphicMapType_8764| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_14575_26102#PolymorphicMapType_8764| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14575_14576) ) (!  (not (select (|PolymorphicMapType_8764_14575_14576#PolymorphicMapType_8764| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_14575_14576#PolymorphicMapType_8764| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5157_14461) ) (!  (not (select (|PolymorphicMapType_8764_14575_25680#PolymorphicMapType_8764| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_14575_25680#PolymorphicMapType_8764| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5157_53) ) (!  (not (select (|PolymorphicMapType_8764_14575_53#PolymorphicMapType_8764| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_14575_53#PolymorphicMapType_8764| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5157_5154) ) (!  (not (select (|PolymorphicMapType_8764_14575_5154#PolymorphicMapType_8764| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_14575_5154#PolymorphicMapType_8764| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5153_14593) ) (!  (not (select (|PolymorphicMapType_8764_5153_25034#PolymorphicMapType_8764| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_5153_25034#PolymorphicMapType_8764| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5153_5158) ) (!  (not (select (|PolymorphicMapType_8764_5153_14576#PolymorphicMapType_8764| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_5153_14576#PolymorphicMapType_8764| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_14459_14461) ) (!  (not (select (|PolymorphicMapType_8764_5153_24612#PolymorphicMapType_8764| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_5153_24612#PolymorphicMapType_8764| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8275_53) ) (!  (not (select (|PolymorphicMapType_8764_5153_53#PolymorphicMapType_8764| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_5153_53#PolymorphicMapType_8764| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8288_8289) ) (!  (not (select (|PolymorphicMapType_8764_5153_5154#PolymorphicMapType_8764| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8764_5153_5154#PolymorphicMapType_8764| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_5157_5158 (inv this))
 :qid |stdinbpl.410:15|
 :skolemid |83|
 :pattern ( (inv this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8215) (this@@0 T@Ref) ) (! (|inv#everUsed_5157| (inv this@@0))
 :qid |stdinbpl.429:15|
 :skolemid |87|
 :pattern ( (|inv#trigger_5157| Heap@@0 (inv this@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8215) (ExhaleHeap T@PolymorphicMapType_8215) (Mask@@0 T@PolymorphicMapType_8236) (pm_f_5 T@Field_5153_5158) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5153_5158 Mask@@0 null pm_f_5) (IsPredicateField_5153_23870 pm_f_5)) (= (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@1) null (PredicateMaskField_5153 pm_f_5)) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap) null (PredicateMaskField_5153 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5153_23870 pm_f_5) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap) null (PredicateMaskField_5153 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8215) (ExhaleHeap@@0 T@PolymorphicMapType_8215) (Mask@@1 T@PolymorphicMapType_8236) (pm_f_5@@0 T@Field_14575_14576) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5157_5158 Mask@@1 null pm_f_5@@0) (IsPredicateField_5157_5158 pm_f_5@@0)) (= (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@2) null (PredicateMaskField_5157 pm_f_5@@0)) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@0) null (PredicateMaskField_5157 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5157_5158 pm_f_5@@0) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@0) null (PredicateMaskField_5157 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8215) (ExhaleHeap@@1 T@PolymorphicMapType_8215) (Mask@@2 T@PolymorphicMapType_8236) (pm_f_5@@1 T@Field_5153_5158) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5153_5158 Mask@@2 null pm_f_5@@1) (IsWandField_5153_27267 pm_f_5@@1)) (= (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@3) null (WandMaskField_5153 pm_f_5@@1)) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@1) null (WandMaskField_5153 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_5153_27267 pm_f_5@@1) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@1) null (WandMaskField_5153 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8215) (ExhaleHeap@@2 T@PolymorphicMapType_8215) (Mask@@3 T@PolymorphicMapType_8236) (pm_f_5@@2 T@Field_14575_14576) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5157_5158 Mask@@3 null pm_f_5@@2) (IsWandField_5157_26910 pm_f_5@@2)) (= (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@4) null (WandMaskField_5157 pm_f_5@@2)) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@2) null (WandMaskField_5157 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5157_26910 pm_f_5@@2) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@2) null (WandMaskField_5157 pm_f_5@@2)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@1) (inv this2)) (= this@@1 this2))
 :qid |stdinbpl.420:15|
 :skolemid |85|
 :pattern ( (inv this@@1) (inv this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@2) (|inv#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.424:15|
 :skolemid |86|
 :pattern ( (|inv#sm| this@@2) (|inv#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8215) (ExhaleHeap@@3 T@PolymorphicMapType_8215) (Mask@@4 T@PolymorphicMapType_8236) (pm_f_5@@3 T@Field_5153_5158) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5153_5158 Mask@@4 null pm_f_5@@3) (IsPredicateField_5153_23870 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_8288_8289) ) (!  (=> (select (|PolymorphicMapType_8764_5153_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5 f_23) (= (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@5) o2_5 f_23) (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_8275_53) ) (!  (=> (select (|PolymorphicMapType_8764_5153_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@5) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_14459_14461) ) (!  (=> (select (|PolymorphicMapType_8764_5153_24612#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@5) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_5153_5158) ) (!  (=> (select (|PolymorphicMapType_8764_5153_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@5) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_5153_14593) ) (!  (=> (select (|PolymorphicMapType_8764_5153_25034#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@3 f_23@@3))
))) (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_5157_5154) ) (!  (=> (select (|PolymorphicMapType_8764_14575_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@5) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@4 f_23@@4))
))) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_5157_53) ) (!  (=> (select (|PolymorphicMapType_8764_14575_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@5) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_5157_14461) ) (!  (=> (select (|PolymorphicMapType_8764_14575_25680#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@5) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_14575_14576) ) (!  (=> (select (|PolymorphicMapType_8764_14575_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@5) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_14588_14593) ) (!  (=> (select (|PolymorphicMapType_8764_14575_26102#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@5) null (PredicateMaskField_5153 pm_f_5@@3))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@5) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@3) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5153_23870 pm_f_5@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8215) (ExhaleHeap@@4 T@PolymorphicMapType_8215) (Mask@@5 T@PolymorphicMapType_8236) (pm_f_5@@4 T@Field_14575_14576) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5157_5158 Mask@@5 null pm_f_5@@4) (IsPredicateField_5157_5158 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_23@@9 T@Field_8288_8289) ) (!  (=> (select (|PolymorphicMapType_8764_5153_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@9 f_23@@9) (= (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@6) o2_5@@9 f_23@@9) (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@9 f_23@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@9 f_23@@9))
)) (forall ((o2_5@@10 T@Ref) (f_23@@10 T@Field_8275_53) ) (!  (=> (select (|PolymorphicMapType_8764_5153_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@10 f_23@@10) (= (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@6) o2_5@@10 f_23@@10) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@10 f_23@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@10 f_23@@10))
))) (forall ((o2_5@@11 T@Ref) (f_23@@11 T@Field_14459_14461) ) (!  (=> (select (|PolymorphicMapType_8764_5153_24612#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@11 f_23@@11) (= (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@6) o2_5@@11 f_23@@11) (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@11 f_23@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@11 f_23@@11))
))) (forall ((o2_5@@12 T@Ref) (f_23@@12 T@Field_5153_5158) ) (!  (=> (select (|PolymorphicMapType_8764_5153_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@12 f_23@@12) (= (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@6) o2_5@@12 f_23@@12) (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@12 f_23@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@12 f_23@@12))
))) (forall ((o2_5@@13 T@Ref) (f_23@@13 T@Field_5153_14593) ) (!  (=> (select (|PolymorphicMapType_8764_5153_25034#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@13 f_23@@13) (= (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@6) o2_5@@13 f_23@@13) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@13 f_23@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@13 f_23@@13))
))) (forall ((o2_5@@14 T@Ref) (f_23@@14 T@Field_5157_5154) ) (!  (=> (select (|PolymorphicMapType_8764_14575_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@14 f_23@@14) (= (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@6) o2_5@@14 f_23@@14) (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@14 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@14 f_23@@14))
))) (forall ((o2_5@@15 T@Ref) (f_23@@15 T@Field_5157_53) ) (!  (=> (select (|PolymorphicMapType_8764_14575_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@15 f_23@@15) (= (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@6) o2_5@@15 f_23@@15) (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@15 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@15 f_23@@15))
))) (forall ((o2_5@@16 T@Ref) (f_23@@16 T@Field_5157_14461) ) (!  (=> (select (|PolymorphicMapType_8764_14575_25680#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@16 f_23@@16) (= (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@6) o2_5@@16 f_23@@16) (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@16 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@16 f_23@@16))
))) (forall ((o2_5@@17 T@Ref) (f_23@@17 T@Field_14575_14576) ) (!  (=> (select (|PolymorphicMapType_8764_14575_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@17 f_23@@17) (= (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@6) o2_5@@17 f_23@@17) (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@17 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@17 f_23@@17))
))) (forall ((o2_5@@18 T@Ref) (f_23@@18 T@Field_14588_14593) ) (!  (=> (select (|PolymorphicMapType_8764_14575_26102#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) null (PredicateMaskField_5157 pm_f_5@@4))) o2_5@@18 f_23@@18) (= (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@6) o2_5@@18 f_23@@18) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@18 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@4) o2_5@@18 f_23@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5157_5158 pm_f_5@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8215) (ExhaleHeap@@5 T@PolymorphicMapType_8215) (Mask@@6 T@PolymorphicMapType_8236) (pm_f_5@@5 T@Field_5153_5158) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5153_5158 Mask@@6 null pm_f_5@@5) (IsWandField_5153_27267 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_23@@19 T@Field_8288_8289) ) (!  (=> (select (|PolymorphicMapType_8764_5153_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@19 f_23@@19) (= (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@7) o2_5@@19 f_23@@19) (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@19 f_23@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@19 f_23@@19))
)) (forall ((o2_5@@20 T@Ref) (f_23@@20 T@Field_8275_53) ) (!  (=> (select (|PolymorphicMapType_8764_5153_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@20 f_23@@20) (= (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@7) o2_5@@20 f_23@@20) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@20 f_23@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@20 f_23@@20))
))) (forall ((o2_5@@21 T@Ref) (f_23@@21 T@Field_14459_14461) ) (!  (=> (select (|PolymorphicMapType_8764_5153_24612#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@21 f_23@@21) (= (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@7) o2_5@@21 f_23@@21) (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@21 f_23@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@21 f_23@@21))
))) (forall ((o2_5@@22 T@Ref) (f_23@@22 T@Field_5153_5158) ) (!  (=> (select (|PolymorphicMapType_8764_5153_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@22 f_23@@22) (= (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@7) o2_5@@22 f_23@@22) (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@22 f_23@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@22 f_23@@22))
))) (forall ((o2_5@@23 T@Ref) (f_23@@23 T@Field_5153_14593) ) (!  (=> (select (|PolymorphicMapType_8764_5153_25034#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@23 f_23@@23) (= (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) o2_5@@23 f_23@@23) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@23 f_23@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@23 f_23@@23))
))) (forall ((o2_5@@24 T@Ref) (f_23@@24 T@Field_5157_5154) ) (!  (=> (select (|PolymorphicMapType_8764_14575_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@24 f_23@@24) (= (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@7) o2_5@@24 f_23@@24) (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@24 f_23@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@24 f_23@@24))
))) (forall ((o2_5@@25 T@Ref) (f_23@@25 T@Field_5157_53) ) (!  (=> (select (|PolymorphicMapType_8764_14575_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@25 f_23@@25) (= (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@7) o2_5@@25 f_23@@25) (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@25 f_23@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@25 f_23@@25))
))) (forall ((o2_5@@26 T@Ref) (f_23@@26 T@Field_5157_14461) ) (!  (=> (select (|PolymorphicMapType_8764_14575_25680#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@26 f_23@@26) (= (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@7) o2_5@@26 f_23@@26) (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@26 f_23@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@26 f_23@@26))
))) (forall ((o2_5@@27 T@Ref) (f_23@@27 T@Field_14575_14576) ) (!  (=> (select (|PolymorphicMapType_8764_14575_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@27 f_23@@27) (= (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@7) o2_5@@27 f_23@@27) (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@27 f_23@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@27 f_23@@27))
))) (forall ((o2_5@@28 T@Ref) (f_23@@28 T@Field_14588_14593) ) (!  (=> (select (|PolymorphicMapType_8764_14575_26102#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@7) null (WandMaskField_5153 pm_f_5@@5))) o2_5@@28 f_23@@28) (= (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@7) o2_5@@28 f_23@@28) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@28 f_23@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@5) o2_5@@28 f_23@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_5153_27267 pm_f_5@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8215) (ExhaleHeap@@6 T@PolymorphicMapType_8215) (Mask@@7 T@PolymorphicMapType_8236) (pm_f_5@@6 T@Field_14575_14576) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5157_5158 Mask@@7 null pm_f_5@@6) (IsWandField_5157_26910 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@29 T@Field_8288_8289) ) (!  (=> (select (|PolymorphicMapType_8764_5153_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@29 f_23@@29) (= (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@8) o2_5@@29 f_23@@29) (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@29 f_23@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@29 f_23@@29))
)) (forall ((o2_5@@30 T@Ref) (f_23@@30 T@Field_8275_53) ) (!  (=> (select (|PolymorphicMapType_8764_5153_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@30 f_23@@30) (= (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@8) o2_5@@30 f_23@@30) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@30 f_23@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@30 f_23@@30))
))) (forall ((o2_5@@31 T@Ref) (f_23@@31 T@Field_14459_14461) ) (!  (=> (select (|PolymorphicMapType_8764_5153_24612#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@31 f_23@@31) (= (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@8) o2_5@@31 f_23@@31) (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@31 f_23@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@31 f_23@@31))
))) (forall ((o2_5@@32 T@Ref) (f_23@@32 T@Field_5153_5158) ) (!  (=> (select (|PolymorphicMapType_8764_5153_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@32 f_23@@32) (= (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@8) o2_5@@32 f_23@@32) (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@32 f_23@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@32 f_23@@32))
))) (forall ((o2_5@@33 T@Ref) (f_23@@33 T@Field_5153_14593) ) (!  (=> (select (|PolymorphicMapType_8764_5153_25034#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@33 f_23@@33) (= (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@8) o2_5@@33 f_23@@33) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@33 f_23@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@33 f_23@@33))
))) (forall ((o2_5@@34 T@Ref) (f_23@@34 T@Field_5157_5154) ) (!  (=> (select (|PolymorphicMapType_8764_14575_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@34 f_23@@34) (= (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@8) o2_5@@34 f_23@@34) (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@34 f_23@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@34 f_23@@34))
))) (forall ((o2_5@@35 T@Ref) (f_23@@35 T@Field_5157_53) ) (!  (=> (select (|PolymorphicMapType_8764_14575_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@35 f_23@@35) (= (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@8) o2_5@@35 f_23@@35) (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@35 f_23@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@35 f_23@@35))
))) (forall ((o2_5@@36 T@Ref) (f_23@@36 T@Field_5157_14461) ) (!  (=> (select (|PolymorphicMapType_8764_14575_25680#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@36 f_23@@36) (= (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@8) o2_5@@36 f_23@@36) (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@36 f_23@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@36 f_23@@36))
))) (forall ((o2_5@@37 T@Ref) (f_23@@37 T@Field_14575_14576) ) (!  (=> (select (|PolymorphicMapType_8764_14575_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@37 f_23@@37) (= (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@8) o2_5@@37 f_23@@37) (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@37 f_23@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@37 f_23@@37))
))) (forall ((o2_5@@38 T@Ref) (f_23@@38 T@Field_14588_14593) ) (!  (=> (select (|PolymorphicMapType_8764_14575_26102#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) null (WandMaskField_5157 pm_f_5@@6))) o2_5@@38 f_23@@38) (= (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@8) o2_5@@38 f_23@@38) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@38 f_23@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@6) o2_5@@38 f_23@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5157_26910 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8215) (ExhaleHeap@@7 T@PolymorphicMapType_8215) (Mask@@8 T@PolymorphicMapType_8236) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@9) o_15 $allocated) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@7) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@7) o_15 $allocated))
)))
(assert (forall ((p T@Field_14575_14576) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14575_14575 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14575_14575 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5153_5158) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8275_8275 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8275_8275 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5148_14485 all)))
(assert  (not (IsWandField_5148_14512 all)))
(assert  (not (IsPredicateField_5153_5154 f_7)))
(assert  (not (IsWandField_5153_5154 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8215) (ExhaleHeap@@8 T@PolymorphicMapType_8215) (Mask@@9 T@PolymorphicMapType_8236) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8236) (o_2@@9 T@Ref) (f_4@@9 T@Field_14588_14593) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5157_34256 f_4@@9))) (not (IsWandField_5157_34272 f_4@@9))) (<= (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8236) (o_2@@10 T@Ref) (f_4@@10 T@Field_5157_14461) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5157_34083 f_4@@10))) (not (IsWandField_5157_34099 f_4@@10))) (<= (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8236) (o_2@@11 T@Ref) (f_4@@11 T@Field_5157_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5157_53 f_4@@11))) (not (IsWandField_5157_53 f_4@@11))) (<= (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8236) (o_2@@12 T@Ref) (f_4@@12 T@Field_14575_14576) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5157_5158 f_4@@12))) (not (IsWandField_5157_26910 f_4@@12))) (<= (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8236) (o_2@@13 T@Ref) (f_4@@13 T@Field_5157_5154) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5157_5154 f_4@@13))) (not (IsWandField_5157_5154 f_4@@13))) (<= (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8236) (o_2@@14 T@Ref) (f_4@@14 T@Field_5153_14593) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5153_33420 f_4@@14))) (not (IsWandField_5153_33436 f_4@@14))) (<= (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8236) (o_2@@15 T@Ref) (f_4@@15 T@Field_14459_14461) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5148_14485 f_4@@15))) (not (IsWandField_5148_14512 f_4@@15))) (<= (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8236) (o_2@@16 T@Ref) (f_4@@16 T@Field_8275_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5153_53 f_4@@16))) (not (IsWandField_5153_53 f_4@@16))) (<= (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8236) (o_2@@17 T@Ref) (f_4@@17 T@Field_5153_5158) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5153_23870 f_4@@17))) (not (IsWandField_5153_27267 f_4@@17))) (<= (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8236) (o_2@@18 T@Ref) (f_4@@18 T@Field_8288_8289) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5153_5154 f_4@@18))) (not (IsWandField_5153_5154 f_4@@18))) (<= (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8236) (o_2@@19 T@Ref) (f_4@@19 T@Field_5153_14593) ) (! (= (HasDirectPerm_5153_23257 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5153_23257 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8236) (o_2@@20 T@Ref) (f_4@@20 T@Field_14459_14461) ) (! (= (HasDirectPerm_5153_23011 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5153_23011 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8236) (o_2@@21 T@Ref) (f_4@@21 T@Field_8275_53) ) (! (= (HasDirectPerm_5153_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5153_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8236) (o_2@@22 T@Ref) (f_4@@22 T@Field_8288_8289) ) (! (= (HasDirectPerm_5153_5154 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5153_5154 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8236) (o_2@@23 T@Ref) (f_4@@23 T@Field_5153_5158) ) (! (= (HasDirectPerm_5153_5158 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5153_5158 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8236) (o_2@@24 T@Ref) (f_4@@24 T@Field_14588_14593) ) (! (= (HasDirectPerm_5157_22147 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5157_22147 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8236) (o_2@@25 T@Ref) (f_4@@25 T@Field_5157_14461) ) (! (= (HasDirectPerm_5157_21902 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5157_21902 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8236) (o_2@@26 T@Ref) (f_4@@26 T@Field_5157_53) ) (! (= (HasDirectPerm_5157_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5157_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8236) (o_2@@27 T@Ref) (f_4@@27 T@Field_5157_5154) ) (! (= (HasDirectPerm_5157_5154 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5157_5154 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8236) (o_2@@28 T@Ref) (f_4@@28 T@Field_14575_14576) ) (! (= (HasDirectPerm_5157_5158 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5157_5158 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8215) (ExhaleHeap@@9 T@PolymorphicMapType_8215) (Mask@@30 T@PolymorphicMapType_8236) (o_15@@0 T@Ref) (f_23@@39 T@Field_5153_14593) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_5153_23257 Mask@@30 o_15@@0 f_23@@39) (= (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@11) o_15@@0 f_23@@39) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@9) o_15@@0 f_23@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| ExhaleHeap@@9) o_15@@0 f_23@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8215) (ExhaleHeap@@10 T@PolymorphicMapType_8215) (Mask@@31 T@PolymorphicMapType_8236) (o_15@@1 T@Ref) (f_23@@40 T@Field_14459_14461) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_5153_23011 Mask@@31 o_15@@1 f_23@@40) (= (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@12) o_15@@1 f_23@@40) (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@10) o_15@@1 f_23@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| ExhaleHeap@@10) o_15@@1 f_23@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8215) (ExhaleHeap@@11 T@PolymorphicMapType_8215) (Mask@@32 T@PolymorphicMapType_8236) (o_15@@2 T@Ref) (f_23@@41 T@Field_8275_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_5153_53 Mask@@32 o_15@@2 f_23@@41) (= (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@13) o_15@@2 f_23@@41) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@11) o_15@@2 f_23@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| ExhaleHeap@@11) o_15@@2 f_23@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8215) (ExhaleHeap@@12 T@PolymorphicMapType_8215) (Mask@@33 T@PolymorphicMapType_8236) (o_15@@3 T@Ref) (f_23@@42 T@Field_8288_8289) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_5153_5154 Mask@@33 o_15@@3 f_23@@42) (= (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@14) o_15@@3 f_23@@42) (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@12) o_15@@3 f_23@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| ExhaleHeap@@12) o_15@@3 f_23@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8215) (ExhaleHeap@@13 T@PolymorphicMapType_8215) (Mask@@34 T@PolymorphicMapType_8236) (o_15@@4 T@Ref) (f_23@@43 T@Field_5153_5158) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_5153_5158 Mask@@34 o_15@@4 f_23@@43) (= (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@15) o_15@@4 f_23@@43) (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@13) o_15@@4 f_23@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| ExhaleHeap@@13) o_15@@4 f_23@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8215) (ExhaleHeap@@14 T@PolymorphicMapType_8215) (Mask@@35 T@PolymorphicMapType_8236) (o_15@@5 T@Ref) (f_23@@44 T@Field_14588_14593) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5157_22147 Mask@@35 o_15@@5 f_23@@44) (= (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@16) o_15@@5 f_23@@44) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@14) o_15@@5 f_23@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| ExhaleHeap@@14) o_15@@5 f_23@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8215) (ExhaleHeap@@15 T@PolymorphicMapType_8215) (Mask@@36 T@PolymorphicMapType_8236) (o_15@@6 T@Ref) (f_23@@45 T@Field_5157_14461) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5157_21902 Mask@@36 o_15@@6 f_23@@45) (= (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@17) o_15@@6 f_23@@45) (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@15) o_15@@6 f_23@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| ExhaleHeap@@15) o_15@@6 f_23@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8215) (ExhaleHeap@@16 T@PolymorphicMapType_8215) (Mask@@37 T@PolymorphicMapType_8236) (o_15@@7 T@Ref) (f_23@@46 T@Field_5157_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5157_53 Mask@@37 o_15@@7 f_23@@46) (= (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@18) o_15@@7 f_23@@46) (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@16) o_15@@7 f_23@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| ExhaleHeap@@16) o_15@@7 f_23@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8215) (ExhaleHeap@@17 T@PolymorphicMapType_8215) (Mask@@38 T@PolymorphicMapType_8236) (o_15@@8 T@Ref) (f_23@@47 T@Field_5157_5154) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5157_5154 Mask@@38 o_15@@8 f_23@@47) (= (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@19) o_15@@8 f_23@@47) (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@17) o_15@@8 f_23@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| ExhaleHeap@@17) o_15@@8 f_23@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8215) (ExhaleHeap@@18 T@PolymorphicMapType_8215) (Mask@@39 T@PolymorphicMapType_8236) (o_15@@9 T@Ref) (f_23@@48 T@Field_14575_14576) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5157_5158 Mask@@39 o_15@@9 f_23@@48) (= (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@20) o_15@@9 f_23@@48) (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@18) o_15@@9 f_23@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| ExhaleHeap@@18) o_15@@9 f_23@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_14588_14593) ) (! (= (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_5157_14461) ) (! (= (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_5157_53) ) (! (= (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14575_14576) ) (! (= (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5157_5154) ) (! (= (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5153_14593) ) (! (= (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_14459_14461) ) (! (= (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8275_53) ) (! (= (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5153_5158) ) (! (= (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8288_8289) ) (! (= (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8236) (SummandMask1 T@PolymorphicMapType_8236) (SummandMask2 T@PolymorphicMapType_8236) (o_2@@39 T@Ref) (f_4@@39 T@Field_14588_14593) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8236) (SummandMask1@@0 T@PolymorphicMapType_8236) (SummandMask2@@0 T@PolymorphicMapType_8236) (o_2@@40 T@Ref) (f_4@@40 T@Field_5157_14461) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8236) (SummandMask1@@1 T@PolymorphicMapType_8236) (SummandMask2@@1 T@PolymorphicMapType_8236) (o_2@@41 T@Ref) (f_4@@41 T@Field_5157_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8236) (SummandMask1@@2 T@PolymorphicMapType_8236) (SummandMask2@@2 T@PolymorphicMapType_8236) (o_2@@42 T@Ref) (f_4@@42 T@Field_14575_14576) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8236) (SummandMask1@@3 T@PolymorphicMapType_8236) (SummandMask2@@3 T@PolymorphicMapType_8236) (o_2@@43 T@Ref) (f_4@@43 T@Field_5157_5154) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8236) (SummandMask1@@4 T@PolymorphicMapType_8236) (SummandMask2@@4 T@PolymorphicMapType_8236) (o_2@@44 T@Ref) (f_4@@44 T@Field_5153_14593) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8236) (SummandMask1@@5 T@PolymorphicMapType_8236) (SummandMask2@@5 T@PolymorphicMapType_8236) (o_2@@45 T@Ref) (f_4@@45 T@Field_14459_14461) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8236) (SummandMask1@@6 T@PolymorphicMapType_8236) (SummandMask2@@6 T@PolymorphicMapType_8236) (o_2@@46 T@Ref) (f_4@@46 T@Field_8275_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8236) (SummandMask1@@7 T@PolymorphicMapType_8236) (SummandMask2@@7 T@PolymorphicMapType_8236) (o_2@@47 T@Ref) (f_4@@47 T@Field_5153_5158) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8236) (SummandMask1@@8 T@PolymorphicMapType_8236) (SummandMask2@@8 T@PolymorphicMapType_8236) (o_2@@48 T@Ref) (f_4@@48 T@Field_8288_8289) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_5157_5158 (inv this@@3)) 0)
 :qid |stdinbpl.414:15|
 :skolemid |84|
 :pattern ( (inv this@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8215) (o_14 T@Ref) (f_24 T@Field_5157_14461) (v (Array T@Ref Bool)) ) (! (succHeap Heap@@21 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@21) (store (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@21) o_14 f_24 v) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@21) (store (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@21) o_14 f_24 v) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@21) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8215) (o_14@@0 T@Ref) (f_24@@0 T@Field_14588_14593) (v@@0 T@PolymorphicMapType_8764) ) (! (succHeap Heap@@22 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@22) (store (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@22) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@22) (store (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@22) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@22) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8215) (o_14@@1 T@Ref) (f_24@@1 T@Field_14575_14576) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@23) (store (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@23) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@23) (store (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@23) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@23) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8215) (o_14@@2 T@Ref) (f_24@@2 T@Field_5157_5154) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@24) (store (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@24) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@24) (store (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@24) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@24) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8215) (o_14@@3 T@Ref) (f_24@@3 T@Field_5157_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@25) (store (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@25) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@25) (store (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@25) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@25) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8215) (o_14@@4 T@Ref) (f_24@@4 T@Field_14459_14461) (v@@4 (Array T@Ref Bool)) ) (! (succHeap Heap@@26 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@26) (store (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@26) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@26) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@26) (store (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@26) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8215) (o_14@@5 T@Ref) (f_24@@5 T@Field_5153_14593) (v@@5 T@PolymorphicMapType_8764) ) (! (succHeap Heap@@27 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@27) (store (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@27) o_14@@5 f_24@@5 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@27) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@27) (store (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@27) o_14@@5 f_24@@5 v@@5)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8215) (o_14@@6 T@Ref) (f_24@@6 T@Field_5153_5158) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@28) (store (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@28) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@28) (store (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@28) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@28) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8215) (o_14@@7 T@Ref) (f_24@@7 T@Field_8288_8289) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@29) (store (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@29) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@29) (store (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@29) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@29) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8215) (o_14@@8 T@Ref) (f_24@@8 T@Field_8275_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_8215 (store (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@30) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8215 (store (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@30) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@30) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@30)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_5157 (inv this@@4)) (|inv#sm| this@@4))
 :qid |stdinbpl.406:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_5157 (inv this@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_14@@9 T@Ref) (f_22 T@Field_8288_8289) (Heap@@31 T@PolymorphicMapType_8215) ) (!  (=> (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@31) o_14@@9 $allocated) (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@31) (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@31) o_14@@9 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@31) o_14@@9 f_22))
)))
(assert (forall ((p@@2 T@Field_14575_14576) (v_1@@1 T@FrameType) (q T@Field_14575_14576) (w@@1 T@FrameType) (r T@Field_14575_14576) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14575_14575 p@@2 v_1@@1 q w@@1) (InsidePredicate_14575_14575 q w@@1 r u)) (InsidePredicate_14575_14575 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14575_14575 p@@2 v_1@@1 q w@@1) (InsidePredicate_14575_14575 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14575_14576) (v_1@@2 T@FrameType) (q@@0 T@Field_14575_14576) (w@@2 T@FrameType) (r@@0 T@Field_5153_5158) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14575_14575 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14575_8275 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14575_8275 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14575_14575 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14575_8275 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14575_14576) (v_1@@3 T@FrameType) (q@@1 T@Field_5153_5158) (w@@3 T@FrameType) (r@@1 T@Field_14575_14576) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14575_8275 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8275_14575 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14575_14575 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14575_8275 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8275_14575 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14575_14576) (v_1@@4 T@FrameType) (q@@2 T@Field_5153_5158) (w@@4 T@FrameType) (r@@2 T@Field_5153_5158) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14575_8275 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8275_8275 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14575_8275 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14575_8275 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8275_8275 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5153_5158) (v_1@@5 T@FrameType) (q@@3 T@Field_14575_14576) (w@@5 T@FrameType) (r@@3 T@Field_14575_14576) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8275_14575 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14575_14575 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8275_14575 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8275_14575 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14575_14575 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5153_5158) (v_1@@6 T@FrameType) (q@@4 T@Field_14575_14576) (w@@6 T@FrameType) (r@@4 T@Field_5153_5158) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8275_14575 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14575_8275 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8275_8275 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8275_14575 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14575_8275 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5153_5158) (v_1@@7 T@FrameType) (q@@5 T@Field_5153_5158) (w@@7 T@FrameType) (r@@5 T@Field_14575_14576) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8275_8275 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8275_14575 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8275_14575 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8275_8275 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8275_14575 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5153_5158) (v_1@@8 T@FrameType) (q@@6 T@Field_5153_5158) (w@@8 T@FrameType) (r@@6 T@Field_5153_5158) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8275_8275 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8275_8275 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8275_8275 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8275_8275 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8275_8275 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun S () (Array T@Ref Bool))
(declare-fun PostHeap@0 () T@PolymorphicMapType_8215)
(declare-fun Heap@5 () T@PolymorphicMapType_8215)
(declare-fun Heap@4 () T@PolymorphicMapType_8215)
(declare-fun b_24 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_8236)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun Heap@1 () T@PolymorphicMapType_8215)
(declare-fun Heap@2 () T@PolymorphicMapType_8215)
(declare-fun Heap@3 () T@PolymorphicMapType_8215)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_8236)
(declare-fun Mask@1 () T@PolymorphicMapType_8236)
(declare-fun perm@1 () Real)
(declare-fun FrameFragment_5154 (T@Ref) T@FrameType)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_8236)
(declare-fun v_2@0 () T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_8215)
(declare-fun Heap@0 () T@PolymorphicMapType_8215)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@0 () T@PolymorphicMapType_8236)
(declare-fun v_2 () T@Ref)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun getPredWandId_5148_39255 (T@Field_14459_14461) Int)
(declare-fun getPredWandId_5148_5154 (T@Field_8288_8289) Int)
(declare-fun getPredWandId_5148_5158 (T@Field_5153_5158) Int)
(declare-fun getPredWandId_5148_53 (T@Field_8275_53) Int)
(declare-fun getPredWandId_5148_39909 (T@Field_5153_14593) Int)
(declare-fun getPredWandId_5157_40077 (T@Field_5157_14461) Int)
(declare-fun getPredWandId_5157_5154 (T@Field_5157_5154) Int)
(declare-fun getPredWandId_5157_53 (T@Field_5157_53) Int)
(declare-fun getPredWandId_5157_40724 (T@Field_14588_14593) Int)
(set-info :boogie-vc-id m_17)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon17_Else_correct  (=> (= (ControlFlow 0 24) (- 0 23)) (forall ((x1_1 T@Ref) (x1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x1_1 x1_1_1)) (select S x1_1)) (select S x1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x1_1 x1_1_1)))
 :qid |stdinbpl.544:17|
 :skolemid |94|
 :pattern ( (neverTriggered2 x1_1) (neverTriggered2 x1_1_1))
)))))
(let ((anon17_Then_correct true))
(let ((anon16_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 25) 22) anon17_Then_correct) (=> (= (ControlFlow 0 25) 24) anon17_Else_correct)))))
(let ((anon14_correct  (=> (= Heap@5 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@4) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@4) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@4) (store (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24) (PolymorphicMapType_8764 (store (|PolymorphicMapType_8764_5153_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) b_24 f_7 true) (|PolymorphicMapType_8764_5153_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) (|PolymorphicMapType_8764_5153_24612#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) (|PolymorphicMapType_8764_5153_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) (|PolymorphicMapType_8764_5153_25034#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) (|PolymorphicMapType_8764_14575_5154#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) (|PolymorphicMapType_8764_14575_53#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) (|PolymorphicMapType_8764_14575_25680#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) (|PolymorphicMapType_8764_14575_14576#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))) (|PolymorphicMapType_8764_14575_26102#PolymorphicMapType_8764| (select (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@4) null (|inv#sm| b_24))))) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@4) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@4) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@4) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@4) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@4) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@4))) (=> (and (state Heap@5 Mask@3) (state Heap@5 Mask@3)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((x1_3 T@Ref) (x1_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x1_3 x1_3_1)) (select S x1_3)) (select S x1_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x1_3 x1_3_1)))
 :qid |stdinbpl.660:17|
 :skolemid |100|
 :pattern ( (neverTriggered3 x1_3) (neverTriggered3 x1_3_1))
))) (=> (forall ((x1_3@@0 T@Ref) (x1_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x1_3@@0 x1_3_1@@0)) (select S x1_3@@0)) (select S x1_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x1_3@@0 x1_3_1@@0)))
 :qid |stdinbpl.660:17|
 :skolemid |100|
 :pattern ( (neverTriggered3 x1_3@@0) (neverTriggered3 x1_3_1@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((x1_3@@1 T@Ref) ) (!  (=> (select S x1_3@@1) (>= (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@3) null (inv x1_3@@1)) FullPerm))
 :qid |stdinbpl.667:17|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@5) null (inv x1_3@@1)))
 :pattern ( (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@3) null (inv x1_3@@1)))
 :pattern ( (select S x1_3@@1))
)))))))))
(let ((anon21_Else_correct  (=> (HasDirectPerm_5157_5158 Mask@3 null (inv b_24)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 6) 3)) anon14_correct))))
(let ((anon21_Then_correct  (=> (not (HasDirectPerm_5157_5158 Mask@3 null (inv b_24))) (=> (and (and (= Heap@2 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@1) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@1) (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@1) (store (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@1) null (|inv#sm| b_24) ZeroPMask) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@1) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@1) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@1) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@1) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@1) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@1))) (= Heap@3 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@2) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@2) (store (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@2) null (inv b_24) freshVersion@0) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@2) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@2) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@2) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@2) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@2) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@2) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 5) 3))) anon14_correct))))
(let ((anon12_correct  (=> (and (= Mask@2 (PolymorphicMapType_8236 (store (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@1) b_24 f_7 (- (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@1) b_24 f_7) perm@1)) (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@1) (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| Mask@1) (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| Mask@1) (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| Mask@1) (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| Mask@1) (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| Mask@1) (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| Mask@1) (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| Mask@1) (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| Mask@1))) (= Mask@3 (PolymorphicMapType_8236 (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@2) (store (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@2) null (inv b_24) (+ (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@2) null (inv b_24)) FullPerm)) (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| Mask@2) (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| Mask@2) (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| Mask@2) (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| Mask@2) (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| Mask@2) (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| Mask@2) (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| Mask@2) (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| Mask@2)))) (=> (and (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)) (and (|inv#trigger_5157| Heap@1 (inv b_24)) (= (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@1) null (inv b_24)) (FrameFragment_5154 (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@1) b_24 f_7))))) (and (=> (= (ControlFlow 0 7) 5) anon21_Then_correct) (=> (= (ControlFlow 0 7) 6) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 10) 7)) anon12_correct)))
(let ((anon20_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= perm@1 (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@1) b_24 f_7))) (=> (<= perm@1 (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@1) b_24 f_7)) (=> (= (ControlFlow 0 8) 7) anon12_correct))))))
(let ((anon10_correct  (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= b_24 null))) (=> (and (and (= Mask@1 (PolymorphicMapType_8236 (store (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@0) b_24 f_7 (+ (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| Mask@0) b_24 f_7) perm@0)) (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| Mask@0) (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| Mask@0) (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| Mask@0) (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| Mask@0) (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| Mask@0) (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| Mask@0) (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| Mask@0) (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| Mask@0) (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| Mask@0))) (state Heap@1 Mask@1)) (and (state Heap@1 Mask@1) (state Heap@1 Mask@1))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (HasDirectPerm_5153_5154 Mask@1 b_24 f_7)) (=> (HasDirectPerm_5153_5154 Mask@1 b_24 f_7) (=> (= v_2@0 (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@1) b_24 f_7)) (=> (and (state Heap@1 Mask@1) (= perm@1 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (and (=> (= (ControlFlow 0 11) 8) anon20_Then_correct) (=> (= (ControlFlow 0 11) 10) anon20_Else_correct)))))))))))))))
(let ((anon19_Else_correct  (=> (HasDirectPerm_5157_5158 Mask@0 null (inv b_24)) (=> (and (= Heap@1 Heap@@32) (= (ControlFlow 0 16) 11)) anon10_correct))))
(let ((anon19_Then_correct  (=> (and (and (not (HasDirectPerm_5157_5158 Mask@0 null (inv b_24))) (= Heap@0 (PolymorphicMapType_8215 (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@32) (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@32) (store (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@32) null (inv b_24) newVersion@0) (|PolymorphicMapType_8215_5161_19493#PolymorphicMapType_8215| Heap@@32) (|PolymorphicMapType_8215_5157_5154#PolymorphicMapType_8215| Heap@@32) (|PolymorphicMapType_8215_5157_53#PolymorphicMapType_8215| Heap@@32) (|PolymorphicMapType_8215_5157_21944#PolymorphicMapType_8215| Heap@@32) (|PolymorphicMapType_8215_5153_5158#PolymorphicMapType_8215| Heap@@32) (|PolymorphicMapType_8215_5153_23053#PolymorphicMapType_8215| Heap@@32) (|PolymorphicMapType_8215_5153_23299#PolymorphicMapType_8215| Heap@@32)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 15) 11))) anon10_correct)))
(let ((anon8_correct  (=> (= Mask@0 (PolymorphicMapType_8236 (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| QPMask@0) (store (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) null (inv b_24) (- (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) null (inv b_24)) FullPerm)) (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| QPMask@0) (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| QPMask@0) (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| QPMask@0) (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| QPMask@0) (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| QPMask@0) (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| QPMask@0) (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| QPMask@0) (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| QPMask@0))) (and (=> (= (ControlFlow 0 17) 15) anon19_Then_correct) (=> (= (ControlFlow 0 17) 16) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 17)) anon8_correct)))
(let ((anon18_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) null (inv b_24)))) (=> (<= FullPerm (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) null (inv b_24))) (=> (= (ControlFlow 0 18) 17) anon8_correct))))))
(let ((anon16_Else_correct  (=> (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@32) b_24 $allocated) (=> (and (select (|PolymorphicMapType_8215_4847_53#PolymorphicMapType_8215| Heap@@32) v_2 $allocated) (select S b_24)) (=> (and (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (|inv#trigger_5157| Heap@@32 (inv b_24)) (= (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@32) null (inv b_24)) (FrameFragment_5154 (select (|PolymorphicMapType_8215_4850_4851#PolymorphicMapType_8215| Heap@@32) b_24 f_7))))) (and (=> (= (ControlFlow 0 21) 18) anon18_Then_correct) (=> (= (ControlFlow 0 21) 20) anon18_Else_correct)))))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select S x_1)) (select S x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.491:17|
 :skolemid |88|
 :pattern ( (neverTriggered1 x_1) (neverTriggered1 x_1_1))
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select S x_1@@0)) (select S x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.491:17|
 :skolemid |88|
 :pattern ( (neverTriggered1 x_1@@0) (neverTriggered1 x_1_1@@0))
)) (=> (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select S x_1@@1) (< NoPerm FullPerm)) (and (= (invRecv1 x_1@@1) x_1@@1) (qpRange1 x_1@@1)))
 :qid |stdinbpl.497:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_8215_5157_5158#PolymorphicMapType_8215| Heap@@32) null (inv x_1@@1)))
 :pattern ( (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ZeroMask) null (inv x_1@@1)))
 :pattern ( (select S x_1@@1))
)) (=> (and (forall ((this@@5 T@Ref) ) (!  (=> (and (and (select S (invRecv1 this@@5)) (< NoPerm FullPerm)) (qpRange1 this@@5)) (= (invRecv1 this@@5) this@@5))
 :qid |stdinbpl.501:22|
 :skolemid |90|
 :pattern ( (invRecv1 this@@5))
)) (forall ((this@@6 T@Ref) ) (!  (=> (and (and (select S (invRecv1 this@@6)) (< NoPerm FullPerm)) (qpRange1 this@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv1 this@@6) this@@6)) (= (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) null (inv this@@6)) (+ (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ZeroMask) null (inv this@@6)) FullPerm))))
 :qid |stdinbpl.507:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) null (inv this@@6)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_14459_14461) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_5148_14485 f_5))) (not (= (getPredWandId_5148_39255 f_5) 0))) (= (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_8236_5153_31455#PolymorphicMapType_8236| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_8288_8289) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_5153_5154 f_5@@0))) (not (= (getPredWandId_5148_5154 f_5@@0) 0))) (= (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8236_5153_5154#PolymorphicMapType_8236| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_5153_5158) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_5153_23870 f_5@@1))) (not (= (getPredWandId_5148_5158 f_5@@1) 0))) (= (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8236_5153_5158#PolymorphicMapType_8236| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_8275_53) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_5153_53 f_5@@2))) (not (= (getPredWandId_5148_53 f_5@@2) 0))) (= (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8236_5153_53#PolymorphicMapType_8236| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_5153_14593) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_5153_33420 f_5@@3))) (not (= (getPredWandId_5148_39909 f_5@@3) 0))) (= (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8236_5153_31544#PolymorphicMapType_8236| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_5157_14461) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_5157_34083 f_5@@4))) (not (= (getPredWandId_5157_40077 f_5@@4) 0))) (= (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8236_5157_31875#PolymorphicMapType_8236| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_5157_5154) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_5157_5154 f_5@@5))) (not (= (getPredWandId_5157_5154 f_5@@5) 0))) (= (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8236_5157_5154#PolymorphicMapType_8236| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_14575_14576) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_5157_5158 f_5@@6))) (not (= (getPredWandId_5157_5158 f_5@@6) 0))) (= (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_5157_53) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_5157_53 f_5@@7))) (not (= (getPredWandId_5157_53 f_5@@7) 0))) (= (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8236_5157_53#PolymorphicMapType_8236| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_14588_14593) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_5157_34256 f_5@@8))) (not (= (getPredWandId_5157_40724 f_5@@8) 0))) (= (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.513:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8236_5157_31964#PolymorphicMapType_8236| QPMask@0) o_9@@8 f_5@@8))
))) (forall ((this@@7 T@Ref) ) (!  (=> (not (and (and (select S (invRecv1 this@@7)) (< NoPerm FullPerm)) (qpRange1 this@@7))) (= (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) null (inv this@@7)) (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| ZeroMask) null (inv this@@7))))
 :qid |stdinbpl.517:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_8236_5157_5158#PolymorphicMapType_8236| QPMask@0) null (inv this@@7)))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 26) 25) anon16_Then_correct) (=> (= (ControlFlow 0 26) 21) anon16_Else_correct)))))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 28) 1) anon15_Then_correct) (=> (= (ControlFlow 0 28) 26) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 29) 28) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
