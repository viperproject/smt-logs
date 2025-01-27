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
(assert (forall ((Heap@@2 T@PolymorphicMapType_18509) (ExhaleHeap T@PolymorphicMapType_18509) (Mask@@0 T@PolymorphicMapType_18530) (pm_f_45 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12047_57386 Mask@@0 null pm_f_45) (IsPredicateField_12047_57413 pm_f_45)) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@2) null (PredicateMaskField_12047 pm_f_45)) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap) null (PredicateMaskField_12047 pm_f_45)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_12047_57413 pm_f_45) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap) null (PredicateMaskField_12047 pm_f_45)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18509) (ExhaleHeap@@0 T@PolymorphicMapType_18509) (Mask@@1 T@PolymorphicMapType_18530) (pm_f_45@@0 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12047_57386 Mask@@1 null pm_f_45@@0) (IsWandField_12047_58962 pm_f_45@@0)) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@3) null (WandMaskField_12047 pm_f_45@@0)) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@0) null (WandMaskField_12047 pm_f_45@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_12047_58962 pm_f_45@@0) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@0) null (WandMaskField_12047 pm_f_45@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18509) (ExhaleHeap@@1 T@PolymorphicMapType_18509) (Mask@@2 T@PolymorphicMapType_18530) (pm_f_45@@1 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12047_57386 Mask@@2 null pm_f_45@@1) (IsPredicateField_12047_57413 pm_f_45@@1)) (and (and (and (forall ((o2_45 T@Ref) (f_66 T@Field_18569_53) ) (!  (=> (select (|PolymorphicMapType_19058_18569_53#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) null (PredicateMaskField_12047 pm_f_45@@1))) o2_45 f_66) (= (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@4) o2_45 f_66) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@1) o2_45 f_66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@1) o2_45 f_66))
)) (forall ((o2_45@@0 T@Ref) (f_66@@0 T@Field_18582_18583) ) (!  (=> (select (|PolymorphicMapType_19058_18569_18583#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) null (PredicateMaskField_12047 pm_f_45@@1))) o2_45@@0 f_66@@0) (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@4) o2_45@@0 f_66@@0) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@1) o2_45@@0 f_66@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@1) o2_45@@0 f_66@@0))
))) (forall ((o2_45@@1 T@Ref) (f_66@@1 T@Field_12047_57322) ) (!  (=> (select (|PolymorphicMapType_19058_18569_57322#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) null (PredicateMaskField_12047 pm_f_45@@1))) o2_45@@1 f_66@@1) (= (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@4) o2_45@@1 f_66@@1) (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@1) o2_45@@1 f_66@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@1) o2_45@@1 f_66@@1))
))) (forall ((o2_45@@2 T@Ref) (f_66@@2 T@Field_12047_57455) ) (!  (=> (select (|PolymorphicMapType_19058_18569_58435#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) null (PredicateMaskField_12047 pm_f_45@@1))) o2_45@@2 f_66@@2) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@4) o2_45@@2 f_66@@2) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@1) o2_45@@2 f_66@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@1) o2_45@@2 f_66@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_12047_57413 pm_f_45@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18509) (ExhaleHeap@@2 T@PolymorphicMapType_18509) (Mask@@3 T@PolymorphicMapType_18530) (pm_f_45@@2 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12047_57386 Mask@@3 null pm_f_45@@2) (IsWandField_12047_58962 pm_f_45@@2)) (and (and (and (forall ((o2_45@@3 T@Ref) (f_66@@3 T@Field_18569_53) ) (!  (=> (select (|PolymorphicMapType_19058_18569_53#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) null (WandMaskField_12047 pm_f_45@@2))) o2_45@@3 f_66@@3) (= (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@5) o2_45@@3 f_66@@3) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@2) o2_45@@3 f_66@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@2) o2_45@@3 f_66@@3))
)) (forall ((o2_45@@4 T@Ref) (f_66@@4 T@Field_18582_18583) ) (!  (=> (select (|PolymorphicMapType_19058_18569_18583#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) null (WandMaskField_12047 pm_f_45@@2))) o2_45@@4 f_66@@4) (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@5) o2_45@@4 f_66@@4) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@2) o2_45@@4 f_66@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@2) o2_45@@4 f_66@@4))
))) (forall ((o2_45@@5 T@Ref) (f_66@@5 T@Field_12047_57322) ) (!  (=> (select (|PolymorphicMapType_19058_18569_57322#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) null (WandMaskField_12047 pm_f_45@@2))) o2_45@@5 f_66@@5) (= (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@5) o2_45@@5 f_66@@5) (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@2) o2_45@@5 f_66@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@2) o2_45@@5 f_66@@5))
))) (forall ((o2_45@@6 T@Ref) (f_66@@6 T@Field_12047_57455) ) (!  (=> (select (|PolymorphicMapType_19058_18569_58435#PolymorphicMapType_19058| (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) null (WandMaskField_12047 pm_f_45@@2))) o2_45@@6 f_66@@6) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@5) o2_45@@6 f_66@@6) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@2) o2_45@@6 f_66@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@2) o2_45@@6 f_66@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_12047_58962 pm_f_45@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18509) (ExhaleHeap@@3 T@PolymorphicMapType_18509) (Mask@@4 T@PolymorphicMapType_18530) (o_48 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@6) o_48 $allocated) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@3) o_48 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@3) o_48 $allocated))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_18509) (ExhaleHeap@@5 T@PolymorphicMapType_18509) (Mask@@14 T@PolymorphicMapType_18530) (o_48@@0 T@Ref) (f_66@@7 T@Field_12047_57455) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_12047_62267 Mask@@14 o_48@@0 f_66@@7) (= (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@8) o_48@@0 f_66@@7) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@5) o_48@@0 f_66@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| ExhaleHeap@@5) o_48@@0 f_66@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18509) (ExhaleHeap@@6 T@PolymorphicMapType_18509) (Mask@@15 T@PolymorphicMapType_18530) (o_48@@1 T@Ref) (f_66@@8 T@Field_12047_57322) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_12047_57386 Mask@@15 o_48@@1 f_66@@8) (= (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@9) o_48@@1 f_66@@8) (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@6) o_48@@1 f_66@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| ExhaleHeap@@6) o_48@@1 f_66@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18509) (ExhaleHeap@@7 T@PolymorphicMapType_18509) (Mask@@16 T@PolymorphicMapType_18530) (o_48@@2 T@Ref) (f_66@@9 T@Field_18569_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_12047_53 Mask@@16 o_48@@2 f_66@@9) (= (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@10) o_48@@2 f_66@@9) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@7) o_48@@2 f_66@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| ExhaleHeap@@7) o_48@@2 f_66@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18509) (ExhaleHeap@@8 T@PolymorphicMapType_18509) (Mask@@17 T@PolymorphicMapType_18530) (o_48@@3 T@Ref) (f_66@@10 T@Field_18582_18583) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_12047_12048 Mask@@17 o_48@@3 f_66@@10) (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@11) o_48@@3 f_66@@10) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@8) o_48@@3 f_66@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| ExhaleHeap@@8) o_48@@3 f_66@@10))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_18509) (o_39 T@Ref) (f_53 T@Field_12047_57322) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@12) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@12) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@12) (store (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@12) o_39 f_53 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@12) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@12) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@12) (store (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@12) o_39 f_53 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18509) (o_39@@0 T@Ref) (f_53@@0 T@Field_12047_57455) (v@@0 T@PolymorphicMapType_19058) ) (! (succHeap Heap@@13 (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@13) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@13) (store (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@13) o_39@@0 f_53@@0 v@@0) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@13) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@13) (store (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@13) o_39@@0 f_53@@0 v@@0) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18509) (o_39@@1 T@Ref) (f_53@@1 T@Field_18582_18583) (v@@1 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@14) (store (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@14) o_39@@1 f_53@@1 v@@1) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@14) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18509 (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@14) (store (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@14) o_39@@1 f_53@@1 v@@1) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@14) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18509) (o_39@@2 T@Ref) (f_53@@2 T@Field_18569_53) (v@@2 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_18509 (store (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@15) o_39@@2 f_53@@2 v@@2) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@15) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@15) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18509 (store (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@15) o_39@@2 f_53@@2 v@@2) (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@15) (|PolymorphicMapType_18509_12047_57499#PolymorphicMapType_18509| Heap@@15) (|PolymorphicMapType_18509_18569_57322#PolymorphicMapType_18509| Heap@@15)))
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
(assert (forall ((o_39@@3 T@Ref) (f_21 T@Field_18582_18583) (Heap@@17 T@PolymorphicMapType_18509) ) (!  (=> (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@17) o_39@@3 $allocated) (select (|PolymorphicMapType_18509_11662_53#PolymorphicMapType_18509| Heap@@17) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@17) o_39@@3 f_21) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@17) o_39@@3 f_21))
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
(declare-fun n$0_10_1 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_18509)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_18530)
(declare-fun QPMask@2 () T@PolymorphicMapType_18530)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) T@Ref)
(declare-fun n$0_12_1 () T@Ref)
(declare-fun Heap@@18 () T@PolymorphicMapType_18509)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_18530)
(declare-fun QPMask@0 () T@PolymorphicMapType_18530)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun foo_2 ((Array Int Bool) T@Ref T@Ref) Bool)
(declare-fun n$0_6 () T@Ref)
(declare-fun neverTriggered6 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_18530)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun n$0_8 () T@Ref)
(declare-fun neverTriggered7 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_18530)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun n$0_2 () T@Ref)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_18530)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun n$0_4 () T@Ref)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_18530)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun n$2 () T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun n$0 () T@Ref)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id reverse_impl)
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
 (=> (= (ControlFlow 0 0) 88) (let ((anon49_correct true))
(let ((anon92_Else_correct  (=> (and (not (and (select g_1@@3 n$0_10_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_10_1 next) null)))) (= (ControlFlow 0 73) 70)) anon49_correct)))
(let ((anon92_Then_correct  (=> (and (select g_1@@3 n$0_10_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_10_1 next) null))) (and (=> (= (ControlFlow 0 71) (- 0 72)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_10_1 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_10_1 next)) (=> (= (ControlFlow 0 71) 70) anon49_correct))))))
(let ((anon91_Else_correct true))
(let ((anon90_Then_correct  (and (=> (= (ControlFlow 0 74) (- 0 77)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 74) (- 0 76)) (forall ((n_6 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6 n_6_1)) (select g_1@@3 n_6)) (select g_1@@3 n_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6 n_6_1)))
 :qid |stdinbpl.985:21|
 :skolemid |129|
 :pattern ( (neverTriggered8 n_6) (neverTriggered8 n_6_1))
))) (=> (forall ((n_6@@0 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@0 n_6_1@@0)) (select g_1@@3 n_6@@0)) (select g_1@@3 n_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6@@0 n_6_1@@0)))
 :qid |stdinbpl.985:21|
 :skolemid |129|
 :pattern ( (neverTriggered8 n_6@@0) (neverTriggered8 n_6_1@@0))
)) (and (=> (= (ControlFlow 0 74) (- 0 75)) (forall ((n_6@@1 T@Ref) ) (!  (=> (select g_1@@3 n_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_6@@1 next) NoPerm)))
 :qid |stdinbpl.992:21|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@3) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_6@@1 next))
))) (=> (forall ((n_6@@2 T@Ref) ) (!  (=> (select g_1@@3 n_6@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_6@@2 next) NoPerm)))
 :qid |stdinbpl.992:21|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@3) n_6@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_6@@2 next))
)) (=> (and (forall ((n_6@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_6@@3) (< NoPerm FullPerm)) (and (qpRange8 n_6@@3) (= (invRecv8 n_6@@3) n_6@@3)))
 :qid |stdinbpl.998:26|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@3) n_6@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_6@@3 next))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv8 o_9)) (and (< NoPerm FullPerm) (qpRange8 o_9))) (= (invRecv8 o_9) o_9))
 :qid |stdinbpl.1002:26|
 :skolemid |132|
 :pattern ( (invRecv8 o_9))
))) (and (and (=> (= (ControlFlow 0 74) 69) anon91_Else_correct) (=> (= (ControlFlow 0 74) 71) anon92_Then_correct)) (=> (= (ControlFlow 0 74) 73) anon92_Else_correct)))))))))))
(let ((anon55_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (select g_1@@3 n$0_12_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_12_1 next) null)))) (= (ControlFlow 0 64) 61)) anon55_correct)))
(let ((anon95_Then_correct  (=> (and (select g_1@@3 n$0_12_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_12_1 next) null))) (and (=> (= (ControlFlow 0 62) (- 0 63)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_12_1 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_12_1 next)) (=> (= (ControlFlow 0 62) 61) anon55_correct))))))
(let ((anon94_Else_correct true))
(let ((anon93_Then_correct  (and (=> (= (ControlFlow 0 65) (- 0 68)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 65) (- 0 67)) (forall ((n_7 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7 n_7_1)) (select g_1@@3 n_7)) (select g_1@@3 n_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7 n_7_1)))
 :qid |stdinbpl.1037:21|
 :skolemid |134|
 :pattern ( (neverTriggered9 n_7) (neverTriggered9 n_7_1))
))) (=> (forall ((n_7@@0 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@0 n_7_1@@0)) (select g_1@@3 n_7@@0)) (select g_1@@3 n_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7@@0 n_7_1@@0)))
 :qid |stdinbpl.1037:21|
 :skolemid |134|
 :pattern ( (neverTriggered9 n_7@@0) (neverTriggered9 n_7_1@@0))
)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (forall ((n_7@@1 T@Ref) ) (!  (=> (select g_1@@3 n_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_7@@1 next) NoPerm)))
 :qid |stdinbpl.1044:21|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@4) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_7@@1 next))
))) (=> (forall ((n_7@@2 T@Ref) ) (!  (=> (select g_1@@3 n_7@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_7@@2 next) NoPerm)))
 :qid |stdinbpl.1044:21|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@4) n_7@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_7@@2 next))
)) (=> (and (forall ((n_7@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_7@@3) (< NoPerm FullPerm)) (and (qpRange9 n_7@@3) (= (invRecv9 n_7@@3) n_7@@3)))
 :qid |stdinbpl.1050:26|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@4) n_7@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_7@@3 next))
)) (forall ((o_9@@0 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv9 o_9@@0)) (and (< NoPerm FullPerm) (qpRange9 o_9@@0))) (= (invRecv9 o_9@@0) o_9@@0))
 :qid |stdinbpl.1054:26|
 :skolemid |137|
 :pattern ( (invRecv9 o_9@@0))
))) (and (and (=> (= (ControlFlow 0 65) 60) anon94_Else_correct) (=> (= (ControlFlow 0 65) 62) anon95_Then_correct)) (=> (= (ControlFlow 0 65) 64) anon95_Else_correct)))))))))))
(let ((anon93_Else_correct true))
(let ((anon83_Else_correct  (=> (forall ((x_3 T@Ref) (y_3_2 T@Ref) ) (! (= (foo_2 (hfun PostHeap@0 g_1@@3) x_3 y_3_2)  (not (foo_2 (hfun Heap@@18 g_1@@3) x_3 y_3_2)))
 :qid |stdinbpl.964:20|
 :skolemid |128|
 :pattern ( (foo_2 (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| PostHeap@0 g_1@@3)) g_1@@3) x_3 y_3_2))
 :pattern ( (foo_2 (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| Heap@@18 g_1@@3)) g_1@@3) x_3 y_3_2))
)) (=> (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 78) 74) anon90_Then_correct) (=> (= (ControlFlow 0 78) 65) anon93_Then_correct)) (=> (= (ControlFlow 0 78) 59) anon93_Else_correct))))))
(let ((anon36_correct true))
(let ((anon86_Else_correct  (=> (and (not (and (select g_1@@3 n$0_6) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_6 next) null)))) (= (ControlFlow 0 54) 51)) anon36_correct)))
(let ((anon86_Then_correct  (=> (and (select g_1@@3 n$0_6) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_6 next) null))) (and (=> (= (ControlFlow 0 52) (- 0 53)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_6 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_6 next)) (=> (= (ControlFlow 0 52) 51) anon36_correct))))))
(let ((anon85_Else_correct true))
(let ((anon84_Then_correct  (and (=> (= (ControlFlow 0 55) (- 0 58)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 55) (- 0 57)) (forall ((n_4 T@Ref) (n_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4 n_4_1)) (select g_1@@3 n_4)) (select g_1@@3 n_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4 n_4_1)))
 :qid |stdinbpl.874:23|
 :skolemid |118|
 :pattern ( (neverTriggered6 n_4) (neverTriggered6 n_4_1))
))) (=> (forall ((n_4@@0 T@Ref) (n_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4@@0 n_4_1@@0)) (select g_1@@3 n_4@@0)) (select g_1@@3 n_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4@@0 n_4_1@@0)))
 :qid |stdinbpl.874:23|
 :skolemid |118|
 :pattern ( (neverTriggered6 n_4@@0) (neverTriggered6 n_4_1@@0))
)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (forall ((n_4@@1 T@Ref) ) (!  (=> (select g_1@@3 n_4@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_4@@1 next) NoPerm)))
 :qid |stdinbpl.881:23|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@5) n_4@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_4@@1 next))
))) (=> (forall ((n_4@@2 T@Ref) ) (!  (=> (select g_1@@3 n_4@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_4@@2 next) NoPerm)))
 :qid |stdinbpl.881:23|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@5) n_4@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_4@@2 next))
)) (=> (and (forall ((n_4@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_4@@3) (< NoPerm FullPerm)) (and (qpRange6 n_4@@3) (= (invRecv6 n_4@@3) n_4@@3)))
 :qid |stdinbpl.887:28|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@5) n_4@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_4@@3 next))
)) (forall ((o_9@@1 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv6 o_9@@1)) (and (< NoPerm FullPerm) (qpRange6 o_9@@1))) (= (invRecv6 o_9@@1) o_9@@1))
 :qid |stdinbpl.891:28|
 :skolemid |121|
 :pattern ( (invRecv6 o_9@@1))
))) (and (and (=> (= (ControlFlow 0 55) 50) anon85_Else_correct) (=> (= (ControlFlow 0 55) 52) anon86_Then_correct)) (=> (= (ControlFlow 0 55) 54) anon86_Else_correct)))))))))))
(let ((anon42_correct true))
(let ((anon89_Else_correct  (=> (and (not (and (select g_1@@3 n$0_8) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_8 next) null)))) (= (ControlFlow 0 45) 42)) anon42_correct)))
(let ((anon89_Then_correct  (=> (and (select g_1@@3 n$0_8) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_8 next) null))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_8 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_8 next)) (=> (= (ControlFlow 0 43) 42) anon42_correct))))))
(let ((anon88_Else_correct true))
(let ((anon87_Then_correct  (and (=> (= (ControlFlow 0 46) (- 0 49)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 46) (- 0 48)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select g_1@@3 n_5)) (select g_1@@3 n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.926:23|
 :skolemid |123|
 :pattern ( (neverTriggered7 n_5) (neverTriggered7 n_5_1))
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select g_1@@3 n_5@@0)) (select g_1@@3 n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.926:23|
 :skolemid |123|
 :pattern ( (neverTriggered7 n_5@@0) (neverTriggered7 n_5_1@@0))
)) (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((n_5@@1 T@Ref) ) (!  (=> (select g_1@@3 n_5@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_5@@1 next) NoPerm)))
 :qid |stdinbpl.933:23|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@6) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_5@@1 next))
))) (=> (forall ((n_5@@2 T@Ref) ) (!  (=> (select g_1@@3 n_5@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_5@@2 next) NoPerm)))
 :qid |stdinbpl.933:23|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@6) n_5@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_5@@2 next))
)) (=> (and (forall ((n_5@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_5@@3) (< NoPerm FullPerm)) (and (qpRange7 n_5@@3) (= (invRecv7 n_5@@3) n_5@@3)))
 :qid |stdinbpl.939:28|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@6) n_5@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_5@@3 next))
)) (forall ((o_9@@2 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv7 o_9@@2)) (and (< NoPerm FullPerm) (qpRange7 o_9@@2))) (= (invRecv7 o_9@@2) o_9@@2))
 :qid |stdinbpl.943:28|
 :skolemid |126|
 :pattern ( (invRecv7 o_9@@2))
))) (and (and (=> (= (ControlFlow 0 46) 41) anon88_Else_correct) (=> (= (ControlFlow 0 46) 43) anon89_Then_correct)) (=> (= (ControlFlow 0 46) 45) anon89_Else_correct)))))))))))
(let ((anon87_Else_correct true))
(let ((anon76_Else_correct  (=> (forall ((x_1 T@Ref) (y_1 T@Ref) ) (! (= (foo_2 (hfun PostHeap@0 g_1@@3) x_1 y_1) (foo_2 (hfun Heap@@18 g_1@@3) y_1 x_1))
 :qid |stdinbpl.852:20|
 :skolemid |117|
 :pattern ( (foo_2 (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| PostHeap@0 g_1@@3)) g_1@@3) x_1 y_1))
 :pattern ( (foo_2 (|hfun#frame| (FrameFragment_3913 (|hfun#condqp1| Heap@@18 g_1@@3)) g_1@@3) y_1 x_1))
)) (=> (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2)) (and (and (and (=> (= (ControlFlow 0 79) 78) anon83_Else_correct) (=> (= (ControlFlow 0 79) 55) anon84_Then_correct)) (=> (= (ControlFlow 0 79) 46) anon87_Then_correct)) (=> (= (ControlFlow 0 79) 40) anon87_Else_correct))))))
(let ((anon22_correct true))
(let ((anon79_Else_correct  (=> (and (not (and (select g_1@@3 n$0_2) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_2 next) null)))) (= (ControlFlow 0 35) 32)) anon22_correct)))
(let ((anon79_Then_correct  (=> (and (select g_1@@3 n$0_2) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_2 next) null))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_2 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$0_2 next)) (=> (= (ControlFlow 0 33) 32) anon22_correct))))))
(let ((anon78_Else_correct true))
(let ((anon77_Then_correct  (and (=> (= (ControlFlow 0 36) (- 0 39)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (forall ((n_2 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2 n_2_1)) (select g_1@@3 n_2)) (select g_1@@3 n_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2 n_2_1)))
 :qid |stdinbpl.762:23|
 :skolemid |107|
 :pattern ( (neverTriggered4 n_2) (neverTriggered4 n_2_1))
))) (=> (forall ((n_2@@0 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@0 n_2_1@@0)) (select g_1@@3 n_2@@0)) (select g_1@@3 n_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2@@0 n_2_1@@0)))
 :qid |stdinbpl.762:23|
 :skolemid |107|
 :pattern ( (neverTriggered4 n_2@@0) (neverTriggered4 n_2_1@@0))
)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((n_2@@1 T@Ref) ) (!  (=> (select g_1@@3 n_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_2@@1 next) NoPerm)))
 :qid |stdinbpl.769:23|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@7) n_2@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_2@@1 next))
))) (=> (forall ((n_2@@2 T@Ref) ) (!  (=> (select g_1@@3 n_2@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n_2@@2 next) NoPerm)))
 :qid |stdinbpl.769:23|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@7) n_2@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_2@@2 next))
)) (=> (and (forall ((n_2@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_2@@3) (< NoPerm FullPerm)) (and (qpRange4 n_2@@3) (= (invRecv4 n_2@@3) n_2@@3)))
 :qid |stdinbpl.775:28|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@7) n_2@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n_2@@3 next))
)) (forall ((o_9@@3 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv4 o_9@@3)) (and (< NoPerm FullPerm) (qpRange4 o_9@@3))) (= (invRecv4 o_9@@3) o_9@@3))
 :qid |stdinbpl.779:28|
 :skolemid |110|
 :pattern ( (invRecv4 o_9@@3))
))) (and (and (=> (= (ControlFlow 0 36) 31) anon78_Else_correct) (=> (= (ControlFlow 0 36) 33) anon79_Then_correct)) (=> (= (ControlFlow 0 36) 35) anon79_Else_correct)))))))))))
(let ((anon28_correct true))
(let ((anon82_Else_correct  (=> (and (not (and (select g_1@@3 n$0_4) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_4 next) null)))) (= (ControlFlow 0 26) 23)) anon28_correct)))
(let ((anon82_Then_correct  (=> (and (select g_1@@3 n$0_4) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_4 next) null))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_4 next))) (=> (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_4 next)) (=> (= (ControlFlow 0 24) 23) anon28_correct))))))
(let ((anon81_Else_correct true))
(let ((anon80_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 30)) (not (select g_1@@3 null))) (=> (not (select g_1@@3 null)) (and (=> (= (ControlFlow 0 27) (- 0 29)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select g_1@@3 n_3)) (select g_1@@3 n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.814:23|
 :skolemid |112|
 :pattern ( (neverTriggered5 n_3) (neverTriggered5 n_3_1))
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select g_1@@3 n_3@@0)) (select g_1@@3 n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.814:23|
 :skolemid |112|
 :pattern ( (neverTriggered5 n_3@@0) (neverTriggered5 n_3_1@@0))
)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((n_3@@1 T@Ref) ) (!  (=> (select g_1@@3 n_3@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_3@@1 next) NoPerm)))
 :qid |stdinbpl.821:23|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@8) n_3@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@1 next))
))) (=> (forall ((n_3@@2 T@Ref) ) (!  (=> (select g_1@@3 n_3@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_3@@2 next) NoPerm)))
 :qid |stdinbpl.821:23|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@8) n_3@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@2 next))
)) (=> (and (forall ((n_3@@3 T@Ref) ) (!  (=> (and (select g_1@@3 n_3@@3) (< NoPerm FullPerm)) (and (qpRange5 n_3@@3) (= (invRecv5 n_3@@3) n_3@@3)))
 :qid |stdinbpl.827:28|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@8) n_3@@3 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_3@@3 next))
)) (forall ((o_9@@4 T@Ref) ) (!  (=> (and (select g_1@@3 (invRecv5 o_9@@4)) (and (< NoPerm FullPerm) (qpRange5 o_9@@4))) (= (invRecv5 o_9@@4) o_9@@4))
 :qid |stdinbpl.831:28|
 :skolemid |115|
 :pattern ( (invRecv5 o_9@@4))
))) (and (and (=> (= (ControlFlow 0 27) 22) anon81_Else_correct) (=> (= (ControlFlow 0 27) 24) anon82_Then_correct)) (=> (= (ControlFlow 0 27) 26) anon82_Else_correct)))))))))))
(let ((anon80_Else_correct true))
(let ((anon73_Else_correct  (=> (forall ((n$2_1 T@Ref) ) (!  (=> (and (select g_1@@3 n$2_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$2_1 next) null))) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$2_1 next)))
 :qid |stdinbpl.740:20|
 :skolemid |106|
 :pattern ( (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$2_1 next)))
 :pattern ( (select g_1@@3 n$2_1) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$2_1 next))
)) (=> (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2)) (and (and (and (=> (= (ControlFlow 0 80) 79) anon76_Else_correct) (=> (= (ControlFlow 0 80) 36) anon77_Then_correct)) (=> (= (ControlFlow 0 80) 27) anon80_Then_correct)) (=> (= (ControlFlow 0 80) 21) anon80_Else_correct))))))
(let ((anon16_correct true))
(let ((anon75_Else_correct  (=> (and (not (and (select g_1@@3 n$2) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$2 next) null)))) (= (ControlFlow 0 17) 14)) anon16_correct)))
(let ((anon75_Then_correct  (=> (and (select g_1@@3 n$2) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$2 next) null))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_12047_12048 QPMask@2 n$2 next)) (=> (HasDirectPerm_12047_12048 QPMask@2 n$2 next) (=> (= (ControlFlow 0 15) 14) anon16_correct))))))
(let ((anon74_Else_correct  (=> (not (select g_1@@3 n$2)) (and (=> (= (ControlFlow 0 20) 15) anon75_Then_correct) (=> (= (ControlFlow 0 20) 17) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (select g_1@@3 n$2) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_12047_12048 QPMask@2 n$2 next)) (=> (HasDirectPerm_12047_12048 QPMask@2 n$2 next) (and (=> (= (ControlFlow 0 18) 15) anon75_Then_correct) (=> (= (ControlFlow 0 18) 17) anon75_Else_correct)))))))
(let ((anon72_Else_correct  (and (=> (= (ControlFlow 0 81) (- 0 82)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (select g_1@@3 n$1_1)) (select g_1@@3 n$1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.695:15|
 :skolemid |100|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (select g_1@@3 n$1_1@@0)) (select g_1@@3 n$1_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.695:15|
 :skolemid |100|
)) (=> (and (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (select g_1@@3 n$1_1@@1) (< NoPerm FullPerm)) (and (qpRange3 n$1_1@@1) (= (invRecv3 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.701:22|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n$1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$1_1@@1 next))
)) (forall ((o_9@@5 T@Ref) ) (!  (=> (and (and (select g_1@@3 (invRecv3 o_9@@5)) (< NoPerm FullPerm)) (qpRange3 o_9@@5)) (= (invRecv3 o_9@@5) o_9@@5))
 :qid |stdinbpl.705:22|
 :skolemid |102|
 :pattern ( (invRecv3 o_9@@5))
))) (and (forall ((n$1_1@@2 T@Ref) ) (!  (=> (select g_1@@3 n$1_1@@2) (not (= n$1_1@@2 null)))
 :qid |stdinbpl.711:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) n$1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| PostHeap@0) n$1_1@@2 next))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (and (select g_1@@3 (invRecv3 o_9@@6)) (< NoPerm FullPerm)) (qpRange3 o_9@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_9@@6) o_9@@6)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_9@@6 next) (+ (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_9@@6 next) FullPerm)))) (=> (not (and (and (select g_1@@3 (invRecv3 o_9@@6)) (< NoPerm FullPerm)) (qpRange3 o_9@@6))) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_9@@6 next) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_9@@6 next))))
 :qid |stdinbpl.717:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_9@@6 next))
)))) (=> (and (and (and (and (forall ((o_9@@7 T@Ref) (f_5 T@Field_18569_53) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_9@@7 f_5) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@2) o_9@@7 f_5)))
 :qid |stdinbpl.721:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_9@@7 f_5))
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@2) o_9@@7 f_5))
)) (forall ((o_9@@8 T@Ref) (f_5@@0 T@Field_18582_18583) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_9@@8 f_5@@0) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_9@@8 f_5@@0)))
 :qid |stdinbpl.721:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_9@@8 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@2) o_9@@8 f_5@@0))
))) (forall ((o_9@@9 T@Ref) (f_5@@1 T@Field_12047_57322) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_9@@9 f_5@@1) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@2) o_9@@9 f_5@@1)))
 :qid |stdinbpl.721:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_9@@9 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@2) o_9@@9 f_5@@1))
))) (forall ((o_9@@10 T@Ref) (f_5@@2 T@Field_12047_57455) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_9@@10 f_5@@2) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@2) o_9@@10 f_5@@2)))
 :qid |stdinbpl.721:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_9@@10 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@2) o_9@@10 f_5@@2))
))) (state PostHeap@0 QPMask@2)) (and (and (=> (= (ControlFlow 0 81) 80) anon73_Else_correct) (=> (= (ControlFlow 0 81) 18) anon74_Then_correct)) (=> (= (ControlFlow 0 81) 20) anon74_Else_correct))))))))
(let ((anon72_Then_correct true))
(let ((anon71_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (select g_1@@3 null))) (and (=> (= (ControlFlow 0 83) 13) anon72_Then_correct) (=> (= (ControlFlow 0 83) 81) anon72_Else_correct)))))
(let ((anon71_Else_correct true))
(let ((anon68_Else_correct  (=> (and (forall ((n$0_1 T@Ref) ) (!  (=> (and (select g_1@@3 n$0_1) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_1 next) null))) (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_1 next)))
 :qid |stdinbpl.671:20|
 :skolemid |99|
 :pattern ( (select g_1@@3 (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_1 next)))
 :pattern ( (select g_1@@3 n$0_1) (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0_1 next))
)) (state Heap@@18 QPMask@0)) (and (=> (= (ControlFlow 0 84) 83) anon71_Then_correct) (=> (= (ControlFlow 0 84) 10) anon71_Else_correct)))))
(let ((anon7_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (select g_1@@3 n$0) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0 next) null)))) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon70_Then_correct  (=> (and (select g_1@@3 n$0) (not (= (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n$0 next) null))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_12047_12048 QPMask@0 n$0 next)) (=> (HasDirectPerm_12047_12048 QPMask@0 n$0 next) (=> (= (ControlFlow 0 3) 2) anon7_correct))))))
(let ((anon69_Else_correct  (=> (not (select g_1@@3 n$0)) (and (=> (= (ControlFlow 0 8) 3) anon70_Then_correct) (=> (= (ControlFlow 0 8) 5) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (select g_1@@3 n$0) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_12047_12048 QPMask@0 n$0 next)) (=> (HasDirectPerm_12047_12048 QPMask@0 n$0 next) (and (=> (= (ControlFlow 0 6) 3) anon70_Then_correct) (=> (= (ControlFlow 0 6) 5) anon70_Else_correct)))))))
(let ((anon67_Else_correct  (and (=> (= (ControlFlow 0 85) (- 0 86)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1@@3 n_1)) (select g_1@@3 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.626:15|
 :skolemid |93|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1@@3 n_1@@0)) (select g_1@@3 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.626:15|
 :skolemid |93|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1@@3 n_1@@1) (< NoPerm FullPerm)) (and (qpRange2 n_1@@1) (= (invRecv2 n_1@@1) n_1@@1)))
 :qid |stdinbpl.632:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_1@@1 next))
)) (forall ((o_9@@11 T@Ref) ) (!  (=> (and (and (select g_1@@3 (invRecv2 o_9@@11)) (< NoPerm FullPerm)) (qpRange2 o_9@@11)) (= (invRecv2 o_9@@11) o_9@@11))
 :qid |stdinbpl.636:22|
 :skolemid |95|
 :pattern ( (invRecv2 o_9@@11))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1@@3 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.642:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_18509_11665_11666#PolymorphicMapType_18509| Heap@@18) n_1@@2 next))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (and (select g_1@@3 (invRecv2 o_9@@12)) (< NoPerm FullPerm)) (qpRange2 o_9@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@12) o_9@@12)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_9@@12 next) (+ (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_9@@12 next) FullPerm)))) (=> (not (and (and (select g_1@@3 (invRecv2 o_9@@12)) (< NoPerm FullPerm)) (qpRange2 o_9@@12))) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_9@@12 next) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_9@@12 next))))
 :qid |stdinbpl.648:22|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_9@@12 next))
)))) (=> (and (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@3 T@Field_18569_53) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_9@@13 f_5@@3) (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@0) o_9@@13 f_5@@3)))
 :qid |stdinbpl.652:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| ZeroMask) o_9@@13 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_18530_12047_53#PolymorphicMapType_18530| QPMask@0) o_9@@13 f_5@@3))
)) (forall ((o_9@@14 T@Ref) (f_5@@4 T@Field_18582_18583) ) (!  (=> (not (= f_5@@4 next)) (= (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_9@@14 f_5@@4) (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_9@@14 f_5@@4)))
 :qid |stdinbpl.652:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| ZeroMask) o_9@@14 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_18530_12047_12048#PolymorphicMapType_18530| QPMask@0) o_9@@14 f_5@@4))
))) (forall ((o_9@@15 T@Ref) (f_5@@5 T@Field_12047_57322) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_9@@15 f_5@@5) (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@0) o_9@@15 f_5@@5)))
 :qid |stdinbpl.652:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| ZeroMask) o_9@@15 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_18530_12047_57322#PolymorphicMapType_18530| QPMask@0) o_9@@15 f_5@@5))
))) (forall ((o_9@@16 T@Ref) (f_5@@6 T@Field_12047_57455) ) (!  (=> true (= (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_9@@16 f_5@@6) (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@0) o_9@@16 f_5@@6)))
 :qid |stdinbpl.652:29|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| ZeroMask) o_9@@16 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_18530_12047_61001#PolymorphicMapType_18530| QPMask@0) o_9@@16 f_5@@6))
))) (state Heap@@18 QPMask@0)) (and (and (=> (= (ControlFlow 0 85) 84) anon68_Else_correct) (=> (= (ControlFlow 0 85) 6) anon69_Then_correct)) (=> (= (ControlFlow 0 85) 8) anon69_Else_correct))))))))
(let ((anon67_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@18 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (not (select g_1@@3 null)))) (and (=> (= (ControlFlow 0 87) 1) anon67_Then_correct) (=> (= (ControlFlow 0 87) 85) anon67_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 88) 87) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
