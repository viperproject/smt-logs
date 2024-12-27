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
(declare-fun foo (T@Ref) Real)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_11650) (ExhaleHeap T@PolymorphicMapType_11650) (Mask@@0 T@PolymorphicMapType_11671) (pm_f_8 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11710_32769 Mask@@0 null pm_f_8) (IsPredicateField_11710_32796 pm_f_8)) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@0) null (PredicateMaskField_11710 pm_f_8)) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap) null (PredicateMaskField_11710 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11710_32796 pm_f_8) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap) null (PredicateMaskField_11710 pm_f_8)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11650) (ExhaleHeap@@0 T@PolymorphicMapType_11650) (Mask@@1 T@PolymorphicMapType_11671) (pm_f_8@@0 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11710_32769 Mask@@1 null pm_f_8@@0) (IsWandField_11710_34345 pm_f_8@@0)) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@1) null (WandMaskField_11710 pm_f_8@@0)) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@0) null (WandMaskField_11710 pm_f_8@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11710_34345 pm_f_8@@0) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@0) null (WandMaskField_11710 pm_f_8@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11650) (ExhaleHeap@@1 T@PolymorphicMapType_11650) (Mask@@2 T@PolymorphicMapType_11671) (pm_f_8@@1 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11710_32769 Mask@@2 null pm_f_8@@1) (IsPredicateField_11710_32796 pm_f_8@@1)) (and (and (and (forall ((o2_8 T@Ref) (f_25 T@Field_11710_53) ) (!  (=> (select (|PolymorphicMapType_12199_11710_53#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) null (PredicateMaskField_11710 pm_f_8@@1))) o2_8 f_25) (= (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@2) o2_8 f_25) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@1) o2_8 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@1) o2_8 f_25))
)) (forall ((o2_8@@0 T@Ref) (f_25@@0 T@Field_11723_11724) ) (!  (=> (select (|PolymorphicMapType_12199_11710_11724#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) null (PredicateMaskField_11710 pm_f_8@@1))) o2_8@@0 f_25@@0) (= (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@2) o2_8@@0 f_25@@0) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@1) o2_8@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@1) o2_8@@0 f_25@@0))
))) (forall ((o2_8@@1 T@Ref) (f_25@@1 T@Field_11710_32705) ) (!  (=> (select (|PolymorphicMapType_12199_11710_32705#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) null (PredicateMaskField_11710 pm_f_8@@1))) o2_8@@1 f_25@@1) (= (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@2) o2_8@@1 f_25@@1) (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@1) o2_8@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@1) o2_8@@1 f_25@@1))
))) (forall ((o2_8@@2 T@Ref) (f_25@@2 T@Field_11710_32838) ) (!  (=> (select (|PolymorphicMapType_12199_11710_33818#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) null (PredicateMaskField_11710 pm_f_8@@1))) o2_8@@2 f_25@@2) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@2) o2_8@@2 f_25@@2) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@1) o2_8@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@1) o2_8@@2 f_25@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11710_32796 pm_f_8@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11650) (ExhaleHeap@@2 T@PolymorphicMapType_11650) (Mask@@3 T@PolymorphicMapType_11671) (pm_f_8@@2 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11710_32769 Mask@@3 null pm_f_8@@2) (IsWandField_11710_34345 pm_f_8@@2)) (and (and (and (forall ((o2_8@@3 T@Ref) (f_25@@3 T@Field_11710_53) ) (!  (=> (select (|PolymorphicMapType_12199_11710_53#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) null (WandMaskField_11710 pm_f_8@@2))) o2_8@@3 f_25@@3) (= (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@3) o2_8@@3 f_25@@3) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@2) o2_8@@3 f_25@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@2) o2_8@@3 f_25@@3))
)) (forall ((o2_8@@4 T@Ref) (f_25@@4 T@Field_11723_11724) ) (!  (=> (select (|PolymorphicMapType_12199_11710_11724#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) null (WandMaskField_11710 pm_f_8@@2))) o2_8@@4 f_25@@4) (= (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@3) o2_8@@4 f_25@@4) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@2) o2_8@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@2) o2_8@@4 f_25@@4))
))) (forall ((o2_8@@5 T@Ref) (f_25@@5 T@Field_11710_32705) ) (!  (=> (select (|PolymorphicMapType_12199_11710_32705#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) null (WandMaskField_11710 pm_f_8@@2))) o2_8@@5 f_25@@5) (= (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@3) o2_8@@5 f_25@@5) (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@2) o2_8@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@2) o2_8@@5 f_25@@5))
))) (forall ((o2_8@@6 T@Ref) (f_25@@6 T@Field_11710_32838) ) (!  (=> (select (|PolymorphicMapType_12199_11710_33818#PolymorphicMapType_12199| (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) null (WandMaskField_11710 pm_f_8@@2))) o2_8@@6 f_25@@6) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@3) o2_8@@6 f_25@@6) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@2) o2_8@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@2) o2_8@@6 f_25@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_11710_34345 pm_f_8@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11650) (ExhaleHeap@@3 T@PolymorphicMapType_11650) (Mask@@4 T@PolymorphicMapType_11671) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@4) o_23 $allocated) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@3) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@3) o_23 $allocated))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_11650) (ExhaleHeap@@5 T@PolymorphicMapType_11650) (Mask@@14 T@PolymorphicMapType_11671) (o_23@@0 T@Ref) (f_25@@7 T@Field_11710_32838) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_11710_37650 Mask@@14 o_23@@0 f_25@@7) (= (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@6) o_23@@0 f_25@@7) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@5) o_23@@0 f_25@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| ExhaleHeap@@5) o_23@@0 f_25@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11650) (ExhaleHeap@@6 T@PolymorphicMapType_11650) (Mask@@15 T@PolymorphicMapType_11671) (o_23@@1 T@Ref) (f_25@@8 T@Field_11710_32705) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_11710_32769 Mask@@15 o_23@@1 f_25@@8) (= (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@7) o_23@@1 f_25@@8) (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@6) o_23@@1 f_25@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| ExhaleHeap@@6) o_23@@1 f_25@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11650) (ExhaleHeap@@7 T@PolymorphicMapType_11650) (Mask@@16 T@PolymorphicMapType_11671) (o_23@@2 T@Ref) (f_25@@9 T@Field_11723_11724) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_11710_11724 Mask@@16 o_23@@2 f_25@@9) (= (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@8) o_23@@2 f_25@@9) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@7) o_23@@2 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@@7) o_23@@2 f_25@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11650) (ExhaleHeap@@8 T@PolymorphicMapType_11650) (Mask@@17 T@PolymorphicMapType_11671) (o_23@@3 T@Ref) (f_25@@10 T@Field_11710_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_11710_53 Mask@@17 o_23@@3 f_25@@10) (= (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@9) o_23@@3 f_25@@10) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@8) o_23@@3 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| ExhaleHeap@@8) o_23@@3 f_25@@10))
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
(assert (forall ((x T@Ref) ) (! (< NoPerm (foo x))
 :qid |stdinbpl.423:15|
 :skolemid |82|
 :pattern ( (foo x))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_11650) (o_27 T@Ref) (f_30 T@Field_11710_32705) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@10) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@10) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@10) (store (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@10) o_27 f_30 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@10) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@10) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@10) (store (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@10) o_27 f_30 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11650) (o_27@@0 T@Ref) (f_30@@0 T@Field_11710_32838) (v@@0 T@PolymorphicMapType_12199) ) (! (succHeap Heap@@11 (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@11) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@11) (store (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@11) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@11) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@11) (store (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@11) o_27@@0 f_30@@0 v@@0) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11650) (o_27@@1 T@Ref) (f_30@@1 T@Field_11723_11724) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@12) (store (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@12) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@12) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11650 (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@12) (store (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@12) o_27@@1 f_30@@1 v@@1) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@12) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11650) (o_27@@2 T@Ref) (f_30@@2 T@Field_11710_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_11650 (store (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@13) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@13) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@13) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11650 (store (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@13) o_27@@2 f_30@@2 v@@2) (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@13) (|PolymorphicMapType_11650_11710_32882#PolymorphicMapType_11650| Heap@@13) (|PolymorphicMapType_11650_11710_32705#PolymorphicMapType_11650| Heap@@13)))
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
(assert (forall ((o_27@@3 T@Ref) (f_24 T@Field_11723_11724) (Heap@@14 T@PolymorphicMapType_11650) ) (!  (=> (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@14) o_27@@3 $allocated) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@14) (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@14) o_27@@3 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@14) o_27@@3 f_24))
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
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_11650)
(declare-fun QPMask@3 () T@PolymorphicMapType_11671)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun dummyFunction_7321 (T@Ref) Bool)
(declare-fun k0 () Real)
(declare-fun neverTriggered11 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_11671)
(declare-fun wildcard@2 () Real)
(declare-fun QPMask@1 () T@PolymorphicMapType_11671)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_11650)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) T@Ref)
(declare-fun wildcard@1 () Real)
(declare-fun y@@3 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_11671)
(declare-fun Heap@0 () T@PolymorphicMapType_11650)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_11671)
(declare-fun Heap@@15 () T@PolymorphicMapType_11650)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_11671)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_11650)
(declare-fun wildcard () Real)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) T@Ref)
(declare-fun z () T@Ref)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (forall ((x_7 T@Ref) ) (!  (=> (and (select xs x_7) (dummyFunction_7321 (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@2) x_7 f_7))) (>= k0 NoPerm))
 :qid |stdinbpl.1095:17|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@2) x_7 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@3) x_7 f_7))
 :pattern ( (select xs x_7))
))) (=> (forall ((x_7@@0 T@Ref) ) (!  (=> (and (select xs x_7@@0) (dummyFunction_7321 (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@2) x_7@@0 f_7))) (>= k0 NoPerm))
 :qid |stdinbpl.1095:17|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@2) x_7@@0 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@3) x_7@@0 f_7))
 :pattern ( (select xs x_7@@0))
)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (forall ((x_7@@1 T@Ref) (x_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_7@@1 x_7_1)) (select xs x_7@@1)) (select xs x_7_1)) (< NoPerm k0)) (< NoPerm k0)) (not (= x_7@@1 x_7_1)))
 :qid |stdinbpl.1102:17|
 :skolemid |156|
 :pattern ( (neverTriggered11 x_7@@1) (neverTriggered11 x_7_1))
))) (=> (forall ((x_7@@2 T@Ref) (x_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_7@@2 x_7_1@@0)) (select xs x_7@@2)) (select xs x_7_1@@0)) (< NoPerm k0)) (< NoPerm k0)) (not (= x_7@@2 x_7_1@@0)))
 :qid |stdinbpl.1102:17|
 :skolemid |156|
 :pattern ( (neverTriggered11 x_7@@2) (neverTriggered11 x_7_1@@0))
)) (=> (= (ControlFlow 0 6) (- 0 5)) (forall ((x_7@@3 T@Ref) ) (!  (=> (select xs x_7@@3) (>= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) x_7@@3 f_7) k0))
 :qid |stdinbpl.1109:17|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@2) x_7@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@3) x_7@@3 f_7))
 :pattern ( (select xs x_7@@3))
)))))))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (=> (> wildcard@2 0.0) (and (=> (= (ControlFlow 0 9) (- 0 13)) (forall ((x_5 T@Ref) ) (!  (=> (select xs x_5) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_5 f_7) NoPerm))
 :qid |stdinbpl.1020:15|
 :skolemid |146|
))) (=> (forall ((x_5@@0 T@Ref) ) (!  (=> (select xs x_5@@0) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_5@@0 f_7) NoPerm))
 :qid |stdinbpl.1020:15|
 :skolemid |146|
)) (=> (forall ((x_5@@1 T@Ref) ) (!  (=> (select xs x_5@@1) (< wildcard@2 (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_5@@1 f_7)))
 :qid |stdinbpl.1024:20|
 :skolemid |147|
)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (forall ((x_5@@2 T@Ref) ) (!  (=> (and (select xs x_5@@2) (dummyFunction_7321 (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@1) x_5@@2 f_7))) (>= wildcard@2 NoPerm))
 :qid |stdinbpl.1031:17|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@1) x_5@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) x_5@@2 f_7))
 :pattern ( (select xs x_5@@2))
))) (=> (forall ((x_5@@3 T@Ref) ) (!  (=> (and (select xs x_5@@3) (dummyFunction_7321 (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@1) x_5@@3 f_7))) (>= wildcard@2 NoPerm))
 :qid |stdinbpl.1031:17|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@1) x_5@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) x_5@@3 f_7))
 :pattern ( (select xs x_5@@3))
)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (forall ((x_5@@4 T@Ref) (x_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@4 x_5_1)) (select xs x_5@@4)) (select xs x_5_1)) (< NoPerm wildcard@2)) (< NoPerm wildcard@2)) (not (= x_5@@4 x_5_1)))
 :qid |stdinbpl.1038:17|
 :skolemid |149|
 :pattern ( (neverTriggered10 x_5@@4) (neverTriggered10 x_5_1))
))) (=> (forall ((x_5@@5 T@Ref) (x_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5@@5 x_5_1@@0)) (select xs x_5@@5)) (select xs x_5_1@@0)) (< NoPerm wildcard@2)) (< NoPerm wildcard@2)) (not (= x_5@@5 x_5_1@@0)))
 :qid |stdinbpl.1038:17|
 :skolemid |149|
 :pattern ( (neverTriggered10 x_5@@5) (neverTriggered10 x_5_1@@0))
)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((x_5@@6 T@Ref) ) (!  (=> (select xs x_5@@6) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_5@@6 f_7) NoPerm))
 :qid |stdinbpl.1045:17|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@1) x_5@@6 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) x_5@@6 f_7))
 :pattern ( (select xs x_5@@6))
))) (=> (forall ((x_5@@7 T@Ref) ) (!  (=> (select xs x_5@@7) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_5@@7 f_7) NoPerm))
 :qid |stdinbpl.1045:17|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@1) x_5@@7 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) x_5@@7 f_7))
 :pattern ( (select xs x_5@@7))
)) (=> (forall ((x_5@@8 T@Ref) ) (!  (=> (and (select xs x_5@@8) (< NoPerm wildcard@2)) (and (qpRange10 x_5@@8) (= (invRecv10 x_5@@8) x_5@@8)))
 :qid |stdinbpl.1051:22|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| ExhaleHeap@1) x_5@@8 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) x_5@@8 f_7))
 :pattern ( (select xs x_5@@8))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (select xs (invRecv10 o_4)) (and (< NoPerm wildcard@2) (qpRange10 o_4))) (= (invRecv10 o_4) o_4))
 :qid |stdinbpl.1055:22|
 :skolemid |152|
 :pattern ( (invRecv10 o_4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (select xs (invRecv10 o_4@@0)) (and (< NoPerm wildcard@2) (qpRange10 o_4@@0))) (and (= (invRecv10 o_4@@0) o_4@@0) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) o_4@@0 f_7) (- (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) o_4@@0 f_7) wildcard@2)))) (=> (not (and (select xs (invRecv10 o_4@@0)) (and (< NoPerm wildcard@2) (qpRange10 o_4@@0)))) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) o_4@@0 f_7) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) o_4@@0 f_7))))
 :qid |stdinbpl.1061:22|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) o_4@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_11710_53) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@1) o_4@@1 f_5) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.1067:29|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_11723_11724) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1067:29|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_11710_32705) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1067:29|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_11710_32838) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1067:29|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@2) o_4@@4 f_5@@2))
))) (IdenticalOnKnownLocations ExhaleHeap@1 ExhaleHeap@2 QPMask@2)) (and (and (state ExhaleHeap@2 QPMask@2) (<= NoPerm k0)) (and (state ExhaleHeap@2 QPMask@2) (state ExhaleHeap@2 QPMask@2)))) (and (=> (= (ControlFlow 0 9) 4) anon15_Then_correct) (=> (= (ControlFlow 0 9) 6) anon15_Else_correct)))))))))))))))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> (> wildcard@1 0.0) (and (=> (= (ControlFlow 0 14) (- 0 18)) (forall ((x_3 T@Ref) ) (!  (=> (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@1) x_3 f_7) NoPerm))
 :qid |stdinbpl.950:15|
 :skolemid |137|
))) (=> (forall ((x_3@@0 T@Ref) ) (!  (=> (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@0) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@1) x_3@@0 f_7) NoPerm))
 :qid |stdinbpl.950:15|
 :skolemid |137|
)) (=> (forall ((x_3@@1 T@Ref) ) (!  (=> (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@1) (< wildcard@1 (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@1) x_3@@1 f_7)))
 :qid |stdinbpl.954:20|
 :skolemid |138|
)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (forall ((x_3@@2 T@Ref) ) (!  (=> (and (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@2) (dummyFunction_7321 (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@0) x_3@@2 f_7))) (>= wildcard@1 NoPerm))
 :qid |stdinbpl.961:17|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@0) x_3@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_3@@2 f_7))
 :pattern ( (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@2))
))) (=> (forall ((x_3@@3 T@Ref) ) (!  (=> (and (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@3) (dummyFunction_7321 (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@0) x_3@@3 f_7))) (>= wildcard@1 NoPerm))
 :qid |stdinbpl.961:17|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@0) x_3@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_3@@3 f_7))
 :pattern ( (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@3))
)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (forall ((x_3@@4 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@4 x_3_1)) (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@4)) (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3_1)) (< NoPerm wildcard@1)) (< NoPerm wildcard@1)) (not (= x_3@@4 x_3_1)))
 :qid |stdinbpl.968:17|
 :skolemid |140|
 :pattern ( (neverTriggered9 x_3@@4) (neverTriggered9 x_3_1))
))) (=> (forall ((x_3@@5 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@5 x_3_1@@0)) (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@5)) (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3_1@@0)) (< NoPerm wildcard@1)) (< NoPerm wildcard@1)) (not (= x_3@@5 x_3_1@@0)))
 :qid |stdinbpl.968:17|
 :skolemid |140|
 :pattern ( (neverTriggered9 x_3@@5) (neverTriggered9 x_3_1@@0))
)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((x_3@@6 T@Ref) ) (!  (=> (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@6) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@1) x_3@@6 f_7) NoPerm))
 :qid |stdinbpl.975:17|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@0) x_3@@6 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_3@@6 f_7))
 :pattern ( (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@6))
))) (=> (forall ((x_3@@7 T@Ref) ) (!  (=> (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@7) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@1) x_3@@7 f_7) NoPerm))
 :qid |stdinbpl.975:17|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@0) x_3@@7 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_3@@7 f_7))
 :pattern ( (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@7))
)) (=> (forall ((x_3@@8 T@Ref) ) (!  (=> (and (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@8) (< NoPerm wildcard@1)) (and (qpRange9 x_3@@8) (= (invRecv9 x_3@@8) x_3@@8)))
 :qid |stdinbpl.981:22|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@0) x_3@@8 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) x_3@@8 f_7))
 :pattern ( (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) x_3@@8))
)) (=> (and (forall ((o_4@@5 T@Ref) ) (!  (=> (and (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) (invRecv9 o_4@@5)) (and (< NoPerm wildcard@1) (qpRange9 o_4@@5))) (= (invRecv9 o_4@@5) o_4@@5))
 :qid |stdinbpl.985:22|
 :skolemid |143|
 :pattern ( (invRecv9 o_4@@5))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) (invRecv9 o_4@@6)) (and (< NoPerm wildcard@1) (qpRange9 o_4@@6))) (and (= (invRecv9 o_4@@6) o_4@@6) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) o_4@@6 f_7) (- (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@1) o_4@@6 f_7) wildcard@1)))) (=> (not (and (select (|Set#Difference_7424| xs (|Set#Singleton_7427| y@@3)) (invRecv9 o_4@@6)) (and (< NoPerm wildcard@1) (qpRange9 o_4@@6)))) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) o_4@@6 f_7) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@1) o_4@@6 f_7))))
 :qid |stdinbpl.991:22|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) o_4@@6 f_7))
))) (=> (and (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_11710_53) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| Mask@1) o_4@@7 f_5@@3) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@1) o_4@@7 f_5@@3)))
 :qid |stdinbpl.997:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@1) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_11723_11724) ) (!  (=> (not (= f_5@@4 f_7)) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| Mask@1) o_4@@8 f_5@@4) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.997:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@1) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_11710_32705) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| Mask@1) o_4@@9 f_5@@5) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.997:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_11710_32838) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| Mask@1) o_4@@10 f_5@@6) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.997:29|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@1) o_4@@10 f_5@@6))
))) (and (IdenticalOnKnownLocations Heap@0 ExhaleHeap@1 QPMask@1) (state ExhaleHeap@1 QPMask@1))) (and (=> (= (ControlFlow 0 14) 3) anon14_Then_correct) (=> (= (ControlFlow 0 14) 9) anon14_Else_correct)))))))))))))))))
(let ((anon13_Then_correct true))
(let ((anon4_correct  (=> (state Heap@0 Mask@1) (and (=> (= (ControlFlow 0 19) 2) anon13_Then_correct) (=> (= (ControlFlow 0 19) 14) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not (select xs y@@3)) (= Mask@1 QPMask@0)) (and (= Heap@0 Heap@@15) (= (ControlFlow 0 22) 19))) anon4_correct)))
(let ((anon12_Then_correct  (=> (select xs y@@3) (and (=> (= (ControlFlow 0 20) (- 0 21)) (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) y@@3 f_7) NoPerm)) (=> (> (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) y@@3 f_7) NoPerm) (=> (and (and (and (> wildcard@0 0.0) (< wildcard@0 (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) y@@3 f_7))) (and (= Mask@0 (PolymorphicMapType_11671 (store (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) y@@3 f_7 (- (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) y@@3 f_7) wildcard@0)) (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@0) (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@0) (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@0))) (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@0 Mask@0))) (and (and (state ExhaleHeap@0 Mask@0) (= Mask@1 Mask@0)) (and (= Heap@0 ExhaleHeap@0) (= (ControlFlow 0 20) 19)))) anon4_correct))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 23) (- 0 24)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.875:15|
 :skolemid |131|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.875:15|
 :skolemid |131|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (select xs x_1@@1) (and (qpRange8 x_1@@1) (= (invRecv8 x_1@@1) x_1@@1)))
 :qid |stdinbpl.881:22|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) x_1@@1 f_7))
 :pattern ( (select xs x_1@@1))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (select xs (invRecv8 o_4@@11)) (qpRange8 o_4@@11)) (= (invRecv8 o_4@@11) o_4@@11))
 :qid |stdinbpl.885:22|
 :skolemid |133|
 :pattern ( (invRecv8 o_4@@11))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.891:22|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_11650_6985_6986#PolymorphicMapType_11650| Heap@@15) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) x_1@@2 f_7))
 :pattern ( (select xs x_1@@2))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (select xs (invRecv8 o_4@@12)) (qpRange8 o_4@@12)) (and (= (invRecv8 o_4@@12) o_4@@12) (< (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_4@@12 f_7) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_4@@12 f_7)))) (=> (not (and (select xs (invRecv8 o_4@@12)) (qpRange8 o_4@@12))) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_4@@12 f_7) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_4@@12 f_7))))
 :qid |stdinbpl.897:22|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_4@@12 f_7))
)))) (=> (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@7 T@Field_11710_53) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| ZeroMask) o_4@@13 f_5@@7) (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@0) o_4@@13 f_5@@7)))
 :qid |stdinbpl.901:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| ZeroMask) o_4@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11671_7320_53#PolymorphicMapType_11671| QPMask@0) o_4@@13 f_5@@7))
)) (forall ((o_4@@14 T@Ref) (f_5@@8 T@Field_11723_11724) ) (!  (=> (not (= f_5@@8 f_7)) (= (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_4@@14 f_5@@8) (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_4@@14 f_5@@8)))
 :qid |stdinbpl.901:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| ZeroMask) o_4@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11671_7320_7321#PolymorphicMapType_11671| QPMask@0) o_4@@14 f_5@@8))
))) (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_11710_32705) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.901:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_11671_7320_32705#PolymorphicMapType_11671| QPMask@0) o_4@@15 f_5@@9))
))) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_11710_32838) ) (!  (=> true (= (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.901:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_11671_7320_36384#PolymorphicMapType_11671| QPMask@0) o_4@@16 f_5@@10))
))) (and (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0)) (and (select xs z) (state Heap@@15 QPMask@0)))) (and (=> (= (ControlFlow 0 23) 20) anon12_Then_correct) (=> (= (ControlFlow 0 23) 22) anon12_Else_correct))))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@15) y@@3 $allocated) (select (|PolymorphicMapType_11650_6982_53#PolymorphicMapType_11650| Heap@@15) z $allocated))) (and (=> (= (ControlFlow 0 25) 1) anon11_Then_correct) (=> (= (ControlFlow 0 25) 23) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 26) 25)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid