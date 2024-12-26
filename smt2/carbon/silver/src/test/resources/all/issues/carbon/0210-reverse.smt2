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
(declare-fun n$0_4 () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_18509)
(declare-fun neverTriggered14 (T@Ref) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_18530)
(declare-fun QPMask@2 () T@PolymorphicMapType_18530)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) T@Ref)
(declare-fun n$0_6 () T@Ref)
(declare-fun Heap@@18 () T@PolymorphicMapType_18509)
(declare-fun neverTriggered15 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_18530)
(declare-fun QPMask@0 () T@PolymorphicMapType_18530)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) T@Ref)
(declare-fun foo ((Array Int Bool) T@Ref T@Ref) Bool)
(declare-fun x_3 () T@Ref)
(declare-fun y_3_2 () T@Ref)
(declare-fun b1 () Bool)
(declare-fun n$0_12 () T@Ref)
(declare-fun neverTriggered18 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_18530)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) T@Ref)
(declare-fun n$0_14 () T@Ref)
(declare-fun neverTriggered19 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_18530)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) T@Ref)
(declare-fun n$0_16 () T@Ref)
(declare-fun neverTriggered20 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_18530)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) T@Ref)
(declare-fun n$0_18 () T@Ref)
(declare-fun neverTriggered21 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_18530)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) T@Ref)
(declare-fun n$0_20 () T@Ref)
(declare-fun neverTriggered22 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_18530)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) T@Ref)
(declare-fun n$0_22_1 () T@Ref)
(declare-fun neverTriggered23 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_18530)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) T@Ref)
(declare-fun x_9_2 () T@Ref)
(declare-fun y_9_1 () T@Ref)
(declare-fun n$0_8 () T@Ref)
(declare-fun neverTriggered16 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_18530)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) T@Ref)
(declare-fun n$0_10 () T@Ref)
(declare-fun neverTriggered17 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_18530)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) T@Ref)
(declare-fun x_6 () T@Ref)
(declare-fun y_6_2 () T@Ref)
(declare-fun b2 () Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_18530)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(declare-fun n$0_2_1 () T@Ref)
(declare-fun neverTriggered12 (T@Ref) Bool)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) T@Ref)
(declare-fun n$0_34 () T@Ref)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id reverse)
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
 (=> (= (ControlFlow 0 0) 134) (let ((anon18_correct true))
(let ((anon100_Else_correct  (=> (and (not (and (select g_1@@3 n$0_4) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_4 next) null)))) (= (ControlFlow 0 119) 116)) anon18_correct)))
(let ((anon100_Then_correct  (=> (and (select g_1@@3 n$0_4) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_4 next) null))) (and (=> (= (ControlFlow 0 117) (- 0 118)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_4 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_4 next)) (=> (= (ControlFlow 0 117) 116) anon18_correct))))))
(let ((anon99_Else_correct true))
(let ((anon98_Then_correct  (and (=> (= (ControlFlow 0 120) (- 0 123)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 120) (- 0 122)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select g_1@@3 n_3)) (select g_1@@3 n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.1423:27|
 :skolemid |171|
 :pattern ( (neverTriggered14 n_3) (neverTriggered14 n_3_1))
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select g_1@@3 n_3@@0)) (select g_1@@3 n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.1423:27|
 :skolemid |171|
 :pattern ( (neverTriggered14 n_3@@0) (neverTriggered14 n_3_1@@0))
)) (and (=> (= (ControlFlow 0 120) (- 0 121)) (forall ((n_3@@1 T@Ref) ) (!  (=> (select g_1@@3 n_3@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_3@@1 next) NoPerm)))
 :qid |stdinbpl.1430:27|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@11) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_3@@1 next))
))) (=> (forall ((n_3@@2 T@Ref) ) (!  (=> (select g_1@@3 n_3@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_3@@2 next) NoPerm)))
 :qid |stdinbpl.1430:27|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@11) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_3@@2 next))
)) (=> (and (forall ((n_3@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_3@@3) (< NoPerm FullPerm)) (and (qpRange14 n_3@@3) (= (invRecv14 n_3@@3) n_3@@3)))
 :qid |stdinbpl.1436:32|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@11) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_3@@3 next))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv14 o_4)) (and (< NoPerm FullPerm) (qpRange14 o_4))) (= (invRecv14 o_4) o_4))
 :qid |stdinbpl.1440:32|
 :skolemid |174|
 :pattern ( (invRecv14 o_4))
))) (and (and (=> (= (ControlFlow 0 120) 115) anon99_Else_correct) (=> (= (ControlFlow 0 120) 117) anon100_Then_correct)) (=> (= (ControlFlow 0 120) 119) anon100_Else_correct)))))))))))
(let ((anon24_correct true))
(let ((anon103_Else_correct  (=> (and (not (and (select g_1@@3 n$0_6) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_6 next) null)))) (= (ControlFlow 0 110) 107)) anon24_correct)))
(let ((anon103_Then_correct  (=> (and (select g_1@@3 n$0_6) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_6 next) null))) (and (=> (= (ControlFlow 0 108) (- 0 109)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_6 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_6 next)) (=> (= (ControlFlow 0 108) 107) anon24_correct))))))
(let ((anon102_Else_correct true))
(let ((anon101_Then_correct  (and (=> (= (ControlFlow 0 111) (- 0 114)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 111) (- 0 113)) (forall ((n_4_1 T@Ref) (n_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1 n_4_2)) (select g_1@@3 n_4_1)) (select g_1@@3 n_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4_1 n_4_2)))
 :qid |stdinbpl.1475:27|
 :skolemid |176|
 :pattern ( (neverTriggered15 n_4_1) (neverTriggered15 n_4_2))
))) (=> (forall ((n_4_1@@0 T@Ref) (n_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@0 n_4_2@@0)) (select g_1@@3 n_4_1@@0)) (select g_1@@3 n_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4_1@@0 n_4_2@@0)))
 :qid |stdinbpl.1475:27|
 :skolemid |176|
 :pattern ( (neverTriggered15 n_4_1@@0) (neverTriggered15 n_4_2@@0))
)) (and (=> (= (ControlFlow 0 111) (- 0 112)) (forall ((n_4_1@@1 T@Ref) ) (!  (=> (select g_1@@3 n_4_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_4_1@@1 next) NoPerm)))
 :qid |stdinbpl.1482:27|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_4_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@12) n_4_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_4_1@@1 next))
))) (=> (forall ((n_4_1@@2 T@Ref) ) (!  (=> (select g_1@@3 n_4_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_4_1@@2 next) NoPerm)))
 :qid |stdinbpl.1482:27|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_4_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@12) n_4_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_4_1@@2 next))
)) (=> (and (forall ((n_4_1@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_4_1@@3) (< NoPerm FullPerm)) (and (qpRange15 n_4_1@@3) (= (invRecv15 n_4_1@@3) n_4_1@@3)))
 :qid |stdinbpl.1488:32|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@12) n_4_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_4_1@@3 next))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv15 o_4@@0)) (and (< NoPerm FullPerm) (qpRange15 o_4@@0))) (= (invRecv15 o_4@@0) o_4@@0))
 :qid |stdinbpl.1492:32|
 :skolemid |179|
 :pattern ( (invRecv15 o_4@@0))
))) (and (and (=> (= (ControlFlow 0 111) 106) anon102_Else_correct) (=> (= (ControlFlow 0 111) 108) anon103_Then_correct)) (=> (= (ControlFlow 0 111) 110) anon103_Else_correct)))))))))))
(let ((anon101_Else_correct true))
(let ((anon104_Else_correct true))
(let ((anon104_Then_correct  (=> (= (ControlFlow 0 103) (- 0 102)) (= (foo (hfun ExhaleHeap@0 g_1@@3) x_3 y_3_2) (foo (hfun Heap@@18 g_1@@3) y_3_2 x_3)))))
(let ((anon96_Then_correct  (=> b1 (and (and (and (and (=> (= (ControlFlow 0 124) 103) anon104_Then_correct) (=> (= (ControlFlow 0 124) 104) anon104_Else_correct)) (=> (= (ControlFlow 0 124) 120) anon98_Then_correct)) (=> (= (ControlFlow 0 124) 111) anon101_Then_correct)) (=> (= (ControlFlow 0 124) 105) anon101_Else_correct)))))
(let ((anon51_correct true))
(let ((anon116_Else_correct  (=> (and (not (and (select g_1@@3 n$0_12) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_12 next) null)))) (= (ControlFlow 0 94) 91)) anon51_correct)))
(let ((anon116_Then_correct  (=> (and (select g_1@@3 n$0_12) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_12 next) null))) (and (=> (= (ControlFlow 0 92) (- 0 93)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_12 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_12 next)) (=> (= (ControlFlow 0 92) 91) anon51_correct))))))
(let ((anon115_Else_correct true))
(let ((anon114_Then_correct  (and (=> (= (ControlFlow 0 95) (- 0 98)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 95) (- 0 97)) (forall ((n_7 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7 n_7_1)) (select g_1@@3 n_7)) (select g_1@@3 n_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7 n_7_1)))
 :qid |stdinbpl.1674:29|
 :skolemid |193|
 :pattern ( (neverTriggered18 n_7) (neverTriggered18 n_7_1))
))) (=> (forall ((n_7@@0 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@0 n_7_1@@0)) (select g_1@@3 n_7@@0)) (select g_1@@3 n_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7@@0 n_7_1@@0)))
 :qid |stdinbpl.1674:29|
 :skolemid |193|
 :pattern ( (neverTriggered18 n_7@@0) (neverTriggered18 n_7_1@@0))
)) (and (=> (= (ControlFlow 0 95) (- 0 96)) (forall ((n_7@@1 T@Ref) ) (!  (=> (select g_1@@3 n_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_7@@1 next) NoPerm)))
 :qid |stdinbpl.1681:29|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@3) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_7@@1 next))
))) (=> (forall ((n_7@@2 T@Ref) ) (!  (=> (select g_1@@3 n_7@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_7@@2 next) NoPerm)))
 :qid |stdinbpl.1681:29|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@3) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_7@@2 next))
)) (=> (and (forall ((n_7@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_7@@3) (< NoPerm FullPerm)) (and (qpRange18 n_7@@3) (= (invRecv18 n_7@@3) n_7@@3)))
 :qid |stdinbpl.1687:34|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@3) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_7@@3 next))
)) (forall ((o_4@@1 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv18 o_4@@1)) (and (< NoPerm FullPerm) (qpRange18 o_4@@1))) (= (invRecv18 o_4@@1) o_4@@1))
 :qid |stdinbpl.1691:34|
 :skolemid |196|
 :pattern ( (invRecv18 o_4@@1))
))) (and (and (=> (= (ControlFlow 0 95) 90) anon115_Else_correct) (=> (= (ControlFlow 0 95) 92) anon116_Then_correct)) (=> (= (ControlFlow 0 95) 94) anon116_Else_correct)))))))))))
(let ((anon57_correct true))
(let ((anon119_Else_correct  (=> (and (not (and (select g_1@@3 n$0_14) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_14 next) null)))) (= (ControlFlow 0 85) 82)) anon57_correct)))
(let ((anon119_Then_correct  (=> (and (select g_1@@3 n$0_14) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_14 next) null))) (and (=> (= (ControlFlow 0 83) (- 0 84)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_14 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_14 next)) (=> (= (ControlFlow 0 83) 82) anon57_correct))))))
(let ((anon118_Else_correct true))
(let ((anon117_Then_correct  (and (=> (= (ControlFlow 0 86) (- 0 89)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 86) (- 0 88)) (forall ((n_8 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8 n_8_1)) (select g_1@@3 n_8)) (select g_1@@3 n_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_8 n_8_1)))
 :qid |stdinbpl.1726:29|
 :skolemid |198|
 :pattern ( (neverTriggered19 n_8) (neverTriggered19 n_8_1))
))) (=> (forall ((n_8@@0 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@0 n_8_1@@0)) (select g_1@@3 n_8@@0)) (select g_1@@3 n_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_8@@0 n_8_1@@0)))
 :qid |stdinbpl.1726:29|
 :skolemid |198|
 :pattern ( (neverTriggered19 n_8@@0) (neverTriggered19 n_8_1@@0))
)) (and (=> (= (ControlFlow 0 86) (- 0 87)) (forall ((n_8@@1 T@Ref) ) (!  (=> (select g_1@@3 n_8@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_8@@1 next) NoPerm)))
 :qid |stdinbpl.1733:29|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@4) n_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_8@@1 next))
))) (=> (forall ((n_8@@2 T@Ref) ) (!  (=> (select g_1@@3 n_8@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_8@@2 next) NoPerm)))
 :qid |stdinbpl.1733:29|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_8@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@4) n_8@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_8@@2 next))
)) (=> (and (forall ((n_8@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_8@@3) (< NoPerm FullPerm)) (and (qpRange19 n_8@@3) (= (invRecv19 n_8@@3) n_8@@3)))
 :qid |stdinbpl.1739:34|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@4) n_8@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_8@@3 next))
)) (forall ((o_4@@2 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv19 o_4@@2)) (and (< NoPerm FullPerm) (qpRange19 o_4@@2))) (= (invRecv19 o_4@@2) o_4@@2))
 :qid |stdinbpl.1743:34|
 :skolemid |201|
 :pattern ( (invRecv19 o_4@@2))
))) (and (and (=> (= (ControlFlow 0 86) 81) anon118_Else_correct) (=> (= (ControlFlow 0 86) 83) anon119_Then_correct)) (=> (= (ControlFlow 0 86) 85) anon119_Else_correct)))))))))))
(let ((anon63_correct true))
(let ((anon122_Else_correct  (=> (and (not (and (select g_1@@3 n$0_16) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_16 next) null)))) (= (ControlFlow 0 74) 71)) anon63_correct)))
(let ((anon122_Then_correct  (=> (and (select g_1@@3 n$0_16) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_16 next) null))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_16 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_16 next)) (=> (= (ControlFlow 0 72) 71) anon63_correct))))))
(let ((anon121_Else_correct true))
(let ((anon120_Then_correct  (and (=> (= (ControlFlow 0 75) (- 0 78)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 75) (- 0 77)) (forall ((n_9 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9 n_9_1)) (select g_1@@3 n_9)) (select g_1@@3 n_9_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9 n_9_1)))
 :qid |stdinbpl.1784:29|
 :skolemid |203|
 :pattern ( (neverTriggered20 n_9) (neverTriggered20 n_9_1))
))) (=> (forall ((n_9@@0 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@0 n_9_1@@0)) (select g_1@@3 n_9@@0)) (select g_1@@3 n_9_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9@@0 n_9_1@@0)))
 :qid |stdinbpl.1784:29|
 :skolemid |203|
 :pattern ( (neverTriggered20 n_9@@0) (neverTriggered20 n_9_1@@0))
)) (and (=> (= (ControlFlow 0 75) (- 0 76)) (forall ((n_9@@1 T@Ref) ) (!  (=> (select g_1@@3 n_9@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_9@@1 next) NoPerm)))
 :qid |stdinbpl.1791:29|
 :skolemid |204|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@5) n_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_9@@1 next))
))) (=> (forall ((n_9@@2 T@Ref) ) (!  (=> (select g_1@@3 n_9@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_9@@2 next) NoPerm)))
 :qid |stdinbpl.1791:29|
 :skolemid |204|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_9@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@5) n_9@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_9@@2 next))
)) (=> (and (forall ((n_9@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_9@@3) (< NoPerm FullPerm)) (and (qpRange20 n_9@@3) (= (invRecv20 n_9@@3) n_9@@3)))
 :qid |stdinbpl.1797:34|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@5) n_9@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_9@@3 next))
)) (forall ((o_4@@3 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv20 o_4@@3)) (and (< NoPerm FullPerm) (qpRange20 o_4@@3))) (= (invRecv20 o_4@@3) o_4@@3))
 :qid |stdinbpl.1801:34|
 :skolemid |206|
 :pattern ( (invRecv20 o_4@@3))
))) (and (and (=> (= (ControlFlow 0 75) 70) anon121_Else_correct) (=> (= (ControlFlow 0 75) 72) anon122_Then_correct)) (=> (= (ControlFlow 0 75) 74) anon122_Else_correct)))))))))))
(let ((anon69_correct true))
(let ((anon125_Else_correct  (=> (and (not (and (select g_1@@3 n$0_18) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_18 next) null)))) (= (ControlFlow 0 65) 62)) anon69_correct)))
(let ((anon125_Then_correct  (=> (and (select g_1@@3 n$0_18) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_18 next) null))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_18 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_18 next)) (=> (= (ControlFlow 0 63) 62) anon69_correct))))))
(let ((anon124_Else_correct true))
(let ((anon123_Then_correct  (and (=> (= (ControlFlow 0 66) (- 0 69)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 66) (- 0 68)) (forall ((n_10_1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1 n_10_2)) (select g_1@@3 n_10_1)) (select g_1@@3 n_10_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_10_1 n_10_2)))
 :qid |stdinbpl.1836:29|
 :skolemid |208|
 :pattern ( (neverTriggered21 n_10_1) (neverTriggered21 n_10_2))
))) (=> (forall ((n_10_1@@0 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@0 n_10_2@@0)) (select g_1@@3 n_10_1@@0)) (select g_1@@3 n_10_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_10_1@@0 n_10_2@@0)))
 :qid |stdinbpl.1836:29|
 :skolemid |208|
 :pattern ( (neverTriggered21 n_10_1@@0) (neverTriggered21 n_10_2@@0))
)) (and (=> (= (ControlFlow 0 66) (- 0 67)) (forall ((n_10_1@@1 T@Ref) ) (!  (=> (select g_1@@3 n_10_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_10_1@@1 next) NoPerm)))
 :qid |stdinbpl.1843:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_10_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@6) n_10_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_10_1@@1 next))
))) (=> (forall ((n_10_1@@2 T@Ref) ) (!  (=> (select g_1@@3 n_10_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_10_1@@2 next) NoPerm)))
 :qid |stdinbpl.1843:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_10_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@6) n_10_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_10_1@@2 next))
)) (=> (and (forall ((n_10_1@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_10_1@@3) (< NoPerm FullPerm)) (and (qpRange21 n_10_1@@3) (= (invRecv21 n_10_1@@3) n_10_1@@3)))
 :qid |stdinbpl.1849:34|
 :skolemid |210|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@6) n_10_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_10_1@@3 next))
)) (forall ((o_4@@4 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv21 o_4@@4)) (and (< NoPerm FullPerm) (qpRange21 o_4@@4))) (= (invRecv21 o_4@@4) o_4@@4))
 :qid |stdinbpl.1853:34|
 :skolemid |211|
 :pattern ( (invRecv21 o_4@@4))
))) (and (and (=> (= (ControlFlow 0 66) 61) anon124_Else_correct) (=> (= (ControlFlow 0 66) 63) anon125_Then_correct)) (=> (= (ControlFlow 0 66) 65) anon125_Else_correct)))))))))))
(let ((anon76_correct true))
(let ((anon129_Else_correct  (=> (and (not (and (select g_1@@3 n$0_20) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_20 next) null)))) (= (ControlFlow 0 54) 51)) anon76_correct)))
(let ((anon129_Then_correct  (=> (and (select g_1@@3 n$0_20) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_20 next) null))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_20 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_20 next)) (=> (= (ControlFlow 0 52) 51) anon76_correct))))))
(let ((anon128_Else_correct true))
(let ((anon127_Then_correct  (and (=> (= (ControlFlow 0 55) (- 0 58)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 55) (- 0 57)) (forall ((n_11_1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1 n_11_2)) (select g_1@@3 n_11_1)) (select g_1@@3 n_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_1 n_11_2)))
 :qid |stdinbpl.1898:31|
 :skolemid |213|
 :pattern ( (neverTriggered22 n_11_1) (neverTriggered22 n_11_2))
))) (=> (forall ((n_11_1@@0 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@0 n_11_2@@0)) (select g_1@@3 n_11_1@@0)) (select g_1@@3 n_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_1@@0 n_11_2@@0)))
 :qid |stdinbpl.1898:31|
 :skolemid |213|
 :pattern ( (neverTriggered22 n_11_1@@0) (neverTriggered22 n_11_2@@0))
)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (forall ((n_11_1@@1 T@Ref) ) (!  (=> (select g_1@@3 n_11_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_11_1@@1 next) NoPerm)))
 :qid |stdinbpl.1905:31|
 :skolemid |214|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_11_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@7) n_11_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_11_1@@1 next))
))) (=> (forall ((n_11_1@@2 T@Ref) ) (!  (=> (select g_1@@3 n_11_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_11_1@@2 next) NoPerm)))
 :qid |stdinbpl.1905:31|
 :skolemid |214|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_11_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@7) n_11_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_11_1@@2 next))
)) (=> (and (forall ((n_11_1@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_11_1@@3) (< NoPerm FullPerm)) (and (qpRange22 n_11_1@@3) (= (invRecv22 n_11_1@@3) n_11_1@@3)))
 :qid |stdinbpl.1911:36|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@7) n_11_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_11_1@@3 next))
)) (forall ((o_4@@5 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv22 o_4@@5)) (and (< NoPerm FullPerm) (qpRange22 o_4@@5))) (= (invRecv22 o_4@@5) o_4@@5))
 :qid |stdinbpl.1915:36|
 :skolemid |216|
 :pattern ( (invRecv22 o_4@@5))
))) (and (and (=> (= (ControlFlow 0 55) 50) anon128_Else_correct) (=> (= (ControlFlow 0 55) 52) anon129_Then_correct)) (=> (= (ControlFlow 0 55) 54) anon129_Else_correct)))))))))))
(let ((anon82_correct true))
(let ((anon132_Else_correct  (=> (and (not (and (select g_1@@3 n$0_22_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_22_1 next) null)))) (= (ControlFlow 0 45) 42)) anon82_correct)))
(let ((anon132_Then_correct  (=> (and (select g_1@@3 n$0_22_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_22_1 next) null))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_22_1 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_22_1 next)) (=> (= (ControlFlow 0 43) 42) anon82_correct))))))
(let ((anon131_Else_correct true))
(let ((anon130_Then_correct  (and (=> (= (ControlFlow 0 46) (- 0 49)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 46) (- 0 48)) (forall ((n_12_1 T@Ref) (n_12_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1 n_12_2)) (select g_1@@3 n_12_1)) (select g_1@@3 n_12_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12_1 n_12_2)))
 :qid |stdinbpl.1950:31|
 :skolemid |218|
 :pattern ( (neverTriggered23 n_12_1) (neverTriggered23 n_12_2))
))) (=> (forall ((n_12_1@@0 T@Ref) (n_12_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@0 n_12_2@@0)) (select g_1@@3 n_12_1@@0)) (select g_1@@3 n_12_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12_1@@0 n_12_2@@0)))
 :qid |stdinbpl.1950:31|
 :skolemid |218|
 :pattern ( (neverTriggered23 n_12_1@@0) (neverTriggered23 n_12_2@@0))
)) (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((n_12_1@@1 T@Ref) ) (!  (=> (select g_1@@3 n_12_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_12_1@@1 next) NoPerm)))
 :qid |stdinbpl.1957:31|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_12_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@8) n_12_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_12_1@@1 next))
))) (=> (forall ((n_12_1@@2 T@Ref) ) (!  (=> (select g_1@@3 n_12_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_12_1@@2 next) NoPerm)))
 :qid |stdinbpl.1957:31|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_12_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@8) n_12_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_12_1@@2 next))
)) (=> (and (forall ((n_12_1@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_12_1@@3) (< NoPerm FullPerm)) (and (qpRange23 n_12_1@@3) (= (invRecv23 n_12_1@@3) n_12_1@@3)))
 :qid |stdinbpl.1963:36|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@8) n_12_1@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_12_1@@3 next))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv23 o_4@@6)) (and (< NoPerm FullPerm) (qpRange23 o_4@@6))) (= (invRecv23 o_4@@6) o_4@@6))
 :qid |stdinbpl.1967:36|
 :skolemid |221|
 :pattern ( (invRecv23 o_4@@6))
))) (and (and (=> (= (ControlFlow 0 46) 41) anon131_Else_correct) (=> (= (ControlFlow 0 46) 43) anon132_Then_correct)) (=> (= (ControlFlow 0 46) 45) anon132_Else_correct)))))))))))
(let ((anon130_Else_correct true))
(let ((anon133_Else_correct  (=> (forall ((x_10_1_1 T@Ref) (y_10_1 T@Ref) ) (! (= (foo (hfun ExhaleHeap@0 g_1@@3) x_10_1_1 y_10_1)  (not (foo (hfun Heap@@18 g_1@@3) x_10_1_1 y_10_1)))
 :qid |stdinbpl.1993:28|
 :skolemid |223|
 :pattern ( (foo (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| ExhaleHeap@0 g_1@@3)) g_1@@3) x_10_1_1 y_10_1))
 :pattern ( (foo (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| Heap@@18 g_1@@3)) g_1@@3) x_10_1_1 y_10_1))
)) (=> (and (state ExhaleHeap@0 QPMask@2) (= (ControlFlow 0 39) (- 0 38))) false))))
(let ((anon133_Then_correct  (=> (= (ControlFlow 0 37) (- 0 36)) (= (foo (hfun ExhaleHeap@0 g_1@@3) x_9_2 y_9_1)  (not (foo (hfun Heap@@18 g_1@@3) x_9_2 y_9_1))))))
(let ((anon123_Else_correct  (and (=> (= (ControlFlow 0 59) (- 0 60)) (not (|Set#Equal_3783| (hfun ExhaleHeap@0 g_1@@3) (hfun Heap@@18 g_1@@3)))) (=> (not (|Set#Equal_3783| (hfun ExhaleHeap@0 g_1@@3) (hfun Heap@@18 g_1@@3))) (=> (state ExhaleHeap@0 QPMask@2) (and (and (and (and (=> (= (ControlFlow 0 59) 37) anon133_Then_correct) (=> (= (ControlFlow 0 59) 39) anon133_Else_correct)) (=> (= (ControlFlow 0 59) 55) anon127_Then_correct)) (=> (= (ControlFlow 0 59) 46) anon130_Then_correct)) (=> (= (ControlFlow 0 59) 40) anon130_Else_correct)))))))
(let ((anon117_Else_correct  (and (=> (= (ControlFlow 0 79) (- 0 80)) (|Set#Equal_3783| (hfun ExhaleHeap@0 g_1@@3) (hfun Heap@@18 g_1@@3))) (=> (|Set#Equal_3783| (hfun ExhaleHeap@0 g_1@@3) (hfun Heap@@18 g_1@@3)) (=> (state ExhaleHeap@0 QPMask@2) (and (and (=> (= (ControlFlow 0 79) 75) anon120_Then_correct) (=> (= (ControlFlow 0 79) 66) anon123_Then_correct)) (=> (= (ControlFlow 0 79) 59) anon123_Else_correct)))))))
(let ((anon113_Else_correct  (=> (and (forall ((x_7_1_1 T@Ref) (y_7_1 T@Ref) ) (! (= (foo (hfun ExhaleHeap@0 g_1@@3) x_7_1_1 y_7_1) (foo (hfun Heap@@18 g_1@@3) x_7_1_1 y_7_1))
 :qid |stdinbpl.1650:28|
 :skolemid |192|
 :pattern ( (foo (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| ExhaleHeap@0 g_1@@3)) g_1@@3) x_7_1_1 y_7_1))
 :pattern ( (foo (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| Heap@@18 g_1@@3)) g_1@@3) x_7_1_1 y_7_1))
)) (state ExhaleHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 99) 95) anon114_Then_correct) (=> (= (ControlFlow 0 99) 86) anon117_Then_correct)) (=> (= (ControlFlow 0 99) 79) anon117_Else_correct)))))
(let ((anon36_correct true))
(let ((anon109_Else_correct  (=> (and (not (and (select g_1@@3 n$0_8) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_8 next) null)))) (= (ControlFlow 0 31) 28)) anon36_correct)))
(let ((anon109_Then_correct  (=> (and (select g_1@@3 n$0_8) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_8 next) null))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_8 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$0_8 next)) (=> (= (ControlFlow 0 29) 28) anon36_correct))))))
(let ((anon108_Else_correct true))
(let ((anon107_Then_correct  (and (=> (= (ControlFlow 0 32) (- 0 35)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 32) (- 0 34)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select g_1@@3 n_5)) (select g_1@@3 n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.1555:31|
 :skolemid |182|
 :pattern ( (neverTriggered16 n_5) (neverTriggered16 n_5_1))
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select g_1@@3 n_5@@0)) (select g_1@@3 n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.1555:31|
 :skolemid |182|
 :pattern ( (neverTriggered16 n_5@@0) (neverTriggered16 n_5_1@@0))
)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (forall ((n_5@@1 T@Ref) ) (!  (=> (select g_1@@3 n_5@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_5@@1 next) NoPerm)))
 :qid |stdinbpl.1562:31|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@9) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_5@@1 next))
))) (=> (forall ((n_5@@2 T@Ref) ) (!  (=> (select g_1@@3 n_5@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_5@@2 next) NoPerm)))
 :qid |stdinbpl.1562:31|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@9) n_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_5@@2 next))
)) (=> (and (forall ((n_5@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_5@@3) (< NoPerm FullPerm)) (and (qpRange16 n_5@@3) (= (invRecv16 n_5@@3) n_5@@3)))
 :qid |stdinbpl.1568:36|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@9) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n_5@@3 next))
)) (forall ((o_4@@7 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv16 o_4@@7)) (and (< NoPerm FullPerm) (qpRange16 o_4@@7))) (= (invRecv16 o_4@@7) o_4@@7))
 :qid |stdinbpl.1572:36|
 :skolemid |185|
 :pattern ( (invRecv16 o_4@@7))
))) (and (and (=> (= (ControlFlow 0 32) 27) anon108_Else_correct) (=> (= (ControlFlow 0 32) 29) anon109_Then_correct)) (=> (= (ControlFlow 0 32) 31) anon109_Else_correct)))))))))))
(let ((anon42_correct true))
(let ((anon112_Else_correct  (=> (and (not (and (select g_1@@3 n$0_10) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_10 next) null)))) (= (ControlFlow 0 22) 19)) anon42_correct)))
(let ((anon112_Then_correct  (=> (and (select g_1@@3 n$0_10) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_10 next) null))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_10 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_10 next)) (=> (= (ControlFlow 0 20) 19) anon42_correct))))))
(let ((anon111_Else_correct true))
(let ((anon110_Then_correct  (and (=> (= (ControlFlow 0 23) (- 0 26)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (forall ((n_6 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6 n_6_1)) (select g_1@@3 n_6)) (select g_1@@3 n_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6 n_6_1)))
 :qid |stdinbpl.1607:31|
 :skolemid |187|
 :pattern ( (neverTriggered17 n_6) (neverTriggered17 n_6_1))
))) (=> (forall ((n_6@@0 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@0 n_6_1@@0)) (select g_1@@3 n_6@@0)) (select g_1@@3 n_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6@@0 n_6_1@@0)))
 :qid |stdinbpl.1607:31|
 :skolemid |187|
 :pattern ( (neverTriggered17 n_6@@0) (neverTriggered17 n_6_1@@0))
)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (forall ((n_6@@1 T@Ref) ) (!  (=> (select g_1@@3 n_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_6@@1 next) NoPerm)))
 :qid |stdinbpl.1614:31|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@10) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_6@@1 next))
))) (=> (forall ((n_6@@2 T@Ref) ) (!  (=> (select g_1@@3 n_6@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_6@@2 next) NoPerm)))
 :qid |stdinbpl.1614:31|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@10) n_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_6@@2 next))
)) (=> (and (forall ((n_6@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_6@@3) (< NoPerm FullPerm)) (and (qpRange17 n_6@@3) (= (invRecv17 n_6@@3) n_6@@3)))
 :qid |stdinbpl.1620:36|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@10) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_6@@3 next))
)) (forall ((o_4@@8 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv17 o_4@@8)) (and (< NoPerm FullPerm) (qpRange17 o_4@@8))) (= (invRecv17 o_4@@8) o_4@@8))
 :qid |stdinbpl.1624:36|
 :skolemid |190|
 :pattern ( (invRecv17 o_4@@8))
))) (and (and (=> (= (ControlFlow 0 23) 18) anon111_Else_correct) (=> (= (ControlFlow 0 23) 20) anon112_Then_correct)) (=> (= (ControlFlow 0 23) 22) anon112_Else_correct)))))))))))
(let ((anon110_Else_correct true))
(let ((anon113_Then_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (= (foo (hfun ExhaleHeap@0 g_1@@3) x_6 y_6_2) (foo (hfun Heap@@18 g_1@@3) x_6 y_6_2)))))
(let ((anon105_Then_correct  (=> b2 (and (and (and (and (=> (= (ControlFlow 0 100) 16) anon113_Then_correct) (=> (= (ControlFlow 0 100) 99) anon113_Else_correct)) (=> (= (ControlFlow 0 100) 32) anon107_Then_correct)) (=> (= (ControlFlow 0 100) 23) anon110_Then_correct)) (=> (= (ControlFlow 0 100) 17) anon110_Else_correct)))))
(let ((anon105_Else_correct  (=> (and (and (not b2) (state ExhaleHeap@0 QPMask@2)) (and (state ExhaleHeap@0 QPMask@2) (= (ControlFlow 0 14) (- 0 13)))) false)))
(let ((anon96_Else_correct  (=> (not b1) (and (=> (= (ControlFlow 0 101) 100) anon105_Then_correct) (=> (= (ControlFlow 0 101) 14) anon105_Else_correct)))))
(let ((anon94_Else_correct  (=> (forall ((n$0_3_1 T@Ref) ) (!  (=> (and (select g_1@@3 n$0_3_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_3_1 next) null))) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_3_1 next)))
 :qid |stdinbpl.1334:22|
 :skolemid |161|
 :pattern ( (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_3_1 next)))
 :pattern ( (select g_1@@3 n$0_3_1) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_3_1 next))
)) (=> (and (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@0 QPMask@1) (not (select g_1@@3 null))) (and (=> (= (ControlFlow 0 125) (- 0 126)) (forall ((n$1_12 T@Ref) (n$1_24 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_12 n$1_24)) (select g_1@@3 n$1_12)) (select g_1@@3 n$1_24)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_12 n$1_24)))
 :qid |stdinbpl.1347:17|
 :skolemid |162|
))) (=> (forall ((n$1_12@@0 T@Ref) (n$1_24@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_12@@0 n$1_24@@0)) (select g_1@@3 n$1_12@@0)) (select g_1@@3 n$1_24@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_12@@0 n$1_24@@0)))
 :qid |stdinbpl.1347:17|
 :skolemid |162|
)) (=> (and (and (forall ((n$1_12@@1 T@Ref) ) (!  (=> (and (select g_1@@3 n$1_12@@1) (< NoPerm FullPerm)) (and (qpRange13 n$1_12@@1) (= (invRecv13 n$1_12@@1) n$1_12@@1)))
 :qid |stdinbpl.1353:24|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$1_12@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n$1_12@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$1_12@@1 next))
)) (forall ((o_4@@9 T@Ref) ) (!  (=> (and (and (select g_1@@3 (invRecv13 o_4@@9)) (< NoPerm FullPerm)) (qpRange13 o_4@@9)) (= (invRecv13 o_4@@9) o_4@@9))
 :qid |stdinbpl.1357:24|
 :skolemid |164|
 :pattern ( (invRecv13 o_4@@9))
))) (and (forall ((n$1_12@@2 T@Ref) ) (!  (=> (select g_1@@3 n$1_12@@2) (not (= n$1_12@@2 null)))
 :qid |stdinbpl.1363:24|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$1_12@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n$1_12@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$1_12@@2 next))
)) (forall ((o_4@@10 T@Ref) ) (!  (and (=> (and (and (select g_1@@3 (invRecv13 o_4@@10)) (< NoPerm FullPerm)) (qpRange13 o_4@@10)) (and (=> (< NoPerm FullPerm) (= (invRecv13 o_4@@10) o_4@@10)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_4@@10 next) (+ (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@10 next) FullPerm)))) (=> (not (and (and (select g_1@@3 (invRecv13 o_4@@10)) (< NoPerm FullPerm)) (qpRange13 o_4@@10))) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_4@@10 next) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@10 next))))
 :qid |stdinbpl.1369:24|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_4@@10 next))
)))) (=> (and (and (and (and (and (forall ((o_4@@11 T@Ref) (f_5 T@Field_18569_53) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@1) o_4@@11 f_5) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@2) o_4@@11 f_5)))
 :qid |stdinbpl.1373:31|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@1) o_4@@11 f_5))
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@2) o_4@@11 f_5))
)) (forall ((o_4@@12 T@Ref) (f_5@@0 T@Field_18582_18583) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@12 f_5@@0) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_4@@12 f_5@@0)))
 :qid |stdinbpl.1373:31|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@12 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_4@@12 f_5@@0))
))) (forall ((o_4@@13 T@Ref) (f_5@@1 T@Field_12047_57322) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@1) o_4@@13 f_5@@1) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@2) o_4@@13 f_5@@1)))
 :qid |stdinbpl.1373:31|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@1) o_4@@13 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@2) o_4@@13 f_5@@1))
))) (forall ((o_4@@14 T@Ref) (f_5@@2 T@Field_12047_57455) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@1) o_4@@14 f_5@@2) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@2) o_4@@14 f_5@@2)))
 :qid |stdinbpl.1373:31|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@1) o_4@@14 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@2) o_4@@14 f_5@@2))
))) (and (state ExhaleHeap@0 QPMask@2) (forall ((n$2 T@Ref) ) (!  (=> (and (select g_1@@3 n$2) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$2 next) null))) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$2 next)))
 :qid |stdinbpl.1379:22|
 :skolemid |168|
 :pattern ( (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$2 next)))
 :pattern ( (select g_1@@3 n$2) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@0) n$2 next))
)))) (and (and (and (state ExhaleHeap@0 QPMask@2) (forall ((x T@Ref) (y T@Ref) ) (! (= (foo (hfun ExhaleHeap@0 g_1@@3) x y) (foo (hfun Heap@@18 g_1@@3) y x))
 :qid |stdinbpl.1384:22|
 :skolemid |169|
 :pattern ( (foo (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| ExhaleHeap@0 g_1@@3)) g_1@@3) x y))
 :pattern ( (foo (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| Heap@@18 g_1@@3)) g_1@@3) y x))
))) (and (state ExhaleHeap@0 QPMask@2) (forall ((x_1 T@Ref) (y_1 T@Ref) ) (! (= (foo (hfun ExhaleHeap@0 g_1@@3) x_1 y_1)  (not (foo (hfun Heap@@18 g_1@@3) x_1 y_1)))
 :qid |stdinbpl.1389:22|
 :skolemid |170|
 :pattern ( (foo (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| ExhaleHeap@0 g_1@@3)) g_1@@3) x_1 y_1))
 :pattern ( (foo (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| Heap@@18 g_1@@3)) g_1@@3) x_1 y_1))
)))) (and (and (state ExhaleHeap@0 QPMask@2) (not (|Set#Equal_3783| (hfun ExhaleHeap@0 g_1@@3) (hfun Heap@@18 g_1@@3)))) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))))) (and (=> (= (ControlFlow 0 125) 124) anon96_Then_correct) (=> (= (ControlFlow 0 125) 101) anon96_Else_correct))))))))))
(let ((anon11_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (select g_1@@3 n$0_2_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_2_1 next) null)))) (= (ControlFlow 0 12) 9)) anon11_correct)))
(let ((anon95_Then_correct  (=> (and (select g_1@@3 n$0_2_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_2_1 next) null))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_2_1 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_2_1 next)) (=> (= (ControlFlow 0 10) 9) anon11_correct))))))
(let ((anon91_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g_1@@3 n$0_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_1 next) null))) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_1 next)))
 :qid |stdinbpl.1265:20|
 :skolemid |154|
 :pattern ( (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_1 next)))
 :pattern ( (select g_1@@3 n$0_1) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_1 next))
)) (state Heap@@18 QPMask@0)) (and (=> (= (ControlFlow 0 127) (- 0 130)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 127) (- 0 129)) (forall ((n_2 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2 n_2_1)) (select g_1@@3 n_2)) (select g_1@@3 n_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2 n_2_1)))
 :qid |stdinbpl.1293:19|
 :skolemid |155|
 :pattern ( (neverTriggered12 n_2) (neverTriggered12 n_2_1))
))) (=> (forall ((n_2@@0 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@0 n_2_1@@0)) (select g_1@@3 n_2@@0)) (select g_1@@3 n_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2@@0 n_2_1@@0)))
 :qid |stdinbpl.1293:19|
 :skolemid |155|
 :pattern ( (neverTriggered12 n_2@@0) (neverTriggered12 n_2_1@@0))
)) (and (=> (= (ControlFlow 0 127) (- 0 128)) (forall ((n_2@@1 T@Ref) ) (!  (=> (select g_1@@3 n_2@@1) (>= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_2@@1 next) FullPerm))
 :qid |stdinbpl.1300:19|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) n_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_2@@1 next))
))) (=> (forall ((n_2@@2 T@Ref) ) (!  (=> (select g_1@@3 n_2@@2) (>= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_2@@2 next) FullPerm))
 :qid |stdinbpl.1300:19|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) n_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_2@@2 next))
)) (=> (forall ((n_2@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_2@@3) (< NoPerm FullPerm)) (and (qpRange12 n_2@@3) (= (invRecv12 n_2@@3) n_2@@3)))
 :qid |stdinbpl.1306:24|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_2@@3 next))
)) (=> (and (forall ((o_4@@15 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv12 o_4@@15)) (and (< NoPerm FullPerm) (qpRange12 o_4@@15))) (= (invRecv12 o_4@@15) o_4@@15))
 :qid |stdinbpl.1310:24|
 :skolemid |158|
 :pattern ( (invRecv12 o_4@@15))
)) (forall ((o_4@@16 T@Ref) ) (!  (and (=> (and (select g_1@@3 (invRecv12 o_4@@16)) (and (< NoPerm FullPerm) (qpRange12 o_4@@16))) (and (= (invRecv12 o_4@@16) o_4@@16) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@16 next) (- (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@16 next) FullPerm)))) (=> (not (and (select g_1@@3 (invRecv12 o_4@@16)) (and (< NoPerm FullPerm) (qpRange12 o_4@@16)))) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@16 next) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@16 next))))
 :qid |stdinbpl.1316:24|
 :skolemid |159|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@16 next))
))) (=> (and (and (and (forall ((o_4@@17 T@Ref) (f_5@@3 T@Field_18569_53) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@0) o_4@@17 f_5@@3) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@1) o_4@@17 f_5@@3)))
 :qid |stdinbpl.1322:31|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@1) o_4@@17 f_5@@3))
)) (forall ((o_4@@18 T@Ref) (f_5@@4 T@Field_18582_18583) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@18 f_5@@4) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@18 f_5@@4)))
 :qid |stdinbpl.1322:31|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@1) o_4@@18 f_5@@4))
))) (forall ((o_4@@19 T@Ref) (f_5@@5 T@Field_12047_57322) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@0) o_4@@19 f_5@@5) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@1) o_4@@19 f_5@@5)))
 :qid |stdinbpl.1322:31|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@1) o_4@@19 f_5@@5))
))) (forall ((o_4@@20 T@Ref) (f_5@@6 T@Field_12047_57455) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@0) o_4@@20 f_5@@6) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@1) o_4@@20 f_5@@6)))
 :qid |stdinbpl.1322:31|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@1) o_4@@20 f_5@@6))
))) (and (and (=> (= (ControlFlow 0 127) 125) anon94_Else_correct) (=> (= (ControlFlow 0 127) 10) anon95_Then_correct)) (=> (= (ControlFlow 0 127) 12) anon95_Else_correct))))))))))))))
(let ((anon7_correct true))
(let ((anon93_Else_correct  (=> (and (not (and (select g_1@@3 n$0_34) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_34 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon93_Then_correct  (=> (and (select g_1@@3 n$0_34) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_34 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_12047_12048 QPMask@0 n$0_34 next)) (=> (HasDirectPerm_12047_12048 QPMask@0 n$0_34 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon92_Else_correct  (=> (not (select g_1@@3 n$0_34)) (and (=> (= (ControlFlow 0 8) 3) anon93_Then_correct) (=> (= (ControlFlow 0 8) 5) anon93_Else_correct)))))
(let ((anon92_Then_correct  (=> (select g_1@@3 n$0_34) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_12047_12048 QPMask@0 n$0_34 next)) (=> (HasDirectPerm_12047_12048 QPMask@0 n$0_34 next) (and (=> (= (ControlFlow 0 6) 3) anon93_Then_correct) (=> (= (ControlFlow 0 6) 5) anon93_Else_correct)))))))
(let ((anon90_Else_correct  (and (=> (= (ControlFlow 0 131) (- 0 132)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1@@3 n_1)) (select g_1@@3 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.1220:15|
 :skolemid |148|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1@@3 n_1@@0)) (select g_1@@3 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.1220:15|
 :skolemid |148|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1@@3 n_1@@1) (< NoPerm FullPerm)) (and (qpRange11 n_1@@1) (= (invRecv11 n_1@@1) n_1@@1)))
 :qid |stdinbpl.1226:22|
 :skolemid |149|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_1@@1 next))
)) (forall ((o_4@@21 T@Ref) ) (!  (=> (and (and (select g_1@@3 (invRecv11 o_4@@21)) (< NoPerm FullPerm)) (qpRange11 o_4@@21)) (= (invRecv11 o_4@@21) o_4@@21))
 :qid |stdinbpl.1230:22|
 :skolemid |150|
 :pattern ( (invRecv11 o_4@@21))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1@@3 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.1236:22|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_1@@2 next))
)) (forall ((o_4@@22 T@Ref) ) (!  (and (=> (and (and (select g_1@@3 (invRecv11 o_4@@22)) (< NoPerm FullPerm)) (qpRange11 o_4@@22)) (and (=> (< NoPerm FullPerm) (= (invRecv11 o_4@@22) o_4@@22)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@22 next) (+ (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_4@@22 next) FullPerm)))) (=> (not (and (and (select g_1@@3 (invRecv11 o_4@@22)) (< NoPerm FullPerm)) (qpRange11 o_4@@22))) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@22 next) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_4@@22 next))))
 :qid |stdinbpl.1242:22|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@22 next))
)))) (=> (and (and (and (and (forall ((o_4@@23 T@Ref) (f_5@@7 T@Field_18569_53) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_4@@23 f_5@@7) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@0) o_4@@23 f_5@@7)))
 :qid |stdinbpl.1246:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_4@@23 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@0) o_4@@23 f_5@@7))
)) (forall ((o_4@@24 T@Ref) (f_5@@8 T@Field_18582_18583) ) (!  (=> (not (= f_5@@8 next)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_4@@24 f_5@@8) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@24 f_5@@8)))
 :qid |stdinbpl.1246:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_4@@24 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_4@@24 f_5@@8))
))) (forall ((o_4@@25 T@Ref) (f_5@@9 T@Field_12047_57322) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_4@@25 f_5@@9) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@0) o_4@@25 f_5@@9)))
 :qid |stdinbpl.1246:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_4@@25 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@0) o_4@@25 f_5@@9))
))) (forall ((o_4@@26 T@Ref) (f_5@@10 T@Field_12047_57455) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_4@@26 f_5@@10) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@0) o_4@@26 f_5@@10)))
 :qid |stdinbpl.1246:29|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_4@@26 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@0) o_4@@26 f_5@@10))
))) (state Heap@@18 QPMask@0)) (and (and (=> (= (ControlFlow 0 131) 127) anon91_Else_correct) (=> (= (ControlFlow 0 131) 6) anon92_Then_correct)) (=> (= (ControlFlow 0 131) 8) anon92_Else_correct))))))))
(let ((anon90_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@18 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (not (select g_1@@3 null)))) (and (=> (= (ControlFlow 0 133) 1) anon90_Then_correct) (=> (= (ControlFlow 0 133) 131) anon90_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 134) 133) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 16) (- 15))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 79) (- 80))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
