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
(declare-sort T@Field_18569_53 0)
(declare-sort T@Field_18582_18583 0)
(declare-sort T@Field_12047_57455 0)
(declare-sort T@Field_12047_57322 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_18530 0)) (((PolymorphicMapType_18530 (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| (Array T@Ref T@Field_18582_18583 Real)) (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| (Array T@Ref T@Field_18569_53 Real)) (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| (Array T@Ref T@Field_12047_57322 Real)) (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| (Array T@Ref T@Field_12047_57455 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19058 0)) (((PolymorphicMapType_19058 (|PolymorphicMapType_19058_18569_53#PolymorphicMapType_19058| (Array T@Ref T@Field_18569_53 Bool)) (|PolymorphicMapType_19058_18569_18583#PolymorphicMapType_19058| (Array T@Ref T@Field_18582_18583 Bool)) (|PolymorphicMapType_19058_18569_57322#PolymorphicMapType_19058| (Array T@Ref T@Field_12047_57322 Bool)) (|PolymorphicMapType_19058_18569_58435#PolymorphicMapType_19058| (Array T@Ref T@Field_12047_57455 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18509 0)) (((PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| (Array T@Ref T@Field_18569_53 Bool)) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| (Array T@Ref T@Field_18582_18583 T@Ref)) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| (Array T@Ref T@Field_12047_57455 T@PolymorphicMapType_19058)) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| (Array T@Ref T@Field_12047_57322 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_18569_53)
(declare-fun next () T@Field_18582_18583)
(declare-fun succHeap (T@PolymorphicMapType_18509 T@PolymorphicMapType_18509) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18509 T@PolymorphicMapType_18509) Bool)
(declare-fun state (T@PolymorphicMapType_18509 T@PolymorphicMapType_18530) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18530) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19058)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |hfun'| (T@PolymorphicMapType_18509 (Array T@Ref Bool)) (Array Int Bool))
(declare-fun dummyFunction_24964 ((Array Int Bool)) Bool)
(declare-fun |hfun#triggerStateless| ((Array T@Ref Bool)) (Array Int Bool))
(declare-fun hfun (T@PolymorphicMapType_18509 (Array T@Ref Bool)) (Array Int Bool))
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18509 T@PolymorphicMapType_18509 T@PolymorphicMapType_18530) Bool)
(declare-fun IsPredicateField_12047_57413 (T@Field_12047_57322) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12047 (T@Field_12047_57322) T@Field_12047_57455)
(declare-fun HasDirectPerm_12047_57386 (T@PolymorphicMapType_18530 T@Ref T@Field_12047_57322) Bool)
(declare-fun IsWandField_12047_58962 (T@Field_12047_57322) Bool)
(declare-fun WandMaskField_12047 (T@Field_12047_57322) T@Field_12047_57455)
(declare-fun dummyHeap () T@PolymorphicMapType_18509)
(declare-fun ZeroMask () T@PolymorphicMapType_18530)
(declare-fun InsidePredicate_18569_18569 (T@Field_12047_57322 T@FrameType T@Field_12047_57322 T@FrameType) Bool)
(declare-fun IsPredicateField_12047_12048 (T@Field_18582_18583) Bool)
(declare-fun IsWandField_12047_12048 (T@Field_18582_18583) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12047_61896 (T@Field_12047_57455) Bool)
(declare-fun IsWandField_12047_61912 (T@Field_12047_57455) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12047_53 (T@Field_18569_53) Bool)
(declare-fun IsWandField_12047_53 (T@Field_18569_53) Bool)
(declare-fun |Set#Equal_3783| ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun HasDirectPerm_12047_62267 (T@PolymorphicMapType_18530 T@Ref T@Field_12047_57455) Bool)
(declare-fun HasDirectPerm_12047_53 (T@PolymorphicMapType_18530 T@Ref T@Field_18569_53) Bool)
(declare-fun HasDirectPerm_12047_12048 (T@PolymorphicMapType_18530 T@Ref T@Field_18582_18583) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18530 T@PolymorphicMapType_18530 T@PolymorphicMapType_18530) Bool)
(declare-fun |hfun#frame| (T@FrameType (Array T@Ref Bool)) (Array Int Bool))
(declare-fun FrameFragment_3913 (Int) T@FrameType)
(declare-fun |hfun#condqp1| (T@PolymorphicMapType_18509 (Array T@Ref Bool)) Int)
(declare-fun |sk_hfun#condqp1| (Int Int) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_18509) (Heap1 T@PolymorphicMapType_18509) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18509) (Mask T@PolymorphicMapType_18530) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18509) (Heap1@@0 T@PolymorphicMapType_18509) (Heap2 T@PolymorphicMapType_18509) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12047_57455) ) (!  (not (select (|PolymorphicMapType_19058_18569_58435#PolymorphicMapType_19058| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19058_18569_58435#PolymorphicMapType_19058| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12047_57322) ) (!  (not (select (|PolymorphicMapType_19058_18569_57322#PolymorphicMapType_19058| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19058_18569_57322#PolymorphicMapType_19058| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18582_18583) ) (!  (not (select (|PolymorphicMapType_19058_18569_18583#PolymorphicMapType_19058| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19058_18569_18583#PolymorphicMapType_19058| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18569_53) ) (!  (not (select (|PolymorphicMapType_19058_18569_53#PolymorphicMapType_19058| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19058_18569_53#PolymorphicMapType_19058| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.357:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18509) (g_1 (Array T@Ref Bool)) ) (! (dummyFunction_24964 (|hfun#triggerStateless| g_1))
 :qid |stdinbpl.480:15|
 :skolemid |83|
 :pattern ( (|hfun'| Heap@@0 g_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18509) (g_1@@0 (Array T@Ref Bool)) ) (!  (and (= (hfun Heap@@1 g_1@@0) (|hfun'| Heap@@1 g_1@@0)) (dummyFunction_24964 (|hfun#triggerStateless| g_1@@0)))
 :qid |stdinbpl.476:15|
 :skolemid |82|
 :pattern ( (hfun Heap@@1 g_1@@0))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.360:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18509) (ExhaleHeap T@PolymorphicMapType_18509) (Mask@@0 T@PolymorphicMapType_18530) (pm_f_11 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12047_57386 Mask@@0 null pm_f_11) (IsPredicateField_12047_57413 pm_f_11)) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@2) null (PredicateMaskField_12047 pm_f_11)) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap) null (PredicateMaskField_12047 pm_f_11)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_12047_57413 pm_f_11) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap) null (PredicateMaskField_12047 pm_f_11)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18509) (ExhaleHeap@@0 T@PolymorphicMapType_18509) (Mask@@1 T@PolymorphicMapType_18530) (pm_f_11@@0 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12047_57386 Mask@@1 null pm_f_11@@0) (IsWandField_12047_58962 pm_f_11@@0)) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@3) null (WandMaskField_12047 pm_f_11@@0)) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@0) null (WandMaskField_12047 pm_f_11@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_12047_58962 pm_f_11@@0) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@0) null (WandMaskField_12047 pm_f_11@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18509) (ExhaleHeap@@1 T@PolymorphicMapType_18509) (Mask@@2 T@PolymorphicMapType_18530) (pm_f_11@@1 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12047_57386 Mask@@2 null pm_f_11@@1) (IsPredicateField_12047_57413 pm_f_11@@1)) (and (and (and (forall ((o2_11 T@Ref) (f_36 T@Field_18569_53) ) (!  (=> (select (|PolymorphicMapType_19058_18569_53#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) null (PredicateMaskField_12047 pm_f_11@@1))) o2_11 f_36) (= (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@4) o2_11 f_36) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@1) o2_11 f_36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@1) o2_11 f_36))
)) (forall ((o2_11@@0 T@Ref) (f_36@@0 T@Field_18582_18583) ) (!  (=> (select (|PolymorphicMapType_19058_18569_18583#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) null (PredicateMaskField_12047 pm_f_11@@1))) o2_11@@0 f_36@@0) (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@4) o2_11@@0 f_36@@0) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@1) o2_11@@0 f_36@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@1) o2_11@@0 f_36@@0))
))) (forall ((o2_11@@1 T@Ref) (f_36@@1 T@Field_12047_57322) ) (!  (=> (select (|PolymorphicMapType_19058_18569_57322#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) null (PredicateMaskField_12047 pm_f_11@@1))) o2_11@@1 f_36@@1) (= (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@4) o2_11@@1 f_36@@1) (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@1) o2_11@@1 f_36@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@1) o2_11@@1 f_36@@1))
))) (forall ((o2_11@@2 T@Ref) (f_36@@2 T@Field_12047_57455) ) (!  (=> (select (|PolymorphicMapType_19058_18569_58435#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) null (PredicateMaskField_12047 pm_f_11@@1))) o2_11@@2 f_36@@2) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) o2_11@@2 f_36@@2) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@1) o2_11@@2 f_36@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@1) o2_11@@2 f_36@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_12047_57413 pm_f_11@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18509) (ExhaleHeap@@2 T@PolymorphicMapType_18509) (Mask@@3 T@PolymorphicMapType_18530) (pm_f_11@@2 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12047_57386 Mask@@3 null pm_f_11@@2) (IsWandField_12047_58962 pm_f_11@@2)) (and (and (and (forall ((o2_11@@3 T@Ref) (f_36@@3 T@Field_18569_53) ) (!  (=> (select (|PolymorphicMapType_19058_18569_53#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) null (WandMaskField_12047 pm_f_11@@2))) o2_11@@3 f_36@@3) (= (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@5) o2_11@@3 f_36@@3) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@2) o2_11@@3 f_36@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@2) o2_11@@3 f_36@@3))
)) (forall ((o2_11@@4 T@Ref) (f_36@@4 T@Field_18582_18583) ) (!  (=> (select (|PolymorphicMapType_19058_18569_18583#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) null (WandMaskField_12047 pm_f_11@@2))) o2_11@@4 f_36@@4) (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@5) o2_11@@4 f_36@@4) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@2) o2_11@@4 f_36@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@2) o2_11@@4 f_36@@4))
))) (forall ((o2_11@@5 T@Ref) (f_36@@5 T@Field_12047_57322) ) (!  (=> (select (|PolymorphicMapType_19058_18569_57322#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) null (WandMaskField_12047 pm_f_11@@2))) o2_11@@5 f_36@@5) (= (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@5) o2_11@@5 f_36@@5) (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@2) o2_11@@5 f_36@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@2) o2_11@@5 f_36@@5))
))) (forall ((o2_11@@6 T@Ref) (f_36@@6 T@Field_12047_57455) ) (!  (=> (select (|PolymorphicMapType_19058_18569_58435#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) null (WandMaskField_12047 pm_f_11@@2))) o2_11@@6 f_36@@6) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) o2_11@@6 f_36@@6) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@2) o2_11@@6 f_36@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@2) o2_11@@6 f_36@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_12047_58962 pm_f_11@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18509) (ExhaleHeap@@3 T@PolymorphicMapType_18509) (Mask@@4 T@PolymorphicMapType_18530) (o_31 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@6) o_31 $allocated) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@3) o_31 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@3) o_31 $allocated))
)))
(assert (forall ((p T@Field_12047_57322) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18569_18569 p v_1 p w))
 :qid |stdinbpl.255:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18569_18569 p v_1 p w))
)))
(assert  (not (IsPredicateField_12047_12048 next)))
(assert  (not (IsWandField_12047_12048 next)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18509) (ExhaleHeap@@4 T@PolymorphicMapType_18509) (Mask@@5 T@PolymorphicMapType_18530) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_18530) (o_2@@3 T@Ref) (f_4@@3 T@Field_12047_57455) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_12047_61896 f_4@@3))) (not (IsWandField_12047_61912 f_4@@3))) (<= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_18530) (o_2@@4 T@Ref) (f_4@@4 T@Field_12047_57322) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_12047_57413 f_4@@4))) (not (IsWandField_12047_58962 f_4@@4))) (<= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_18530) (o_2@@5 T@Ref) (f_4@@5 T@Field_18569_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_12047_53 f_4@@5))) (not (IsWandField_12047_53 f_4@@5))) (<= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_18530) (o_2@@6 T@Ref) (f_4@@6 T@Field_18582_18583) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_12047_12048 f_4@@6))) (not (IsWandField_12047_12048 f_4@@6))) (<= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Equal_3783| a@@1 b@@0) (forall ((o Int) ) (! (= (select a@@1 o) (select b@@0 o))
 :qid |stdinbpl.342:31|
 :skolemid |48|
 :pattern ( (select a@@1 o))
 :pattern ( (select b@@0 o))
)))
 :qid |stdinbpl.341:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_3783| a@@1 b@@0))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18530) (o_2@@7 T@Ref) (f_4@@7 T@Field_12047_57455) ) (! (= (HasDirectPerm_12047_62267 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12047_62267 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18530) (o_2@@8 T@Ref) (f_4@@8 T@Field_12047_57322) ) (! (= (HasDirectPerm_12047_57386 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12047_57386 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18530) (o_2@@9 T@Ref) (f_4@@9 T@Field_18569_53) ) (! (= (HasDirectPerm_12047_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12047_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18530) (o_2@@10 T@Ref) (f_4@@10 T@Field_18582_18583) ) (! (= (HasDirectPerm_12047_12048 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12047_12048 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.243:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18509) (ExhaleHeap@@5 T@PolymorphicMapType_18509) (Mask@@14 T@PolymorphicMapType_18530) (o_31@@0 T@Ref) (f_36@@7 T@Field_12047_57455) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_12047_62267 Mask@@14 o_31@@0 f_36@@7) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@8) o_31@@0 f_36@@7) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@5) o_31@@0 f_36@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@5) o_31@@0 f_36@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18509) (ExhaleHeap@@6 T@PolymorphicMapType_18509) (Mask@@15 T@PolymorphicMapType_18530) (o_31@@1 T@Ref) (f_36@@8 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_12047_57386 Mask@@15 o_31@@1 f_36@@8) (= (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@9) o_31@@1 f_36@@8) (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@6) o_31@@1 f_36@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@6) o_31@@1 f_36@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18509) (ExhaleHeap@@7 T@PolymorphicMapType_18509) (Mask@@16 T@PolymorphicMapType_18530) (o_31@@2 T@Ref) (f_36@@9 T@Field_18569_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_12047_53 Mask@@16 o_31@@2 f_36@@9) (= (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@10) o_31@@2 f_36@@9) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@7) o_31@@2 f_36@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@7) o_31@@2 f_36@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18509) (ExhaleHeap@@8 T@PolymorphicMapType_18509) (Mask@@17 T@PolymorphicMapType_18530) (o_31@@3 T@Ref) (f_36@@10 T@Field_18582_18583) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_12047_12048 Mask@@17 o_31@@3 f_36@@10) (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@11) o_31@@3 f_36@@10) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@8) o_31@@3 f_36@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@8) o_31@@3 f_36@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_12047_57455) ) (! (= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_12047_57322) ) (! (= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_18569_53) ) (! (= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18582_18583) ) (! (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18530) (SummandMask1 T@PolymorphicMapType_18530) (SummandMask2 T@PolymorphicMapType_18530) (o_2@@15 T@Ref) (f_4@@15 T@Field_12047_57455) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18530) (SummandMask1@@0 T@PolymorphicMapType_18530) (SummandMask2@@0 T@PolymorphicMapType_18530) (o_2@@16 T@Ref) (f_4@@16 T@Field_12047_57322) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18530) (SummandMask1@@1 T@PolymorphicMapType_18530) (SummandMask2@@1 T@PolymorphicMapType_18530) (o_2@@17 T@Ref) (f_4@@17 T@Field_18569_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18530) (SummandMask1@@2 T@PolymorphicMapType_18530) (SummandMask2@@2 T@PolymorphicMapType_18530) (o_2@@18 T@Ref) (f_4@@18 T@Field_18582_18583) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (!  (=> (|Set#Equal_3783| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.343:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_3783| a@@2 b@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18509) (o_30 T@Ref) (f_37 T@Field_12047_57322) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@12) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@12) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@12) (store (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@12) o_30 f_37 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@12) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@12) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@12) (store (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@12) o_30 f_37 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18509) (o_30@@0 T@Ref) (f_37@@0 T@Field_12047_57455) (v@@0 T@PolymorphicMapType_19058) ) (! (succHeap Heap@@13 (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@13) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@13) (store (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@13) o_30@@0 f_37@@0 v@@0) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@13) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@13) (store (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@13) o_30@@0 f_37@@0 v@@0) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18509) (o_30@@1 T@Ref) (f_37@@1 T@Field_18582_18583) (v@@1 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@14) (store (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@14) o_30@@1 f_37@@1 v@@1) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@14) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@14) (store (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@14) o_30@@1 f_37@@1 v@@1) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@14) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18509) (o_30@@2 T@Ref) (f_37@@2 T@Field_18569_53) (v@@2 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_18509 (store (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@15) o_30@@2 f_37@@2 v@@2) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@15) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@15) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18509 (store (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@15) o_30@@2 f_37@@2 v@@2) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@15) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@15) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@15)))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.355:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.356:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_18509) (Mask@@18 T@PolymorphicMapType_18530) (g_1@@1 (Array T@Ref Bool)) ) (!  (=> (state Heap@@16 Mask@@18) (= (|hfun'| Heap@@16 g_1@@1) (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| Heap@@16 g_1@@1)) g_1@@1)))
 :qid |stdinbpl.487:15|
 :skolemid |84|
 :pattern ( (state Heap@@16 Mask@@18) (|hfun'| Heap@@16 g_1@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_18509) (Heap1Heap T@PolymorphicMapType_18509) (g_1@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select g_1@@2 (|sk_hfun#condqp1| (|hfun#condqp1| Heap2Heap g_1@@2) (|hfun#condqp1| Heap1Heap g_1@@2))) (< NoPerm FullPerm))  (and (select g_1@@2 (|sk_hfun#condqp1| (|hfun#condqp1| Heap2Heap g_1@@2) (|hfun#condqp1| Heap1Heap g_1@@2))) (< NoPerm FullPerm))) (=> (and (select g_1@@2 (|sk_hfun#condqp1| (|hfun#condqp1| Heap2Heap g_1@@2) (|hfun#condqp1| Heap1Heap g_1@@2))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap2Heap) (|sk_hfun#condqp1| (|hfun#condqp1| Heap2Heap g_1@@2) (|hfun#condqp1| Heap1Heap g_1@@2)) next) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap1Heap) (|sk_hfun#condqp1| (|hfun#condqp1| Heap2Heap g_1@@2) (|hfun#condqp1| Heap1Heap g_1@@2)) next)))) (= (|hfun#condqp1| Heap2Heap g_1@@2) (|hfun#condqp1| Heap1Heap g_1@@2)))
 :qid |stdinbpl.497:15|
 :skolemid |85|
 :pattern ( (|hfun#condqp1| Heap2Heap g_1@@2) (|hfun#condqp1| Heap1Heap g_1@@2) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_30@@3 T@Ref) (f_35 T@Field_18582_18583) (Heap@@17 T@PolymorphicMapType_18509) ) (!  (=> (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@17) o_30@@3 $allocated) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@17) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@17) o_30@@3 f_35) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@17) o_30@@3 f_35))
)))
(assert (forall ((p@@1 T@Field_12047_57322) (v_1@@0 T@FrameType) (q T@Field_12047_57322) (w@@0 T@FrameType) (r T@Field_12047_57322) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18569_18569 p@@1 v_1@@0 q w@@0) (InsidePredicate_18569_18569 q w@@0 r u)) (InsidePredicate_18569_18569 p@@1 v_1@@0 r u))
 :qid |stdinbpl.250:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18569_18569 p@@1 v_1@@0 q w@@0) (InsidePredicate_18569_18569 q w@@0 r u))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.361:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun g_1@@3 () (Array T@Ref Bool))
(declare-fun n$0_43 () T@Ref)
(declare-fun Heap@@18 () T@PolymorphicMapType_18509)
(declare-fun QPMask@0 () T@PolymorphicMapType_18530)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id |hfun#definedness|)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (select g_1@@3 n$0_43) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_43 next) null)))) (= (ControlFlow 0 6) 3)) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (select g_1@@3 n$0_43) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_43 next) null))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_12047_12048 QPMask@0 n$0_43 next)) (=> (HasDirectPerm_12047_12048 QPMask@0 n$0_43 next) (=> (= (ControlFlow 0 4) 3) anon7_correct))))))
(let ((anon11_Else_correct  (=> (not (select g_1@@3 n$0_43)) (and (=> (= (ControlFlow 0 9) 4) anon12_Then_correct) (=> (= (ControlFlow 0 9) 6) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (select g_1@@3 n$0_43) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_12047_12048 QPMask@0 n$0_43 next)) (=> (HasDirectPerm_12047_12048 QPMask@0 n$0_43 next) (and (=> (= (ControlFlow 0 7) 4) anon12_Then_correct) (=> (= (ControlFlow 0 7) 6) anon12_Else_correct)))))))
(let ((anon10_Else_correct true))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select g_1@@3 n_3)) (select g_1@@3 n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.530:15|
 :skolemid |86|
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select g_1@@3 n_3@@0)) (select g_1@@3 n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.530:15|
 :skolemid |86|
)) (=> (and (and (forall ((n_3@@1 T@Ref) ) (!  (=> (and (select g_1@@3 n_3@@1) (< NoPerm FullPerm)) (and (qpRange1 n_3@@1) (= (invRecv1 n_3@@1) n_3@@1)))
 :qid |stdinbpl.536:22|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@1 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select g_1@@3 (invRecv1 o_4)) (< NoPerm FullPerm)) (qpRange1 o_4)) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.540:22|
 :skolemid |88|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((n_3@@2 T@Ref) ) (!  (=> (select g_1@@3 n_3@@2) (not (= n_3@@2 null)))
 :qid |stdinbpl.546:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@2 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select g_1@@3 (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@0 next) (+ (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_4@@0 next) FullPerm)))) (=> (not (and (and (select g_1@@3 (invRecv1 o_4@@0)) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@0 next) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_4@@0 next))))
 :qid |stdinbpl.552:22|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@0 next))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_18569_53) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.556:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_18582_18583) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.556:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_12047_57322) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.556:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_12047_57455) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.556:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@0) o_4@@4 f_5@@2))
))) (state Heap@@18 QPMask@0)) (and (and (=> (= (ControlFlow 0 10) 2) anon10_Else_correct) (=> (= (ControlFlow 0 10) 7) anon11_Then_correct)) (=> (= (ControlFlow 0 10) 9) anon11_Else_correct))))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@18 ZeroMask) (not AssumePermUpperBound)) (and (= AssumeFunctionsAbove 0) (not (select g_1@@3 null)))) (and (=> (= (ControlFlow 0 12) 1) anon9_Then_correct) (=> (= (ControlFlow 0 12) 10) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13) 12) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
