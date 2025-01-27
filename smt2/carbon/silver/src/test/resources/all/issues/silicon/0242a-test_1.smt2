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
(declare-sort T@Field_7078_53 0)
(declare-sort T@Field_7091_7092 0)
(declare-sort T@Field_13251_3214 0)
(declare-sort T@Field_7078_17450 0)
(declare-sort T@Field_7078_17317 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7039 0)) (((PolymorphicMapType_7039 (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| (Array T@Ref T@Field_13251_3214 Real)) (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| (Array T@Ref T@Field_7078_53 Real)) (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| (Array T@Ref T@Field_7091_7092 Real)) (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| (Array T@Ref T@Field_7078_17317 Real)) (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| (Array T@Ref T@Field_7078_17450 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7567 0)) (((PolymorphicMapType_7567 (|PolymorphicMapType_7567_7078_53#PolymorphicMapType_7567| (Array T@Ref T@Field_7078_53 Bool)) (|PolymorphicMapType_7567_7078_7092#PolymorphicMapType_7567| (Array T@Ref T@Field_7091_7092 Bool)) (|PolymorphicMapType_7567_7078_3214#PolymorphicMapType_7567| (Array T@Ref T@Field_13251_3214 Bool)) (|PolymorphicMapType_7567_7078_17317#PolymorphicMapType_7567| (Array T@Ref T@Field_7078_17317 Bool)) (|PolymorphicMapType_7567_7078_18628#PolymorphicMapType_7567| (Array T@Ref T@Field_7078_17450 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7018 0)) (((PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| (Array T@Ref T@Field_7078_53 Bool)) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| (Array T@Ref T@Field_7091_7092 T@Ref)) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| (Array T@Ref T@Field_13251_3214 Int)) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| (Array T@Ref T@Field_7078_17450 T@PolymorphicMapType_7567)) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| (Array T@Ref T@Field_7078_17317 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7078_53)
(declare-fun m_20 () T@Field_13251_3214)
(declare-fun succHeap (T@PolymorphicMapType_7018 T@PolymorphicMapType_7018) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7018 T@PolymorphicMapType_7018) Bool)
(declare-fun state (T@PolymorphicMapType_7018 T@PolymorphicMapType_7039) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7039) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7567)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |foo'| (T@PolymorphicMapType_7018 T@Ref) Bool)
(declare-fun dummyFunction_3365 (Bool) Bool)
(declare-fun |foo#triggerStateless| (T@Ref) Bool)
(declare-fun |Set#Union_4374| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_4374| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_4374| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_4374| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7018 T@PolymorphicMapType_7018 T@PolymorphicMapType_7039) Bool)
(declare-fun IsPredicateField_7078_17408 (T@Field_7078_17317) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7078 (T@Field_7078_17317) T@Field_7078_17450)
(declare-fun HasDirectPerm_7078_17381 (T@PolymorphicMapType_7039 T@Ref T@Field_7078_17317) Bool)
(declare-fun IsWandField_7078_19155 (T@Field_7078_17317) Bool)
(declare-fun WandMaskField_7078 (T@Field_7078_17317) T@Field_7078_17450)
(declare-fun dummyHeap () T@PolymorphicMapType_7018)
(declare-fun ZeroMask () T@PolymorphicMapType_7039)
(declare-fun InsidePredicate_7078_7078 (T@Field_7078_17317 T@FrameType T@Field_7078_17317 T@FrameType) Bool)
(declare-fun IsPredicateField_4350_3214 (T@Field_13251_3214) Bool)
(declare-fun IsWandField_4350_3214 (T@Field_13251_3214) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4350_22701 (T@Field_7078_17450) Bool)
(declare-fun IsWandField_4350_22717 (T@Field_7078_17450) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4350_7092 (T@Field_7091_7092) Bool)
(declare-fun IsWandField_4350_7092 (T@Field_7091_7092) Bool)
(declare-fun IsPredicateField_4350_53 (T@Field_7078_53) Bool)
(declare-fun IsWandField_4350_53 (T@Field_7078_53) Bool)
(declare-fun HasDirectPerm_7078_23155 (T@PolymorphicMapType_7039 T@Ref T@Field_7078_17450) Bool)
(declare-fun HasDirectPerm_7078_3214 (T@PolymorphicMapType_7039 T@Ref T@Field_13251_3214) Bool)
(declare-fun HasDirectPerm_7078_7092 (T@PolymorphicMapType_7039 T@Ref T@Field_7091_7092) Bool)
(declare-fun HasDirectPerm_7078_53 (T@PolymorphicMapType_7039 T@Ref T@Field_7078_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7039 T@PolymorphicMapType_7039 T@PolymorphicMapType_7039) Bool)
(declare-fun |Set#Difference_4374| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_4374| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |foo#frame| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_3214 (Int) T@FrameType)
(declare-fun foo_1 (T@PolymorphicMapType_7018 T@Ref) Bool)
(declare-fun |Set#Empty_4374| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_7018) (Heap1 T@PolymorphicMapType_7018) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7018) (Mask T@PolymorphicMapType_7039) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7018) (Heap1@@0 T@PolymorphicMapType_7018) (Heap2 T@PolymorphicMapType_7018) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7078_17450) ) (!  (not (select (|PolymorphicMapType_7567_7078_18628#PolymorphicMapType_7567| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7567_7078_18628#PolymorphicMapType_7567| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7078_17317) ) (!  (not (select (|PolymorphicMapType_7567_7078_17317#PolymorphicMapType_7567| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7567_7078_17317#PolymorphicMapType_7567| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13251_3214) ) (!  (not (select (|PolymorphicMapType_7567_7078_3214#PolymorphicMapType_7567| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7567_7078_3214#PolymorphicMapType_7567| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7091_7092) ) (!  (not (select (|PolymorphicMapType_7567_7078_7092#PolymorphicMapType_7567| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7567_7078_7092#PolymorphicMapType_7567| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7078_53) ) (!  (not (select (|PolymorphicMapType_7567_7078_53#PolymorphicMapType_7567| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7567_7078_53#PolymorphicMapType_7567| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.291:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7018) (n T@Ref) ) (! (dummyFunction_3365 (|foo#triggerStateless| n))
 :qid |stdinbpl.404:15|
 :skolemid |83|
 :pattern ( (|foo'| Heap@@0 n))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_4374| (|Set#Union_4374| a@@0 b@@0) b@@0) (|Set#Union_4374| a@@0 b@@0))
 :qid |stdinbpl.243:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4374| (|Set#Union_4374| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4374| (|Set#Intersection_4374| a@@1 b@@1) b@@1) (|Set#Intersection_4374| a@@1 b@@1))
 :qid |stdinbpl.247:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4374| (|Set#Intersection_4374| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_4374| r) o) (= r o))
 :qid |stdinbpl.212:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_4374| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_4374| (|Set#Union_4374| a@@2 b@@2)) (|Set#Card_4374| (|Set#Intersection_4374| a@@2 b@@2))) (+ (|Set#Card_4374| a@@2) (|Set#Card_4374| b@@2)))
 :qid |stdinbpl.251:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4374| (|Set#Union_4374| a@@2 b@@2)))
 :pattern ( (|Set#Card_4374| (|Set#Intersection_4374| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.294:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7018) (ExhaleHeap T@PolymorphicMapType_7018) (Mask@@0 T@PolymorphicMapType_7039) (pm_f_5 T@Field_7078_17317) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7078_17381 Mask@@0 null pm_f_5) (IsPredicateField_7078_17408 pm_f_5)) (= (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@1) null (PredicateMaskField_7078 pm_f_5)) (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap) null (PredicateMaskField_7078 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_7078_17408 pm_f_5) (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap) null (PredicateMaskField_7078 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7018) (ExhaleHeap@@0 T@PolymorphicMapType_7018) (Mask@@1 T@PolymorphicMapType_7039) (pm_f_5@@0 T@Field_7078_17317) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7078_17381 Mask@@1 null pm_f_5@@0) (IsWandField_7078_19155 pm_f_5@@0)) (= (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@2) null (WandMaskField_7078 pm_f_5@@0)) (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap@@0) null (WandMaskField_7078 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_7078_19155 pm_f_5@@0) (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap@@0) null (WandMaskField_7078 pm_f_5@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7018) (ExhaleHeap@@1 T@PolymorphicMapType_7018) (Mask@@2 T@PolymorphicMapType_7039) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@3) o_15 $allocated) (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| ExhaleHeap@@1) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| ExhaleHeap@@1) o_15 $allocated))
)))
(assert (forall ((p T@Field_7078_17317) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7078_7078 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7078_7078 p v_1 p w))
)))
(assert  (not (IsPredicateField_4350_3214 m_20)))
(assert  (not (IsWandField_4350_3214 m_20)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7018) (ExhaleHeap@@2 T@PolymorphicMapType_7018) (Mask@@3 T@PolymorphicMapType_7039) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@4 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7039) (o_2@@4 T@Ref) (f_4@@4 T@Field_7078_17450) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4350_22701 f_4@@4))) (not (IsWandField_4350_22717 f_4@@4))) (<= (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7039) (o_2@@5 T@Ref) (f_4@@5 T@Field_7078_17317) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7078_17408 f_4@@5))) (not (IsWandField_7078_19155 f_4@@5))) (<= (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7039) (o_2@@6 T@Ref) (f_4@@6 T@Field_7091_7092) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4350_7092 f_4@@6))) (not (IsWandField_4350_7092 f_4@@6))) (<= (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7039) (o_2@@7 T@Ref) (f_4@@7 T@Field_7078_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4350_53 f_4@@7))) (not (IsWandField_4350_53 f_4@@7))) (<= (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7039) (o_2@@8 T@Ref) (f_4@@8 T@Field_13251_3214) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4350_3214 f_4@@8))) (not (IsWandField_4350_3214 f_4@@8))) (<= (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7039) (o_2@@9 T@Ref) (f_4@@9 T@Field_7078_17450) ) (! (= (HasDirectPerm_7078_23155 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7078_23155 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7039) (o_2@@10 T@Ref) (f_4@@10 T@Field_7078_17317) ) (! (= (HasDirectPerm_7078_17381 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7078_17381 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7039) (o_2@@11 T@Ref) (f_4@@11 T@Field_13251_3214) ) (! (= (HasDirectPerm_7078_3214 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7078_3214 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7039) (o_2@@12 T@Ref) (f_4@@12 T@Field_7091_7092) ) (! (= (HasDirectPerm_7078_7092 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7078_7092 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7039) (o_2@@13 T@Ref) (f_4@@13 T@Field_7078_53) ) (! (= (HasDirectPerm_7078_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7078_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7018) (ExhaleHeap@@3 T@PolymorphicMapType_7018) (Mask@@14 T@PolymorphicMapType_7039) (pm_f_5@@1 T@Field_7078_17317) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7078_17381 Mask@@14 null pm_f_5@@1) (IsPredicateField_7078_17408 pm_f_5@@1)) (and (and (and (and (forall ((o2_5 T@Ref) (f_23 T@Field_7078_53) ) (!  (=> (select (|PolymorphicMapType_7567_7078_53#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@5) null (PredicateMaskField_7078 pm_f_5@@1))) o2_5 f_23) (= (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@5) o2_5 f_23) (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5 f_23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5 f_23))
)) (forall ((o2_5@@0 T@Ref) (f_23@@0 T@Field_7091_7092) ) (!  (=> (select (|PolymorphicMapType_7567_7078_7092#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@5) null (PredicateMaskField_7078 pm_f_5@@1))) o2_5@@0 f_23@@0) (= (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@5) o2_5@@0 f_23@@0) (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5@@0 f_23@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5@@0 f_23@@0))
))) (forall ((o2_5@@1 T@Ref) (f_23@@1 T@Field_13251_3214) ) (!  (=> (select (|PolymorphicMapType_7567_7078_3214#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@5) null (PredicateMaskField_7078 pm_f_5@@1))) o2_5@@1 f_23@@1) (= (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@5) o2_5@@1 f_23@@1) (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5@@1 f_23@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5@@1 f_23@@1))
))) (forall ((o2_5@@2 T@Ref) (f_23@@2 T@Field_7078_17317) ) (!  (=> (select (|PolymorphicMapType_7567_7078_17317#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@5) null (PredicateMaskField_7078 pm_f_5@@1))) o2_5@@2 f_23@@2) (= (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@5) o2_5@@2 f_23@@2) (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5@@2 f_23@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5@@2 f_23@@2))
))) (forall ((o2_5@@3 T@Ref) (f_23@@3 T@Field_7078_17450) ) (!  (=> (select (|PolymorphicMapType_7567_7078_18628#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@5) null (PredicateMaskField_7078 pm_f_5@@1))) o2_5@@3 f_23@@3) (= (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@5) o2_5@@3 f_23@@3) (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5@@3 f_23@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap@@3) o2_5@@3 f_23@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7078_17408 pm_f_5@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7018) (ExhaleHeap@@4 T@PolymorphicMapType_7018) (Mask@@15 T@PolymorphicMapType_7039) (pm_f_5@@2 T@Field_7078_17317) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7078_17381 Mask@@15 null pm_f_5@@2) (IsWandField_7078_19155 pm_f_5@@2)) (and (and (and (and (forall ((o2_5@@4 T@Ref) (f_23@@4 T@Field_7078_53) ) (!  (=> (select (|PolymorphicMapType_7567_7078_53#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@6) null (WandMaskField_7078 pm_f_5@@2))) o2_5@@4 f_23@@4) (= (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@6) o2_5@@4 f_23@@4) (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@4 f_23@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@4 f_23@@4))
)) (forall ((o2_5@@5 T@Ref) (f_23@@5 T@Field_7091_7092) ) (!  (=> (select (|PolymorphicMapType_7567_7078_7092#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@6) null (WandMaskField_7078 pm_f_5@@2))) o2_5@@5 f_23@@5) (= (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@6) o2_5@@5 f_23@@5) (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@5 f_23@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@5 f_23@@5))
))) (forall ((o2_5@@6 T@Ref) (f_23@@6 T@Field_13251_3214) ) (!  (=> (select (|PolymorphicMapType_7567_7078_3214#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@6) null (WandMaskField_7078 pm_f_5@@2))) o2_5@@6 f_23@@6) (= (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@6) o2_5@@6 f_23@@6) (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@6 f_23@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@6 f_23@@6))
))) (forall ((o2_5@@7 T@Ref) (f_23@@7 T@Field_7078_17317) ) (!  (=> (select (|PolymorphicMapType_7567_7078_17317#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@6) null (WandMaskField_7078 pm_f_5@@2))) o2_5@@7 f_23@@7) (= (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@6) o2_5@@7 f_23@@7) (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@7 f_23@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@7 f_23@@7))
))) (forall ((o2_5@@8 T@Ref) (f_23@@8 T@Field_7078_17450) ) (!  (=> (select (|PolymorphicMapType_7567_7078_18628#PolymorphicMapType_7567| (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@6) null (WandMaskField_7078 pm_f_5@@2))) o2_5@@8 f_23@@8) (= (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@6) o2_5@@8 f_23@@8) (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@8 f_23@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap@@4) o2_5@@8 f_23@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (IsWandField_7078_19155 pm_f_5@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7018) (ExhaleHeap@@5 T@PolymorphicMapType_7018) (Mask@@16 T@PolymorphicMapType_7039) (o_15@@0 T@Ref) (f_23@@9 T@Field_7078_17450) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7078_23155 Mask@@16 o_15@@0 f_23@@9) (= (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@7) o_15@@0 f_23@@9) (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap@@5) o_15@@0 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| ExhaleHeap@@5) o_15@@0 f_23@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7018) (ExhaleHeap@@6 T@PolymorphicMapType_7018) (Mask@@17 T@PolymorphicMapType_7039) (o_15@@1 T@Ref) (f_23@@10 T@Field_7078_17317) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7078_17381 Mask@@17 o_15@@1 f_23@@10) (= (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@8) o_15@@1 f_23@@10) (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| ExhaleHeap@@6) o_15@@1 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| ExhaleHeap@@6) o_15@@1 f_23@@10))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7018) (ExhaleHeap@@7 T@PolymorphicMapType_7018) (Mask@@18 T@PolymorphicMapType_7039) (o_15@@2 T@Ref) (f_23@@11 T@Field_13251_3214) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7078_3214 Mask@@18 o_15@@2 f_23@@11) (= (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@9) o_15@@2 f_23@@11) (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| ExhaleHeap@@7) o_15@@2 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| ExhaleHeap@@7) o_15@@2 f_23@@11))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7018) (ExhaleHeap@@8 T@PolymorphicMapType_7018) (Mask@@19 T@PolymorphicMapType_7039) (o_15@@3 T@Ref) (f_23@@12 T@Field_7091_7092) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7078_7092 Mask@@19 o_15@@3 f_23@@12) (= (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@10) o_15@@3 f_23@@12) (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| ExhaleHeap@@8) o_15@@3 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| ExhaleHeap@@8) o_15@@3 f_23@@12))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7018) (ExhaleHeap@@9 T@PolymorphicMapType_7018) (Mask@@20 T@PolymorphicMapType_7039) (o_15@@4 T@Ref) (f_23@@13 T@Field_7078_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7078_53 Mask@@20 o_15@@4 f_23@@13) (= (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@11) o_15@@4 f_23@@13) (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| ExhaleHeap@@9) o_15@@4 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| ExhaleHeap@@9) o_15@@4 f_23@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7078_17450) ) (! (= (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7078_17317) ) (! (= (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7091_7092) ) (! (= (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7078_53) ) (! (= (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13251_3214) ) (! (= (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7039) (SummandMask1 T@PolymorphicMapType_7039) (SummandMask2 T@PolymorphicMapType_7039) (o_2@@19 T@Ref) (f_4@@19 T@Field_7078_17450) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7039) (SummandMask1@@0 T@PolymorphicMapType_7039) (SummandMask2@@0 T@PolymorphicMapType_7039) (o_2@@20 T@Ref) (f_4@@20 T@Field_7078_17317) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7039) (SummandMask1@@1 T@PolymorphicMapType_7039) (SummandMask2@@1 T@PolymorphicMapType_7039) (o_2@@21 T@Ref) (f_4@@21 T@Field_7091_7092) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7039) (SummandMask1@@2 T@PolymorphicMapType_7039) (SummandMask2@@2 T@PolymorphicMapType_7039) (o_2@@22 T@Ref) (f_4@@22 T@Field_7078_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7039) (SummandMask1@@3 T@PolymorphicMapType_7039) (SummandMask2@@3 T@PolymorphicMapType_7039) (o_2@@23 T@Ref) (f_4@@23 T@Field_13251_3214) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_4374| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.240:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4374| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_4374| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_4374| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_4374| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.255:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4374| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_4374| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_4374| a@@6 x) y))
 :qid |stdinbpl.220:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4374| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_4374| a@@7 b@@5) y@@0))
 :qid |stdinbpl.230:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4374| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_4374| a@@8 b@@6) y@@1))
 :qid |stdinbpl.232:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4374| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7018) (Mask@@21 T@PolymorphicMapType_7039) (n@@0 T@Ref) ) (!  (=> (state Heap@@12 Mask@@21) (= (|foo'| Heap@@12 n@@0) (|foo#frame| (FrameFragment_3214 (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@12) n@@0 m_20)) n@@0)))
 :qid |stdinbpl.411:15|
 :skolemid |84|
 :pattern ( (state Heap@@12 Mask@@21) (|foo'| Heap@@12 n@@0))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_4374| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.216:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4374| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_4374| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.257:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4374| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_4374| (|Set#Difference_4374| a@@11 b@@8)) (|Set#Card_4374| (|Set#Difference_4374| b@@8 a@@11))) (|Set#Card_4374| (|Set#Intersection_4374| a@@11 b@@8))) (|Set#Card_4374| (|Set#Union_4374| a@@11 b@@8))) (= (|Set#Card_4374| (|Set#Difference_4374| a@@11 b@@8)) (- (|Set#Card_4374| a@@11) (|Set#Card_4374| (|Set#Intersection_4374| a@@11 b@@8)))))
 :qid |stdinbpl.259:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4374| (|Set#Difference_4374| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_4374| s))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4374| s))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7018) (n@@1 T@Ref) ) (!  (and (= (foo_1 Heap@@13 n@@1) (|foo'| Heap@@13 n@@1)) (dummyFunction_3365 (|foo#triggerStateless| n@@1)))
 :qid |stdinbpl.400:15|
 :skolemid |82|
 :pattern ( (foo_1 Heap@@13 n@@1))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_4374| a@@12 x@@1) x@@1)
 :qid |stdinbpl.218:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4374| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_4374| (|Set#UnionOne_4374| a@@13 x@@2)) (|Set#Card_4374| a@@13)))
 :qid |stdinbpl.222:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4374| (|Set#UnionOne_4374| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_4374| (|Set#Singleton_4374| r@@0)) 1)
 :qid |stdinbpl.213:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4374| (|Set#Singleton_4374| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_4374| r@@1) r@@1)
 :qid |stdinbpl.211:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_4374| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_4374| a@@14 (|Set#Union_4374| a@@14 b@@9)) (|Set#Union_4374| a@@14 b@@9))
 :qid |stdinbpl.245:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4374| a@@14 (|Set#Union_4374| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4374| a@@15 (|Set#Intersection_4374| a@@15 b@@10)) (|Set#Intersection_4374| a@@15 b@@10))
 :qid |stdinbpl.249:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4374| a@@15 (|Set#Intersection_4374| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_4374| o@@3))
 :qid |stdinbpl.205:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4374| o@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7018) (o_14 T@Ref) (f_24 T@Field_7078_17317) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@14) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@14) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@14) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@14) (store (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@14) o_14 f_24 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@14) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@14) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@14) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@14) (store (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@14) o_14 f_24 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7018) (o_14@@0 T@Ref) (f_24@@0 T@Field_7078_17450) (v@@0 T@PolymorphicMapType_7567) ) (! (succHeap Heap@@15 (PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@15) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@15) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@15) (store (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@15) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@15) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@15) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@15) (store (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@15) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7018) (o_14@@1 T@Ref) (f_24@@1 T@Field_13251_3214) (v@@1 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@16) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@16) (store (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@16) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@16) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@16) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@16) (store (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@16) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@16) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7018) (o_14@@2 T@Ref) (f_24@@2 T@Field_7091_7092) (v@@2 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@17) (store (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@17) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@17) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@17) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7018 (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@17) (store (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@17) o_14@@2 f_24@@2 v@@2) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@17) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@17) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7018) (o_14@@3 T@Ref) (f_24@@3 T@Field_7078_53) (v@@3 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_7018 (store (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@18) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@18) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@18) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@18) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7018 (store (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@18) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@18) (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@18) (|PolymorphicMapType_7018_7078_17494#PolymorphicMapType_7018| Heap@@18) (|PolymorphicMapType_7018_7078_17317#PolymorphicMapType_7018| Heap@@18)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.289:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.290:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_4374| s@@0) 0) (= s@@0 |Set#Empty_4374|)) (=> (not (= (|Set#Card_4374| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.208:33|
 :skolemid |24|
))))
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4374| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_4374| (|Set#UnionOne_4374| a@@18 x@@4)) (+ (|Set#Card_4374| a@@18) 1)))
 :qid |stdinbpl.224:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4374| (|Set#UnionOne_4374| a@@18 x@@4)))
)))
(assert (forall ((o_14@@4 T@Ref) (f_22 T@Field_7091_7092) (Heap@@19 T@PolymorphicMapType_7018) ) (!  (=> (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@19) o_14@@4 $allocated) (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@19) (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@19) o_14@@4 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7018_4060_4061#PolymorphicMapType_7018| Heap@@19) o_14@@4 f_22))
)))
(assert (forall ((p@@1 T@Field_7078_17317) (v_1@@0 T@FrameType) (q T@Field_7078_17317) (w@@0 T@FrameType) (r@@2 T@Field_7078_17317) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7078_7078 p@@1 v_1@@0 q w@@0) (InsidePredicate_7078_7078 q w@@0 r@@2 u)) (InsidePredicate_7078_7078 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7078_7078 p@@1 v_1@@0 q w@@0) (InsidePredicate_7078_7078 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.295:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_4374| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.228:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4374| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@20 () T@PolymorphicMapType_7018)
(declare-fun vroot () T@Ref)
(declare-fun root () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_7039)
(declare-fun graph@0 () (Array T@Ref Bool))
(declare-fun q_4 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id test_1)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (foo_1 Heap@@20 vroot) (foo_1 Heap@@20 root))) (=> (= (foo_1 Heap@@20 vroot) (foo_1 Heap@@20 root)) (=> (and (state Heap@@20 QPMask@0) (= (ControlFlow 0 12) (- 0 11))) false)))))
(let ((anon17_Then_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) root m_20))))))
(let ((anon16_Then_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) vroot m_20))))))
(let ((anon13_Else_correct  (=> (forall ((q_1_1 T@Ref) ) (!  (=> (select graph@0 q_1_1) (foo_1 Heap@@20 q_1_1))
 :qid |stdinbpl.558:20|
 :skolemid |91|
 :pattern ( (select graph@0 q_1_1))
 :pattern ( (|foo#frame| (FrameFragment_3214 (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@20) q_1_1 m_20)) q_1_1))
)) (=> (and (state Heap@@20 QPMask@0) (state Heap@@20 QPMask@0)) (and (and (=> (= (ControlFlow 0 14) 8) anon16_Then_correct) (=> (= (ControlFlow 0 14) 10) anon17_Then_correct)) (=> (= (ControlFlow 0 14) 12) anon17_Else_correct))))))
(let ((anon15_Then_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) q_4 m_20))))))
(let ((anon6_correct true))
(let ((anon14_Then_correct  (=> (select graph@0 q_4) (and (=> (= (ControlFlow 0 6) 5) anon15_Then_correct) (=> (= (ControlFlow 0 6) 2) anon6_correct)))))
(let ((anon14_Else_correct  (=> (and (not (select graph@0 q_4)) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon12_Else_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select graph@0 n_1)) (select graph@0 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.497:15|
 :skolemid |85|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select graph@0 n_1@@0)) (select graph@0 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.497:15|
 :skolemid |85|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select graph@0 n_1@@1) (< NoPerm FullPerm)) (and (qpRange1 n_1@@1) (= (invRecv1 n_1@@1) n_1@@1)))
 :qid |stdinbpl.503:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@20) n_1@@1 m_20))
 :pattern ( (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) n_1@@1 m_20))
 :pattern ( (select graph@0 n_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select graph@0 (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (invRecv1 o_9) o_9))
 :qid |stdinbpl.507:22|
 :skolemid |87|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select graph@0 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.513:22|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_7018_4350_3214#PolymorphicMapType_7018| Heap@@20) n_1@@2 m_20))
 :pattern ( (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) n_1@@2 m_20))
 :pattern ( (select graph@0 n_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select graph@0 (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) o_9@@0 m_20) (+ (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| ZeroMask) o_9@@0 m_20) FullPerm)))) (=> (not (and (and (select graph@0 (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) o_9@@0 m_20) (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| ZeroMask) o_9@@0 m_20))))
 :qid |stdinbpl.519:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) o_9@@0 m_20))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_7078_53) ) (!  (=> true (= (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.523:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_7039_4350_53#PolymorphicMapType_7039| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_7091_7092) ) (!  (=> true (= (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.523:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7039_4350_7092#PolymorphicMapType_7039| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_13251_3214) ) (!  (=> (not (= f_5@@1 m_20)) (= (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.523:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7039_4350_3214#PolymorphicMapType_7039| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_7078_17317) ) (!  (=> true (= (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.523:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7039_4350_17317#PolymorphicMapType_7039| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_7078_17450) ) (!  (=> true (= (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.523:29|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_7039_4350_21572#PolymorphicMapType_7039| QPMask@0) o_9@@5 f_5@@3))
))) (and (and (state Heap@@20 QPMask@0) (state Heap@@20 QPMask@0)) (and (state Heap@@20 QPMask@0) (state Heap@@20 QPMask@0)))) (and (and (=> (= (ControlFlow 0 15) 14) anon13_Else_correct) (=> (= (ControlFlow 0 15) 6) anon14_Then_correct)) (=> (= (ControlFlow 0 15) 3) anon14_Else_correct))))))))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@20 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@20) vroot $allocated)) (and (select (|PolymorphicMapType_7018_4057_53#PolymorphicMapType_7018| Heap@@20) root $allocated) (= graph@0 (|Set#UnionOne_4374| (|Set#Singleton_4374| root) vroot)))) (and (and (state Heap@@20 ZeroMask) (not (= vroot root))) (and (state Heap@@20 ZeroMask) (state Heap@@20 ZeroMask)))) (and (=> (= (ControlFlow 0 17) 1) anon12_Then_correct) (=> (= (ControlFlow 0 17) 15) anon12_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 12) (- 11))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
