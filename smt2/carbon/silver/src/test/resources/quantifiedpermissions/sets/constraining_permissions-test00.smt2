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
(declare-sort T@Field_11710_53 0)
(declare-sort T@Field_11723_11724 0)
(declare-sort T@Field_11710_32838 0)
(declare-sort T@Field_11710_32705 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11671 0)) (((PolymorphicMapType_11671 (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| (Array T@Ref T@Field_11723_11724 Real)) (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| (Array T@Ref T@Field_11710_53 Real)) (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| (Array T@Ref T@Field_11710_32705 Real)) (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| (Array T@Ref T@Field_11710_32838 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12199 0)) (((PolymorphicMapType_12199 (|PolymorphicMapType_12199_11710_53#PolymorphicMapType_12199| (Array T@Ref T@Field_11710_53 Bool)) (|PolymorphicMapType_12199_11710_11724#PolymorphicMapType_12199| (Array T@Ref T@Field_11723_11724 Bool)) (|PolymorphicMapType_12199_11710_32705#PolymorphicMapType_12199| (Array T@Ref T@Field_11710_32705 Bool)) (|PolymorphicMapType_12199_11710_33818#PolymorphicMapType_12199| (Array T@Ref T@Field_11710_32838 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11650 0)) (((PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| (Array T@Ref T@Field_11710_53 Bool)) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| (Array T@Ref T@Field_11723_11724 T@Ref)) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| (Array T@Ref T@Field_11710_32838 T@PolymorphicMapType_12199)) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| (Array T@Ref T@Field_11710_32705 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11710_53)
(declare-fun f_7 () T@Field_11723_11724)
(declare-fun succHeap (T@PolymorphicMapType_11650 T@PolymorphicMapType_11650) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11650 T@PolymorphicMapType_11650) Bool)
(declare-fun state (T@PolymorphicMapType_11650 T@PolymorphicMapType_11671) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11671) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12199)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_7370| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_7427| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_7427| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_7427| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11650 T@PolymorphicMapType_11650 T@PolymorphicMapType_11671) Bool)
(declare-fun IsPredicateField_11710_32796 (T@Field_11710_32705) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11710 (T@Field_11710_32705) T@Field_11710_32838)
(declare-fun HasDirectPerm_11710_32769 (T@PolymorphicMapType_11671 T@Ref T@Field_11710_32705) Bool)
(declare-fun IsWandField_11710_34345 (T@Field_11710_32705) Bool)
(declare-fun WandMaskField_11710 (T@Field_11710_32705) T@Field_11710_32838)
(declare-fun dummyHeap () T@PolymorphicMapType_11650)
(declare-fun ZeroMask () T@PolymorphicMapType_11671)
(declare-fun InsidePredicate_11710_11710 (T@Field_11710_32705 T@FrameType T@Field_11710_32705 T@FrameType) Bool)
(declare-fun IsPredicateField_7320_7321 (T@Field_11723_11724) Bool)
(declare-fun IsWandField_7320_7321 (T@Field_11723_11724) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7320_37279 (T@Field_11710_32838) Bool)
(declare-fun IsWandField_7320_37295 (T@Field_11710_32838) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7320_53 (T@Field_11710_53) Bool)
(declare-fun IsWandField_7320_53 (T@Field_11710_53) Bool)
(declare-fun HasDirectPerm_11710_37650 (T@PolymorphicMapType_11671 T@Ref T@Field_11710_32838) Bool)
(declare-fun HasDirectPerm_11710_11724 (T@PolymorphicMapType_11671 T@Ref T@Field_11723_11724) Bool)
(declare-fun HasDirectPerm_11710_53 (T@PolymorphicMapType_11671 T@Ref T@Field_11710_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11671 T@PolymorphicMapType_11671 T@PolymorphicMapType_11671) Bool)
(declare-fun |Set#Difference_7424| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun foo_2 (T@Ref) Real)
(declare-fun |Set#UnionOne_7427| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_7427| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_11650) (Heap1 T@PolymorphicMapType_11650) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11650) (Mask T@PolymorphicMapType_11671) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11650) (Heap1@@0 T@PolymorphicMapType_11650) (Heap2 T@PolymorphicMapType_11650) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11710_32838) ) (!  (not (select (|PolymorphicMapType_12199_11710_33818#PolymorphicMapType_12199| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12199_11710_33818#PolymorphicMapType_12199| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11710_32705) ) (!  (not (select (|PolymorphicMapType_12199_11710_32705#PolymorphicMapType_12199| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12199_11710_32705#PolymorphicMapType_12199| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11723_11724) ) (!  (not (select (|PolymorphicMapType_12199_11710_11724#PolymorphicMapType_12199| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12199_11710_11724#PolymorphicMapType_12199| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11710_53) ) (!  (not (select (|PolymorphicMapType_12199_11710_53#PolymorphicMapType_12199| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12199_11710_53#PolymorphicMapType_12199| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.318:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_7370| (|Set#Union_7370| a@@0 b@@0) b@@0) (|Set#Union_7370| a@@0 b@@0))
 :qid |stdinbpl.270:18|
 :skolemid |38|
 :pattern ( (|Set#Union_7370| (|Set#Union_7370| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_7427| (|Set#Intersection_7427| a@@1 b@@1) b@@1) (|Set#Intersection_7427| a@@1 b@@1))
 :qid |stdinbpl.274:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_7427| (|Set#Intersection_7427| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_7427| r) o) (= r o))
 :qid |stdinbpl.239:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_7427| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_7427| (|Set#Union_7370| a@@2 b@@2)) (|Set#Card_7427| (|Set#Intersection_7427| a@@2 b@@2))) (+ (|Set#Card_7427| a@@2) (|Set#Card_7427| b@@2)))
 :qid |stdinbpl.278:18|
 :skolemid |42|
 :pattern ( (|Set#Card_7427| (|Set#Union_7370| a@@2 b@@2)))
 :pattern ( (|Set#Card_7427| (|Set#Intersection_7427| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.321:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11650) (ExhaleHeap T@PolymorphicMapType_11650) (Mask@@0 T@PolymorphicMapType_11671) (pm_f_30 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11710_32769 Mask@@0 null pm_f_30) (IsPredicateField_11710_32796 pm_f_30)) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@0) null (PredicateMaskField_11710 pm_f_30)) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap) null (PredicateMaskField_11710 pm_f_30)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11710_32796 pm_f_30) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap) null (PredicateMaskField_11710 pm_f_30)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11650) (ExhaleHeap@@0 T@PolymorphicMapType_11650) (Mask@@1 T@PolymorphicMapType_11671) (pm_f_30@@0 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11710_32769 Mask@@1 null pm_f_30@@0) (IsWandField_11710_34345 pm_f_30@@0)) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@1) null (WandMaskField_11710 pm_f_30@@0)) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@0) null (WandMaskField_11710 pm_f_30@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11710_34345 pm_f_30@@0) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@0) null (WandMaskField_11710 pm_f_30@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11650) (ExhaleHeap@@1 T@PolymorphicMapType_11650) (Mask@@2 T@PolymorphicMapType_11671) (pm_f_30@@1 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11710_32769 Mask@@2 null pm_f_30@@1) (IsPredicateField_11710_32796 pm_f_30@@1)) (and (and (and (forall ((o2_30 T@Ref) (f_13 T@Field_11710_53) ) (!  (=> (select (|PolymorphicMapType_12199_11710_53#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) null (PredicateMaskField_11710 pm_f_30@@1))) o2_30 f_13) (= (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@2) o2_30 f_13) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@1) o2_30 f_13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@1) o2_30 f_13))
)) (forall ((o2_30@@0 T@Ref) (f_13@@0 T@Field_11723_11724) ) (!  (=> (select (|PolymorphicMapType_12199_11710_11724#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) null (PredicateMaskField_11710 pm_f_30@@1))) o2_30@@0 f_13@@0) (= (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@2) o2_30@@0 f_13@@0) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@1) o2_30@@0 f_13@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@1) o2_30@@0 f_13@@0))
))) (forall ((o2_30@@1 T@Ref) (f_13@@1 T@Field_11710_32705) ) (!  (=> (select (|PolymorphicMapType_12199_11710_32705#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) null (PredicateMaskField_11710 pm_f_30@@1))) o2_30@@1 f_13@@1) (= (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@2) o2_30@@1 f_13@@1) (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@1) o2_30@@1 f_13@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@1) o2_30@@1 f_13@@1))
))) (forall ((o2_30@@2 T@Ref) (f_13@@2 T@Field_11710_32838) ) (!  (=> (select (|PolymorphicMapType_12199_11710_33818#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) null (PredicateMaskField_11710 pm_f_30@@1))) o2_30@@2 f_13@@2) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) o2_30@@2 f_13@@2) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@1) o2_30@@2 f_13@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@1) o2_30@@2 f_13@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11710_32796 pm_f_30@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11650) (ExhaleHeap@@2 T@PolymorphicMapType_11650) (Mask@@3 T@PolymorphicMapType_11671) (pm_f_30@@2 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11710_32769 Mask@@3 null pm_f_30@@2) (IsWandField_11710_34345 pm_f_30@@2)) (and (and (and (forall ((o2_30@@3 T@Ref) (f_13@@3 T@Field_11710_53) ) (!  (=> (select (|PolymorphicMapType_12199_11710_53#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) null (WandMaskField_11710 pm_f_30@@2))) o2_30@@3 f_13@@3) (= (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@3) o2_30@@3 f_13@@3) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@2) o2_30@@3 f_13@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@2) o2_30@@3 f_13@@3))
)) (forall ((o2_30@@4 T@Ref) (f_13@@4 T@Field_11723_11724) ) (!  (=> (select (|PolymorphicMapType_12199_11710_11724#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) null (WandMaskField_11710 pm_f_30@@2))) o2_30@@4 f_13@@4) (= (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@3) o2_30@@4 f_13@@4) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@2) o2_30@@4 f_13@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@2) o2_30@@4 f_13@@4))
))) (forall ((o2_30@@5 T@Ref) (f_13@@5 T@Field_11710_32705) ) (!  (=> (select (|PolymorphicMapType_12199_11710_32705#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) null (WandMaskField_11710 pm_f_30@@2))) o2_30@@5 f_13@@5) (= (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@3) o2_30@@5 f_13@@5) (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@2) o2_30@@5 f_13@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@2) o2_30@@5 f_13@@5))
))) (forall ((o2_30@@6 T@Ref) (f_13@@6 T@Field_11710_32838) ) (!  (=> (select (|PolymorphicMapType_12199_11710_33818#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) null (WandMaskField_11710 pm_f_30@@2))) o2_30@@6 f_13@@6) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) o2_30@@6 f_13@@6) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@2) o2_30@@6 f_13@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@2) o2_30@@6 f_13@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_11710_34345 pm_f_30@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11650) (ExhaleHeap@@3 T@PolymorphicMapType_11650) (Mask@@4 T@PolymorphicMapType_11671) (o_7 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@4) o_7 $allocated) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@3) o_7 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@3) o_7 $allocated))
)))
(assert (forall ((p T@Field_11710_32705) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11710_11710 p v_1 p w))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11710_11710 p v_1 p w))
)))
(assert  (not (IsPredicateField_7320_7321 f_7)))
(assert  (not (IsWandField_7320_7321 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11650) (ExhaleHeap@@4 T@PolymorphicMapType_11650) (Mask@@5 T@PolymorphicMapType_11671) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11671) (o_2@@3 T@Ref) (f_4@@3 T@Field_11710_32838) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7320_37279 f_4@@3))) (not (IsWandField_7320_37295 f_4@@3))) (<= (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11671) (o_2@@4 T@Ref) (f_4@@4 T@Field_11710_32705) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11710_32796 f_4@@4))) (not (IsWandField_11710_34345 f_4@@4))) (<= (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11671) (o_2@@5 T@Ref) (f_4@@5 T@Field_11710_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7320_53 f_4@@5))) (not (IsWandField_7320_53 f_4@@5))) (<= (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11671) (o_2@@6 T@Ref) (f_4@@6 T@Field_11723_11724) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_7320_7321 f_4@@6))) (not (IsWandField_7320_7321 f_4@@6))) (<= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11671) (o_2@@7 T@Ref) (f_4@@7 T@Field_11710_32838) ) (! (= (HasDirectPerm_11710_37650 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11710_37650 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11671) (o_2@@8 T@Ref) (f_4@@8 T@Field_11710_32705) ) (! (= (HasDirectPerm_11710_32769 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11710_32769 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11671) (o_2@@9 T@Ref) (f_4@@9 T@Field_11723_11724) ) (! (= (HasDirectPerm_11710_11724 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11710_11724 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11671) (o_2@@10 T@Ref) (f_4@@10 T@Field_11710_53) ) (! (= (HasDirectPerm_11710_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11710_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11650) (ExhaleHeap@@5 T@PolymorphicMapType_11650) (Mask@@14 T@PolymorphicMapType_11671) (o_7@@0 T@Ref) (f_13@@7 T@Field_11710_32838) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_11710_37650 Mask@@14 o_7@@0 f_13@@7) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@6) o_7@@0 f_13@@7) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@5) o_7@@0 f_13@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@5) o_7@@0 f_13@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11650) (ExhaleHeap@@6 T@PolymorphicMapType_11650) (Mask@@15 T@PolymorphicMapType_11671) (o_7@@1 T@Ref) (f_13@@8 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_11710_32769 Mask@@15 o_7@@1 f_13@@8) (= (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@7) o_7@@1 f_13@@8) (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@6) o_7@@1 f_13@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@6) o_7@@1 f_13@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11650) (ExhaleHeap@@7 T@PolymorphicMapType_11650) (Mask@@16 T@PolymorphicMapType_11671) (o_7@@2 T@Ref) (f_13@@9 T@Field_11723_11724) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_11710_11724 Mask@@16 o_7@@2 f_13@@9) (= (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@8) o_7@@2 f_13@@9) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@7) o_7@@2 f_13@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@7) o_7@@2 f_13@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11650) (ExhaleHeap@@8 T@PolymorphicMapType_11650) (Mask@@17 T@PolymorphicMapType_11671) (o_7@@3 T@Ref) (f_13@@10 T@Field_11710_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_11710_53 Mask@@17 o_7@@3 f_13@@10) (= (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@9) o_7@@3 f_13@@10) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@8) o_7@@3 f_13@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@8) o_7@@3 f_13@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11710_32838) ) (! (= (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11710_32705) ) (! (= (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11710_53) ) (! (= (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11723_11724) ) (! (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11671) (SummandMask1 T@PolymorphicMapType_11671) (SummandMask2 T@PolymorphicMapType_11671) (o_2@@15 T@Ref) (f_4@@15 T@Field_11710_32838) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11671) (SummandMask1@@0 T@PolymorphicMapType_11671) (SummandMask2@@0 T@PolymorphicMapType_11671) (o_2@@16 T@Ref) (f_4@@16 T@Field_11710_32705) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11671) (SummandMask1@@1 T@PolymorphicMapType_11671) (SummandMask2@@1 T@PolymorphicMapType_11671) (o_2@@17 T@Ref) (f_4@@17 T@Field_11710_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11671) (SummandMask1@@2 T@PolymorphicMapType_11671) (SummandMask2@@2 T@PolymorphicMapType_11671) (o_2@@18 T@Ref) (f_4@@18 T@Field_11723_11724) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_7427| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.267:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_7427| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_7427| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_7427| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_7424| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.282:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_7424| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_7424| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((x T@Ref) ) (! (< NoPerm (foo_2 x))
 :qid |stdinbpl.423:15|
 :skolemid |82|
 :pattern ( (foo_2 x))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x@@0 T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_7427| a@@6 x@@0) y))
 :qid |stdinbpl.247:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_7427| a@@6 x@@0) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_7370| a@@7 b@@5) y@@0))
 :qid |stdinbpl.257:18|
 :skolemid |35|
 :pattern ( (|Set#Union_7370| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_7370| a@@8 b@@6) y@@1))
 :qid |stdinbpl.259:18|
 :skolemid |36|
 :pattern ( (|Set#Union_7370| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@1 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_7427| a@@9 x@@1) o@@2)  (or (= o@@2 x@@1) (select a@@9 o@@2)))
 :qid |stdinbpl.243:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_7427| a@@9 x@@1) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_7424| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.284:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_7424| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_7427| (|Set#Difference_7424| a@@11 b@@8)) (|Set#Card_7427| (|Set#Difference_7424| b@@8 a@@11))) (|Set#Card_7427| (|Set#Intersection_7427| a@@11 b@@8))) (|Set#Card_7427| (|Set#Union_7370| a@@11 b@@8))) (= (|Set#Card_7427| (|Set#Difference_7424| a@@11 b@@8)) (- (|Set#Card_7427| a@@11) (|Set#Card_7427| (|Set#Intersection_7427| a@@11 b@@8)))))
 :qid |stdinbpl.286:18|
 :skolemid |45|
 :pattern ( (|Set#Card_7427| (|Set#Difference_7424| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_7427| s))
 :qid |stdinbpl.229:18|
 :skolemid |22|
 :pattern ( (|Set#Card_7427| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@2 T@Ref) ) (! (select (|Set#UnionOne_7427| a@@12 x@@2) x@@2)
 :qid |stdinbpl.245:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_7427| a@@12 x@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@3 T@Ref) ) (!  (=> (select a@@13 x@@3) (= (|Set#Card_7427| (|Set#UnionOne_7427| a@@13 x@@3)) (|Set#Card_7427| a@@13)))
 :qid |stdinbpl.249:18|
 :skolemid |32|
 :pattern ( (|Set#Card_7427| (|Set#UnionOne_7427| a@@13 x@@3)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_7427| (|Set#Singleton_7427| r@@0)) 1)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Set#Card_7427| (|Set#Singleton_7427| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_7427| r@@1) r@@1)
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_7427| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_7370| a@@14 (|Set#Union_7370| a@@14 b@@9)) (|Set#Union_7370| a@@14 b@@9))
 :qid |stdinbpl.272:18|
 :skolemid |39|
 :pattern ( (|Set#Union_7370| a@@14 (|Set#Union_7370| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_7427| a@@15 (|Set#Intersection_7427| a@@15 b@@10)) (|Set#Intersection_7427| a@@15 b@@10))
 :qid |stdinbpl.276:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_7427| a@@15 (|Set#Intersection_7427| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_7427| o@@3))
 :qid |stdinbpl.232:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_7427| o@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11650) (o_55 T@Ref) (f_9 T@Field_11710_32705) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@10) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@10) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@10) (store (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@10) o_55 f_9 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@10) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@10) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@10) (store (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@10) o_55 f_9 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11650) (o_55@@0 T@Ref) (f_9@@0 T@Field_11710_32838) (v@@0 T@PolymorphicMapType_12199) ) (! (succHeap Heap@@11 (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@11) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@11) (store (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@11) o_55@@0 f_9@@0 v@@0) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@11) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@11) (store (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@11) o_55@@0 f_9@@0 v@@0) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11650) (o_55@@1 T@Ref) (f_9@@1 T@Field_11723_11724) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@12) (store (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@12) o_55@@1 f_9@@1 v@@1) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@12) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@12) (store (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@12) o_55@@1 f_9@@1 v@@1) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@12) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11650) (o_55@@2 T@Ref) (f_9@@2 T@Field_11710_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_11650 (store (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@13) o_55@@2 f_9@@2 v@@2) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@13) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@13) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11650 (store (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@13) o_55@@2 f_9@@2 v@@2) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@13) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@13) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@13)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.316:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.317:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_7427| s@@0) 0) (= s@@0 |Set#Empty_7427|)) (=> (not (= (|Set#Card_7427| s@@0) 0)) (exists ((x@@4 T@Ref) ) (! (select s@@0 x@@4)
 :qid |stdinbpl.235:33|
 :skolemid |24|
))))
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Set#Card_7427| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@5 T@Ref) ) (!  (=> (not (select a@@18 x@@5)) (= (|Set#Card_7427| (|Set#UnionOne_7427| a@@18 x@@5)) (+ (|Set#Card_7427| a@@18) 1)))
 :qid |stdinbpl.251:18|
 :skolemid |33|
 :pattern ( (|Set#Card_7427| (|Set#UnionOne_7427| a@@18 x@@5)))
)))
(assert (forall ((o_55@@3 T@Ref) (f_54 T@Field_11723_11724) (Heap@@14 T@PolymorphicMapType_11650) ) (!  (=> (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@14) o_55@@3 $allocated) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@14) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@14) o_55@@3 f_54) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@14) o_55@@3 f_54))
)))
(assert (forall ((p@@1 T@Field_11710_32705) (v_1@@0 T@FrameType) (q T@Field_11710_32705) (w@@0 T@FrameType) (r@@2 T@Field_11710_32705) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11710_11710 p@@1 v_1@@0 q w@@0) (InsidePredicate_11710_11710 q w@@0 r@@2 u)) (InsidePredicate_11710_11710 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11710_11710 p@@1 v_1@@0 q w@@0) (InsidePredicate_11710_11710 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.322:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_7370| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.255:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_7370| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun wildcard () Real)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11650)
(declare-fun wildcard@0 () Real)
(declare-fun QPMask@0 () T@PolymorphicMapType_11671)
(declare-fun Heap@@15 () T@PolymorphicMapType_11650)
(declare-fun QPMask@1 () T@PolymorphicMapType_11671)
(declare-fun dummyFunction_7321 (T@Ref) Bool)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id test00)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon9_Else_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (select xs x_3)) (select xs x_3_1)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_3 x_3_1)))
 :qid |stdinbpl.517:15|
 :skolemid |89|
)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 10) 7) anon9_Then_correct) (=> (= (ControlFlow 0 10) 9) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (> wildcard@0 0.0) (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((x_4_2 T@Ref) ) (!  (=> (select xs x_4_2) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) x_4_2 f_7) NoPerm))
 :qid |stdinbpl.561:15|
 :skolemid |95|
))) (=> (forall ((x_4_2@@0 T@Ref) ) (!  (=> (select xs x_4_2@@0) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) x_4_2@@0 f_7) NoPerm))
 :qid |stdinbpl.561:15|
 :skolemid |95|
)) (=> (forall ((x_4_2@@1 T@Ref) ) (!  (=> (select xs x_4_2@@1) (< wildcard@0 (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) x_4_2@@1 f_7)))
 :qid |stdinbpl.565:20|
 :skolemid |96|
)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((x_4_2@@2 T@Ref) ) (!  (=> (and (select xs x_4_2@@2) (dummyFunction_7321 (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_4_2@@2 f_7))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.572:17|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_4_2@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_4_2@@2 f_7))
 :pattern ( (select xs x_4_2@@2))
))) (=> (forall ((x_4_2@@3 T@Ref) ) (!  (=> (and (select xs x_4_2@@3) (dummyFunction_7321 (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_4_2@@3 f_7))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.572:17|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_4_2@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_4_2@@3 f_7))
 :pattern ( (select xs x_4_2@@3))
)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((x_4_2@@4 T@Ref) (x_4_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_4_2@@4 x_4_3)) (select xs x_4_2@@4)) (select xs x_4_3)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= x_4_2@@4 x_4_3)))
 :qid |stdinbpl.579:17|
 :skolemid |98|
 :pattern ( (neverTriggered3 x_4_2@@4) (neverTriggered3 x_4_3))
))) (=> (forall ((x_4_2@@5 T@Ref) (x_4_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_4_2@@5 x_4_3@@0)) (select xs x_4_2@@5)) (select xs x_4_3@@0)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= x_4_2@@5 x_4_3@@0)))
 :qid |stdinbpl.579:17|
 :skolemid |98|
 :pattern ( (neverTriggered3 x_4_2@@5) (neverTriggered3 x_4_3@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((x_4_2@@6 T@Ref) ) (!  (=> (select xs x_4_2@@6) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) x_4_2@@6 f_7) NoPerm))
 :qid |stdinbpl.586:17|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_4_2@@6 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_4_2@@6 f_7))
 :pattern ( (select xs x_4_2@@6))
)))))))))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.466:15|
 :skolemid |83|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.466:15|
 :skolemid |83|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (select xs x_1@@1) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.472:22|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) x_1@@1 f_7))
 :pattern ( (select xs x_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (select xs (invRecv1 o_9)) (qpRange1 o_9)) (= (invRecv1 o_9) o_9))
 :qid |stdinbpl.476:22|
 :skolemid |85|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.482:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) x_1@@2 f_7))
 :pattern ( (select xs x_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (select xs (invRecv1 o_9@@0)) (qpRange1 o_9@@0)) (and (= (invRecv1 o_9@@0) o_9@@0) (< (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_9@@0 f_7) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_9@@0 f_7)))) (=> (not (and (select xs (invRecv1 o_9@@0)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.488:22|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_11710_53) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.492:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_11723_11724) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.492:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_11710_32705) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.492:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_11710_32838) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.492:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@0) o_9@@4 f_5@@2))
))) (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0))) (and (=> (= (ControlFlow 0 11) 10) anon8_Then_correct) (=> (= (ControlFlow 0 11) 3) anon8_Else_correct))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 13) 1) anon7_Then_correct) (=> (= (ControlFlow 0 13) 11) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 14) 13)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
