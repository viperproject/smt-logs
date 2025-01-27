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
(declare-sort T@Field_8679_53 0)
(declare-sort T@Field_8692_8693 0)
(declare-sort T@Field_14908_14910 0)
(declare-sort T@Field_14859_3259 0)
(declare-sort T@Field_14974_14975 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14987_14992 0)
(declare-sort T@Field_5302_5309 0)
(declare-sort T@Field_5302_14992 0)
(declare-sort T@Field_5308_16408 0)
(declare-sort T@Field_5308_53 0)
(declare-sort T@Field_5308_8693 0)
(declare-sort T@Field_5308_3259 0)
(declare-datatypes ((T@PolymorphicMapType_8640 0)) (((PolymorphicMapType_8640 (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| (Array T@Ref T@Field_14908_14910 Real)) (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| (Array T@Ref T@Field_14859_3259 Real)) (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| (Array T@Ref T@Field_14974_14975 Real)) (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| (Array T@Ref T@Field_5302_5309 Real)) (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| (Array T@Ref T@Field_8679_53 Real)) (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| (Array T@Ref T@Field_8692_8693 Real)) (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| (Array T@Ref T@Field_5302_14992 Real)) (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| (Array T@Ref T@Field_5308_16408 Real)) (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| (Array T@Ref T@Field_5308_3259 Real)) (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| (Array T@Ref T@Field_5308_53 Real)) (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| (Array T@Ref T@Field_5308_8693 Real)) (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| (Array T@Ref T@Field_14987_14992 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9168 0)) (((PolymorphicMapType_9168 (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| (Array T@Ref T@Field_14908_14910 Bool)) (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| (Array T@Ref T@Field_14859_3259 Bool)) (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| (Array T@Ref T@Field_8679_53 Bool)) (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| (Array T@Ref T@Field_8692_8693 Bool)) (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| (Array T@Ref T@Field_5302_5309 Bool)) (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| (Array T@Ref T@Field_5302_14992 Bool)) (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| (Array T@Ref T@Field_5308_16408 Bool)) (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| (Array T@Ref T@Field_5308_3259 Bool)) (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| (Array T@Ref T@Field_5308_53 Bool)) (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| (Array T@Ref T@Field_5308_8693 Bool)) (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| (Array T@Ref T@Field_14974_14975 Bool)) (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| (Array T@Ref T@Field_14987_14992 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8619 0)) (((PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| (Array T@Ref T@Field_8679_53 Bool)) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| (Array T@Ref T@Field_8692_8693 T@Ref)) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| (Array T@Ref T@Field_14908_14910 (Array T@Ref Bool))) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| (Array T@Ref T@Field_14859_3259 Int)) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| (Array T@Ref T@Field_14974_14975 T@FrameType)) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| (Array T@Ref T@Field_14987_14992 T@PolymorphicMapType_9168)) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| (Array T@Ref T@Field_5302_5309 T@FrameType)) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| (Array T@Ref T@Field_5302_14992 T@PolymorphicMapType_9168)) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| (Array T@Ref T@Field_5308_16408 (Array T@Ref Bool))) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| (Array T@Ref T@Field_5308_53 Bool)) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| (Array T@Ref T@Field_5308_8693 T@Ref)) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| (Array T@Ref T@Field_5308_3259 Int)) ) ) ))
(declare-fun $allocated () T@Field_8679_53)
(declare-fun f_7 () T@Field_14859_3259)
(declare-fun n_85 () T@Field_14908_14910)
(declare-fun succHeap (T@PolymorphicMapType_8619 T@PolymorphicMapType_8619) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8619 T@PolymorphicMapType_8619) Bool)
(declare-fun state (T@PolymorphicMapType_8619 T@PolymorphicMapType_8640) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8640) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9168)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun inv (T@Ref) T@Field_14974_14975)
(declare-fun IsPredicateField_5308_5309 (T@Field_14974_14975) Bool)
(declare-fun |inv#trigger_5308| (T@PolymorphicMapType_8619 T@Field_14974_14975) Bool)
(declare-fun |inv#everUsed_5308| (T@Field_14974_14975) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8619 T@PolymorphicMapType_8619 T@PolymorphicMapType_8640) Bool)
(declare-fun HasDirectPerm_5308_5309 (T@PolymorphicMapType_8640 T@Ref T@Field_14974_14975) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5308 (T@Field_14974_14975) T@Field_14987_14992)
(declare-fun IsPredicateField_5302_26008 (T@Field_5302_5309) Bool)
(declare-fun HasDirectPerm_5302_5309 (T@PolymorphicMapType_8640 T@Ref T@Field_5302_5309) Bool)
(declare-fun PredicateMaskField_5302 (T@Field_5302_5309) T@Field_5302_14992)
(declare-fun IsWandField_5308_30110 (T@Field_14974_14975) Bool)
(declare-fun WandMaskField_5308 (T@Field_14974_14975) T@Field_14987_14992)
(declare-fun IsWandField_5302_29753 (T@Field_5302_5309) Bool)
(declare-fun WandMaskField_5302 (T@Field_5302_5309) T@Field_5302_14992)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_8619 T@Ref) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |inv#sm| (T@Ref) T@Field_14987_14992)
(declare-fun dummyHeap () T@PolymorphicMapType_8619)
(declare-fun ZeroMask () T@PolymorphicMapType_8640)
(declare-fun InsidePredicate_14974_14974 (T@Field_14974_14975 T@FrameType T@Field_14974_14975 T@FrameType) Bool)
(declare-fun InsidePredicate_8679_8679 (T@Field_5302_5309 T@FrameType T@Field_5302_5309 T@FrameType) Bool)
(declare-fun IsPredicateField_5300_3259 (T@Field_14859_3259) Bool)
(declare-fun IsWandField_5300_3259 (T@Field_14859_3259) Bool)
(declare-fun IsPredicateField_5302_14934 (T@Field_14908_14910) Bool)
(declare-fun IsWandField_5302_14961 (T@Field_14908_14910) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5308_38301 (T@Field_14987_14992) Bool)
(declare-fun IsWandField_5308_38317 (T@Field_14987_14992) Bool)
(declare-fun IsPredicateField_5308_8693 (T@Field_5308_8693) Bool)
(declare-fun IsWandField_5308_8693 (T@Field_5308_8693) Bool)
(declare-fun IsPredicateField_5308_53 (T@Field_5308_53) Bool)
(declare-fun IsWandField_5308_53 (T@Field_5308_53) Bool)
(declare-fun IsPredicateField_5308_3259 (T@Field_5308_3259) Bool)
(declare-fun IsWandField_5308_3259 (T@Field_5308_3259) Bool)
(declare-fun IsPredicateField_5308_37470 (T@Field_5308_16408) Bool)
(declare-fun IsWandField_5308_37486 (T@Field_5308_16408) Bool)
(declare-fun IsPredicateField_5302_37297 (T@Field_5302_14992) Bool)
(declare-fun IsWandField_5302_37313 (T@Field_5302_14992) Bool)
(declare-fun IsPredicateField_5302_8693 (T@Field_8692_8693) Bool)
(declare-fun IsWandField_5302_8693 (T@Field_8692_8693) Bool)
(declare-fun IsPredicateField_5302_53 (T@Field_8679_53) Bool)
(declare-fun IsWandField_5302_53 (T@Field_8679_53) Bool)
(declare-fun HasDirectPerm_5308_25763 (T@PolymorphicMapType_8640 T@Ref T@Field_14987_14992) Bool)
(declare-fun HasDirectPerm_5308_3259 (T@PolymorphicMapType_8640 T@Ref T@Field_5308_3259) Bool)
(declare-fun HasDirectPerm_5308_8693 (T@PolymorphicMapType_8640 T@Ref T@Field_5308_8693) Bool)
(declare-fun HasDirectPerm_5308_53 (T@PolymorphicMapType_8640 T@Ref T@Field_5308_53) Bool)
(declare-fun HasDirectPerm_5308_24656 (T@PolymorphicMapType_8640 T@Ref T@Field_5308_16408) Bool)
(declare-fun HasDirectPerm_5302_24376 (T@PolymorphicMapType_8640 T@Ref T@Field_5302_14992) Bool)
(declare-fun HasDirectPerm_5302_3259 (T@PolymorphicMapType_8640 T@Ref T@Field_14859_3259) Bool)
(declare-fun HasDirectPerm_5302_8693 (T@PolymorphicMapType_8640 T@Ref T@Field_8692_8693) Bool)
(declare-fun HasDirectPerm_5302_53 (T@PolymorphicMapType_8640 T@Ref T@Field_8679_53) Bool)
(declare-fun HasDirectPerm_5302_16408 (T@PolymorphicMapType_8640 T@Ref T@Field_14908_14910) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8640 T@PolymorphicMapType_8640 T@PolymorphicMapType_8640) Bool)
(declare-fun getPredWandId_5308_5309 (T@Field_14974_14975) Int)
(declare-fun InsidePredicate_14974_8679 (T@Field_14974_14975 T@FrameType T@Field_5302_5309 T@FrameType) Bool)
(declare-fun InsidePredicate_8679_14974 (T@Field_5302_5309 T@FrameType T@Field_14974_14975 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8619) (Heap1 T@PolymorphicMapType_8619) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8619) (Mask T@PolymorphicMapType_8640) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8619) (Heap1@@0 T@PolymorphicMapType_8619) (Heap2 T@PolymorphicMapType_8619) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14987_14992) ) (!  (not (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14974_14975) ) (!  (not (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5308_8693) ) (!  (not (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5308_53) ) (!  (not (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5308_3259) ) (!  (not (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5308_16408) ) (!  (not (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5302_14992) ) (!  (not (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5302_5309) ) (!  (not (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8692_8693) ) (!  (not (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8679_53) ) (!  (not (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_14859_3259) ) (!  (not (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_14908_14910) ) (!  (not (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_5308_5309 (inv this))
 :qid |stdinbpl.410:15|
 :skolemid |83|
 :pattern ( (inv this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8619) (this@@0 T@Ref) ) (! (|inv#everUsed_5308| (inv this@@0))
 :qid |stdinbpl.429:15|
 :skolemid |87|
 :pattern ( (|inv#trigger_5308| Heap@@0 (inv this@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8619) (ExhaleHeap T@PolymorphicMapType_8619) (Mask@@0 T@PolymorphicMapType_8640) (pm_f_32 T@Field_14974_14975) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5308_5309 Mask@@0 null pm_f_32) (IsPredicateField_5308_5309 pm_f_32)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_14908_14910) ) (!  (=> (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32 f_54) (= (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@1) o2_32 f_54) (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_14859_3259) ) (!  (=> (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@1) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_8679_53) ) (!  (=> (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@1) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_8692_8693) ) (!  (=> (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@1) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_5302_5309) ) (!  (=> (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@1) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap) o2_32@@3 f_54@@3))
))) (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_5302_14992) ) (!  (=> (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@1) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap) o2_32@@4 f_54@@4))
))) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_5308_16408) ) (!  (=> (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@1) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_5308_3259) ) (!  (=> (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@1) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_5308_53) ) (!  (=> (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@1) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_5308_8693) ) (!  (=> (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@1) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap) o2_32@@8 f_54@@8))
))) (forall ((o2_32@@9 T@Ref) (f_54@@9 T@Field_14974_14975) ) (!  (=> (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@9 f_54@@9) (= (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@1) o2_32@@9 f_54@@9) (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap) o2_32@@9 f_54@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap) o2_32@@9 f_54@@9))
))) (forall ((o2_32@@10 T@Ref) (f_54@@10 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) null (PredicateMaskField_5308 pm_f_32))) o2_32@@10 f_54@@10) (= (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@1) o2_32@@10 f_54@@10) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap) o2_32@@10 f_54@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap) o2_32@@10 f_54@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5308_5309 pm_f_32))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8619) (ExhaleHeap@@0 T@PolymorphicMapType_8619) (Mask@@1 T@PolymorphicMapType_8640) (pm_f_32@@0 T@Field_5302_5309) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5302_5309 Mask@@1 null pm_f_32@@0) (IsPredicateField_5302_26008 pm_f_32@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_32@@11 T@Ref) (f_54@@11 T@Field_14908_14910) ) (!  (=> (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@11 f_54@@11) (= (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@2) o2_32@@11 f_54@@11) (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@11 f_54@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@11 f_54@@11))
)) (forall ((o2_32@@12 T@Ref) (f_54@@12 T@Field_14859_3259) ) (!  (=> (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@12 f_54@@12) (= (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@2) o2_32@@12 f_54@@12) (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@12 f_54@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@12 f_54@@12))
))) (forall ((o2_32@@13 T@Ref) (f_54@@13 T@Field_8679_53) ) (!  (=> (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@13 f_54@@13) (= (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@2) o2_32@@13 f_54@@13) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@13 f_54@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@13 f_54@@13))
))) (forall ((o2_32@@14 T@Ref) (f_54@@14 T@Field_8692_8693) ) (!  (=> (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@14 f_54@@14) (= (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@2) o2_32@@14 f_54@@14) (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@14 f_54@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@14 f_54@@14))
))) (forall ((o2_32@@15 T@Ref) (f_54@@15 T@Field_5302_5309) ) (!  (=> (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@15 f_54@@15) (= (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@2) o2_32@@15 f_54@@15) (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@15 f_54@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@15 f_54@@15))
))) (forall ((o2_32@@16 T@Ref) (f_54@@16 T@Field_5302_14992) ) (!  (=> (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@16 f_54@@16) (= (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) o2_32@@16 f_54@@16) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@16 f_54@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@16 f_54@@16))
))) (forall ((o2_32@@17 T@Ref) (f_54@@17 T@Field_5308_16408) ) (!  (=> (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@17 f_54@@17) (= (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@2) o2_32@@17 f_54@@17) (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@17 f_54@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@17 f_54@@17))
))) (forall ((o2_32@@18 T@Ref) (f_54@@18 T@Field_5308_3259) ) (!  (=> (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@18 f_54@@18) (= (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@2) o2_32@@18 f_54@@18) (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@18 f_54@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@18 f_54@@18))
))) (forall ((o2_32@@19 T@Ref) (f_54@@19 T@Field_5308_53) ) (!  (=> (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@19 f_54@@19) (= (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@2) o2_32@@19 f_54@@19) (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@19 f_54@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@19 f_54@@19))
))) (forall ((o2_32@@20 T@Ref) (f_54@@20 T@Field_5308_8693) ) (!  (=> (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@20 f_54@@20) (= (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@2) o2_32@@20 f_54@@20) (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@20 f_54@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@20 f_54@@20))
))) (forall ((o2_32@@21 T@Ref) (f_54@@21 T@Field_14974_14975) ) (!  (=> (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@21 f_54@@21) (= (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@2) o2_32@@21 f_54@@21) (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@21 f_54@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@21 f_54@@21))
))) (forall ((o2_32@@22 T@Ref) (f_54@@22 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@2) null (PredicateMaskField_5302 pm_f_32@@0))) o2_32@@22 f_54@@22) (= (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@2) o2_32@@22 f_54@@22) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@22 f_54@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@0) o2_32@@22 f_54@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5302_26008 pm_f_32@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8619) (ExhaleHeap@@1 T@PolymorphicMapType_8619) (Mask@@2 T@PolymorphicMapType_8640) (pm_f_32@@1 T@Field_14974_14975) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5308_5309 Mask@@2 null pm_f_32@@1) (IsWandField_5308_30110 pm_f_32@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_32@@23 T@Ref) (f_54@@23 T@Field_14908_14910) ) (!  (=> (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@23 f_54@@23) (= (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@3) o2_32@@23 f_54@@23) (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@23 f_54@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@23 f_54@@23))
)) (forall ((o2_32@@24 T@Ref) (f_54@@24 T@Field_14859_3259) ) (!  (=> (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@24 f_54@@24) (= (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@3) o2_32@@24 f_54@@24) (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@24 f_54@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@24 f_54@@24))
))) (forall ((o2_32@@25 T@Ref) (f_54@@25 T@Field_8679_53) ) (!  (=> (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@25 f_54@@25) (= (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@3) o2_32@@25 f_54@@25) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@25 f_54@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@25 f_54@@25))
))) (forall ((o2_32@@26 T@Ref) (f_54@@26 T@Field_8692_8693) ) (!  (=> (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@26 f_54@@26) (= (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@3) o2_32@@26 f_54@@26) (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@26 f_54@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@26 f_54@@26))
))) (forall ((o2_32@@27 T@Ref) (f_54@@27 T@Field_5302_5309) ) (!  (=> (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@27 f_54@@27) (= (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@3) o2_32@@27 f_54@@27) (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@27 f_54@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@27 f_54@@27))
))) (forall ((o2_32@@28 T@Ref) (f_54@@28 T@Field_5302_14992) ) (!  (=> (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@28 f_54@@28) (= (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@3) o2_32@@28 f_54@@28) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@28 f_54@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@28 f_54@@28))
))) (forall ((o2_32@@29 T@Ref) (f_54@@29 T@Field_5308_16408) ) (!  (=> (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@29 f_54@@29) (= (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@3) o2_32@@29 f_54@@29) (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@29 f_54@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@29 f_54@@29))
))) (forall ((o2_32@@30 T@Ref) (f_54@@30 T@Field_5308_3259) ) (!  (=> (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@30 f_54@@30) (= (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@3) o2_32@@30 f_54@@30) (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@30 f_54@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@30 f_54@@30))
))) (forall ((o2_32@@31 T@Ref) (f_54@@31 T@Field_5308_53) ) (!  (=> (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@31 f_54@@31) (= (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@3) o2_32@@31 f_54@@31) (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@31 f_54@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@31 f_54@@31))
))) (forall ((o2_32@@32 T@Ref) (f_54@@32 T@Field_5308_8693) ) (!  (=> (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@32 f_54@@32) (= (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@3) o2_32@@32 f_54@@32) (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@32 f_54@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@32 f_54@@32))
))) (forall ((o2_32@@33 T@Ref) (f_54@@33 T@Field_14974_14975) ) (!  (=> (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@33 f_54@@33) (= (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@3) o2_32@@33 f_54@@33) (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@33 f_54@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@33 f_54@@33))
))) (forall ((o2_32@@34 T@Ref) (f_54@@34 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) null (WandMaskField_5308 pm_f_32@@1))) o2_32@@34 f_54@@34) (= (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@3) o2_32@@34 f_54@@34) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@34 f_54@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@1) o2_32@@34 f_54@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_5308_30110 pm_f_32@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8619) (ExhaleHeap@@2 T@PolymorphicMapType_8619) (Mask@@3 T@PolymorphicMapType_8640) (pm_f_32@@2 T@Field_5302_5309) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5302_5309 Mask@@3 null pm_f_32@@2) (IsWandField_5302_29753 pm_f_32@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_32@@35 T@Ref) (f_54@@35 T@Field_14908_14910) ) (!  (=> (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@35 f_54@@35) (= (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@4) o2_32@@35 f_54@@35) (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@35 f_54@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@35 f_54@@35))
)) (forall ((o2_32@@36 T@Ref) (f_54@@36 T@Field_14859_3259) ) (!  (=> (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@36 f_54@@36) (= (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@4) o2_32@@36 f_54@@36) (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@36 f_54@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@36 f_54@@36))
))) (forall ((o2_32@@37 T@Ref) (f_54@@37 T@Field_8679_53) ) (!  (=> (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@37 f_54@@37) (= (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@4) o2_32@@37 f_54@@37) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@37 f_54@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@37 f_54@@37))
))) (forall ((o2_32@@38 T@Ref) (f_54@@38 T@Field_8692_8693) ) (!  (=> (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@38 f_54@@38) (= (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@4) o2_32@@38 f_54@@38) (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@38 f_54@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@38 f_54@@38))
))) (forall ((o2_32@@39 T@Ref) (f_54@@39 T@Field_5302_5309) ) (!  (=> (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@39 f_54@@39) (= (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@4) o2_32@@39 f_54@@39) (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@39 f_54@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@39 f_54@@39))
))) (forall ((o2_32@@40 T@Ref) (f_54@@40 T@Field_5302_14992) ) (!  (=> (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@40 f_54@@40) (= (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) o2_32@@40 f_54@@40) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@40 f_54@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@40 f_54@@40))
))) (forall ((o2_32@@41 T@Ref) (f_54@@41 T@Field_5308_16408) ) (!  (=> (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@41 f_54@@41) (= (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@4) o2_32@@41 f_54@@41) (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@41 f_54@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@41 f_54@@41))
))) (forall ((o2_32@@42 T@Ref) (f_54@@42 T@Field_5308_3259) ) (!  (=> (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@42 f_54@@42) (= (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@4) o2_32@@42 f_54@@42) (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@42 f_54@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@42 f_54@@42))
))) (forall ((o2_32@@43 T@Ref) (f_54@@43 T@Field_5308_53) ) (!  (=> (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@43 f_54@@43) (= (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@4) o2_32@@43 f_54@@43) (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@43 f_54@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@43 f_54@@43))
))) (forall ((o2_32@@44 T@Ref) (f_54@@44 T@Field_5308_8693) ) (!  (=> (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@44 f_54@@44) (= (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@4) o2_32@@44 f_54@@44) (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@44 f_54@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@44 f_54@@44))
))) (forall ((o2_32@@45 T@Ref) (f_54@@45 T@Field_14974_14975) ) (!  (=> (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@45 f_54@@45) (= (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@4) o2_32@@45 f_54@@45) (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@45 f_54@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@45 f_54@@45))
))) (forall ((o2_32@@46 T@Ref) (f_54@@46 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@4) null (WandMaskField_5302 pm_f_32@@2))) o2_32@@46 f_54@@46) (= (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@4) o2_32@@46 f_54@@46) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@46 f_54@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@2) o2_32@@46 f_54@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5302_29753 pm_f_32@@2))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_8619) (Heap1Heap T@PolymorphicMapType_8619) (this@@1 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap2Heap) this@@1 n_85) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@1) (|inv#condqp1| Heap1Heap this@@1))) (< NoPerm FullPerm))  (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap1Heap) this@@1 n_85) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@1) (|inv#condqp1| Heap1Heap this@@1))) (< NoPerm FullPerm))) (=> (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap2Heap) this@@1 n_85) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@1) (|inv#condqp1| Heap1Heap this@@1))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap2Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@1) (|inv#condqp1| Heap1Heap this@@1)) f_7) (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap1Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap this@@1) (|inv#condqp1| Heap1Heap this@@1)) f_7)))) (= (|inv#condqp1| Heap2Heap this@@1) (|inv#condqp1| Heap1Heap this@@1)))
 :qid |stdinbpl.440:15|
 :skolemid |88|
 :pattern ( (|inv#condqp1| Heap2Heap this@@1) (|inv#condqp1| Heap1Heap this@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8619) (ExhaleHeap@@3 T@PolymorphicMapType_8619) (Mask@@4 T@PolymorphicMapType_8640) (pm_f_32@@3 T@Field_14974_14975) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5308_5309 Mask@@4 null pm_f_32@@3) (IsPredicateField_5308_5309 pm_f_32@@3)) (= (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@5) null (PredicateMaskField_5308 pm_f_32@@3)) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@3) null (PredicateMaskField_5308 pm_f_32@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5308_5309 pm_f_32@@3) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@3) null (PredicateMaskField_5308 pm_f_32@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8619) (ExhaleHeap@@4 T@PolymorphicMapType_8619) (Mask@@5 T@PolymorphicMapType_8640) (pm_f_32@@4 T@Field_5302_5309) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5302_5309 Mask@@5 null pm_f_32@@4) (IsPredicateField_5302_26008 pm_f_32@@4)) (= (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@6) null (PredicateMaskField_5302 pm_f_32@@4)) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@4) null (PredicateMaskField_5302 pm_f_32@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5302_26008 pm_f_32@@4) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@4) null (PredicateMaskField_5302 pm_f_32@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8619) (ExhaleHeap@@5 T@PolymorphicMapType_8619) (Mask@@6 T@PolymorphicMapType_8640) (pm_f_32@@5 T@Field_14974_14975) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5308_5309 Mask@@6 null pm_f_32@@5) (IsWandField_5308_30110 pm_f_32@@5)) (= (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@7) null (WandMaskField_5308 pm_f_32@@5)) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@5) null (WandMaskField_5308 pm_f_32@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_5308_30110 pm_f_32@@5) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@5) null (WandMaskField_5308 pm_f_32@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8619) (ExhaleHeap@@6 T@PolymorphicMapType_8619) (Mask@@7 T@PolymorphicMapType_8640) (pm_f_32@@6 T@Field_5302_5309) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5302_5309 Mask@@7 null pm_f_32@@6) (IsWandField_5302_29753 pm_f_32@@6)) (= (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@8) null (WandMaskField_5302 pm_f_32@@6)) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@6) null (WandMaskField_5302 pm_f_32@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5302_29753 pm_f_32@@6) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@6) null (WandMaskField_5302 pm_f_32@@6)))
)))
(assert (forall ((this@@2 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@2) (inv this2)) (= this@@2 this2))
 :qid |stdinbpl.420:15|
 :skolemid |85|
 :pattern ( (inv this@@2) (inv this2))
)))
(assert (forall ((this@@3 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@3) (|inv#sm| this2@@0)) (= this@@3 this2@@0))
 :qid |stdinbpl.424:15|
 :skolemid |86|
 :pattern ( (|inv#sm| this@@3) (|inv#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8619) (ExhaleHeap@@7 T@PolymorphicMapType_8619) (Mask@@8 T@PolymorphicMapType_8640) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@9) o_55 $allocated) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@7) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@7) o_55 $allocated))
)))
(assert (forall ((p T@Field_14974_14975) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14974_14974 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14974_14974 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5302_5309) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8679_8679 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8679_8679 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5300_3259 f_7)))
(assert  (not (IsWandField_5300_3259 f_7)))
(assert  (not (IsPredicateField_5302_14934 n_85)))
(assert  (not (IsWandField_5302_14961 n_85)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8619) (ExhaleHeap@@8 T@PolymorphicMapType_8619) (Mask@@9 T@PolymorphicMapType_8640) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8640) (o_2@@11 T@Ref) (f_4@@11 T@Field_14987_14992) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@@10) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5308_38301 f_4@@11))) (not (IsWandField_5308_38317 f_4@@11))) (<= (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@@10) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@@10) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8640) (o_2@@12 T@Ref) (f_4@@12 T@Field_5308_8693) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@@11) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5308_8693 f_4@@12))) (not (IsWandField_5308_8693 f_4@@12))) (<= (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@@11) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@@11) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8640) (o_2@@13 T@Ref) (f_4@@13 T@Field_5308_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@@12) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5308_53 f_4@@13))) (not (IsWandField_5308_53 f_4@@13))) (<= (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@@12) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@@12) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8640) (o_2@@14 T@Ref) (f_4@@14 T@Field_14974_14975) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@@13) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5308_5309 f_4@@14))) (not (IsWandField_5308_30110 f_4@@14))) (<= (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@@13) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@@13) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8640) (o_2@@15 T@Ref) (f_4@@15 T@Field_5308_3259) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@@14) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5308_3259 f_4@@15))) (not (IsWandField_5308_3259 f_4@@15))) (<= (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@@14) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@@14) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8640) (o_2@@16 T@Ref) (f_4@@16 T@Field_5308_16408) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@@15) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5308_37470 f_4@@16))) (not (IsWandField_5308_37486 f_4@@16))) (<= (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@@15) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@@15) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8640) (o_2@@17 T@Ref) (f_4@@17 T@Field_5302_14992) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@@16) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5302_37297 f_4@@17))) (not (IsWandField_5302_37313 f_4@@17))) (<= (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@@16) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@@16) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8640) (o_2@@18 T@Ref) (f_4@@18 T@Field_8692_8693) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@@17) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5302_8693 f_4@@18))) (not (IsWandField_5302_8693 f_4@@18))) (<= (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@@17) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@@17) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8640) (o_2@@19 T@Ref) (f_4@@19 T@Field_8679_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5302_53 f_4@@19))) (not (IsWandField_5302_53 f_4@@19))) (<= (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8640) (o_2@@20 T@Ref) (f_4@@20 T@Field_5302_5309) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5302_26008 f_4@@20))) (not (IsWandField_5302_29753 f_4@@20))) (<= (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8640) (o_2@@21 T@Ref) (f_4@@21 T@Field_14859_3259) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5300_3259 f_4@@21))) (not (IsWandField_5300_3259 f_4@@21))) (<= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8640) (o_2@@22 T@Ref) (f_4@@22 T@Field_14908_14910) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5302_14934 f_4@@22))) (not (IsWandField_5302_14961 f_4@@22))) (<= (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8640) (o_2@@23 T@Ref) (f_4@@23 T@Field_14987_14992) ) (! (= (HasDirectPerm_5308_25763 Mask@@22 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@@22) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5308_25763 Mask@@22 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8640) (o_2@@24 T@Ref) (f_4@@24 T@Field_5308_3259) ) (! (= (HasDirectPerm_5308_3259 Mask@@23 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@@23) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5308_3259 Mask@@23 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8640) (o_2@@25 T@Ref) (f_4@@25 T@Field_5308_8693) ) (! (= (HasDirectPerm_5308_8693 Mask@@24 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@@24) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5308_8693 Mask@@24 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8640) (o_2@@26 T@Ref) (f_4@@26 T@Field_5308_53) ) (! (= (HasDirectPerm_5308_53 Mask@@25 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@@25) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5308_53 Mask@@25 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8640) (o_2@@27 T@Ref) (f_4@@27 T@Field_14974_14975) ) (! (= (HasDirectPerm_5308_5309 Mask@@26 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@@26) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5308_5309 Mask@@26 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8640) (o_2@@28 T@Ref) (f_4@@28 T@Field_5308_16408) ) (! (= (HasDirectPerm_5308_24656 Mask@@27 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@@27) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5308_24656 Mask@@27 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8640) (o_2@@29 T@Ref) (f_4@@29 T@Field_5302_14992) ) (! (= (HasDirectPerm_5302_24376 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5302_24376 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8640) (o_2@@30 T@Ref) (f_4@@30 T@Field_14859_3259) ) (! (= (HasDirectPerm_5302_3259 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5302_3259 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8640) (o_2@@31 T@Ref) (f_4@@31 T@Field_8692_8693) ) (! (= (HasDirectPerm_5302_8693 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5302_8693 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8640) (o_2@@32 T@Ref) (f_4@@32 T@Field_8679_53) ) (! (= (HasDirectPerm_5302_53 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5302_53 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8640) (o_2@@33 T@Ref) (f_4@@33 T@Field_5302_5309) ) (! (= (HasDirectPerm_5302_5309 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5302_5309 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8640) (o_2@@34 T@Ref) (f_4@@34 T@Field_14908_14910) ) (! (= (HasDirectPerm_5302_16408 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5302_16408 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8619) (ExhaleHeap@@9 T@PolymorphicMapType_8619) (Mask@@34 T@PolymorphicMapType_8640) (o_55@@0 T@Ref) (f_54@@47 T@Field_14987_14992) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_5308_25763 Mask@@34 o_55@@0 f_54@@47) (= (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@11) o_55@@0 f_54@@47) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@9) o_55@@0 f_54@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| ExhaleHeap@@9) o_55@@0 f_54@@47))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8619) (ExhaleHeap@@10 T@PolymorphicMapType_8619) (Mask@@35 T@PolymorphicMapType_8640) (o_55@@1 T@Ref) (f_54@@48 T@Field_5308_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_5308_3259 Mask@@35 o_55@@1 f_54@@48) (= (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@12) o_55@@1 f_54@@48) (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap@@10) o_55@@1 f_54@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| ExhaleHeap@@10) o_55@@1 f_54@@48))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8619) (ExhaleHeap@@11 T@PolymorphicMapType_8619) (Mask@@36 T@PolymorphicMapType_8640) (o_55@@2 T@Ref) (f_54@@49 T@Field_5308_8693) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_5308_8693 Mask@@36 o_55@@2 f_54@@49) (= (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@13) o_55@@2 f_54@@49) (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap@@11) o_55@@2 f_54@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| ExhaleHeap@@11) o_55@@2 f_54@@49))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8619) (ExhaleHeap@@12 T@PolymorphicMapType_8619) (Mask@@37 T@PolymorphicMapType_8640) (o_55@@3 T@Ref) (f_54@@50 T@Field_5308_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_5308_53 Mask@@37 o_55@@3 f_54@@50) (= (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@14) o_55@@3 f_54@@50) (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap@@12) o_55@@3 f_54@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| ExhaleHeap@@12) o_55@@3 f_54@@50))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8619) (ExhaleHeap@@13 T@PolymorphicMapType_8619) (Mask@@38 T@PolymorphicMapType_8640) (o_55@@4 T@Ref) (f_54@@51 T@Field_14974_14975) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_5308_5309 Mask@@38 o_55@@4 f_54@@51) (= (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@15) o_55@@4 f_54@@51) (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap@@13) o_55@@4 f_54@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| ExhaleHeap@@13) o_55@@4 f_54@@51))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8619) (ExhaleHeap@@14 T@PolymorphicMapType_8619) (Mask@@39 T@PolymorphicMapType_8640) (o_55@@5 T@Ref) (f_54@@52 T@Field_5308_16408) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_5308_24656 Mask@@39 o_55@@5 f_54@@52) (= (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@16) o_55@@5 f_54@@52) (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap@@14) o_55@@5 f_54@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| ExhaleHeap@@14) o_55@@5 f_54@@52))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8619) (ExhaleHeap@@15 T@PolymorphicMapType_8619) (Mask@@40 T@PolymorphicMapType_8640) (o_55@@6 T@Ref) (f_54@@53 T@Field_5302_14992) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_5302_24376 Mask@@40 o_55@@6 f_54@@53) (= (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@17) o_55@@6 f_54@@53) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@15) o_55@@6 f_54@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| ExhaleHeap@@15) o_55@@6 f_54@@53))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8619) (ExhaleHeap@@16 T@PolymorphicMapType_8619) (Mask@@41 T@PolymorphicMapType_8640) (o_55@@7 T@Ref) (f_54@@54 T@Field_14859_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_5302_3259 Mask@@41 o_55@@7 f_54@@54) (= (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@18) o_55@@7 f_54@@54) (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap@@16) o_55@@7 f_54@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| ExhaleHeap@@16) o_55@@7 f_54@@54))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8619) (ExhaleHeap@@17 T@PolymorphicMapType_8619) (Mask@@42 T@PolymorphicMapType_8640) (o_55@@8 T@Ref) (f_54@@55 T@Field_8692_8693) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_5302_8693 Mask@@42 o_55@@8 f_54@@55) (= (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@19) o_55@@8 f_54@@55) (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap@@17) o_55@@8 f_54@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| ExhaleHeap@@17) o_55@@8 f_54@@55))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8619) (ExhaleHeap@@18 T@PolymorphicMapType_8619) (Mask@@43 T@PolymorphicMapType_8640) (o_55@@9 T@Ref) (f_54@@56 T@Field_8679_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_5302_53 Mask@@43 o_55@@9 f_54@@56) (= (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@20) o_55@@9 f_54@@56) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@18) o_55@@9 f_54@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| ExhaleHeap@@18) o_55@@9 f_54@@56))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8619) (ExhaleHeap@@19 T@PolymorphicMapType_8619) (Mask@@44 T@PolymorphicMapType_8640) (o_55@@10 T@Ref) (f_54@@57 T@Field_5302_5309) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (=> (HasDirectPerm_5302_5309 Mask@@44 o_55@@10 f_54@@57) (= (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@21) o_55@@10 f_54@@57) (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap@@19) o_55@@10 f_54@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (select (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| ExhaleHeap@@19) o_55@@10 f_54@@57))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8619) (ExhaleHeap@@20 T@PolymorphicMapType_8619) (Mask@@45 T@PolymorphicMapType_8640) (o_55@@11 T@Ref) (f_54@@58 T@Field_14908_14910) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (=> (HasDirectPerm_5302_16408 Mask@@45 o_55@@11 f_54@@58) (= (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@22) o_55@@11 f_54@@58) (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap@@20) o_55@@11 f_54@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| ExhaleHeap@@20) o_55@@11 f_54@@58))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_14987_14992) ) (! (= (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_5308_8693) ) (! (= (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5308_53) ) (! (= (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14974_14975) ) (! (= (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_5308_3259) ) (! (= (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_5308_16408) ) (! (= (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_5302_14992) ) (! (= (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_8692_8693) ) (! (= (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_8679_53) ) (! (= (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_5302_5309) ) (! (= (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_14859_3259) ) (! (= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_14908_14910) ) (! (= (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8640) (SummandMask1 T@PolymorphicMapType_8640) (SummandMask2 T@PolymorphicMapType_8640) (o_2@@47 T@Ref) (f_4@@47 T@Field_14987_14992) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8640) (SummandMask1@@0 T@PolymorphicMapType_8640) (SummandMask2@@0 T@PolymorphicMapType_8640) (o_2@@48 T@Ref) (f_4@@48 T@Field_5308_8693) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8640) (SummandMask1@@1 T@PolymorphicMapType_8640) (SummandMask2@@1 T@PolymorphicMapType_8640) (o_2@@49 T@Ref) (f_4@@49 T@Field_5308_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8640) (SummandMask1@@2 T@PolymorphicMapType_8640) (SummandMask2@@2 T@PolymorphicMapType_8640) (o_2@@50 T@Ref) (f_4@@50 T@Field_14974_14975) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8640) (SummandMask1@@3 T@PolymorphicMapType_8640) (SummandMask2@@3 T@PolymorphicMapType_8640) (o_2@@51 T@Ref) (f_4@@51 T@Field_5308_3259) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8640) (SummandMask1@@4 T@PolymorphicMapType_8640) (SummandMask2@@4 T@PolymorphicMapType_8640) (o_2@@52 T@Ref) (f_4@@52 T@Field_5308_16408) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8640) (SummandMask1@@5 T@PolymorphicMapType_8640) (SummandMask2@@5 T@PolymorphicMapType_8640) (o_2@@53 T@Ref) (f_4@@53 T@Field_5302_14992) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8640) (SummandMask1@@6 T@PolymorphicMapType_8640) (SummandMask2@@6 T@PolymorphicMapType_8640) (o_2@@54 T@Ref) (f_4@@54 T@Field_8692_8693) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8640) (SummandMask1@@7 T@PolymorphicMapType_8640) (SummandMask2@@7 T@PolymorphicMapType_8640) (o_2@@55 T@Ref) (f_4@@55 T@Field_8679_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8640) (SummandMask1@@8 T@PolymorphicMapType_8640) (SummandMask2@@8 T@PolymorphicMapType_8640) (o_2@@56 T@Ref) (f_4@@56 T@Field_5302_5309) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8640) (SummandMask1@@9 T@PolymorphicMapType_8640) (SummandMask2@@9 T@PolymorphicMapType_8640) (o_2@@57 T@Ref) (f_4@@57 T@Field_14859_3259) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8640) (SummandMask1@@10 T@PolymorphicMapType_8640) (SummandMask2@@10 T@PolymorphicMapType_8640) (o_2@@58 T@Ref) (f_4@@58 T@Field_14908_14910) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (getPredWandId_5308_5309 (inv this@@4)) 0)
 :qid |stdinbpl.414:15|
 :skolemid |84|
 :pattern ( (inv this@@4))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8619) (o_54 T@Ref) (f_8 T@Field_14987_14992) (v T@PolymorphicMapType_9168) ) (! (succHeap Heap@@23 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@23) (store (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@23) o_54 f_8 v) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@23) (store (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@23) o_54 f_8 v) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@23) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8619) (o_54@@0 T@Ref) (f_8@@0 T@Field_14974_14975) (v@@0 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@24) (store (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@24) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@24) (store (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@24) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@24) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8619) (o_54@@1 T@Ref) (f_8@@1 T@Field_5308_3259) (v@@1 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@25) (store (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@25) o_54@@1 f_8@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@25) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@25) (store (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@25) o_54@@1 f_8@@1 v@@1)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8619) (o_54@@2 T@Ref) (f_8@@2 T@Field_5308_16408) (v@@2 (Array T@Ref Bool)) ) (! (succHeap Heap@@26 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@26) (store (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@26) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@26) (store (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@26) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@26) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8619) (o_54@@3 T@Ref) (f_8@@3 T@Field_5308_8693) (v@@3 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@27) (store (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@27) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@27) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@27) (store (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@27) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8619) (o_54@@4 T@Ref) (f_8@@4 T@Field_5308_53) (v@@4 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@28) (store (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@28) o_54@@4 f_8@@4 v@@4) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@28) (store (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@28) o_54@@4 f_8@@4 v@@4) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@28) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8619) (o_54@@5 T@Ref) (f_8@@5 T@Field_5302_14992) (v@@5 T@PolymorphicMapType_9168) ) (! (succHeap Heap@@29 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@29) (store (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@29) o_54@@5 f_8@@5 v@@5) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@29) (store (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@29) o_54@@5 f_8@@5 v@@5) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@29) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8619) (o_54@@6 T@Ref) (f_8@@6 T@Field_5302_5309) (v@@6 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@30) (store (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@30) o_54@@6 f_8@@6 v@@6) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@30) (store (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@30) o_54@@6 f_8@@6 v@@6) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@30) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8619) (o_54@@7 T@Ref) (f_8@@7 T@Field_14859_3259) (v@@7 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@31) (store (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@31) o_54@@7 f_8@@7 v@@7) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@31) (store (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@31) o_54@@7 f_8@@7 v@@7) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@31) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8619) (o_54@@8 T@Ref) (f_8@@8 T@Field_14908_14910) (v@@8 (Array T@Ref Bool)) ) (! (succHeap Heap@@32 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@32) (store (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@32) o_54@@8 f_8@@8 v@@8) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@32) (store (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@32) o_54@@8 f_8@@8 v@@8) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@32) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8619) (o_54@@9 T@Ref) (f_8@@9 T@Field_8692_8693) (v@@9 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@33) (store (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@33) o_54@@9 f_8@@9 v@@9) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@33) (store (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@33) o_54@@9 f_8@@9 v@@9) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@33) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8619) (o_54@@10 T@Ref) (f_8@@10 T@Field_8679_53) (v@@10 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_8619 (store (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@34) o_54@@10 f_8@@10 v@@10) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8619 (store (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@34) o_54@@10 f_8@@10 v@@10) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@34) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@34)))
)))
(assert (forall ((this@@5 T@Ref) ) (! (= (PredicateMaskField_5308 (inv this@@5)) (|inv#sm| this@@5))
 :qid |stdinbpl.406:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_5308 (inv this@@5)))
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
(assert (forall ((o_54@@11 T@Ref) (f_24 T@Field_8692_8693) (Heap@@35 T@PolymorphicMapType_8619) ) (!  (=> (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@35) o_54@@11 $allocated) (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@35) (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@35) o_54@@11 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@35) o_54@@11 f_24))
)))
(assert (forall ((p@@2 T@Field_14974_14975) (v_1@@1 T@FrameType) (q T@Field_14974_14975) (w@@1 T@FrameType) (r T@Field_14974_14975) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14974_14974 p@@2 v_1@@1 q w@@1) (InsidePredicate_14974_14974 q w@@1 r u)) (InsidePredicate_14974_14974 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14974_14974 p@@2 v_1@@1 q w@@1) (InsidePredicate_14974_14974 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14974_14975) (v_1@@2 T@FrameType) (q@@0 T@Field_14974_14975) (w@@2 T@FrameType) (r@@0 T@Field_5302_5309) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14974_14974 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14974_8679 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14974_8679 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14974_14974 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14974_8679 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14974_14975) (v_1@@3 T@FrameType) (q@@1 T@Field_5302_5309) (w@@3 T@FrameType) (r@@1 T@Field_14974_14975) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14974_8679 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8679_14974 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14974_14974 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14974_8679 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8679_14974 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14974_14975) (v_1@@4 T@FrameType) (q@@2 T@Field_5302_5309) (w@@4 T@FrameType) (r@@2 T@Field_5302_5309) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14974_8679 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8679_8679 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14974_8679 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14974_8679 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8679_8679 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5302_5309) (v_1@@5 T@FrameType) (q@@3 T@Field_14974_14975) (w@@5 T@FrameType) (r@@3 T@Field_14974_14975) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8679_14974 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14974_14974 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8679_14974 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8679_14974 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14974_14974 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5302_5309) (v_1@@6 T@FrameType) (q@@4 T@Field_14974_14975) (w@@6 T@FrameType) (r@@4 T@Field_5302_5309) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8679_14974 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14974_8679 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8679_8679 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8679_14974 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14974_8679 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5302_5309) (v_1@@7 T@FrameType) (q@@5 T@Field_5302_5309) (w@@7 T@FrameType) (r@@5 T@Field_14974_14975) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8679_8679 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8679_14974 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8679_14974 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8679_8679 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8679_14974 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5302_5309) (v_1@@8 T@FrameType) (q@@6 T@Field_5302_5309) (w@@8 T@FrameType) (r@@6 T@Field_5302_5309) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8679_8679 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8679_8679 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8679_8679 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8679_8679 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8679_8679 q@@6 w@@8 r@@6 u@@6))
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
(declare-fun Heap@5 () T@PolymorphicMapType_8619)
(declare-fun Heap@4 () T@PolymorphicMapType_8619)
(declare-fun this@@6 () T@Ref)
(declare-fun newPMask@0 () T@PolymorphicMapType_9168)
(declare-fun Heap@6 () T@PolymorphicMapType_8619)
(declare-fun Mask@4 () T@PolymorphicMapType_8640)
(declare-fun Heap@1 () T@PolymorphicMapType_8619)
(declare-fun Heap@2 () T@PolymorphicMapType_8619)
(declare-fun Heap@3 () T@PolymorphicMapType_8619)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@3 () T@PolymorphicMapType_8640)
(declare-fun QPMask@0 () T@PolymorphicMapType_8640)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_8640)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_18327 ((Array T@Ref Bool)) T@FrameType)
(declare-fun FrameFragment_3466 (Int) T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_8640)
(declare-fun Mask@1 () T@PolymorphicMapType_8640)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun Heap@@36 () T@PolymorphicMapType_8619)
(declare-fun Heap@0 () T@PolymorphicMapType_8619)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_8640)
(set-info :boogie-vc-id m2)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon8_correct  (=> (= Heap@5 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@4) (store (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6) (PolymorphicMapType_9168 (store (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) this@@6 n_85 true) (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))) (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@4) null (|inv#sm| this@@6))))) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@4) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@4))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_73 T@Ref) (f_82 T@Field_14908_14910) ) (!  (=> (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73 f_82) (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| newPMask@0) o_73 f_82))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_5302_22529#PolymorphicMapType_9168| newPMask@0) o_73 f_82))
)) (forall ((o_73@@0 T@Ref) (f_82@@0 T@Field_14859_3259) ) (!  (=> (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@0 f_82@@0) (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| newPMask@0) o_73@@0 f_82@@0))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| newPMask@0) o_73@@0 f_82@@0))
))) (forall ((o_73@@1 T@Ref) (f_82@@1 T@Field_8679_53) ) (!  (=> (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@1 f_82@@1) (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| newPMask@0) o_73@@1 f_82@@1))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_5302_53#PolymorphicMapType_9168| newPMask@0) o_73@@1 f_82@@1))
))) (forall ((o_73@@2 T@Ref) (f_82@@2 T@Field_8692_8693) ) (!  (=> (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@2 f_82@@2) (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| newPMask@0) o_73@@2 f_82@@2))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_5302_8693#PolymorphicMapType_9168| newPMask@0) o_73@@2 f_82@@2))
))) (forall ((o_73@@3 T@Ref) (f_82@@3 T@Field_5302_5309) ) (!  (=> (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@3 f_82@@3) (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| newPMask@0) o_73@@3 f_82@@3))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_5302_14975#PolymorphicMapType_9168| newPMask@0) o_73@@3 f_82@@3))
))) (forall ((o_73@@4 T@Ref) (f_82@@4 T@Field_5302_14992) ) (!  (=> (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@4 f_82@@4) (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| newPMask@0) o_73@@4 f_82@@4))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_5302_27679#PolymorphicMapType_9168| newPMask@0) o_73@@4 f_82@@4))
))) (forall ((o_73@@5 T@Ref) (f_82@@5 T@Field_5308_16408) ) (!  (=> (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@5 f_82@@5) (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| newPMask@0) o_73@@5 f_82@@5))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_14974_27923#PolymorphicMapType_9168| newPMask@0) o_73@@5 f_82@@5))
))) (forall ((o_73@@6 T@Ref) (f_82@@6 T@Field_5308_3259) ) (!  (=> (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@6 f_82@@6) (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| newPMask@0) o_73@@6 f_82@@6))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_14974_3259#PolymorphicMapType_9168| newPMask@0) o_73@@6 f_82@@6))
))) (forall ((o_73@@7 T@Ref) (f_82@@7 T@Field_5308_53) ) (!  (=> (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@7 f_82@@7) (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| newPMask@0) o_73@@7 f_82@@7))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_14974_53#PolymorphicMapType_9168| newPMask@0) o_73@@7 f_82@@7))
))) (forall ((o_73@@8 T@Ref) (f_82@@8 T@Field_5308_8693) ) (!  (=> (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@8 f_82@@8) (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| newPMask@0) o_73@@8 f_82@@8))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_14974_8693#PolymorphicMapType_9168| newPMask@0) o_73@@8 f_82@@8))
))) (forall ((o_73@@9 T@Ref) (f_82@@9 T@Field_14974_14975) ) (!  (=> (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@9 f_82@@9) (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| newPMask@0) o_73@@9 f_82@@9))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_14974_14975#PolymorphicMapType_9168| newPMask@0) o_73@@9 f_82@@9))
))) (forall ((o_73@@10 T@Ref) (f_82@@10 T@Field_14987_14992) ) (!  (=> (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| (select (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6))) o_73@@10 f_82@@10) (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| newPMask@0) o_73@@10 f_82@@10))
 :qid |stdinbpl.665:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9168_14974_28945#PolymorphicMapType_9168| newPMask@0) o_73@@10 f_82@@10))
))) (forall ((x_2_2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@5) this@@6 n_85) x_2_2) (select (|PolymorphicMapType_9168_5300_3259#PolymorphicMapType_9168| newPMask@0) x_2_2 f_7))
 :qid |stdinbpl.669:20|
 :skolemid |108|
))) (and (and (= Heap@6 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@5) (store (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@5) null (|inv#sm| this@@6) newPMask@0) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@5) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@5))) (state Heap@6 Mask@4)) (and (state Heap@6 Mask@4) (= (ControlFlow 0 2) (- 0 1))))) (= FullPerm (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@4) this@@6 n_85))))))
(let ((anon12_Else_correct  (=> (HasDirectPerm_5308_5309 Mask@4 null (inv this@@6)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 4) 2)) anon8_correct))))
(let ((anon12_Then_correct  (=> (not (HasDirectPerm_5308_5309 Mask@4 null (inv this@@6))) (=> (and (and (= Heap@2 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@1) (store (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@1) null (|inv#sm| this@@6) ZeroPMask) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@1) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@1))) (= Heap@3 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@2) (store (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@2) null (inv this@@6) freshVersion@0) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@2) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 3) 2))) anon8_correct))))
(let ((anon6_correct  (=> (= Mask@3 (PolymorphicMapType_8640 (store (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@0) this@@6 n_85 (- (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@0) this@@6 n_85) FullPerm)) (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| QPMask@0) (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| QPMask@0))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1)) (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.617:17|
 :skolemid |101|
 :pattern ( (neverTriggered3 x_1) (neverTriggered3 x_1_1))
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1@@0)) (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.617:17|
 :skolemid |101|
 :pattern ( (neverTriggered3 x_1@@0) (neverTriggered3 x_1_1@@0))
)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((x_1@@1 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1@@1) (>= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@3) x_1@@1 f_7) FullPerm))
 :qid |stdinbpl.624:17|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@1) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) x_1@@1 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1@@1))
))) (=> (forall ((x_1@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1@@2) (>= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@3) x_1@@2 f_7) FullPerm))
 :qid |stdinbpl.624:17|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@1) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) x_1@@2 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1@@2))
)) (=> (forall ((x_1@@3 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1@@3) (< NoPerm FullPerm)) (and (qpRange3 x_1@@3) (= (invRecv3 x_1@@3) x_1@@3)))
 :qid |stdinbpl.630:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@1) x_1@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) x_1@@3 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_1@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) (invRecv3 o_9)) (and (< NoPerm FullPerm) (qpRange3 o_9))) (= (invRecv3 o_9) o_9))
 :qid |stdinbpl.634:22|
 :skolemid |104|
 :pattern ( (invRecv3 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) (invRecv3 o_9@@0)) (and (< NoPerm FullPerm) (qpRange3 o_9@@0))) (and (= (invRecv3 o_9@@0) o_9@@0) (= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) o_9@@0 f_7) (- (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@3) o_9@@0 f_7) FullPerm)))) (=> (not (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) (invRecv3 o_9@@0)) (and (< NoPerm FullPerm) (qpRange3 o_9@@0)))) (= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) o_9@@0 f_7) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@3) o_9@@0 f_7))))
 :qid |stdinbpl.640:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) o_9@@0 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_8679_53) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@3) o_9@@1 f_5) (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_8692_8693) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@3) o_9@@2 f_5@@0) (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14859_3259) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@3) o_9@@3 f_5@@1) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_14908_14910) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@3) o_9@@4 f_5@@2) (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@1) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_5302_5309) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@3) o_9@@5 f_5@@3) (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| QPMask@1) o_9@@5 f_5@@3)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| QPMask@1) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_5302_14992) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@3) o_9@@6 f_5@@4) (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| QPMask@1) o_9@@6 f_5@@4)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| QPMask@1) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_5308_53) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@3) o_9@@7 f_5@@5) (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| QPMask@1) o_9@@7 f_5@@5)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| QPMask@1) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_5308_8693) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@3) o_9@@8 f_5@@6) (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| QPMask@1) o_9@@8 f_5@@6)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| QPMask@1) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_5308_3259) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@3) o_9@@9 f_5@@7) (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| QPMask@1) o_9@@9 f_5@@7)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| QPMask@1) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_5308_16408) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@3) o_9@@10 f_5@@8) (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| QPMask@1) o_9@@10 f_5@@8)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| QPMask@1) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_14974_14975) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@3) o_9@@11 f_5@@9) (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| QPMask@1) o_9@@11 f_5@@9)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| QPMask@1) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_14987_14992) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@3) o_9@@12 f_5@@10) (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| QPMask@1) o_9@@12 f_5@@10)))
 :qid |stdinbpl.646:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| QPMask@1) o_9@@12 f_5@@10))
))) (= Mask@4 (PolymorphicMapType_8640 (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@1) (store (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| QPMask@1) null (inv this@@6) (+ (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| QPMask@1) null (inv this@@6)) FullPerm)) (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| QPMask@1) (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| QPMask@1)))) (and (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)) (and (|inv#trigger_5308| Heap@1 (inv this@@6)) (= (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@1) null (inv this@@6)) (CombineFrames (FrameFragment_18327 (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85)) (FrameFragment_3466 (|inv#condqp1| Heap@1 this@@6))))))) (and (=> (= (ControlFlow 0 5) 3) anon12_Then_correct) (=> (= (ControlFlow 0 5) 4) anon12_Else_correct))))))))))))
(let ((anon11_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 10) 5)) anon6_correct)))
(let ((anon11_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= FullPerm (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@0) this@@6 n_85))) (=> (<= FullPerm (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@0) this@@6 n_85)) (=> (= (ControlFlow 0 8) 5) anon6_correct))))))
(let ((anon4_correct  (=> (not (= this@@6 null)) (=> (and (= Mask@2 (PolymorphicMapType_8640 (store (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@1) this@@6 n_85 (+ (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@1) this@@6 n_85) FullPerm)) (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@1) (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@1))) (state Heap@1 Mask@2)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((x T@Ref) (x_46 T@Ref) ) (!  (=> (and (and (and (and (not (= x x_46)) (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x)) (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_46)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x x_46)))
 :qid |stdinbpl.566:15|
 :skolemid |95|
))) (=> (forall ((x@@0 T@Ref) (x_46@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x@@0 x_46@@0)) (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x@@0)) (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x_46@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x@@0 x_46@@0)))
 :qid |stdinbpl.566:15|
 :skolemid |95|
)) (=> (and (and (forall ((x@@1 T@Ref) ) (!  (=> (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x@@1) (< NoPerm FullPerm)) (and (qpRange2 x@@1) (= (invRecv2 x@@1) x@@1)))
 :qid |stdinbpl.572:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@1) x@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@0) x@@1 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x@@1))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) (invRecv2 o_9@@13)) (< NoPerm FullPerm)) (qpRange2 o_9@@13)) (= (invRecv2 o_9@@13) o_9@@13))
 :qid |stdinbpl.576:22|
 :skolemid |97|
 :pattern ( (invRecv2 o_9@@13))
))) (and (forall ((x@@2 T@Ref) ) (!  (=> (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x@@2) (not (= x@@2 null)))
 :qid |stdinbpl.582:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@1) x@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@0) x@@2 f_7))
 :pattern ( (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) x@@2))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) (invRecv2 o_9@@14)) (< NoPerm FullPerm)) (qpRange2 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@14) o_9@@14)) (= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@0) o_9@@14 f_7) (+ (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@2) o_9@@14 f_7) FullPerm)))) (=> (not (and (and (select (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@1) this@@6 n_85) (invRecv2 o_9@@14)) (< NoPerm FullPerm)) (qpRange2 o_9@@14))) (= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@0) o_9@@14 f_7) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@2) o_9@@14 f_7))))
 :qid |stdinbpl.588:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@0) o_9@@14 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@11 T@Field_8679_53) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@2) o_9@@15 f_5@@11) (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| QPMask@0) o_9@@15 f_5@@11)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@2) o_9@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| QPMask@0) o_9@@15 f_5@@11))
)) (forall ((o_9@@16 T@Ref) (f_5@@12 T@Field_8692_8693) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@2) o_9@@16 f_5@@12) (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| QPMask@0) o_9@@16 f_5@@12)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@2) o_9@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| QPMask@0) o_9@@16 f_5@@12))
))) (forall ((o_9@@17 T@Ref) (f_5@@13 T@Field_14859_3259) ) (!  (=> (not (= f_5@@13 f_7)) (= (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@2) o_9@@17 f_5@@13) (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@0) o_9@@17 f_5@@13)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@2) o_9@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| QPMask@0) o_9@@17 f_5@@13))
))) (forall ((o_9@@18 T@Ref) (f_5@@14 T@Field_14908_14910) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@2) o_9@@18 f_5@@14) (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@0) o_9@@18 f_5@@14)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@2) o_9@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| QPMask@0) o_9@@18 f_5@@14))
))) (forall ((o_9@@19 T@Ref) (f_5@@15 T@Field_5302_5309) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@2) o_9@@19 f_5@@15) (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| QPMask@0) o_9@@19 f_5@@15)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@2) o_9@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| QPMask@0) o_9@@19 f_5@@15))
))) (forall ((o_9@@20 T@Ref) (f_5@@16 T@Field_5302_14992) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@2) o_9@@20 f_5@@16) (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| QPMask@0) o_9@@20 f_5@@16)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@2) o_9@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| QPMask@0) o_9@@20 f_5@@16))
))) (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_5308_53) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@2) o_9@@21 f_5@@17) (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| QPMask@0) o_9@@21 f_5@@17)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@2) o_9@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| QPMask@0) o_9@@21 f_5@@17))
))) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_5308_8693) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@2) o_9@@22 f_5@@18) (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| QPMask@0) o_9@@22 f_5@@18)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@2) o_9@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| QPMask@0) o_9@@22 f_5@@18))
))) (forall ((o_9@@23 T@Ref) (f_5@@19 T@Field_5308_3259) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@2) o_9@@23 f_5@@19) (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| QPMask@0) o_9@@23 f_5@@19)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@2) o_9@@23 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| QPMask@0) o_9@@23 f_5@@19))
))) (forall ((o_9@@24 T@Ref) (f_5@@20 T@Field_5308_16408) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@2) o_9@@24 f_5@@20) (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| QPMask@0) o_9@@24 f_5@@20)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@2) o_9@@24 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| QPMask@0) o_9@@24 f_5@@20))
))) (forall ((o_9@@25 T@Ref) (f_5@@21 T@Field_14974_14975) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@2) o_9@@25 f_5@@21) (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| QPMask@0) o_9@@25 f_5@@21)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@2) o_9@@25 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| QPMask@0) o_9@@25 f_5@@21))
))) (forall ((o_9@@26 T@Ref) (f_5@@22 T@Field_14987_14992) ) (!  (=> true (= (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@2) o_9@@26 f_5@@22) (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| QPMask@0) o_9@@26 f_5@@22)))
 :qid |stdinbpl.592:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@2) o_9@@26 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| QPMask@0) o_9@@26 f_5@@22))
))) (state Heap@1 QPMask@0)) (and (state Heap@1 QPMask@0) (state Heap@1 QPMask@0))) (and (=> (= (ControlFlow 0 11) 8) anon11_Then_correct) (=> (= (ControlFlow 0 11) 10) anon11_Else_correct))))))))))
(let ((anon10_Else_correct  (=> (HasDirectPerm_5308_5309 Mask@1 null (inv this@@6)) (=> (and (= Heap@1 Heap@@36) (= (ControlFlow 0 14) 11)) anon4_correct))))
(let ((anon10_Then_correct  (=> (and (and (not (HasDirectPerm_5308_5309 Mask@1 null (inv this@@6))) (= Heap@0 (PolymorphicMapType_8619 (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5002_5003#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5300_3259#PolymorphicMapType_8619| Heap@@36) (store (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@36) null (inv this@@6) newVersion@0) (|PolymorphicMapType_8619_5312_22190#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5302_5309#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5302_24418#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5308_24698#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5308_53#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5308_8693#PolymorphicMapType_8619| Heap@@36) (|PolymorphicMapType_8619_5308_3259#PolymorphicMapType_8619| Heap@@36)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 13) 11))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_8640 (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| Mask@0) (store (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@0) null (inv this@@6) (- (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@0) null (inv this@@6)) FullPerm)) (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| Mask@0) (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| Mask@0))) (and (=> (= (ControlFlow 0 15) 13) anon10_Then_correct) (=> (= (ControlFlow 0 15) 14) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 18) 15)) anon2_correct)))
(let ((anon9_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (<= FullPerm (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@0) null (inv this@@6)))) (=> (<= FullPerm (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| Mask@0) null (inv this@@6))) (=> (= (ControlFlow 0 16) 15) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@36 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_8619_4999_53#PolymorphicMapType_8619| Heap@@36) this@@6 $allocated) (= Mask@0 (PolymorphicMapType_8640 (|PolymorphicMapType_8640_5302_16290#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5300_3259#PolymorphicMapType_8640| ZeroMask) (store (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| ZeroMask) null (inv this@@6) (+ (select (|PolymorphicMapType_8640_5308_5309#PolymorphicMapType_8640| ZeroMask) null (inv this@@6)) FullPerm)) (|PolymorphicMapType_8640_5302_5309#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5302_53#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5302_8693#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5302_35041#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5308_35141#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5308_3259#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5308_53#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5308_8693#PolymorphicMapType_8640| ZeroMask) (|PolymorphicMapType_8640_5308_35541#PolymorphicMapType_8640| ZeroMask))))) (and (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0)) (and (|inv#trigger_5308| Heap@@36 (inv this@@6)) (= (select (|PolymorphicMapType_8619_5308_5309#PolymorphicMapType_8619| Heap@@36) null (inv this@@6)) (CombineFrames (FrameFragment_18327 (select (|PolymorphicMapType_8619_5302_15572#PolymorphicMapType_8619| Heap@@36) this@@6 n_85)) (FrameFragment_3466 (|inv#condqp1| Heap@@36 this@@6))))))) (and (=> (= (ControlFlow 0 19) 16) anon9_Then_correct) (=> (= (ControlFlow 0 19) 18) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 19) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
