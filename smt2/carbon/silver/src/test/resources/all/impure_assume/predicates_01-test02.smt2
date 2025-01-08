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
(declare-sort T@Field_7392_53 0)
(declare-sort T@Field_7405_7406 0)
(declare-sort T@Field_7392_10835 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_7392_10852 0)
(declare-sort T@Field_10834_53 0)
(declare-sort T@Field_10834_7406 0)
(declare-sort T@Field_10834_10835 0)
(declare-sort T@Field_10847_10852 0)
(declare-datatypes ((T@PolymorphicMapType_7353 0)) (((PolymorphicMapType_7353 (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| (Array T@Ref T@Field_10834_10835 Real)) (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| (Array T@Ref T@Field_10834_53 Real)) (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| (Array T@Ref T@Field_10834_7406 Real)) (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| (Array T@Ref T@Field_10847_10852 Real)) (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| (Array T@Ref T@Field_7392_10835 Real)) (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| (Array T@Ref T@Field_7392_53 Real)) (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| (Array T@Ref T@Field_7405_7406 Real)) (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| (Array T@Ref T@Field_7392_10852 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7881 0)) (((PolymorphicMapType_7881 (|PolymorphicMapType_7881_7392_53#PolymorphicMapType_7881| (Array T@Ref T@Field_7392_53 Bool)) (|PolymorphicMapType_7881_7392_7406#PolymorphicMapType_7881| (Array T@Ref T@Field_7405_7406 Bool)) (|PolymorphicMapType_7881_7392_10835#PolymorphicMapType_7881| (Array T@Ref T@Field_7392_10835 Bool)) (|PolymorphicMapType_7881_7392_25437#PolymorphicMapType_7881| (Array T@Ref T@Field_7392_10852 Bool)) (|PolymorphicMapType_7881_10834_53#PolymorphicMapType_7881| (Array T@Ref T@Field_10834_53 Bool)) (|PolymorphicMapType_7881_10834_7406#PolymorphicMapType_7881| (Array T@Ref T@Field_10834_7406 Bool)) (|PolymorphicMapType_7881_10834_10835#PolymorphicMapType_7881| (Array T@Ref T@Field_10834_10835 Bool)) (|PolymorphicMapType_7881_10834_26287#PolymorphicMapType_7881| (Array T@Ref T@Field_10847_10852 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7332 0)) (((PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| (Array T@Ref T@Field_7392_53 Bool)) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| (Array T@Ref T@Field_7405_7406 T@Ref)) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| (Array T@Ref T@Field_7392_10835 T@FrameType)) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| (Array T@Ref T@Field_7392_10852 T@PolymorphicMapType_7881)) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| (Array T@Ref T@Field_10834_53 Bool)) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| (Array T@Ref T@Field_10834_7406 T@Ref)) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| (Array T@Ref T@Field_10834_10835 T@FrameType)) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| (Array T@Ref T@Field_10847_10852 T@PolymorphicMapType_7881)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_7332 T@PolymorphicMapType_7332) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7332 T@PolymorphicMapType_7332) Bool)
(declare-fun state (T@PolymorphicMapType_7332 T@PolymorphicMapType_7353) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7353) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7332 T@PolymorphicMapType_7332 T@PolymorphicMapType_7353) Bool)
(declare-fun IsPredicateField_3738_3739 (T@Field_10834_10835) Bool)
(declare-fun HasDirectPerm_10834_10835 (T@PolymorphicMapType_7353 T@Ref T@Field_10834_10835) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3738 (T@Field_10834_10835) T@Field_10847_10852)
(declare-fun IsPredicateField_7392_24151 (T@Field_7392_10835) Bool)
(declare-fun HasDirectPerm_7392_10835 (T@PolymorphicMapType_7353 T@Ref T@Field_7392_10835) Bool)
(declare-fun PredicateMaskField_7392 (T@Field_7392_10835) T@Field_7392_10852)
(declare-fun IsWandField_10834_27452 (T@Field_10834_10835) Bool)
(declare-fun WandMaskField_10834 (T@Field_10834_10835) T@Field_10847_10852)
(declare-fun IsWandField_7392_27095 (T@Field_7392_10835) Bool)
(declare-fun WandMaskField_7392 (T@Field_7392_10835) T@Field_7392_10852)
(declare-fun __iar__assume_helper_1 (Bool Real Real) Real)
(declare-fun NoPerm () Real)
(declare-fun ZeroPMask () T@PolymorphicMapType_7881)
(declare-fun P (T@Ref Int) T@Field_10834_10835)
(declare-fun |P#trigger_3738| (T@PolymorphicMapType_7332 T@Field_10834_10835) Bool)
(declare-fun |P#everUsed_3738| (T@Field_10834_10835) Bool)
(declare-fun |P#sm| (T@Ref Int) T@Field_10847_10852)
(declare-fun dummyHeap () T@PolymorphicMapType_7332)
(declare-fun ZeroMask () T@PolymorphicMapType_7353)
(declare-fun $allocated () T@Field_7392_53)
(declare-fun InsidePredicate_10834_10834 (T@Field_10834_10835 T@FrameType T@Field_10834_10835 T@FrameType) Bool)
(declare-fun InsidePredicate_7392_7392 (T@Field_7392_10835 T@FrameType T@Field_7392_10835 T@FrameType) Bool)
(declare-fun __iar__assume_helper_2 (Bool Bool Real Real Real) Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7392_33192 (T@Field_7392_10852) Bool)
(declare-fun IsWandField_7392_33208 (T@Field_7392_10852) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7392_7406 (T@Field_7405_7406) Bool)
(declare-fun IsWandField_7392_7406 (T@Field_7405_7406) Bool)
(declare-fun IsPredicateField_7392_53 (T@Field_7392_53) Bool)
(declare-fun IsWandField_7392_53 (T@Field_7392_53) Bool)
(declare-fun IsPredicateField_3738_32529 (T@Field_10847_10852) Bool)
(declare-fun IsWandField_3738_32545 (T@Field_10847_10852) Bool)
(declare-fun IsPredicateField_3738_7406 (T@Field_10834_7406) Bool)
(declare-fun IsWandField_3738_7406 (T@Field_10834_7406) Bool)
(declare-fun IsPredicateField_3738_53 (T@Field_10834_53) Bool)
(declare-fun IsWandField_3738_53 (T@Field_10834_53) Bool)
(declare-fun HasDirectPerm_10834_23863 (T@PolymorphicMapType_7353 T@Ref T@Field_10847_10852) Bool)
(declare-fun HasDirectPerm_10834_7406 (T@PolymorphicMapType_7353 T@Ref T@Field_10834_7406) Bool)
(declare-fun HasDirectPerm_10834_53 (T@PolymorphicMapType_7353 T@Ref T@Field_10834_53) Bool)
(declare-fun HasDirectPerm_7392_22906 (T@PolymorphicMapType_7353 T@Ref T@Field_7392_10852) Bool)
(declare-fun HasDirectPerm_7392_7406 (T@PolymorphicMapType_7353 T@Ref T@Field_7405_7406) Bool)
(declare-fun HasDirectPerm_7392_53 (T@PolymorphicMapType_7353 T@Ref T@Field_7392_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7353 T@PolymorphicMapType_7353 T@PolymorphicMapType_7353) Bool)
(declare-fun getPredWandId_3738_3739 (T@Field_10834_10835) Int)
(declare-fun InsidePredicate_10834_7392 (T@Field_10834_10835 T@FrameType T@Field_7392_10835 T@FrameType) Bool)
(declare-fun InsidePredicate_7392_10834 (T@Field_7392_10835 T@FrameType T@Field_10834_10835 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7332) (Heap1 T@PolymorphicMapType_7332) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7332) (Mask T@PolymorphicMapType_7353) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7332) (ExhaleHeap T@PolymorphicMapType_7332) (Mask@@0 T@PolymorphicMapType_7353) (pm_f T@Field_10834_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10834_10835 Mask@@0 null pm_f) (IsPredicateField_3738_3739 pm_f)) (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7392_53) ) (!  (=> (select (|PolymorphicMapType_7881_7392_53#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) null (PredicateMaskField_3738 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@0) o2 f_2) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_7405_7406) ) (!  (=> (select (|PolymorphicMapType_7881_7392_7406#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) null (PredicateMaskField_3738 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@0) o2@@0 f_2@@0) (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_7392_10835) ) (!  (=> (select (|PolymorphicMapType_7881_7392_10835#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) null (PredicateMaskField_3738 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@0) o2@@1 f_2@@1) (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_7392_10852) ) (!  (=> (select (|PolymorphicMapType_7881_7392_25437#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) null (PredicateMaskField_3738 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@0) o2@@2 f_2@@2) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_10834_53) ) (!  (=> (select (|PolymorphicMapType_7881_10834_53#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) null (PredicateMaskField_3738 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@0) o2@@3 f_2@@3) (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_10834_7406) ) (!  (=> (select (|PolymorphicMapType_7881_10834_7406#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) null (PredicateMaskField_3738 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@0) o2@@4 f_2@@4) (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_10834_10835) ) (!  (=> (select (|PolymorphicMapType_7881_10834_10835#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) null (PredicateMaskField_3738 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@0) o2@@5 f_2@@5) (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10847_10852) ) (!  (=> (select (|PolymorphicMapType_7881_10834_26287#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) null (PredicateMaskField_3738 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@0) o2@@6 f_2@@6) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3738_3739 pm_f))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7332) (ExhaleHeap@@0 T@PolymorphicMapType_7332) (Mask@@1 T@PolymorphicMapType_7353) (pm_f@@0 T@Field_7392_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7392_10835 Mask@@1 null pm_f@@0) (IsPredicateField_7392_24151 pm_f@@0)) (and (and (and (and (and (and (and (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7392_53) ) (!  (=> (select (|PolymorphicMapType_7881_7392_53#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) null (PredicateMaskField_7392 pm_f@@0))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@7 f_2@@7))
)) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_7405_7406) ) (!  (=> (select (|PolymorphicMapType_7881_7392_7406#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) null (PredicateMaskField_7392 pm_f@@0))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_7392_10835) ) (!  (=> (select (|PolymorphicMapType_7881_7392_10835#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) null (PredicateMaskField_7392 pm_f@@0))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_7392_10852) ) (!  (=> (select (|PolymorphicMapType_7881_7392_25437#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) null (PredicateMaskField_7392 pm_f@@0))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_10834_53) ) (!  (=> (select (|PolymorphicMapType_7881_10834_53#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) null (PredicateMaskField_7392 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@1) o2@@11 f_2@@11) (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_10834_7406) ) (!  (=> (select (|PolymorphicMapType_7881_10834_7406#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) null (PredicateMaskField_7392 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@1) o2@@12 f_2@@12) (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_10834_10835) ) (!  (=> (select (|PolymorphicMapType_7881_10834_10835#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) null (PredicateMaskField_7392 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@1) o2@@13 f_2@@13) (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_10847_10852) ) (!  (=> (select (|PolymorphicMapType_7881_10834_26287#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@1) null (PredicateMaskField_7392 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@1) o2@@14 f_2@@14) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@0) o2@@14 f_2@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7392_24151 pm_f@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7332) (ExhaleHeap@@1 T@PolymorphicMapType_7332) (Mask@@2 T@PolymorphicMapType_7353) (pm_f@@1 T@Field_10834_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10834_10835 Mask@@2 null pm_f@@1) (IsWandField_10834_27452 pm_f@@1)) (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_7392_53) ) (!  (=> (select (|PolymorphicMapType_7881_7392_53#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) null (WandMaskField_10834 pm_f@@1))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@15 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@15 f_2@@15))
)) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_7405_7406) ) (!  (=> (select (|PolymorphicMapType_7881_7392_7406#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) null (WandMaskField_10834 pm_f@@1))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@16 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_7392_10835) ) (!  (=> (select (|PolymorphicMapType_7881_7392_10835#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) null (WandMaskField_10834 pm_f@@1))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@17 f_2@@17)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_7392_10852) ) (!  (=> (select (|PolymorphicMapType_7881_7392_25437#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) null (WandMaskField_10834 pm_f@@1))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@18 f_2@@18)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_10834_53) ) (!  (=> (select (|PolymorphicMapType_7881_10834_53#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) null (WandMaskField_10834 pm_f@@1))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_10834_7406) ) (!  (=> (select (|PolymorphicMapType_7881_10834_7406#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) null (WandMaskField_10834 pm_f@@1))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_10834_10835) ) (!  (=> (select (|PolymorphicMapType_7881_10834_10835#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) null (WandMaskField_10834 pm_f@@1))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_10847_10852) ) (!  (=> (select (|PolymorphicMapType_7881_10834_26287#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) null (WandMaskField_10834 pm_f@@1))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@1) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_10834_27452 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7332) (ExhaleHeap@@2 T@PolymorphicMapType_7332) (Mask@@3 T@PolymorphicMapType_7353) (pm_f@@2 T@Field_7392_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7392_10835 Mask@@3 null pm_f@@2) (IsWandField_7392_27095 pm_f@@2)) (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_7392_53) ) (!  (=> (select (|PolymorphicMapType_7881_7392_53#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) null (WandMaskField_7392 pm_f@@2))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_7405_7406) ) (!  (=> (select (|PolymorphicMapType_7881_7392_7406#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) null (WandMaskField_7392 pm_f@@2))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_7392_10835) ) (!  (=> (select (|PolymorphicMapType_7881_7392_10835#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) null (WandMaskField_7392 pm_f@@2))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_7392_10852) ) (!  (=> (select (|PolymorphicMapType_7881_7392_25437#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) null (WandMaskField_7392 pm_f@@2))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_10834_53) ) (!  (=> (select (|PolymorphicMapType_7881_10834_53#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) null (WandMaskField_7392 pm_f@@2))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_10834_7406) ) (!  (=> (select (|PolymorphicMapType_7881_10834_7406#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) null (WandMaskField_7392 pm_f@@2))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_10834_10835) ) (!  (=> (select (|PolymorphicMapType_7881_10834_10835#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) null (WandMaskField_7392 pm_f@@2))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_10847_10852) ) (!  (=> (select (|PolymorphicMapType_7881_10834_26287#PolymorphicMapType_7881| (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@3) null (WandMaskField_7392 pm_f@@2))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@2) o2@@30 f_2@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_7392_27095 pm_f@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7332) (Heap1@@0 T@PolymorphicMapType_7332) (Heap2 T@PolymorphicMapType_7332) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((c_1 Bool) (p_1_1 Real) (p_0_1 Real) ) (! (= (__iar__assume_helper_1 c_1 p_1_1 p_0_1) (+ p_0_1 (ite c_1 p_1_1 NoPerm)))
 :qid |stdinbpl.190:15|
 :skolemid |22|
 :pattern ( (__iar__assume_helper_1 c_1 p_1_1 p_0_1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10847_10852) ) (!  (not (select (|PolymorphicMapType_7881_10834_26287#PolymorphicMapType_7881| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7881_10834_26287#PolymorphicMapType_7881| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10834_10835) ) (!  (not (select (|PolymorphicMapType_7881_10834_10835#PolymorphicMapType_7881| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7881_10834_10835#PolymorphicMapType_7881| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10834_7406) ) (!  (not (select (|PolymorphicMapType_7881_10834_7406#PolymorphicMapType_7881| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7881_10834_7406#PolymorphicMapType_7881| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10834_53) ) (!  (not (select (|PolymorphicMapType_7881_10834_53#PolymorphicMapType_7881| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7881_10834_53#PolymorphicMapType_7881| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7392_10852) ) (!  (not (select (|PolymorphicMapType_7881_7392_25437#PolymorphicMapType_7881| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7881_7392_25437#PolymorphicMapType_7881| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7392_10835) ) (!  (not (select (|PolymorphicMapType_7881_7392_10835#PolymorphicMapType_7881| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7881_7392_10835#PolymorphicMapType_7881| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7405_7406) ) (!  (not (select (|PolymorphicMapType_7881_7392_7406#PolymorphicMapType_7881| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7881_7392_7406#PolymorphicMapType_7881| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7392_53) ) (!  (not (select (|PolymorphicMapType_7881_7392_53#PolymorphicMapType_7881| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7881_7392_53#PolymorphicMapType_7881| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((x T@Ref) (i Int) ) (! (IsPredicateField_3738_3739 (P x i))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (P x i))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7332) (x@@0 T@Ref) (i@@0 Int) ) (! (|P#everUsed_3738| (P x@@0 i@@0))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (|P#trigger_3738| Heap@@4 (P x@@0 i@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7332) (ExhaleHeap@@3 T@PolymorphicMapType_7332) (Mask@@4 T@PolymorphicMapType_7353) (pm_f@@3 T@Field_10834_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10834_10835 Mask@@4 null pm_f@@3) (IsPredicateField_3738_3739 pm_f@@3)) (= (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@5) null (PredicateMaskField_3738 pm_f@@3)) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@3) null (PredicateMaskField_3738 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3738_3739 pm_f@@3) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@3) null (PredicateMaskField_3738 pm_f@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7332) (ExhaleHeap@@4 T@PolymorphicMapType_7332) (Mask@@5 T@PolymorphicMapType_7353) (pm_f@@4 T@Field_7392_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_7392_10835 Mask@@5 null pm_f@@4) (IsPredicateField_7392_24151 pm_f@@4)) (= (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@6) null (PredicateMaskField_7392 pm_f@@4)) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@4) null (PredicateMaskField_7392 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_7392_24151 pm_f@@4) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@4) null (PredicateMaskField_7392 pm_f@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7332) (ExhaleHeap@@5 T@PolymorphicMapType_7332) (Mask@@6 T@PolymorphicMapType_7353) (pm_f@@5 T@Field_10834_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_10834_10835 Mask@@6 null pm_f@@5) (IsWandField_10834_27452 pm_f@@5)) (= (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@7) null (WandMaskField_10834 pm_f@@5)) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@5) null (WandMaskField_10834 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_10834_27452 pm_f@@5) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@5) null (WandMaskField_10834 pm_f@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7332) (ExhaleHeap@@6 T@PolymorphicMapType_7332) (Mask@@7 T@PolymorphicMapType_7353) (pm_f@@6 T@Field_7392_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7392_10835 Mask@@7 null pm_f@@6) (IsWandField_7392_27095 pm_f@@6)) (= (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@8) null (WandMaskField_7392 pm_f@@6)) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@6) null (WandMaskField_7392 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_7392_27095 pm_f@@6) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@6) null (WandMaskField_7392 pm_f@@6)))
)))
(assert (forall ((x@@1 T@Ref) (i@@1 Int) (x2 T@Ref) (i2_1 Int) ) (!  (=> (= (P x@@1 i@@1) (P x2 i2_1)) (and (= x@@1 x2) (= i@@1 i2_1)))
 :qid |stdinbpl.222:15|
 :skolemid |27|
 :pattern ( (P x@@1 i@@1) (P x2 i2_1))
)))
(assert (forall ((x@@2 T@Ref) (i@@2 Int) (x2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|P#sm| x@@2 i@@2) (|P#sm| x2@@0 i2_1@@0)) (and (= x@@2 x2@@0) (= i@@2 i2_1@@0)))
 :qid |stdinbpl.226:15|
 :skolemid |28|
 :pattern ( (|P#sm| x@@2 i@@2) (|P#sm| x2@@0 i2_1@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7332) (ExhaleHeap@@7 T@PolymorphicMapType_7332) (Mask@@8 T@PolymorphicMapType_7353) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_10834_10835) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10834_10834 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10834_10834 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7392_10835) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7392_7392 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7392_7392 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((c_2 Bool) (c_1@@0 Bool) (p_2_1 Real) (p_1_1@@0 Real) (p_0_1@@0 Real) ) (! (= (__iar__assume_helper_2 c_2 c_1@@0 p_2_1 p_1_1@@0 p_0_1@@0) (+ (+ p_0_1@@0 (ite c_1@@0 p_1_1@@0 NoPerm)) (ite c_2 p_2_1 NoPerm)))
 :qid |stdinbpl.196:15|
 :skolemid |23|
 :pattern ( (__iar__assume_helper_2 c_2 c_1@@0 p_2_1 p_1_1@@0 p_0_1@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7332) (ExhaleHeap@@8 T@PolymorphicMapType_7332) (Mask@@9 T@PolymorphicMapType_7353) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7353) (o_2@@7 T@Ref) (f_4@@7 T@Field_7392_10852) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7392_33192 f_4@@7))) (not (IsWandField_7392_33208 f_4@@7))) (<= (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7353) (o_2@@8 T@Ref) (f_4@@8 T@Field_7405_7406) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7392_7406 f_4@@8))) (not (IsWandField_7392_7406 f_4@@8))) (<= (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7353) (o_2@@9 T@Ref) (f_4@@9 T@Field_7392_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_7392_53 f_4@@9))) (not (IsWandField_7392_53 f_4@@9))) (<= (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7353) (o_2@@10 T@Ref) (f_4@@10 T@Field_7392_10835) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7392_24151 f_4@@10))) (not (IsWandField_7392_27095 f_4@@10))) (<= (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7353) (o_2@@11 T@Ref) (f_4@@11 T@Field_10847_10852) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3738_32529 f_4@@11))) (not (IsWandField_3738_32545 f_4@@11))) (<= (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7353) (o_2@@12 T@Ref) (f_4@@12 T@Field_10834_7406) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3738_7406 f_4@@12))) (not (IsWandField_3738_7406 f_4@@12))) (<= (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7353) (o_2@@13 T@Ref) (f_4@@13 T@Field_10834_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3738_53 f_4@@13))) (not (IsWandField_3738_53 f_4@@13))) (<= (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7353) (o_2@@14 T@Ref) (f_4@@14 T@Field_10834_10835) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3738_3739 f_4@@14))) (not (IsWandField_10834_27452 f_4@@14))) (<= (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7353) (o_2@@15 T@Ref) (f_4@@15 T@Field_10847_10852) ) (! (= (HasDirectPerm_10834_23863 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10834_23863 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7353) (o_2@@16 T@Ref) (f_4@@16 T@Field_10834_10835) ) (! (= (HasDirectPerm_10834_10835 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10834_10835 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7353) (o_2@@17 T@Ref) (f_4@@17 T@Field_10834_7406) ) (! (= (HasDirectPerm_10834_7406 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10834_7406 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7353) (o_2@@18 T@Ref) (f_4@@18 T@Field_10834_53) ) (! (= (HasDirectPerm_10834_53 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10834_53 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7353) (o_2@@19 T@Ref) (f_4@@19 T@Field_7392_10852) ) (! (= (HasDirectPerm_7392_22906 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7392_22906 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7353) (o_2@@20 T@Ref) (f_4@@20 T@Field_7392_10835) ) (! (= (HasDirectPerm_7392_10835 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7392_10835 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7353) (o_2@@21 T@Ref) (f_4@@21 T@Field_7405_7406) ) (! (= (HasDirectPerm_7392_7406 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7392_7406 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7353) (o_2@@22 T@Ref) (f_4@@22 T@Field_7392_53) ) (! (= (HasDirectPerm_7392_53 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7392_53 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7332) (ExhaleHeap@@9 T@PolymorphicMapType_7332) (Mask@@26 T@PolymorphicMapType_7353) (o_1@@0 T@Ref) (f_2@@31 T@Field_10847_10852) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_10834_23863 Mask@@26 o_1@@0 f_2@@31) (= (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@11) o_1@@0 f_2@@31) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@9) o_1@@0 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| ExhaleHeap@@9) o_1@@0 f_2@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7332) (ExhaleHeap@@10 T@PolymorphicMapType_7332) (Mask@@27 T@PolymorphicMapType_7353) (o_1@@1 T@Ref) (f_2@@32 T@Field_10834_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_10834_10835 Mask@@27 o_1@@1 f_2@@32) (= (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@12) o_1@@1 f_2@@32) (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap@@10) o_1@@1 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| ExhaleHeap@@10) o_1@@1 f_2@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7332) (ExhaleHeap@@11 T@PolymorphicMapType_7332) (Mask@@28 T@PolymorphicMapType_7353) (o_1@@2 T@Ref) (f_2@@33 T@Field_10834_7406) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_10834_7406 Mask@@28 o_1@@2 f_2@@33) (= (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@13) o_1@@2 f_2@@33) (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap@@11) o_1@@2 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| ExhaleHeap@@11) o_1@@2 f_2@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7332) (ExhaleHeap@@12 T@PolymorphicMapType_7332) (Mask@@29 T@PolymorphicMapType_7353) (o_1@@3 T@Ref) (f_2@@34 T@Field_10834_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_10834_53 Mask@@29 o_1@@3 f_2@@34) (= (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@14) o_1@@3 f_2@@34) (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap@@12) o_1@@3 f_2@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| ExhaleHeap@@12) o_1@@3 f_2@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7332) (ExhaleHeap@@13 T@PolymorphicMapType_7332) (Mask@@30 T@PolymorphicMapType_7353) (o_1@@4 T@Ref) (f_2@@35 T@Field_7392_10852) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_7392_22906 Mask@@30 o_1@@4 f_2@@35) (= (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@15) o_1@@4 f_2@@35) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@13) o_1@@4 f_2@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| ExhaleHeap@@13) o_1@@4 f_2@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7332) (ExhaleHeap@@14 T@PolymorphicMapType_7332) (Mask@@31 T@PolymorphicMapType_7353) (o_1@@5 T@Ref) (f_2@@36 T@Field_7392_10835) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_7392_10835 Mask@@31 o_1@@5 f_2@@36) (= (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@16) o_1@@5 f_2@@36) (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap@@14) o_1@@5 f_2@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| ExhaleHeap@@14) o_1@@5 f_2@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7332) (ExhaleHeap@@15 T@PolymorphicMapType_7332) (Mask@@32 T@PolymorphicMapType_7353) (o_1@@6 T@Ref) (f_2@@37 T@Field_7405_7406) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_7392_7406 Mask@@32 o_1@@6 f_2@@37) (= (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@17) o_1@@6 f_2@@37) (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap@@15) o_1@@6 f_2@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| ExhaleHeap@@15) o_1@@6 f_2@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7332) (ExhaleHeap@@16 T@PolymorphicMapType_7332) (Mask@@33 T@PolymorphicMapType_7353) (o_1@@7 T@Ref) (f_2@@38 T@Field_7392_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_7392_53 Mask@@33 o_1@@7 f_2@@38) (= (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@18) o_1@@7 f_2@@38) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@16) o_1@@7 f_2@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| ExhaleHeap@@16) o_1@@7 f_2@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_7392_10852) ) (! (= (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_7405_7406) ) (! (= (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7392_53) ) (! (= (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_7392_10835) ) (! (= (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_10847_10852) ) (! (= (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_10834_7406) ) (! (= (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_10834_53) ) (! (= (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_10834_10835) ) (! (= (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7353) (SummandMask1 T@PolymorphicMapType_7353) (SummandMask2 T@PolymorphicMapType_7353) (o_2@@31 T@Ref) (f_4@@31 T@Field_7392_10852) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7353) (SummandMask1@@0 T@PolymorphicMapType_7353) (SummandMask2@@0 T@PolymorphicMapType_7353) (o_2@@32 T@Ref) (f_4@@32 T@Field_7405_7406) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7353) (SummandMask1@@1 T@PolymorphicMapType_7353) (SummandMask2@@1 T@PolymorphicMapType_7353) (o_2@@33 T@Ref) (f_4@@33 T@Field_7392_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7353) (SummandMask1@@2 T@PolymorphicMapType_7353) (SummandMask2@@2 T@PolymorphicMapType_7353) (o_2@@34 T@Ref) (f_4@@34 T@Field_7392_10835) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7353) (SummandMask1@@3 T@PolymorphicMapType_7353) (SummandMask2@@3 T@PolymorphicMapType_7353) (o_2@@35 T@Ref) (f_4@@35 T@Field_10847_10852) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7353) (SummandMask1@@4 T@PolymorphicMapType_7353) (SummandMask2@@4 T@PolymorphicMapType_7353) (o_2@@36 T@Ref) (f_4@@36 T@Field_10834_7406) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7353) (SummandMask1@@5 T@PolymorphicMapType_7353) (SummandMask2@@5 T@PolymorphicMapType_7353) (o_2@@37 T@Ref) (f_4@@37 T@Field_10834_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7353) (SummandMask1@@6 T@PolymorphicMapType_7353) (SummandMask2@@6 T@PolymorphicMapType_7353) (o_2@@38 T@Ref) (f_4@@38 T@Field_10834_10835) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((x@@3 T@Ref) (i@@3 Int) ) (! (= (getPredWandId_3738_3739 (P x@@3 i@@3)) 0)
 :qid |stdinbpl.216:15|
 :skolemid |26|
 :pattern ( (P x@@3 i@@3))
)))
(assert (forall ((x@@4 T@Ref) (i@@4 Int) ) (! (= (PredicateMaskField_3738 (P x@@4 i@@4)) (|P#sm| x@@4 i@@4))
 :qid |stdinbpl.208:15|
 :skolemid |24|
 :pattern ( (PredicateMaskField_3738 (P x@@4 i@@4)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7332) (o T@Ref) (f_3 T@Field_10847_10852) (v T@PolymorphicMapType_7881) ) (! (succHeap Heap@@19 (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@19) (store (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@19) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@19) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@19) (store (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@19) o f_3 v)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7332) (o@@0 T@Ref) (f_3@@0 T@Field_10834_10835) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@20) (store (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@20) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@20) (store (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7332) (o@@1 T@Ref) (f_3@@1 T@Field_10834_7406) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@21) (store (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@21) (store (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@21) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7332) (o@@2 T@Ref) (f_3@@2 T@Field_10834_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@22) (store (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@22) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@22) (store (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@22) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@22) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7332) (o@@3 T@Ref) (f_3@@3 T@Field_7392_10852) (v@@3 T@PolymorphicMapType_7881) ) (! (succHeap Heap@@23 (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@23) (store (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@23) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@23) (store (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@23) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@23) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7332) (o@@4 T@Ref) (f_3@@4 T@Field_7392_10835) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@24) (store (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@24) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@24) (store (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@24) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@24) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7332) (o@@5 T@Ref) (f_3@@5 T@Field_7405_7406) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@25) (store (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@25) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7332 (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@25) (store (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@25) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@25) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7332) (o@@6 T@Ref) (f_3@@6 T@Field_7392_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_7332 (store (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@26) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7332 (store (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@26) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_7392_10835#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_7392_22948#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_10834_53#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_10834_7406#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_10834_10835#PolymorphicMapType_7332| Heap@@26) (|PolymorphicMapType_7332_10834_23905#PolymorphicMapType_7332| Heap@@26)))
)))
(assert (forall ((o@@7 T@Ref) (f T@Field_7405_7406) (Heap@@27 T@PolymorphicMapType_7332) ) (!  (=> (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@27) o@@7 $allocated) (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@27) (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@27) o@@7 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7332_3596_3597#PolymorphicMapType_7332| Heap@@27) o@@7 f))
)))
(assert (forall ((p@@2 T@Field_10834_10835) (v_1@@1 T@FrameType) (q T@Field_10834_10835) (w@@1 T@FrameType) (r T@Field_10834_10835) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10834_10834 p@@2 v_1@@1 q w@@1) (InsidePredicate_10834_10834 q w@@1 r u)) (InsidePredicate_10834_10834 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10834_10834 p@@2 v_1@@1 q w@@1) (InsidePredicate_10834_10834 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_10834_10835) (v_1@@2 T@FrameType) (q@@0 T@Field_10834_10835) (w@@2 T@FrameType) (r@@0 T@Field_7392_10835) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10834_10834 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10834_7392 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_10834_7392 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10834_10834 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10834_7392 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_10834_10835) (v_1@@3 T@FrameType) (q@@1 T@Field_7392_10835) (w@@3 T@FrameType) (r@@1 T@Field_10834_10835) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10834_7392 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7392_10834 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_10834_10834 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10834_7392 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7392_10834 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_10834_10835) (v_1@@4 T@FrameType) (q@@2 T@Field_7392_10835) (w@@4 T@FrameType) (r@@2 T@Field_7392_10835) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10834_7392 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7392_7392 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_10834_7392 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10834_7392 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7392_7392 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_7392_10835) (v_1@@5 T@FrameType) (q@@3 T@Field_10834_10835) (w@@5 T@FrameType) (r@@3 T@Field_10834_10835) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7392_10834 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10834_10834 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7392_10834 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7392_10834 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10834_10834 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_7392_10835) (v_1@@6 T@FrameType) (q@@4 T@Field_10834_10835) (w@@6 T@FrameType) (r@@4 T@Field_7392_10835) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7392_10834 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10834_7392 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7392_7392 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7392_10834 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10834_7392 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_7392_10835) (v_1@@7 T@FrameType) (q@@5 T@Field_7392_10835) (w@@7 T@FrameType) (r@@5 T@Field_10834_10835) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7392_7392 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7392_10834 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7392_10834 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7392_7392 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7392_10834 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_7392_10835) (v_1@@8 T@FrameType) (q@@6 T@Field_7392_10835) (w@@8 T@FrameType) (r@@6 T@Field_7392_10835) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7392_7392 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7392_7392 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7392_7392 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7392_7392 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7392_7392 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@28 () T@PolymorphicMapType_7332)
(declare-fun x@@5 () T@Ref)
(declare-fun y () T@Ref)
(declare-fun px () Real)
(declare-fun py () Real)
(declare-fun perm@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_7353)
(declare-fun i@@5 () Int)
(declare-fun j_9 () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (state Heap@@28 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@28) x@@5 $allocated)) (=> (and (and (and (select (|PolymorphicMapType_7332_3593_53#PolymorphicMapType_7332| Heap@@28) y $allocated) (< NoPerm px)) (and (state Heap@@28 ZeroMask) (state Heap@@28 ZeroMask))) (and (and (< NoPerm py) (state Heap@@28 ZeroMask)) (and (state Heap@@28 ZeroMask) (= perm@0 (/ (to_real 1) (to_real 10)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (= Mask@0 (PolymorphicMapType_7353 (store (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| ZeroMask) null (P x@@5 i@@5) (+ (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| ZeroMask) null (P x@@5 i@@5)) perm@0)) (|PolymorphicMapType_7353_3738_53#PolymorphicMapType_7353| ZeroMask) (|PolymorphicMapType_7353_3738_7406#PolymorphicMapType_7353| ZeroMask) (|PolymorphicMapType_7353_3738_31008#PolymorphicMapType_7353| ZeroMask) (|PolymorphicMapType_7353_7392_3739#PolymorphicMapType_7353| ZeroMask) (|PolymorphicMapType_7353_7392_53#PolymorphicMapType_7353| ZeroMask) (|PolymorphicMapType_7353_7392_7406#PolymorphicMapType_7353| ZeroMask) (|PolymorphicMapType_7353_7392_31354#PolymorphicMapType_7353| ZeroMask))) (state Heap@@28 Mask@0)) (=> (and (and (and (state Heap@@28 Mask@0) (state Heap@@28 Mask@0)) (and (<= px (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| Mask@0) null (P x@@5 i@@5))) (state Heap@@28 Mask@0))) (and (and (state Heap@@28 Mask@0) (<= (__iar__assume_helper_1  (and (= x@@5 y) (= i@@5 j_9)) px py) (select (|PolymorphicMapType_7353_3738_3739#PolymorphicMapType_7353| Mask@0) null (P y j_9)))) (and (state Heap@@28 Mask@0) (state Heap@@28 Mask@0)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= px (/ (to_real 1) (to_real 10)))) (=> (<= px (/ (to_real 1) (to_real 10))) (=> (state Heap@@28 Mask@0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= y x@@5)) (=> (= y x@@5) (=> (= (ControlFlow 0 2) (- 0 1)) (= i@@5 j_9))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
