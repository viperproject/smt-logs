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
(declare-sort T@Field_22082_53 0)
(declare-sort T@Field_22095_22096 0)
(declare-sort T@Field_28358_3835 0)
(declare-sort T@Field_13890_65961 0)
(declare-sort T@Field_13890_65828 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_22043 0)) (((PolymorphicMapType_22043 (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| (Array T@Ref T@Field_28358_3835 Real)) (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| (Array T@Ref T@Field_22082_53 Real)) (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| (Array T@Ref T@Field_22095_22096 Real)) (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| (Array T@Ref T@Field_13890_65828 Real)) (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| (Array T@Ref T@Field_13890_65961 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22571 0)) (((PolymorphicMapType_22571 (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| (Array T@Ref T@Field_22082_53 Bool)) (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| (Array T@Ref T@Field_22095_22096 Bool)) (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| (Array T@Ref T@Field_28358_3835 Bool)) (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| (Array T@Ref T@Field_13890_65828 Bool)) (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| (Array T@Ref T@Field_13890_65961 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22022 0)) (((PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| (Array T@Ref T@Field_22082_53 Bool)) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| (Array T@Ref T@Field_22095_22096 T@Ref)) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| (Array T@Ref T@Field_28358_3835 Int)) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| (Array T@Ref T@Field_13890_65961 T@PolymorphicMapType_22571)) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| (Array T@Ref T@Field_13890_65828 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_22082_53)
(declare-fun f_7 () T@Field_28358_3835)
(declare-fun succHeap (T@PolymorphicMapType_22022 T@PolymorphicMapType_22022) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22022 T@PolymorphicMapType_22022) Bool)
(declare-fun state (T@PolymorphicMapType_22022 T@PolymorphicMapType_22043) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22043) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_22571)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_13928| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_14032| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_14032| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_14032| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22022 T@PolymorphicMapType_22022 T@PolymorphicMapType_22043) Bool)
(declare-fun IsPredicateField_13890_65919 (T@Field_13890_65828) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_13890 (T@Field_13890_65828) T@Field_13890_65961)
(declare-fun HasDirectPerm_13890_65892 (T@PolymorphicMapType_22043 T@Ref T@Field_13890_65828) Bool)
(declare-fun IsWandField_13890_67666 (T@Field_13890_65828) Bool)
(declare-fun WandMaskField_13890 (T@Field_13890_65828) T@Field_13890_65961)
(declare-fun dummyHeap () T@PolymorphicMapType_22022)
(declare-fun ZeroMask () T@PolymorphicMapType_22043)
(declare-fun InsidePredicate_22082_22082 (T@Field_13890_65828 T@FrameType T@Field_13890_65828 T@FrameType) Bool)
(declare-fun IsPredicateField_13890_3835 (T@Field_28358_3835) Bool)
(declare-fun IsWandField_13890_3835 (T@Field_28358_3835) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13890_71212 (T@Field_13890_65961) Bool)
(declare-fun IsWandField_13890_71228 (T@Field_13890_65961) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_13890_22096 (T@Field_22095_22096) Bool)
(declare-fun IsWandField_13890_22096 (T@Field_22095_22096) Bool)
(declare-fun IsPredicateField_13890_53 (T@Field_22082_53) Bool)
(declare-fun IsWandField_13890_53 (T@Field_22082_53) Bool)
(declare-fun |Set#Equal_14029| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_13890_71666 (T@PolymorphicMapType_22043 T@Ref T@Field_13890_65961) Bool)
(declare-fun HasDirectPerm_13890_22096 (T@PolymorphicMapType_22043 T@Ref T@Field_22095_22096) Bool)
(declare-fun HasDirectPerm_13890_53 (T@PolymorphicMapType_22043 T@Ref T@Field_22082_53) Bool)
(declare-fun HasDirectPerm_13890_3835 (T@PolymorphicMapType_22043 T@Ref T@Field_28358_3835) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22043 T@PolymorphicMapType_22043 T@PolymorphicMapType_22043) Bool)
(declare-fun |Set#Difference_14032| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_14032| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_14032| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_22022) (Heap1 T@PolymorphicMapType_22022) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22022) (Mask T@PolymorphicMapType_22043) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22022) (Heap1@@0 T@PolymorphicMapType_22022) (Heap2 T@PolymorphicMapType_22022) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13890_65961) ) (!  (not (select (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13890_65828) ) (!  (not (select (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28358_3835) ) (!  (not (select (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_22095_22096) ) (!  (not (select (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_22082_53) ) (!  (not (select (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.366:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_13928| (|Set#Union_13928| a@@0 b@@0) b@@0) (|Set#Union_13928| a@@0 b@@0))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Set#Union_13928| (|Set#Union_13928| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_14032| (|Set#Intersection_14032| a@@1 b@@1) b@@1) (|Set#Intersection_14032| a@@1 b@@1))
 :qid |stdinbpl.322:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_14032| (|Set#Intersection_14032| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_14032| r) o) (= r o))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_14032| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_14032| (|Set#Union_13928| a@@2 b@@2)) (|Set#Card_14032| (|Set#Intersection_14032| a@@2 b@@2))) (+ (|Set#Card_14032| a@@2) (|Set#Card_14032| b@@2)))
 :qid |stdinbpl.326:18|
 :skolemid |42|
 :pattern ( (|Set#Card_14032| (|Set#Union_13928| a@@2 b@@2)))
 :pattern ( (|Set#Card_14032| (|Set#Intersection_14032| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.369:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22022) (ExhaleHeap T@PolymorphicMapType_22022) (Mask@@0 T@PolymorphicMapType_22043) (pm_f_21 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13890_65892 Mask@@0 null pm_f_21) (IsPredicateField_13890_65919 pm_f_21)) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@0) null (PredicateMaskField_13890 pm_f_21)) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap) null (PredicateMaskField_13890 pm_f_21)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_13890_65919 pm_f_21) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap) null (PredicateMaskField_13890 pm_f_21)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22022) (ExhaleHeap@@0 T@PolymorphicMapType_22022) (Mask@@1 T@PolymorphicMapType_22043) (pm_f_21@@0 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_13890_65892 Mask@@1 null pm_f_21@@0) (IsWandField_13890_67666 pm_f_21@@0)) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@1) null (WandMaskField_13890 pm_f_21@@0)) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@0) null (WandMaskField_13890 pm_f_21@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_13890_67666 pm_f_21@@0) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@0) null (WandMaskField_13890 pm_f_21@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22022) (ExhaleHeap@@1 T@PolymorphicMapType_22022) (Mask@@2 T@PolymorphicMapType_22043) (o_43 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@2) o_43 $allocated) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@1) o_43 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@1) o_43 $allocated))
)))
(assert (forall ((p T@Field_13890_65828) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22082_22082 p v_1 p w))
 :qid |stdinbpl.264:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22082_22082 p v_1 p w))
)))
(assert  (not (IsPredicateField_13890_3835 f_7)))
(assert  (not (IsWandField_13890_3835 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22022) (ExhaleHeap@@2 T@PolymorphicMapType_22022) (Mask@@3 T@PolymorphicMapType_22043) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_22043) (o_2@@4 T@Ref) (f_4@@4 T@Field_13890_65961) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_13890_71212 f_4@@4))) (not (IsWandField_13890_71228 f_4@@4))) (<= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_22043) (o_2@@5 T@Ref) (f_4@@5 T@Field_13890_65828) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_13890_65919 f_4@@5))) (not (IsWandField_13890_67666 f_4@@5))) (<= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_22043) (o_2@@6 T@Ref) (f_4@@6 T@Field_22095_22096) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_13890_22096 f_4@@6))) (not (IsWandField_13890_22096 f_4@@6))) (<= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_22043) (o_2@@7 T@Ref) (f_4@@7 T@Field_22082_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_13890_53 f_4@@7))) (not (IsWandField_13890_53 f_4@@7))) (<= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_22043) (o_2@@8 T@Ref) (f_4@@8 T@Field_28358_3835) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_13890_3835 f_4@@8))) (not (IsWandField_13890_3835 f_4@@8))) (<= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_14029| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.351:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.350:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_14029| a@@4 b@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_22043) (o_2@@9 T@Ref) (f_4@@9 T@Field_13890_65961) ) (! (= (HasDirectPerm_13890_71666 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_71666 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_22043) (o_2@@10 T@Ref) (f_4@@10 T@Field_13890_65828) ) (! (= (HasDirectPerm_13890_65892 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_65892 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_22043) (o_2@@11 T@Ref) (f_4@@11 T@Field_22095_22096) ) (! (= (HasDirectPerm_13890_22096 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_22096 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_22043) (o_2@@12 T@Ref) (f_4@@12 T@Field_22082_53) ) (! (= (HasDirectPerm_13890_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_22043) (o_2@@13 T@Ref) (f_4@@13 T@Field_28358_3835) ) (! (= (HasDirectPerm_13890_3835 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_3835 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22022) (ExhaleHeap@@3 T@PolymorphicMapType_22022) (Mask@@14 T@PolymorphicMapType_22043) (pm_f_21@@1 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_13890_65892 Mask@@14 null pm_f_21@@1) (IsPredicateField_13890_65919 pm_f_21@@1)) (and (and (and (and (forall ((o2_21 T@Ref) (f_56 T@Field_22082_53) ) (!  (=> (select (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21 f_56) (= (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@4) o2_21 f_56) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21 f_56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21 f_56))
)) (forall ((o2_21@@0 T@Ref) (f_56@@0 T@Field_22095_22096) ) (!  (=> (select (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21@@0 f_56@@0) (= (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@4) o2_21@@0 f_56@@0) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@0 f_56@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@0 f_56@@0))
))) (forall ((o2_21@@1 T@Ref) (f_56@@1 T@Field_28358_3835) ) (!  (=> (select (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21@@1 f_56@@1) (= (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@4) o2_21@@1 f_56@@1) (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@1 f_56@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@1 f_56@@1))
))) (forall ((o2_21@@2 T@Ref) (f_56@@2 T@Field_13890_65828) ) (!  (=> (select (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21@@2 f_56@@2) (= (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@4) o2_21@@2 f_56@@2) (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@2 f_56@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@2 f_56@@2))
))) (forall ((o2_21@@3 T@Ref) (f_56@@3 T@Field_13890_65961) ) (!  (=> (select (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21@@3 f_56@@3) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) o2_21@@3 f_56@@3) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@3 f_56@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@3 f_56@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_13890_65919 pm_f_21@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22022) (ExhaleHeap@@4 T@PolymorphicMapType_22022) (Mask@@15 T@PolymorphicMapType_22043) (pm_f_21@@2 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_13890_65892 Mask@@15 null pm_f_21@@2) (IsWandField_13890_67666 pm_f_21@@2)) (and (and (and (and (forall ((o2_21@@4 T@Ref) (f_56@@4 T@Field_22082_53) ) (!  (=> (select (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@4 f_56@@4) (= (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@5) o2_21@@4 f_56@@4) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@4 f_56@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@4 f_56@@4))
)) (forall ((o2_21@@5 T@Ref) (f_56@@5 T@Field_22095_22096) ) (!  (=> (select (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@5 f_56@@5) (= (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@5) o2_21@@5 f_56@@5) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@5 f_56@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@5 f_56@@5))
))) (forall ((o2_21@@6 T@Ref) (f_56@@6 T@Field_28358_3835) ) (!  (=> (select (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@6 f_56@@6) (= (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@5) o2_21@@6 f_56@@6) (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@6 f_56@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@6 f_56@@6))
))) (forall ((o2_21@@7 T@Ref) (f_56@@7 T@Field_13890_65828) ) (!  (=> (select (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@7 f_56@@7) (= (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@5) o2_21@@7 f_56@@7) (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@7 f_56@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@7 f_56@@7))
))) (forall ((o2_21@@8 T@Ref) (f_56@@8 T@Field_13890_65961) ) (!  (=> (select (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@8 f_56@@8) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) o2_21@@8 f_56@@8) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@8 f_56@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@8 f_56@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_13890_67666 pm_f_21@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.252:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22022) (ExhaleHeap@@5 T@PolymorphicMapType_22022) (Mask@@16 T@PolymorphicMapType_22043) (o_43@@0 T@Ref) (f_56@@9 T@Field_13890_65961) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_13890_71666 Mask@@16 o_43@@0 f_56@@9) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@6) o_43@@0 f_56@@9) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@5) o_43@@0 f_56@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@5) o_43@@0 f_56@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22022) (ExhaleHeap@@6 T@PolymorphicMapType_22022) (Mask@@17 T@PolymorphicMapType_22043) (o_43@@1 T@Ref) (f_56@@10 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_13890_65892 Mask@@17 o_43@@1 f_56@@10) (= (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@7) o_43@@1 f_56@@10) (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@6) o_43@@1 f_56@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@6) o_43@@1 f_56@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22022) (ExhaleHeap@@7 T@PolymorphicMapType_22022) (Mask@@18 T@PolymorphicMapType_22043) (o_43@@2 T@Ref) (f_56@@11 T@Field_22095_22096) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_13890_22096 Mask@@18 o_43@@2 f_56@@11) (= (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@8) o_43@@2 f_56@@11) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@7) o_43@@2 f_56@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@7) o_43@@2 f_56@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22022) (ExhaleHeap@@8 T@PolymorphicMapType_22022) (Mask@@19 T@PolymorphicMapType_22043) (o_43@@3 T@Ref) (f_56@@12 T@Field_22082_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_13890_53 Mask@@19 o_43@@3 f_56@@12) (= (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@9) o_43@@3 f_56@@12) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@8) o_43@@3 f_56@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@8) o_43@@3 f_56@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22022) (ExhaleHeap@@9 T@PolymorphicMapType_22022) (Mask@@20 T@PolymorphicMapType_22043) (o_43@@4 T@Ref) (f_56@@13 T@Field_28358_3835) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_13890_3835 Mask@@20 o_43@@4 f_56@@13) (= (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@10) o_43@@4 f_56@@13) (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@9) o_43@@4 f_56@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@9) o_43@@4 f_56@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_13890_65961) ) (! (= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_13890_65828) ) (! (= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_22095_22096) ) (! (= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22082_53) ) (! (= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_28358_3835) ) (! (= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22043) (SummandMask1 T@PolymorphicMapType_22043) (SummandMask2 T@PolymorphicMapType_22043) (o_2@@19 T@Ref) (f_4@@19 T@Field_13890_65961) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22043) (SummandMask1@@0 T@PolymorphicMapType_22043) (SummandMask2@@0 T@PolymorphicMapType_22043) (o_2@@20 T@Ref) (f_4@@20 T@Field_13890_65828) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22043) (SummandMask1@@1 T@PolymorphicMapType_22043) (SummandMask2@@1 T@PolymorphicMapType_22043) (o_2@@21 T@Ref) (f_4@@21 T@Field_22095_22096) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22043) (SummandMask1@@2 T@PolymorphicMapType_22043) (SummandMask2@@2 T@PolymorphicMapType_22043) (o_2@@22 T@Ref) (f_4@@22 T@Field_22082_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22043) (SummandMask1@@3 T@PolymorphicMapType_22043) (SummandMask2@@3 T@PolymorphicMapType_22043) (o_2@@23 T@Ref) (f_4@@23 T@Field_28358_3835) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_14032| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.315:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_14032| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_14032| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_14032| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_14032| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.330:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_14032| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_14032| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_14029| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.352:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_14029| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_14032| a@@8 x) y))
 :qid |stdinbpl.295:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_14032| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_13928| a@@9 b@@7) y@@0))
 :qid |stdinbpl.305:18|
 :skolemid |35|
 :pattern ( (|Set#Union_13928| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_13928| a@@10 b@@8) y@@1))
 :qid |stdinbpl.307:18|
 :skolemid |36|
 :pattern ( (|Set#Union_13928| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_14032| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.291:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_14032| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_14032| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.332:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_14032| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_14032| (|Set#Difference_14032| a@@13 b@@10)) (|Set#Card_14032| (|Set#Difference_14032| b@@10 a@@13))) (|Set#Card_14032| (|Set#Intersection_14032| a@@13 b@@10))) (|Set#Card_14032| (|Set#Union_13928| a@@13 b@@10))) (= (|Set#Card_14032| (|Set#Difference_14032| a@@13 b@@10)) (- (|Set#Card_14032| a@@13) (|Set#Card_14032| (|Set#Intersection_14032| a@@13 b@@10)))))
 :qid |stdinbpl.334:18|
 :skolemid |45|
 :pattern ( (|Set#Card_14032| (|Set#Difference_14032| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_14032| s))
 :qid |stdinbpl.277:18|
 :skolemid |22|
 :pattern ( (|Set#Card_14032| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_14032| a@@14 x@@1) x@@1)
 :qid |stdinbpl.293:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_14032| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_14032| (|Set#UnionOne_14032| a@@15 x@@2)) (|Set#Card_14032| a@@15)))
 :qid |stdinbpl.297:18|
 :skolemid |32|
 :pattern ( (|Set#Card_14032| (|Set#UnionOne_14032| a@@15 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_14032| (|Set#Singleton_14032| r@@0)) 1)
 :qid |stdinbpl.288:18|
 :skolemid |28|
 :pattern ( (|Set#Card_14032| (|Set#Singleton_14032| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_14032| r@@1) r@@1)
 :qid |stdinbpl.286:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_14032| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_13928| a@@16 (|Set#Union_13928| a@@16 b@@11)) (|Set#Union_13928| a@@16 b@@11))
 :qid |stdinbpl.320:18|
 :skolemid |39|
 :pattern ( (|Set#Union_13928| a@@16 (|Set#Union_13928| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_14032| a@@17 (|Set#Intersection_14032| a@@17 b@@12)) (|Set#Intersection_14032| a@@17 b@@12))
 :qid |stdinbpl.324:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_14032| a@@17 (|Set#Intersection_14032| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_14032| o@@4))
 :qid |stdinbpl.280:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_14032| o@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22022) (o_11 T@Ref) (f_57 T@Field_13890_65828) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@11) (store (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@11) o_11 f_57 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@11) (store (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@11) o_11 f_57 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22022) (o_11@@0 T@Ref) (f_57@@0 T@Field_13890_65961) (v@@0 T@PolymorphicMapType_22571) ) (! (succHeap Heap@@12 (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@12) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@12) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@12) (store (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@12) o_11@@0 f_57@@0 v@@0) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@12) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@12) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@12) (store (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@12) o_11@@0 f_57@@0 v@@0) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22022) (o_11@@1 T@Ref) (f_57@@1 T@Field_28358_3835) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@13) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@13) (store (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@13) o_11@@1 f_57@@1 v@@1) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@13) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@13) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@13) (store (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@13) o_11@@1 f_57@@1 v@@1) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@13) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22022) (o_11@@2 T@Ref) (f_57@@2 T@Field_22095_22096) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@14) (store (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@14) o_11@@2 f_57@@2 v@@2) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@14) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@14) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@14) (store (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@14) o_11@@2 f_57@@2 v@@2) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@14) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@14) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22022) (o_11@@3 T@Ref) (f_57@@3 T@Field_22082_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_22022 (store (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@15) o_11@@3 f_57@@3 v@@3) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (store (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@15) o_11@@3 f_57@@3 v@@3) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@15)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.364:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.365:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_14032| s@@0) 0) (= s@@0 |Set#Empty_14032|)) (=> (not (= (|Set#Card_14032| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.283:33|
 :skolemid |24|
))))
 :qid |stdinbpl.281:18|
 :skolemid |25|
 :pattern ( (|Set#Card_14032| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_14032| (|Set#UnionOne_14032| a@@20 x@@4)) (+ (|Set#Card_14032| a@@20) 1)))
 :qid |stdinbpl.299:18|
 :skolemid |33|
 :pattern ( (|Set#Card_14032| (|Set#UnionOne_14032| a@@20 x@@4)))
)))
(assert (forall ((o_11@@4 T@Ref) (f_17 T@Field_22095_22096) (Heap@@16 T@PolymorphicMapType_22022) ) (!  (=> (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@16) o_11@@4 $allocated) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@16) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@16) o_11@@4 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@16) o_11@@4 f_17))
)))
(assert (forall ((p@@1 T@Field_13890_65828) (v_1@@0 T@FrameType) (q T@Field_13890_65828) (w@@0 T@FrameType) (r@@2 T@Field_13890_65828) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22082_22082 p@@1 v_1@@0 q w@@0) (InsidePredicate_22082_22082 q w@@0 r@@2 u)) (InsidePredicate_22082_22082 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.259:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22082_22082 p@@1 v_1@@0 q w@@0) (InsidePredicate_22082_22082 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.370:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_13928| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.303:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_13928| a@@22 b@@15) o@@5))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun S () (Array T@Ref Bool))
(declare-fun Heap@@17 () T@PolymorphicMapType_22022)
(declare-fun QPMask@0 () T@PolymorphicMapType_22043)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) T@Ref)
(declare-fun b_24 () T@Ref)
(set-info :boogie-vc-id m5)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((s_1_1 T@Ref) (s_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1_1 s_1_2)) (select S s_1_1)) (select S s_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_1_1 s_1_2)))
 :qid |stdinbpl.1738:15|
 :skolemid |197|
))) (=> (forall ((s_1_1@@0 T@Ref) (s_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1_1@@0 s_1_2@@0)) (select S s_1_1@@0)) (select S s_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_1_1@@0 s_1_2@@0)))
 :qid |stdinbpl.1738:15|
 :skolemid |197|
)) (=> (and (and (forall ((s_1_1@@1 T@Ref) ) (!  (=> (and (select S s_1_1@@1) (< NoPerm FullPerm)) (and (qpRange18 s_1_1@@1) (= (invRecv18 s_1_1@@1) s_1_1@@1)))
 :qid |stdinbpl.1744:22|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@17) s_1_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| QPMask@0) s_1_1@@1 f_7))
 :pattern ( (select S s_1_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select S (invRecv18 o_9)) (< NoPerm FullPerm)) (qpRange18 o_9)) (= (invRecv18 o_9) o_9))
 :qid |stdinbpl.1748:22|
 :skolemid |199|
 :pattern ( (invRecv18 o_9))
))) (and (forall ((s_1_1@@2 T@Ref) ) (!  (=> (select S s_1_1@@2) (not (= s_1_1@@2 null)))
 :qid |stdinbpl.1754:22|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@17) s_1_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| QPMask@0) s_1_1@@2 f_7))
 :pattern ( (select S s_1_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select S (invRecv18 o_9@@0)) (< NoPerm FullPerm)) (qpRange18 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv18 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (select S (invRecv18 o_9@@0)) (< NoPerm FullPerm)) (qpRange18 o_9@@0))) (= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.1760:22|
 :skolemid |201|
 :pattern ( (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_22082_53) ) (!  (=> true (= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.1764:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_22095_22096) ) (!  (=> true (= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1764:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_28358_3835) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1764:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_13890_65828) ) (!  (=> true (= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1764:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_13890_65961) ) (!  (=> true (= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1764:29|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| QPMask@0) o_9@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (and (state Heap@@17 QPMask@0) (select S b_24)) (and (state Heap@@17 QPMask@0) (= (ControlFlow 0 3) (- 0 2))))) (HasDirectPerm_13890_3835 QPMask@0 b_24 f_7)))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@17) b_24 $allocated)) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-sort T@Field_22082_53 0)
(declare-sort T@Field_22095_22096 0)
(declare-sort T@Field_28358_3835 0)
(declare-sort T@Field_13890_65961 0)
(declare-sort T@Field_13890_65828 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_22043 0)) (((PolymorphicMapType_22043 (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| (Array T@Ref T@Field_28358_3835 Real)) (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| (Array T@Ref T@Field_22082_53 Real)) (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| (Array T@Ref T@Field_22095_22096 Real)) (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| (Array T@Ref T@Field_13890_65828 Real)) (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| (Array T@Ref T@Field_13890_65961 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22571 0)) (((PolymorphicMapType_22571 (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| (Array T@Ref T@Field_22082_53 Bool)) (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| (Array T@Ref T@Field_22095_22096 Bool)) (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| (Array T@Ref T@Field_28358_3835 Bool)) (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| (Array T@Ref T@Field_13890_65828 Bool)) (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| (Array T@Ref T@Field_13890_65961 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22022 0)) (((PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| (Array T@Ref T@Field_22082_53 Bool)) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| (Array T@Ref T@Field_22095_22096 T@Ref)) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| (Array T@Ref T@Field_28358_3835 Int)) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| (Array T@Ref T@Field_13890_65961 T@PolymorphicMapType_22571)) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| (Array T@Ref T@Field_13890_65828 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_22082_53)
(declare-fun f_7 () T@Field_28358_3835)
(declare-fun succHeap (T@PolymorphicMapType_22022 T@PolymorphicMapType_22022) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22022 T@PolymorphicMapType_22022) Bool)
(declare-fun state (T@PolymorphicMapType_22022 T@PolymorphicMapType_22043) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22043) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_22571)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_13928| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_14032| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_14032| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_14032| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22022 T@PolymorphicMapType_22022 T@PolymorphicMapType_22043) Bool)
(declare-fun IsPredicateField_13890_65919 (T@Field_13890_65828) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_13890 (T@Field_13890_65828) T@Field_13890_65961)
(declare-fun HasDirectPerm_13890_65892 (T@PolymorphicMapType_22043 T@Ref T@Field_13890_65828) Bool)
(declare-fun IsWandField_13890_67666 (T@Field_13890_65828) Bool)
(declare-fun WandMaskField_13890 (T@Field_13890_65828) T@Field_13890_65961)
(declare-fun dummyHeap () T@PolymorphicMapType_22022)
(declare-fun ZeroMask () T@PolymorphicMapType_22043)
(declare-fun InsidePredicate_22082_22082 (T@Field_13890_65828 T@FrameType T@Field_13890_65828 T@FrameType) Bool)
(declare-fun IsPredicateField_13890_3835 (T@Field_28358_3835) Bool)
(declare-fun IsWandField_13890_3835 (T@Field_28358_3835) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13890_71212 (T@Field_13890_65961) Bool)
(declare-fun IsWandField_13890_71228 (T@Field_13890_65961) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_13890_22096 (T@Field_22095_22096) Bool)
(declare-fun IsWandField_13890_22096 (T@Field_22095_22096) Bool)
(declare-fun IsPredicateField_13890_53 (T@Field_22082_53) Bool)
(declare-fun IsWandField_13890_53 (T@Field_22082_53) Bool)
(declare-fun |Set#Equal_14029| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_13890_71666 (T@PolymorphicMapType_22043 T@Ref T@Field_13890_65961) Bool)
(declare-fun HasDirectPerm_13890_22096 (T@PolymorphicMapType_22043 T@Ref T@Field_22095_22096) Bool)
(declare-fun HasDirectPerm_13890_53 (T@PolymorphicMapType_22043 T@Ref T@Field_22082_53) Bool)
(declare-fun HasDirectPerm_13890_3835 (T@PolymorphicMapType_22043 T@Ref T@Field_28358_3835) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22043 T@PolymorphicMapType_22043 T@PolymorphicMapType_22043) Bool)
(declare-fun |Set#Difference_14032| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_14032| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_14032| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_22022) (Heap1 T@PolymorphicMapType_22022) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22022) (Mask T@PolymorphicMapType_22043) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22022) (Heap1@@0 T@PolymorphicMapType_22022) (Heap2 T@PolymorphicMapType_22022) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13890_65961) ) (!  (not (select (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13890_65828) ) (!  (not (select (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28358_3835) ) (!  (not (select (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_22095_22096) ) (!  (not (select (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_22082_53) ) (!  (not (select (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.366:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_13928| (|Set#Union_13928| a@@0 b@@0) b@@0) (|Set#Union_13928| a@@0 b@@0))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Set#Union_13928| (|Set#Union_13928| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_14032| (|Set#Intersection_14032| a@@1 b@@1) b@@1) (|Set#Intersection_14032| a@@1 b@@1))
 :qid |stdinbpl.322:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_14032| (|Set#Intersection_14032| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_14032| r) o) (= r o))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_14032| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_14032| (|Set#Union_13928| a@@2 b@@2)) (|Set#Card_14032| (|Set#Intersection_14032| a@@2 b@@2))) (+ (|Set#Card_14032| a@@2) (|Set#Card_14032| b@@2)))
 :qid |stdinbpl.326:18|
 :skolemid |42|
 :pattern ( (|Set#Card_14032| (|Set#Union_13928| a@@2 b@@2)))
 :pattern ( (|Set#Card_14032| (|Set#Intersection_14032| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.369:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22022) (ExhaleHeap T@PolymorphicMapType_22022) (Mask@@0 T@PolymorphicMapType_22043) (pm_f_21 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13890_65892 Mask@@0 null pm_f_21) (IsPredicateField_13890_65919 pm_f_21)) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@0) null (PredicateMaskField_13890 pm_f_21)) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap) null (PredicateMaskField_13890 pm_f_21)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_13890_65919 pm_f_21) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap) null (PredicateMaskField_13890 pm_f_21)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22022) (ExhaleHeap@@0 T@PolymorphicMapType_22022) (Mask@@1 T@PolymorphicMapType_22043) (pm_f_21@@0 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_13890_65892 Mask@@1 null pm_f_21@@0) (IsWandField_13890_67666 pm_f_21@@0)) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@1) null (WandMaskField_13890 pm_f_21@@0)) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@0) null (WandMaskField_13890 pm_f_21@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_13890_67666 pm_f_21@@0) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@0) null (WandMaskField_13890 pm_f_21@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22022) (ExhaleHeap@@1 T@PolymorphicMapType_22022) (Mask@@2 T@PolymorphicMapType_22043) (o_43 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@2) o_43 $allocated) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@1) o_43 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@1) o_43 $allocated))
)))
(assert (forall ((p T@Field_13890_65828) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22082_22082 p v_1 p w))
 :qid |stdinbpl.264:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22082_22082 p v_1 p w))
)))
(assert  (not (IsPredicateField_13890_3835 f_7)))
(assert  (not (IsWandField_13890_3835 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22022) (ExhaleHeap@@2 T@PolymorphicMapType_22022) (Mask@@3 T@PolymorphicMapType_22043) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_22043) (o_2@@4 T@Ref) (f_4@@4 T@Field_13890_65961) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_13890_71212 f_4@@4))) (not (IsWandField_13890_71228 f_4@@4))) (<= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_22043) (o_2@@5 T@Ref) (f_4@@5 T@Field_13890_65828) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_13890_65919 f_4@@5))) (not (IsWandField_13890_67666 f_4@@5))) (<= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_22043) (o_2@@6 T@Ref) (f_4@@6 T@Field_22095_22096) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_13890_22096 f_4@@6))) (not (IsWandField_13890_22096 f_4@@6))) (<= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_22043) (o_2@@7 T@Ref) (f_4@@7 T@Field_22082_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_13890_53 f_4@@7))) (not (IsWandField_13890_53 f_4@@7))) (<= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_22043) (o_2@@8 T@Ref) (f_4@@8 T@Field_28358_3835) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_13890_3835 f_4@@8))) (not (IsWandField_13890_3835 f_4@@8))) (<= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_14029| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.351:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.350:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_14029| a@@4 b@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_22043) (o_2@@9 T@Ref) (f_4@@9 T@Field_13890_65961) ) (! (= (HasDirectPerm_13890_71666 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_71666 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_22043) (o_2@@10 T@Ref) (f_4@@10 T@Field_13890_65828) ) (! (= (HasDirectPerm_13890_65892 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_65892 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_22043) (o_2@@11 T@Ref) (f_4@@11 T@Field_22095_22096) ) (! (= (HasDirectPerm_13890_22096 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_22096 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_22043) (o_2@@12 T@Ref) (f_4@@12 T@Field_22082_53) ) (! (= (HasDirectPerm_13890_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_22043) (o_2@@13 T@Ref) (f_4@@13 T@Field_28358_3835) ) (! (= (HasDirectPerm_13890_3835 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13890_3835 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22022) (ExhaleHeap@@3 T@PolymorphicMapType_22022) (Mask@@14 T@PolymorphicMapType_22043) (pm_f_21@@1 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_13890_65892 Mask@@14 null pm_f_21@@1) (IsPredicateField_13890_65919 pm_f_21@@1)) (and (and (and (and (forall ((o2_21 T@Ref) (f_56 T@Field_22082_53) ) (!  (=> (select (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21 f_56) (= (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@4) o2_21 f_56) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21 f_56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21 f_56))
)) (forall ((o2_21@@0 T@Ref) (f_56@@0 T@Field_22095_22096) ) (!  (=> (select (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21@@0 f_56@@0) (= (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@4) o2_21@@0 f_56@@0) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@0 f_56@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@0 f_56@@0))
))) (forall ((o2_21@@1 T@Ref) (f_56@@1 T@Field_28358_3835) ) (!  (=> (select (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21@@1 f_56@@1) (= (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@4) o2_21@@1 f_56@@1) (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@1 f_56@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@1 f_56@@1))
))) (forall ((o2_21@@2 T@Ref) (f_56@@2 T@Field_13890_65828) ) (!  (=> (select (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21@@2 f_56@@2) (= (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@4) o2_21@@2 f_56@@2) (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@2 f_56@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@2 f_56@@2))
))) (forall ((o2_21@@3 T@Ref) (f_56@@3 T@Field_13890_65961) ) (!  (=> (select (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) null (PredicateMaskField_13890 pm_f_21@@1))) o2_21@@3 f_56@@3) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@4) o2_21@@3 f_56@@3) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@3 f_56@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@3) o2_21@@3 f_56@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_13890_65919 pm_f_21@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22022) (ExhaleHeap@@4 T@PolymorphicMapType_22022) (Mask@@15 T@PolymorphicMapType_22043) (pm_f_21@@2 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_13890_65892 Mask@@15 null pm_f_21@@2) (IsWandField_13890_67666 pm_f_21@@2)) (and (and (and (and (forall ((o2_21@@4 T@Ref) (f_56@@4 T@Field_22082_53) ) (!  (=> (select (|PolymorphicMapType_22571_22082_53#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@4 f_56@@4) (= (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@5) o2_21@@4 f_56@@4) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@4 f_56@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@4 f_56@@4))
)) (forall ((o2_21@@5 T@Ref) (f_56@@5 T@Field_22095_22096) ) (!  (=> (select (|PolymorphicMapType_22571_22082_22096#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@5 f_56@@5) (= (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@5) o2_21@@5 f_56@@5) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@5 f_56@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@5 f_56@@5))
))) (forall ((o2_21@@6 T@Ref) (f_56@@6 T@Field_28358_3835) ) (!  (=> (select (|PolymorphicMapType_22571_22082_3835#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@6 f_56@@6) (= (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@5) o2_21@@6 f_56@@6) (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@6 f_56@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@6 f_56@@6))
))) (forall ((o2_21@@7 T@Ref) (f_56@@7 T@Field_13890_65828) ) (!  (=> (select (|PolymorphicMapType_22571_22082_65828#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@7 f_56@@7) (= (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@5) o2_21@@7 f_56@@7) (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@7 f_56@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@7 f_56@@7))
))) (forall ((o2_21@@8 T@Ref) (f_56@@8 T@Field_13890_65961) ) (!  (=> (select (|PolymorphicMapType_22571_22082_67139#PolymorphicMapType_22571| (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) null (WandMaskField_13890 pm_f_21@@2))) o2_21@@8 f_56@@8) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@5) o2_21@@8 f_56@@8) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@8 f_56@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@4) o2_21@@8 f_56@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_13890_67666 pm_f_21@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.252:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22022) (ExhaleHeap@@5 T@PolymorphicMapType_22022) (Mask@@16 T@PolymorphicMapType_22043) (o_43@@0 T@Ref) (f_56@@9 T@Field_13890_65961) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_13890_71666 Mask@@16 o_43@@0 f_56@@9) (= (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@6) o_43@@0 f_56@@9) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@5) o_43@@0 f_56@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| ExhaleHeap@@5) o_43@@0 f_56@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22022) (ExhaleHeap@@6 T@PolymorphicMapType_22022) (Mask@@17 T@PolymorphicMapType_22043) (o_43@@1 T@Ref) (f_56@@10 T@Field_13890_65828) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_13890_65892 Mask@@17 o_43@@1 f_56@@10) (= (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@7) o_43@@1 f_56@@10) (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@6) o_43@@1 f_56@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| ExhaleHeap@@6) o_43@@1 f_56@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22022) (ExhaleHeap@@7 T@PolymorphicMapType_22022) (Mask@@18 T@PolymorphicMapType_22043) (o_43@@2 T@Ref) (f_56@@11 T@Field_22095_22096) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_13890_22096 Mask@@18 o_43@@2 f_56@@11) (= (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@8) o_43@@2 f_56@@11) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@7) o_43@@2 f_56@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| ExhaleHeap@@7) o_43@@2 f_56@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22022) (ExhaleHeap@@8 T@PolymorphicMapType_22022) (Mask@@19 T@PolymorphicMapType_22043) (o_43@@3 T@Ref) (f_56@@12 T@Field_22082_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_13890_53 Mask@@19 o_43@@3 f_56@@12) (= (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@9) o_43@@3 f_56@@12) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@8) o_43@@3 f_56@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| ExhaleHeap@@8) o_43@@3 f_56@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22022) (ExhaleHeap@@9 T@PolymorphicMapType_22022) (Mask@@20 T@PolymorphicMapType_22043) (o_43@@4 T@Ref) (f_56@@13 T@Field_28358_3835) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_13890_3835 Mask@@20 o_43@@4 f_56@@13) (= (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@10) o_43@@4 f_56@@13) (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@9) o_43@@4 f_56@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| ExhaleHeap@@9) o_43@@4 f_56@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_13890_65961) ) (! (= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_13890_65828) ) (! (= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_22095_22096) ) (! (= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22082_53) ) (! (= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_28358_3835) ) (! (= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22043) (SummandMask1 T@PolymorphicMapType_22043) (SummandMask2 T@PolymorphicMapType_22043) (o_2@@19 T@Ref) (f_4@@19 T@Field_13890_65961) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22043_13890_70083#PolymorphicMapType_22043| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22043) (SummandMask1@@0 T@PolymorphicMapType_22043) (SummandMask2@@0 T@PolymorphicMapType_22043) (o_2@@20 T@Ref) (f_4@@20 T@Field_13890_65828) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22043_13890_65828#PolymorphicMapType_22043| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22043) (SummandMask1@@1 T@PolymorphicMapType_22043) (SummandMask2@@1 T@PolymorphicMapType_22043) (o_2@@21 T@Ref) (f_4@@21 T@Field_22095_22096) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22043_13890_22096#PolymorphicMapType_22043| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22043) (SummandMask1@@2 T@PolymorphicMapType_22043) (SummandMask2@@2 T@PolymorphicMapType_22043) (o_2@@22 T@Ref) (f_4@@22 T@Field_22082_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22043_13890_53#PolymorphicMapType_22043| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22043) (SummandMask1@@3 T@PolymorphicMapType_22043) (SummandMask2@@3 T@PolymorphicMapType_22043) (o_2@@23 T@Ref) (f_4@@23 T@Field_28358_3835) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22043_13890_3835#PolymorphicMapType_22043| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_14032| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.315:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_14032| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_14032| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_14032| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_14032| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.330:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_14032| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_14032| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_14029| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.352:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_14029| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_14032| a@@8 x) y))
 :qid |stdinbpl.295:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_14032| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_13928| a@@9 b@@7) y@@0))
 :qid |stdinbpl.305:18|
 :skolemid |35|
 :pattern ( (|Set#Union_13928| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_13928| a@@10 b@@8) y@@1))
 :qid |stdinbpl.307:18|
 :skolemid |36|
 :pattern ( (|Set#Union_13928| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_14032| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.291:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_14032| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_14032| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.332:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_14032| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_14032| (|Set#Difference_14032| a@@13 b@@10)) (|Set#Card_14032| (|Set#Difference_14032| b@@10 a@@13))) (|Set#Card_14032| (|Set#Intersection_14032| a@@13 b@@10))) (|Set#Card_14032| (|Set#Union_13928| a@@13 b@@10))) (= (|Set#Card_14032| (|Set#Difference_14032| a@@13 b@@10)) (- (|Set#Card_14032| a@@13) (|Set#Card_14032| (|Set#Intersection_14032| a@@13 b@@10)))))
 :qid |stdinbpl.334:18|
 :skolemid |45|
 :pattern ( (|Set#Card_14032| (|Set#Difference_14032| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_14032| s))
 :qid |stdinbpl.277:18|
 :skolemid |22|
 :pattern ( (|Set#Card_14032| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_14032| a@@14 x@@1) x@@1)
 :qid |stdinbpl.293:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_14032| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_14032| (|Set#UnionOne_14032| a@@15 x@@2)) (|Set#Card_14032| a@@15)))
 :qid |stdinbpl.297:18|
 :skolemid |32|
 :pattern ( (|Set#Card_14032| (|Set#UnionOne_14032| a@@15 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_14032| (|Set#Singleton_14032| r@@0)) 1)
 :qid |stdinbpl.288:18|
 :skolemid |28|
 :pattern ( (|Set#Card_14032| (|Set#Singleton_14032| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_14032| r@@1) r@@1)
 :qid |stdinbpl.286:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_14032| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_13928| a@@16 (|Set#Union_13928| a@@16 b@@11)) (|Set#Union_13928| a@@16 b@@11))
 :qid |stdinbpl.320:18|
 :skolemid |39|
 :pattern ( (|Set#Union_13928| a@@16 (|Set#Union_13928| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_14032| a@@17 (|Set#Intersection_14032| a@@17 b@@12)) (|Set#Intersection_14032| a@@17 b@@12))
 :qid |stdinbpl.324:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_14032| a@@17 (|Set#Intersection_14032| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_14032| o@@4))
 :qid |stdinbpl.280:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_14032| o@@4))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22022) (o_11 T@Ref) (f_57 T@Field_13890_65828) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@11) (store (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@11) o_11 f_57 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@11) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@11) (store (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@11) o_11 f_57 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22022) (o_11@@0 T@Ref) (f_57@@0 T@Field_13890_65961) (v@@0 T@PolymorphicMapType_22571) ) (! (succHeap Heap@@12 (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@12) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@12) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@12) (store (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@12) o_11@@0 f_57@@0 v@@0) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@12) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@12) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@12) (store (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@12) o_11@@0 f_57@@0 v@@0) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22022) (o_11@@1 T@Ref) (f_57@@1 T@Field_28358_3835) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@13) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@13) (store (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@13) o_11@@1 f_57@@1 v@@1) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@13) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@13) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@13) (store (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@13) o_11@@1 f_57@@1 v@@1) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@13) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22022) (o_11@@2 T@Ref) (f_57@@2 T@Field_22095_22096) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@14) (store (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@14) o_11@@2 f_57@@2 v@@2) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@14) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@14) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@14) (store (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@14) o_11@@2 f_57@@2 v@@2) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@14) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@14) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22022) (o_11@@3 T@Ref) (f_57@@3 T@Field_22082_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_22022 (store (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@15) o_11@@3 f_57@@3 v@@3) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22022 (store (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@15) o_11@@3 f_57@@3 v@@3) (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_13890_3835#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_13890_66005#PolymorphicMapType_22022| Heap@@15) (|PolymorphicMapType_22022_22082_65828#PolymorphicMapType_22022| Heap@@15)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.364:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.365:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_14032| s@@0) 0) (= s@@0 |Set#Empty_14032|)) (=> (not (= (|Set#Card_14032| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.283:33|
 :skolemid |24|
))))
 :qid |stdinbpl.281:18|
 :skolemid |25|
 :pattern ( (|Set#Card_14032| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_14032| (|Set#UnionOne_14032| a@@20 x@@4)) (+ (|Set#Card_14032| a@@20) 1)))
 :qid |stdinbpl.299:18|
 :skolemid |33|
 :pattern ( (|Set#Card_14032| (|Set#UnionOne_14032| a@@20 x@@4)))
)))
(assert (forall ((o_11@@4 T@Ref) (f_17 T@Field_22095_22096) (Heap@@16 T@PolymorphicMapType_22022) ) (!  (=> (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@16) o_11@@4 $allocated) (select (|PolymorphicMapType_22022_13493_53#PolymorphicMapType_22022| Heap@@16) (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@16) o_11@@4 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22022_13496_13497#PolymorphicMapType_22022| Heap@@16) o_11@@4 f_17))
)))
(assert (forall ((p@@1 T@Field_13890_65828) (v_1@@0 T@FrameType) (q T@Field_13890_65828) (w@@0 T@FrameType) (r@@2 T@Field_13890_65828) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22082_22082 p@@1 v_1@@0 q w@@0) (InsidePredicate_22082_22082 q w@@0 r@@2 u)) (InsidePredicate_22082_22082 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.259:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22082_22082 p@@1 v_1@@0 q w@@0) (InsidePredicate_22082_22082 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.370:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_13928| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.303:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_13928| a@@22 b@@15) o@@5))
)))
; Valid

