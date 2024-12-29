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
(declare-sort T@Field_6252_53 0)
(declare-sort T@Field_6265_6266 0)
(declare-sort T@Field_9840_9841 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_6252_9841 0)
(declare-sort T@Field_6252_11269 0)
(declare-sort T@Field_9840_53 0)
(declare-sort T@Field_9840_6266 0)
(declare-sort T@Field_11264_11269 0)
(declare-datatypes ((T@PolymorphicMapType_6213 0)) (((PolymorphicMapType_6213 (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| (Array T@Ref T@Field_9840_9841 Real)) (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| (Array T@Ref T@Field_9840_53 Real)) (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| (Array T@Ref T@Field_9840_6266 Real)) (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| (Array T@Ref T@Field_11264_11269 Real)) (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| (Array T@Ref T@Field_6252_9841 Real)) (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| (Array T@Ref T@Field_6252_53 Real)) (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| (Array T@Ref T@Field_6265_6266 Real)) (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| (Array T@Ref T@Field_6252_11269 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6741 0)) (((PolymorphicMapType_6741 (|PolymorphicMapType_6741_6252_53#PolymorphicMapType_6741| (Array T@Ref T@Field_6252_53 Bool)) (|PolymorphicMapType_6741_6252_6266#PolymorphicMapType_6741| (Array T@Ref T@Field_6265_6266 Bool)) (|PolymorphicMapType_6741_6252_9841#PolymorphicMapType_6741| (Array T@Ref T@Field_6252_9841 Bool)) (|PolymorphicMapType_6741_6252_21172#PolymorphicMapType_6741| (Array T@Ref T@Field_6252_11269 Bool)) (|PolymorphicMapType_6741_9840_53#PolymorphicMapType_6741| (Array T@Ref T@Field_9840_53 Bool)) (|PolymorphicMapType_6741_9840_6266#PolymorphicMapType_6741| (Array T@Ref T@Field_9840_6266 Bool)) (|PolymorphicMapType_6741_9840_9841#PolymorphicMapType_6741| (Array T@Ref T@Field_9840_9841 Bool)) (|PolymorphicMapType_6741_9840_22022#PolymorphicMapType_6741| (Array T@Ref T@Field_11264_11269 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6192 0)) (((PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| (Array T@Ref T@Field_6252_53 Bool)) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| (Array T@Ref T@Field_6265_6266 T@Ref)) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| (Array T@Ref T@Field_9840_9841 T@FrameType)) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| (Array T@Ref T@Field_6252_9841 T@FrameType)) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| (Array T@Ref T@Field_6252_11269 T@PolymorphicMapType_6741)) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| (Array T@Ref T@Field_9840_53 Bool)) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| (Array T@Ref T@Field_9840_6266 T@Ref)) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| (Array T@Ref T@Field_11264_11269 T@PolymorphicMapType_6741)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6192 T@PolymorphicMapType_6192) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6192 T@PolymorphicMapType_6192) Bool)
(declare-fun state (T@PolymorphicMapType_6192 T@PolymorphicMapType_6213) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6213) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6192 T@PolymorphicMapType_6192 T@PolymorphicMapType_6213) Bool)
(declare-fun IsPredicateField_3400_3401 (T@Field_9840_9841) Bool)
(declare-fun HasDirectPerm_9840_9841 (T@PolymorphicMapType_6213 T@Ref T@Field_9840_9841) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3400 (T@Field_9840_9841) T@Field_11264_11269)
(declare-fun IsPredicateField_6252_19886 (T@Field_6252_9841) Bool)
(declare-fun HasDirectPerm_6252_9841 (T@PolymorphicMapType_6213 T@Ref T@Field_6252_9841) Bool)
(declare-fun PredicateMaskField_6252 (T@Field_6252_9841) T@Field_6252_11269)
(declare-fun IsWandField_9840_23187 (T@Field_9840_9841) Bool)
(declare-fun WandMaskField_9840 (T@Field_9840_9841) T@Field_11264_11269)
(declare-fun IsWandField_6252_22830 (T@Field_6252_9841) Bool)
(declare-fun WandMaskField_6252 (T@Field_6252_9841) T@Field_6252_11269)
(declare-fun ZeroPMask () T@PolymorphicMapType_6741)
(declare-fun |trigF'| (T@PolymorphicMapType_6192 Int Int) Bool)
(declare-fun dummyFunction_1414 (Bool) Bool)
(declare-fun |trigF#triggerStateless| (Int Int) Bool)
(declare-fun |trigG'| (T@PolymorphicMapType_6192 Int Bool) Bool)
(declare-fun |trigG#triggerStateless| (Int Bool) Bool)
(declare-fun P () T@Field_9840_9841)
(declare-fun getPredWandId_3400_3401 (T@Field_9840_9841) Int)
(declare-fun trigG (T@PolymorphicMapType_6192 Int Bool) Bool)
(declare-fun |P#trigger_3400| (T@PolymorphicMapType_6192 T@Field_9840_9841) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun trigF (T@PolymorphicMapType_6192 Int Int) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6192)
(declare-fun ZeroMask () T@PolymorphicMapType_6213)
(declare-fun $allocated () T@Field_6252_53)
(declare-fun InsidePredicate_9840_9840 (T@Field_9840_9841 T@FrameType T@Field_9840_9841 T@FrameType) Bool)
(declare-fun InsidePredicate_6252_6252 (T@Field_6252_9841 T@FrameType T@Field_6252_9841 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6252_28927 (T@Field_6252_11269) Bool)
(declare-fun IsWandField_6252_28943 (T@Field_6252_11269) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6252_6266 (T@Field_6265_6266) Bool)
(declare-fun IsWandField_6252_6266 (T@Field_6265_6266) Bool)
(declare-fun IsPredicateField_6252_53 (T@Field_6252_53) Bool)
(declare-fun IsWandField_6252_53 (T@Field_6252_53) Bool)
(declare-fun IsPredicateField_3400_28264 (T@Field_11264_11269) Bool)
(declare-fun IsWandField_3400_28280 (T@Field_11264_11269) Bool)
(declare-fun IsPredicateField_3400_6266 (T@Field_9840_6266) Bool)
(declare-fun IsWandField_3400_6266 (T@Field_9840_6266) Bool)
(declare-fun IsPredicateField_3400_53 (T@Field_9840_53) Bool)
(declare-fun IsWandField_3400_53 (T@Field_9840_53) Bool)
(declare-fun HasDirectPerm_9840_19598 (T@PolymorphicMapType_6213 T@Ref T@Field_11264_11269) Bool)
(declare-fun HasDirectPerm_9840_6266 (T@PolymorphicMapType_6213 T@Ref T@Field_9840_6266) Bool)
(declare-fun HasDirectPerm_9840_53 (T@PolymorphicMapType_6213 T@Ref T@Field_9840_53) Bool)
(declare-fun HasDirectPerm_6252_18658 (T@PolymorphicMapType_6213 T@Ref T@Field_6252_11269) Bool)
(declare-fun HasDirectPerm_6252_6266 (T@PolymorphicMapType_6213 T@Ref T@Field_6265_6266) Bool)
(declare-fun HasDirectPerm_6252_53 (T@PolymorphicMapType_6213 T@Ref T@Field_6252_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6213 T@PolymorphicMapType_6213 T@PolymorphicMapType_6213) Bool)
(declare-fun |trigF#frame| (T@FrameType Int Int) Bool)
(declare-fun |trigG#frame| (T@FrameType Int Bool) Bool)
(declare-fun |P#everUsed_3400| (T@Field_9840_9841) Bool)
(declare-fun |P#sm| () T@Field_11264_11269)
(declare-fun InsidePredicate_9840_6252 (T@Field_9840_9841 T@FrameType T@Field_6252_9841 T@FrameType) Bool)
(declare-fun InsidePredicate_6252_9840 (T@Field_6252_9841 T@FrameType T@Field_9840_9841 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6192) (Heap1 T@PolymorphicMapType_6192) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6192) (Mask T@PolymorphicMapType_6213) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6192) (ExhaleHeap T@PolymorphicMapType_6192) (Mask@@0 T@PolymorphicMapType_6213) (pm_f_13 T@Field_9840_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9840_9841 Mask@@0 null pm_f_13) (IsPredicateField_3400_3401 pm_f_13)) (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_6252_53) ) (!  (=> (select (|PolymorphicMapType_6741_6252_53#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) null (PredicateMaskField_3400 pm_f_13))) o2_13 f_30) (= (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@0) o2_13 f_30) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_6265_6266) ) (!  (=> (select (|PolymorphicMapType_6741_6252_6266#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) null (PredicateMaskField_3400 pm_f_13))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@0) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_6252_9841) ) (!  (=> (select (|PolymorphicMapType_6741_6252_9841#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) null (PredicateMaskField_3400 pm_f_13))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@0) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_6252_11269) ) (!  (=> (select (|PolymorphicMapType_6741_6252_21172#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) null (PredicateMaskField_3400 pm_f_13))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@0) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_9840_53) ) (!  (=> (select (|PolymorphicMapType_6741_9840_53#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) null (PredicateMaskField_3400 pm_f_13))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@0) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_9840_6266) ) (!  (=> (select (|PolymorphicMapType_6741_9840_6266#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) null (PredicateMaskField_3400 pm_f_13))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@0) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_9840_9841) ) (!  (=> (select (|PolymorphicMapType_6741_9840_9841#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) null (PredicateMaskField_3400 pm_f_13))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@0) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_11264_11269) ) (!  (=> (select (|PolymorphicMapType_6741_9840_22022#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) null (PredicateMaskField_3400 pm_f_13))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@0) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3400_3401 pm_f_13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6192) (ExhaleHeap@@0 T@PolymorphicMapType_6192) (Mask@@1 T@PolymorphicMapType_6213) (pm_f_13@@0 T@Field_6252_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6252_9841 Mask@@1 null pm_f_13@@0) (IsPredicateField_6252_19886 pm_f_13@@0)) (and (and (and (and (and (and (and (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_6252_53) ) (!  (=> (select (|PolymorphicMapType_6741_6252_53#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) null (PredicateMaskField_6252 pm_f_13@@0))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@1) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@7 f_30@@7))
)) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_6265_6266) ) (!  (=> (select (|PolymorphicMapType_6741_6252_6266#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) null (PredicateMaskField_6252 pm_f_13@@0))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@1) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@8 f_30@@8))
))) (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_6252_9841) ) (!  (=> (select (|PolymorphicMapType_6741_6252_9841#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) null (PredicateMaskField_6252 pm_f_13@@0))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@1) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@9 f_30@@9))
))) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_6252_11269) ) (!  (=> (select (|PolymorphicMapType_6741_6252_21172#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) null (PredicateMaskField_6252 pm_f_13@@0))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_9840_53) ) (!  (=> (select (|PolymorphicMapType_6741_9840_53#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) null (PredicateMaskField_6252 pm_f_13@@0))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@1) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_9840_6266) ) (!  (=> (select (|PolymorphicMapType_6741_9840_6266#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) null (PredicateMaskField_6252 pm_f_13@@0))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@1) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_9840_9841) ) (!  (=> (select (|PolymorphicMapType_6741_9840_9841#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) null (PredicateMaskField_6252 pm_f_13@@0))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@1) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_11264_11269) ) (!  (=> (select (|PolymorphicMapType_6741_9840_22022#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@1) null (PredicateMaskField_6252 pm_f_13@@0))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@1) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@0) o2_13@@14 f_30@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6252_19886 pm_f_13@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6192) (ExhaleHeap@@1 T@PolymorphicMapType_6192) (Mask@@2 T@PolymorphicMapType_6213) (pm_f_13@@1 T@Field_9840_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9840_9841 Mask@@2 null pm_f_13@@1) (IsWandField_9840_23187 pm_f_13@@1)) (and (and (and (and (and (and (and (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_6252_53) ) (!  (=> (select (|PolymorphicMapType_6741_6252_53#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) null (WandMaskField_9840 pm_f_13@@1))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@2) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@15 f_30@@15))
)) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_6265_6266) ) (!  (=> (select (|PolymorphicMapType_6741_6252_6266#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) null (WandMaskField_9840 pm_f_13@@1))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@2) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_6252_9841) ) (!  (=> (select (|PolymorphicMapType_6741_6252_9841#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) null (WandMaskField_9840 pm_f_13@@1))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@2) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_6252_11269) ) (!  (=> (select (|PolymorphicMapType_6741_6252_21172#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) null (WandMaskField_9840 pm_f_13@@1))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@2) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@18 f_30@@18))
))) (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_9840_53) ) (!  (=> (select (|PolymorphicMapType_6741_9840_53#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) null (WandMaskField_9840 pm_f_13@@1))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@2) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@19 f_30@@19))
))) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_9840_6266) ) (!  (=> (select (|PolymorphicMapType_6741_9840_6266#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) null (WandMaskField_9840 pm_f_13@@1))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@2) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_9840_9841) ) (!  (=> (select (|PolymorphicMapType_6741_9840_9841#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) null (WandMaskField_9840 pm_f_13@@1))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@2) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_11264_11269) ) (!  (=> (select (|PolymorphicMapType_6741_9840_22022#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) null (WandMaskField_9840 pm_f_13@@1))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@2) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@1) o2_13@@22 f_30@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_9840_23187 pm_f_13@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6192) (ExhaleHeap@@2 T@PolymorphicMapType_6192) (Mask@@3 T@PolymorphicMapType_6213) (pm_f_13@@2 T@Field_6252_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6252_9841 Mask@@3 null pm_f_13@@2) (IsWandField_6252_22830 pm_f_13@@2)) (and (and (and (and (and (and (and (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_6252_53) ) (!  (=> (select (|PolymorphicMapType_6741_6252_53#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) null (WandMaskField_6252 pm_f_13@@2))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@3) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@23 f_30@@23))
)) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_6265_6266) ) (!  (=> (select (|PolymorphicMapType_6741_6252_6266#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) null (WandMaskField_6252 pm_f_13@@2))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@3) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_6252_9841) ) (!  (=> (select (|PolymorphicMapType_6741_6252_9841#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) null (WandMaskField_6252 pm_f_13@@2))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@3) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_6252_11269) ) (!  (=> (select (|PolymorphicMapType_6741_6252_21172#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) null (WandMaskField_6252 pm_f_13@@2))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_9840_53) ) (!  (=> (select (|PolymorphicMapType_6741_9840_53#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) null (WandMaskField_6252 pm_f_13@@2))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@3) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_9840_6266) ) (!  (=> (select (|PolymorphicMapType_6741_9840_6266#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) null (WandMaskField_6252 pm_f_13@@2))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@3) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@28 f_30@@28))
))) (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_9840_9841) ) (!  (=> (select (|PolymorphicMapType_6741_9840_9841#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) null (WandMaskField_6252 pm_f_13@@2))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@3) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@29 f_30@@29))
))) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_11264_11269) ) (!  (=> (select (|PolymorphicMapType_6741_9840_22022#PolymorphicMapType_6741| (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@3) null (WandMaskField_6252 pm_f_13@@2))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@3) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@2) o2_13@@30 f_30@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6252_22830 pm_f_13@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6192) (Heap1@@0 T@PolymorphicMapType_6192) (Heap2 T@PolymorphicMapType_6192) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11264_11269) ) (!  (not (select (|PolymorphicMapType_6741_9840_22022#PolymorphicMapType_6741| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6741_9840_22022#PolymorphicMapType_6741| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9840_9841) ) (!  (not (select (|PolymorphicMapType_6741_9840_9841#PolymorphicMapType_6741| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6741_9840_9841#PolymorphicMapType_6741| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9840_6266) ) (!  (not (select (|PolymorphicMapType_6741_9840_6266#PolymorphicMapType_6741| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6741_9840_6266#PolymorphicMapType_6741| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9840_53) ) (!  (not (select (|PolymorphicMapType_6741_9840_53#PolymorphicMapType_6741| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6741_9840_53#PolymorphicMapType_6741| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6252_11269) ) (!  (not (select (|PolymorphicMapType_6741_6252_21172#PolymorphicMapType_6741| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6741_6252_21172#PolymorphicMapType_6741| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6252_9841) ) (!  (not (select (|PolymorphicMapType_6741_6252_9841#PolymorphicMapType_6741| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6741_6252_9841#PolymorphicMapType_6741| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6265_6266) ) (!  (not (select (|PolymorphicMapType_6741_6252_6266#PolymorphicMapType_6741| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6741_6252_6266#PolymorphicMapType_6741| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6252_53) ) (!  (not (select (|PolymorphicMapType_6741_6252_53#PolymorphicMapType_6741| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6741_6252_53#PolymorphicMapType_6741| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6192) (x Int) (y Int) ) (! (dummyFunction_1414 (|trigF#triggerStateless| x y))
 :qid |stdinbpl.191:15|
 :skolemid |23|
 :pattern ( (|trigF'| Heap@@4 x y))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6192) (x@@0 Int) (b_24 Bool) ) (! (dummyFunction_1414 (|trigG#triggerStateless| x@@0 b_24))
 :qid |stdinbpl.248:15|
 :skolemid |27|
 :pattern ( (|trigG'| Heap@@5 x@@0 b_24))
)))
(assert (IsPredicateField_3400_3401 P))
(assert (= (getPredWandId_3400_3401 P) 0))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6192) (Mask@@4 T@PolymorphicMapType_6213) (x@@1 Int) (b_24@@0 Bool) ) (!  (=> (and (state Heap@@6 Mask@@4) (< AssumeFunctionsAbove 0)) (= (trigG Heap@@6 x@@1 b_24@@0) b_24@@0))
 :qid |stdinbpl.254:15|
 :skolemid |28|
 :pattern ( (state Heap@@6 Mask@@4) (trigG Heap@@6 x@@1 b_24@@0))
 :pattern ( (state Heap@@6 Mask@@4) (|trigG#triggerStateless| x@@1 b_24@@0) (|P#trigger_3400| Heap@@6 P))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6192) (ExhaleHeap@@3 T@PolymorphicMapType_6192) (Mask@@5 T@PolymorphicMapType_6213) (pm_f_13@@3 T@Field_9840_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_9840_9841 Mask@@5 null pm_f_13@@3) (IsPredicateField_3400_3401 pm_f_13@@3)) (= (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@7) null (PredicateMaskField_3400 pm_f_13@@3)) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@3) null (PredicateMaskField_3400 pm_f_13@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3400_3401 pm_f_13@@3) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@3) null (PredicateMaskField_3400 pm_f_13@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6192) (ExhaleHeap@@4 T@PolymorphicMapType_6192) (Mask@@6 T@PolymorphicMapType_6213) (pm_f_13@@4 T@Field_6252_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_6252_9841 Mask@@6 null pm_f_13@@4) (IsPredicateField_6252_19886 pm_f_13@@4)) (= (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@8) null (PredicateMaskField_6252 pm_f_13@@4)) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@4) null (PredicateMaskField_6252 pm_f_13@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_6252_19886 pm_f_13@@4) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@4) null (PredicateMaskField_6252 pm_f_13@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6192) (ExhaleHeap@@5 T@PolymorphicMapType_6192) (Mask@@7 T@PolymorphicMapType_6213) (pm_f_13@@5 T@Field_9840_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_9840_9841 Mask@@7 null pm_f_13@@5) (IsWandField_9840_23187 pm_f_13@@5)) (= (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@9) null (WandMaskField_9840 pm_f_13@@5)) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@5) null (WandMaskField_9840 pm_f_13@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_9840_23187 pm_f_13@@5) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@5) null (WandMaskField_9840 pm_f_13@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6192) (ExhaleHeap@@6 T@PolymorphicMapType_6192) (Mask@@8 T@PolymorphicMapType_6213) (pm_f_13@@6 T@Field_6252_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_6252_9841 Mask@@8 null pm_f_13@@6) (IsWandField_6252_22830 pm_f_13@@6)) (= (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@10) null (WandMaskField_6252 pm_f_13@@6)) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@6) null (WandMaskField_6252 pm_f_13@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_6252_22830 pm_f_13@@6) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@6) null (WandMaskField_6252 pm_f_13@@6)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6192) (Mask@@9 T@PolymorphicMapType_6213) (x@@2 Int) (y@@0 Int) ) (!  (=> (and (state Heap@@11 Mask@@9) (< AssumeFunctionsAbove 1)) (trigF Heap@@11 x@@2 y@@0))
 :qid |stdinbpl.197:15|
 :skolemid |24|
 :pattern ( (state Heap@@11 Mask@@9) (trigF Heap@@11 x@@2 y@@0))
 :pattern ( (state Heap@@11 Mask@@9) (|trigF#triggerStateless| x@@2 y@@0) (|P#trigger_3400| Heap@@11 P))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6192) (ExhaleHeap@@7 T@PolymorphicMapType_6192) (Mask@@10 T@PolymorphicMapType_6213) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@12) o_22 $allocated) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@7) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@7) o_22 $allocated))
)))
(assert (forall ((p T@Field_9840_9841) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9840_9840 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9840_9840 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6252_9841) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6252_6252 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6252_6252 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6192) (ExhaleHeap@@8 T@PolymorphicMapType_6192) (Mask@@11 T@PolymorphicMapType_6213) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6213) (o_2@@7 T@Ref) (f_4@@7 T@Field_6252_11269) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6252_28927 f_4@@7))) (not (IsWandField_6252_28943 f_4@@7))) (<= (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6213) (o_2@@8 T@Ref) (f_4@@8 T@Field_6265_6266) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6252_6266 f_4@@8))) (not (IsWandField_6252_6266 f_4@@8))) (<= (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6213) (o_2@@9 T@Ref) (f_4@@9 T@Field_6252_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| Mask@@14) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6252_53 f_4@@9))) (not (IsWandField_6252_53 f_4@@9))) (<= (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| Mask@@14) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| Mask@@14) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6213) (o_2@@10 T@Ref) (f_4@@10 T@Field_6252_9841) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| Mask@@15) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6252_19886 f_4@@10))) (not (IsWandField_6252_22830 f_4@@10))) (<= (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| Mask@@15) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| Mask@@15) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6213) (o_2@@11 T@Ref) (f_4@@11 T@Field_11264_11269) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| Mask@@16) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3400_28264 f_4@@11))) (not (IsWandField_3400_28280 f_4@@11))) (<= (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| Mask@@16) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| Mask@@16) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6213) (o_2@@12 T@Ref) (f_4@@12 T@Field_9840_6266) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| Mask@@17) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3400_6266 f_4@@12))) (not (IsWandField_3400_6266 f_4@@12))) (<= (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| Mask@@17) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| Mask@@17) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6213) (o_2@@13 T@Ref) (f_4@@13 T@Field_9840_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| Mask@@18) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3400_53 f_4@@13))) (not (IsWandField_3400_53 f_4@@13))) (<= (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| Mask@@18) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| Mask@@18) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6213) (o_2@@14 T@Ref) (f_4@@14 T@Field_9840_9841) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| Mask@@19) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3400_3401 f_4@@14))) (not (IsWandField_9840_23187 f_4@@14))) (<= (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| Mask@@19) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| Mask@@19) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6213) (o_2@@15 T@Ref) (f_4@@15 T@Field_11264_11269) ) (! (= (HasDirectPerm_9840_19598 Mask@@20 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| Mask@@20) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9840_19598 Mask@@20 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6213) (o_2@@16 T@Ref) (f_4@@16 T@Field_9840_9841) ) (! (= (HasDirectPerm_9840_9841 Mask@@21 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| Mask@@21) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9840_9841 Mask@@21 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6213) (o_2@@17 T@Ref) (f_4@@17 T@Field_9840_6266) ) (! (= (HasDirectPerm_9840_6266 Mask@@22 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| Mask@@22) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9840_6266 Mask@@22 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6213) (o_2@@18 T@Ref) (f_4@@18 T@Field_9840_53) ) (! (= (HasDirectPerm_9840_53 Mask@@23 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| Mask@@23) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9840_53 Mask@@23 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6213) (o_2@@19 T@Ref) (f_4@@19 T@Field_6252_11269) ) (! (= (HasDirectPerm_6252_18658 Mask@@24 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| Mask@@24) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6252_18658 Mask@@24 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6213) (o_2@@20 T@Ref) (f_4@@20 T@Field_6252_9841) ) (! (= (HasDirectPerm_6252_9841 Mask@@25 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| Mask@@25) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6252_9841 Mask@@25 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6213) (o_2@@21 T@Ref) (f_4@@21 T@Field_6265_6266) ) (! (= (HasDirectPerm_6252_6266 Mask@@26 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| Mask@@26) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6252_6266 Mask@@26 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6213) (o_2@@22 T@Ref) (f_4@@22 T@Field_6252_53) ) (! (= (HasDirectPerm_6252_53 Mask@@27 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| Mask@@27) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6252_53 Mask@@27 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6192) (ExhaleHeap@@9 T@PolymorphicMapType_6192) (Mask@@28 T@PolymorphicMapType_6213) (o_22@@0 T@Ref) (f_30@@31 T@Field_11264_11269) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@28) (=> (HasDirectPerm_9840_19598 Mask@@28 o_22@@0 f_30@@31) (= (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@14) o_22@@0 f_30@@31) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@9) o_22@@0 f_30@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@28) (select (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| ExhaleHeap@@9) o_22@@0 f_30@@31))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6192) (ExhaleHeap@@10 T@PolymorphicMapType_6192) (Mask@@29 T@PolymorphicMapType_6213) (o_22@@1 T@Ref) (f_30@@32 T@Field_9840_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@29) (=> (HasDirectPerm_9840_9841 Mask@@29 o_22@@1 f_30@@32) (= (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@15) o_22@@1 f_30@@32) (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap@@10) o_22@@1 f_30@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@29) (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| ExhaleHeap@@10) o_22@@1 f_30@@32))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6192) (ExhaleHeap@@11 T@PolymorphicMapType_6192) (Mask@@30 T@PolymorphicMapType_6213) (o_22@@2 T@Ref) (f_30@@33 T@Field_9840_6266) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@30) (=> (HasDirectPerm_9840_6266 Mask@@30 o_22@@2 f_30@@33) (= (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@16) o_22@@2 f_30@@33) (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap@@11) o_22@@2 f_30@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@30) (select (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| ExhaleHeap@@11) o_22@@2 f_30@@33))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6192) (ExhaleHeap@@12 T@PolymorphicMapType_6192) (Mask@@31 T@PolymorphicMapType_6213) (o_22@@3 T@Ref) (f_30@@34 T@Field_9840_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@31) (=> (HasDirectPerm_9840_53 Mask@@31 o_22@@3 f_30@@34) (= (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@17) o_22@@3 f_30@@34) (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap@@12) o_22@@3 f_30@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@31) (select (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| ExhaleHeap@@12) o_22@@3 f_30@@34))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6192) (ExhaleHeap@@13 T@PolymorphicMapType_6192) (Mask@@32 T@PolymorphicMapType_6213) (o_22@@4 T@Ref) (f_30@@35 T@Field_6252_11269) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@32) (=> (HasDirectPerm_6252_18658 Mask@@32 o_22@@4 f_30@@35) (= (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@18) o_22@@4 f_30@@35) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@13) o_22@@4 f_30@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@32) (select (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| ExhaleHeap@@13) o_22@@4 f_30@@35))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6192) (ExhaleHeap@@14 T@PolymorphicMapType_6192) (Mask@@33 T@PolymorphicMapType_6213) (o_22@@5 T@Ref) (f_30@@36 T@Field_6252_9841) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@33) (=> (HasDirectPerm_6252_9841 Mask@@33 o_22@@5 f_30@@36) (= (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@19) o_22@@5 f_30@@36) (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap@@14) o_22@@5 f_30@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@33) (select (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| ExhaleHeap@@14) o_22@@5 f_30@@36))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6192) (ExhaleHeap@@15 T@PolymorphicMapType_6192) (Mask@@34 T@PolymorphicMapType_6213) (o_22@@6 T@Ref) (f_30@@37 T@Field_6265_6266) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@34) (=> (HasDirectPerm_6252_6266 Mask@@34 o_22@@6 f_30@@37) (= (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@20) o_22@@6 f_30@@37) (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap@@15) o_22@@6 f_30@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@34) (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| ExhaleHeap@@15) o_22@@6 f_30@@37))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6192) (ExhaleHeap@@16 T@PolymorphicMapType_6192) (Mask@@35 T@PolymorphicMapType_6213) (o_22@@7 T@Ref) (f_30@@38 T@Field_6252_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@35) (=> (HasDirectPerm_6252_53 Mask@@35 o_22@@7 f_30@@38) (= (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@21) o_22@@7 f_30@@38) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@16) o_22@@7 f_30@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@35) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| ExhaleHeap@@16) o_22@@7 f_30@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_6252_11269) ) (! (= (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_6265_6266) ) (! (= (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_6252_53) ) (! (= (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_6252_9841) ) (! (= (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_11264_11269) ) (! (= (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_9840_6266) ) (! (= (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_9840_53) ) (! (= (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9840_9841) ) (! (= (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6213) (SummandMask1 T@PolymorphicMapType_6213) (SummandMask2 T@PolymorphicMapType_6213) (o_2@@31 T@Ref) (f_4@@31 T@Field_6252_11269) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6213_6252_27089#PolymorphicMapType_6213| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6213) (SummandMask1@@0 T@PolymorphicMapType_6213) (SummandMask2@@0 T@PolymorphicMapType_6213) (o_2@@32 T@Ref) (f_4@@32 T@Field_6265_6266) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6213_6252_6266#PolymorphicMapType_6213| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6213) (SummandMask1@@1 T@PolymorphicMapType_6213) (SummandMask2@@1 T@PolymorphicMapType_6213) (o_2@@33 T@Ref) (f_4@@33 T@Field_6252_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6213_6252_53#PolymorphicMapType_6213| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6213) (SummandMask1@@2 T@PolymorphicMapType_6213) (SummandMask2@@2 T@PolymorphicMapType_6213) (o_2@@34 T@Ref) (f_4@@34 T@Field_6252_9841) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6213_6252_3401#PolymorphicMapType_6213| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6213) (SummandMask1@@3 T@PolymorphicMapType_6213) (SummandMask2@@3 T@PolymorphicMapType_6213) (o_2@@35 T@Ref) (f_4@@35 T@Field_11264_11269) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6213_3400_26743#PolymorphicMapType_6213| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6213) (SummandMask1@@4 T@PolymorphicMapType_6213) (SummandMask2@@4 T@PolymorphicMapType_6213) (o_2@@36 T@Ref) (f_4@@36 T@Field_9840_6266) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6213_3400_6266#PolymorphicMapType_6213| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6213) (SummandMask1@@5 T@PolymorphicMapType_6213) (SummandMask2@@5 T@PolymorphicMapType_6213) (o_2@@37 T@Ref) (f_4@@37 T@Field_9840_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6213_3400_53#PolymorphicMapType_6213| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6213) (SummandMask1@@6 T@PolymorphicMapType_6213) (SummandMask2@@6 T@PolymorphicMapType_6213) (o_2@@38 T@Ref) (f_4@@38 T@Field_9840_9841) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6213_3400_3401#PolymorphicMapType_6213| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6192) (Mask@@36 T@PolymorphicMapType_6213) (x@@3 Int) (y@@1 Int) ) (!  (=> (state Heap@@22 Mask@@36) (= (|trigF'| Heap@@22 x@@3 y@@1) (|trigF#frame| (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@22) null P) x@@3 y@@1)))
 :qid |stdinbpl.204:15|
 :skolemid |25|
 :pattern ( (state Heap@@22 Mask@@36) (|trigF'| Heap@@22 x@@3 y@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6192) (Mask@@37 T@PolymorphicMapType_6213) (x@@4 Int) (b_24@@1 Bool) ) (!  (=> (state Heap@@23 Mask@@37) (= (|trigG'| Heap@@23 x@@4 b_24@@1) (|trigG#frame| (select (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@23) null P) x@@4 b_24@@1)))
 :qid |stdinbpl.261:15|
 :skolemid |29|
 :pattern ( (state Heap@@23 Mask@@37) (|trigG'| Heap@@23 x@@4 b_24@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6192) ) (! (|P#everUsed_3400| P)
 :qid |stdinbpl.307:15|
 :skolemid |30|
 :pattern ( (|P#trigger_3400| Heap@@24 P))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6192) (o_35 T@Ref) (f_11 T@Field_11264_11269) (v T@PolymorphicMapType_6741) ) (! (succHeap Heap@@25 (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@25) (store (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@25) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@25) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@25) (store (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@25) o_35 f_11 v)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6192) (o_35@@0 T@Ref) (f_11@@0 T@Field_9840_9841) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@26) (store (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@26) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@26) (store (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@26) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@26) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6192) (o_35@@1 T@Ref) (f_11@@1 T@Field_9840_6266) (v@@1 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@27) (store (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@27) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@27) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@27) (store (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@27) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6192) (o_35@@2 T@Ref) (f_11@@2 T@Field_9840_53) (v@@2 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@28) (store (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@28) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@28) (store (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@28) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@28) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6192) (o_35@@3 T@Ref) (f_11@@3 T@Field_6252_11269) (v@@3 T@PolymorphicMapType_6741) ) (! (succHeap Heap@@29 (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@29) (store (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@29) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@29) (store (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@29) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@29) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6192) (o_35@@4 T@Ref) (f_11@@4 T@Field_6252_9841) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@30) (store (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@30) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@30) (store (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@30) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@30) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6192) (o_35@@5 T@Ref) (f_11@@5 T@Field_6265_6266) (v@@5 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@31) (store (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@31) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6192 (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@31) (store (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@31) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@31) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6192) (o_35@@6 T@Ref) (f_11@@6 T@Field_6252_53) (v@@6 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_6192 (store (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@32) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6192 (store (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@32) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_3400_3401#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_6252_9841#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_6252_18700#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_9840_53#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_9840_6266#PolymorphicMapType_6192| Heap@@32) (|PolymorphicMapType_6192_9840_19640#PolymorphicMapType_6192| Heap@@32)))
)))
(assert (= (PredicateMaskField_3400 P) |P#sm|))
(assert (forall ((o_35@@7 T@Ref) (f_31 T@Field_6265_6266) (Heap@@33 T@PolymorphicMapType_6192) ) (!  (=> (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@33) o_35@@7 $allocated) (select (|PolymorphicMapType_6192_3250_53#PolymorphicMapType_6192| Heap@@33) (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@33) o_35@@7 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6192_3253_3254#PolymorphicMapType_6192| Heap@@33) o_35@@7 f_31))
)))
(assert (forall ((p@@2 T@Field_9840_9841) (v_1@@1 T@FrameType) (q T@Field_9840_9841) (w@@1 T@FrameType) (r T@Field_9840_9841) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9840_9840 p@@2 v_1@@1 q w@@1) (InsidePredicate_9840_9840 q w@@1 r u)) (InsidePredicate_9840_9840 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9840_9840 p@@2 v_1@@1 q w@@1) (InsidePredicate_9840_9840 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_9840_9841) (v_1@@2 T@FrameType) (q@@0 T@Field_9840_9841) (w@@2 T@FrameType) (r@@0 T@Field_6252_9841) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9840_9840 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9840_6252 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_9840_6252 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9840_9840 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9840_6252 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_9840_9841) (v_1@@3 T@FrameType) (q@@1 T@Field_6252_9841) (w@@3 T@FrameType) (r@@1 T@Field_9840_9841) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9840_6252 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6252_9840 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_9840_9840 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9840_6252 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6252_9840 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_9840_9841) (v_1@@4 T@FrameType) (q@@2 T@Field_6252_9841) (w@@4 T@FrameType) (r@@2 T@Field_6252_9841) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9840_6252 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6252_6252 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_9840_6252 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9840_6252 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6252_6252 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_6252_9841) (v_1@@5 T@FrameType) (q@@3 T@Field_9840_9841) (w@@5 T@FrameType) (r@@3 T@Field_9840_9841) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6252_9840 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9840_9840 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6252_9840 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6252_9840 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9840_9840 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_6252_9841) (v_1@@6 T@FrameType) (q@@4 T@Field_9840_9841) (w@@6 T@FrameType) (r@@4 T@Field_6252_9841) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6252_9840 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9840_6252 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6252_6252 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6252_9840 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9840_6252 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_6252_9841) (v_1@@7 T@FrameType) (q@@5 T@Field_6252_9841) (w@@7 T@FrameType) (r@@5 T@Field_9840_9841) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6252_6252 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6252_9840 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6252_9840 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6252_6252 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6252_9840 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_6252_9841) (v_1@@8 T@FrameType) (q@@6 T@Field_6252_9841) (w@@8 T@FrameType) (r@@6 T@Field_6252_9841) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6252_6252 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6252_6252 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6252_6252 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6252_6252 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6252_6252 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6192) (x@@5 Int) (y@@2 Int) ) (!  (and (= (trigF Heap@@34 x@@5 y@@2) (|trigF'| Heap@@34 x@@5 y@@2)) (dummyFunction_1414 (|trigF#triggerStateless| x@@5 y@@2)))
 :qid |stdinbpl.187:15|
 :skolemid |22|
 :pattern ( (trigF Heap@@34 x@@5 y@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6192) (x@@6 Int) (b_24@@2 Bool) ) (!  (and (= (trigG Heap@@35 x@@6 b_24@@2) (|trigG'| Heap@@35 x@@6 b_24@@2)) (dummyFunction_1414 (|trigG#triggerStateless| x@@6 b_24@@2)))
 :qid |stdinbpl.244:15|
 :skolemid |26|
 :pattern ( (trigG Heap@@35 x@@6 b_24@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |P#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
