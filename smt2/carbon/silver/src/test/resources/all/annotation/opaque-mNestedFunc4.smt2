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
(declare-sort T@Field_22394_53 0)
(declare-sort T@Field_22407_22408 0)
(declare-sort T@Field_25721_1189 0)
(declare-sort T@Field_39791_39792 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_40860_40865 0)
(declare-sort T@Field_11229_11524 0)
(declare-sort T@Field_11229_40865 0)
(declare-sort T@Field_11523_1189 0)
(declare-sort T@Field_11523_53 0)
(declare-sort T@Field_11523_22408 0)
(declare-datatypes ((T@PolymorphicMapType_22355 0)) (((PolymorphicMapType_22355 (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| (Array T@Ref T@Field_25721_1189 Real)) (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| (Array T@Ref T@Field_39791_39792 Real)) (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| (Array T@Ref T@Field_11229_11524 Real)) (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| (Array T@Ref T@Field_22394_53 Real)) (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| (Array T@Ref T@Field_22407_22408 Real)) (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| (Array T@Ref T@Field_11229_40865 Real)) (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| (Array T@Ref T@Field_11523_1189 Real)) (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| (Array T@Ref T@Field_11523_53 Real)) (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| (Array T@Ref T@Field_11523_22408 Real)) (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| (Array T@Ref T@Field_40860_40865 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22883 0)) (((PolymorphicMapType_22883 (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (Array T@Ref T@Field_25721_1189 Bool)) (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (Array T@Ref T@Field_22394_53 Bool)) (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (Array T@Ref T@Field_22407_22408 Bool)) (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (Array T@Ref T@Field_11229_11524 Bool)) (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (Array T@Ref T@Field_11229_40865 Bool)) (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (Array T@Ref T@Field_11523_1189 Bool)) (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (Array T@Ref T@Field_11523_53 Bool)) (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (Array T@Ref T@Field_11523_22408 Bool)) (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (Array T@Ref T@Field_39791_39792 Bool)) (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (Array T@Ref T@Field_40860_40865 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22334 0)) (((PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| (Array T@Ref T@Field_22394_53 Bool)) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| (Array T@Ref T@Field_22407_22408 T@Ref)) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| (Array T@Ref T@Field_25721_1189 Int)) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| (Array T@Ref T@Field_39791_39792 T@FrameType)) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| (Array T@Ref T@Field_40860_40865 T@PolymorphicMapType_22883)) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| (Array T@Ref T@Field_11229_11524 T@FrameType)) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| (Array T@Ref T@Field_11229_40865 T@PolymorphicMapType_22883)) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| (Array T@Ref T@Field_11523_1189 Int)) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| (Array T@Ref T@Field_11523_53 Bool)) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| (Array T@Ref T@Field_11523_22408 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_22394_53)
(declare-fun f_7 () T@Field_25721_1189)
(declare-fun succHeap (T@PolymorphicMapType_22334 T@PolymorphicMapType_22334) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22334 T@PolymorphicMapType_22334) Bool)
(declare-fun state (T@PolymorphicMapType_22334 T@PolymorphicMapType_22355) Bool)
(declare-fun isGreaterOne33 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun isGreaterOne (T@PolymorphicMapType_22334 Int) Bool)
(declare-fun funP (T@PolymorphicMapType_22334 T@Ref) Int)
(declare-fun funP2 (T@PolymorphicMapType_22334 T@Ref) Int)
(declare-fun |funP2#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_11523| (T@PolymorphicMapType_22334 T@Field_39791_39792) Bool)
(declare-fun P (T@Ref) T@Field_39791_39792)
(declare-fun GoodMask (T@PolymorphicMapType_22355) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_22883)
(declare-fun IsPredicateField_11523_11524 (T@Field_39791_39792) Bool)
(declare-fun |isGreaterOne'| (T@PolymorphicMapType_22334 Int) Bool)
(declare-fun dummyFunction_1424 (Bool) Bool)
(declare-fun |isGreaterOne#triggerStateless| (Int) Bool)
(declare-fun |isGreaterOne2'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne2#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne22'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne22#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne3'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne3#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne32'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne32#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne33'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne33#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne34'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne34#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne35'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne35#triggerStateless| (T@Ref) Bool)
(declare-fun |fac1'| (T@PolymorphicMapType_22334 Int) Int)
(declare-fun dummyFunction_4721 (Int) Bool)
(declare-fun |fac1#triggerStateless| (Int) Int)
(declare-fun |fac2'| (T@PolymorphicMapType_22334 Int) Int)
(declare-fun |fac2#triggerStateless| (Int) Int)
(declare-fun |fac3'| (T@PolymorphicMapType_22334 Int) Int)
(declare-fun |fac3#triggerStateless| (Int) Int)
(declare-fun |funP'| (T@PolymorphicMapType_22334 T@Ref) Int)
(declare-fun |funP#triggerStateless| (T@Ref) Int)
(declare-fun |funP2'| (T@PolymorphicMapType_22334 T@Ref) Int)
(declare-fun |P#everUsed_11523| (T@Field_39791_39792) Bool)
(declare-fun fac1 (T@PolymorphicMapType_22334 Int) Int)
(declare-fun fac2 (T@PolymorphicMapType_22334 Int) Int)
(declare-fun fac3 (T@PolymorphicMapType_22334 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22334 T@PolymorphicMapType_22334 T@PolymorphicMapType_22355) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11523 (T@Field_39791_39792) T@Field_40860_40865)
(declare-fun HasDirectPerm_11523_11524 (T@PolymorphicMapType_22355 T@Ref T@Field_39791_39792) Bool)
(declare-fun IsPredicateField_11229_71089 (T@Field_11229_11524) Bool)
(declare-fun PredicateMaskField_11229 (T@Field_11229_11524) T@Field_11229_40865)
(declare-fun HasDirectPerm_11229_11524 (T@PolymorphicMapType_22355 T@Ref T@Field_11229_11524) Bool)
(declare-fun IsWandField_11523_74774 (T@Field_39791_39792) Bool)
(declare-fun WandMaskField_11523 (T@Field_39791_39792) T@Field_40860_40865)
(declare-fun IsWandField_11229_74417 (T@Field_11229_11524) Bool)
(declare-fun WandMaskField_11229 (T@Field_11229_11524) T@Field_11229_40865)
(declare-fun |P#sm| (T@Ref) T@Field_40860_40865)
(declare-fun |isGreaterOne3#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |isGreaterOne2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne22#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne34#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne32#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne35#trigger| (T@FrameType T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_22334)
(declare-fun ZeroMask () T@PolymorphicMapType_22355)
(declare-fun InsidePredicate_39791_39791 (T@Field_39791_39792 T@FrameType T@Field_39791_39792 T@FrameType) Bool)
(declare-fun InsidePredicate_22394_22394 (T@Field_11229_11524 T@FrameType T@Field_11229_11524 T@FrameType) Bool)
(declare-fun IsPredicateField_11229_1189 (T@Field_25721_1189) Bool)
(declare-fun IsWandField_11229_1189 (T@Field_25721_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11523_81706 (T@Field_40860_40865) Bool)
(declare-fun IsWandField_11523_81722 (T@Field_40860_40865) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11523_22408 (T@Field_11523_22408) Bool)
(declare-fun IsWandField_11523_22408 (T@Field_11523_22408) Bool)
(declare-fun IsPredicateField_11523_53 (T@Field_11523_53) Bool)
(declare-fun IsWandField_11523_53 (T@Field_11523_53) Bool)
(declare-fun IsPredicateField_11523_1189 (T@Field_11523_1189) Bool)
(declare-fun IsWandField_11523_1189 (T@Field_11523_1189) Bool)
(declare-fun IsPredicateField_11229_80875 (T@Field_11229_40865) Bool)
(declare-fun IsWandField_11229_80891 (T@Field_11229_40865) Bool)
(declare-fun IsPredicateField_11229_22408 (T@Field_22407_22408) Bool)
(declare-fun IsWandField_11229_22408 (T@Field_22407_22408) Bool)
(declare-fun IsPredicateField_11229_53 (T@Field_22394_53) Bool)
(declare-fun IsWandField_11229_53 (T@Field_22394_53) Bool)
(declare-fun isGreaterOne3 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne2 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne22 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne34 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne32 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne35 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun HasDirectPerm_11523_70844 (T@PolymorphicMapType_22355 T@Ref T@Field_40860_40865) Bool)
(declare-fun HasDirectPerm_11523_22408 (T@PolymorphicMapType_22355 T@Ref T@Field_11523_22408) Bool)
(declare-fun HasDirectPerm_11523_53 (T@PolymorphicMapType_22355 T@Ref T@Field_11523_53) Bool)
(declare-fun HasDirectPerm_11523_1189 (T@PolymorphicMapType_22355 T@Ref T@Field_11523_1189) Bool)
(declare-fun HasDirectPerm_11229_69703 (T@PolymorphicMapType_22355 T@Ref T@Field_11229_40865) Bool)
(declare-fun HasDirectPerm_11229_22408 (T@PolymorphicMapType_22355 T@Ref T@Field_22407_22408) Bool)
(declare-fun HasDirectPerm_11229_53 (T@PolymorphicMapType_22355 T@Ref T@Field_22394_53) Bool)
(declare-fun HasDirectPerm_11229_1189 (T@PolymorphicMapType_22355 T@Ref T@Field_25721_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22355 T@PolymorphicMapType_22355 T@PolymorphicMapType_22355) Bool)
(declare-fun |isGreaterOne2#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne22#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne3#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne32#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne33#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne34#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne35#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne#frame| (T@FrameType Int) Bool)
(declare-fun |isGreaterOne#trigger| (T@FrameType Int) Bool)
(declare-fun |funP#frame| (T@FrameType T@Ref) Int)
(declare-fun |funP2#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_11523_11524 (T@Field_39791_39792) Int)
(declare-fun |fac1#frame| (T@FrameType Int) Int)
(declare-fun |fac2#frame| (T@FrameType Int) Int)
(declare-fun |fac3#frame| (T@FrameType Int) Int)
(declare-fun InsidePredicate_39791_22394 (T@Field_39791_39792 T@FrameType T@Field_11229_11524 T@FrameType) Bool)
(declare-fun InsidePredicate_22394_39791 (T@Field_11229_11524 T@FrameType T@Field_39791_39792 T@FrameType) Bool)
(declare-fun |isGreaterOne33#trigger| (T@FrameType T@Ref) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_22334) (Heap1 T@PolymorphicMapType_22334) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22334) (Mask T@PolymorphicMapType_22355) (r_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (isGreaterOne33 Heap r_1) (isGreaterOne Heap (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap) r_1 f_7))))
 :qid |stdinbpl.702:15|
 :skolemid |51|
 :pattern ( (state Heap Mask) (isGreaterOne33 Heap r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22334) (Mask@@0 T@PolymorphicMapType_22355) (x T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 5)) (= (funP Heap@@0 x) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@0) x f_7)))
 :qid |stdinbpl.1186:15|
 :skolemid |78|
 :pattern ( (state Heap@@0 Mask@@0) (funP Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22334) (Mask@@1 T@PolymorphicMapType_22355) (x@@0 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 9)) (= (funP2 Heap@@1 x@@0) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@1) x@@0 f_7)))
 :qid |stdinbpl.1272:15|
 :skolemid |82|
 :pattern ( (state Heap@@1 Mask@@1) (funP2 Heap@@1 x@@0))
 :pattern ( (state Heap@@1 Mask@@1) (|funP2#triggerStateless| x@@0) (|P#trigger_11523| Heap@@1 (P x@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22334) (Mask@@2 T@PolymorphicMapType_22355) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22334) (Heap1@@0 T@PolymorphicMapType_22334) (Heap2 T@PolymorphicMapType_22334) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_40860_40865) ) (!  (not (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_39791_39792) ) (!  (not (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11523_22408) ) (!  (not (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11523_53) ) (!  (not (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11523_1189) ) (!  (not (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11229_40865) ) (!  (not (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11229_11524) ) (!  (not (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22407_22408) ) (!  (not (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22394_53) ) (!  (not (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_25721_1189) ) (!  (not (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x@@1 T@Ref) ) (! (IsPredicateField_11523_11524 (P x@@1))
 :qid |stdinbpl.1352:15|
 :skolemid |85|
 :pattern ( (P x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22334) (i Int) ) (! (dummyFunction_1424 (|isGreaterOne#triggerStateless| i))
 :qid |stdinbpl.210:15|
 :skolemid |23|
 :pattern ( (|isGreaterOne'| Heap@@3 i))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22334) (r_1@@0 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne2#triggerStateless| r_1@@0))
 :qid |stdinbpl.280:15|
 :skolemid |28|
 :pattern ( (|isGreaterOne2'| Heap@@4 r_1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22334) (r_1@@1 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne22#triggerStateless| r_1@@1))
 :qid |stdinbpl.379:15|
 :skolemid |33|
 :pattern ( (|isGreaterOne22'| Heap@@5 r_1@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22334) (r_1@@2 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne3#triggerStateless| r_1@@2))
 :qid |stdinbpl.488:15|
 :skolemid |39|
 :pattern ( (|isGreaterOne3'| Heap@@6 r_1@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22334) (r_1@@3 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne32#triggerStateless| r_1@@3))
 :qid |stdinbpl.587:15|
 :skolemid |44|
 :pattern ( (|isGreaterOne32'| Heap@@7 r_1@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22334) (r_1@@4 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne33#triggerStateless| r_1@@4))
 :qid |stdinbpl.696:15|
 :skolemid |50|
 :pattern ( (|isGreaterOne33'| Heap@@8 r_1@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22334) (r_1@@5 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne34#triggerStateless| r_1@@5))
 :qid |stdinbpl.790:15|
 :skolemid |55|
 :pattern ( (|isGreaterOne34'| Heap@@9 r_1@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22334) (r_1@@6 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne35#triggerStateless| r_1@@6))
 :qid |stdinbpl.889:15|
 :skolemid |60|
 :pattern ( (|isGreaterOne35'| Heap@@10 r_1@@6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22334) (i@@0 Int) ) (! (dummyFunction_4721 (|fac1#triggerStateless| i@@0))
 :qid |stdinbpl.988:15|
 :skolemid |65|
 :pattern ( (|fac1'| Heap@@11 i@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22334) (i@@1 Int) ) (! (dummyFunction_4721 (|fac2#triggerStateless| i@@1))
 :qid |stdinbpl.1052:15|
 :skolemid |69|
 :pattern ( (|fac2'| Heap@@12 i@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22334) (i@@2 Int) ) (! (dummyFunction_4721 (|fac3#triggerStateless| i@@2))
 :qid |stdinbpl.1116:15|
 :skolemid |73|
 :pattern ( (|fac3'| Heap@@13 i@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22334) (x@@2 T@Ref) ) (! (dummyFunction_4721 (|funP#triggerStateless| x@@2))
 :qid |stdinbpl.1180:15|
 :skolemid |77|
 :pattern ( (|funP'| Heap@@14 x@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22334) (x@@3 T@Ref) ) (! (dummyFunction_4721 (|funP2#triggerStateless| x@@3))
 :qid |stdinbpl.1266:15|
 :skolemid |81|
 :pattern ( (|funP2'| Heap@@15 x@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22334) (x@@4 T@Ref) ) (! (|P#everUsed_11523| (P x@@4))
 :qid |stdinbpl.1371:15|
 :skolemid |89|
 :pattern ( (|P#trigger_11523| Heap@@16 (P x@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22334) (i@@3 Int) ) (!  (and (= (fac1 Heap@@17 i@@3) (|fac1'| Heap@@17 i@@3)) (dummyFunction_4721 (|fac1#triggerStateless| i@@3)))
 :qid |stdinbpl.984:15|
 :skolemid |64|
 :pattern ( (fac1 Heap@@17 i@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22334) (i@@4 Int) ) (!  (and (= (fac2 Heap@@18 i@@4) (|fac2'| Heap@@18 i@@4)) (dummyFunction_4721 (|fac2#triggerStateless| i@@4)))
 :qid |stdinbpl.1048:15|
 :skolemid |68|
 :pattern ( (fac2 Heap@@18 i@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22334) (i@@5 Int) ) (!  (and (= (fac3 Heap@@19 i@@5) (|fac3'| Heap@@19 i@@5)) (dummyFunction_4721 (|fac3#triggerStateless| i@@5)))
 :qid |stdinbpl.1112:15|
 :skolemid |72|
 :pattern ( (fac3 Heap@@19 i@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22334) (x@@5 T@Ref) ) (!  (and (= (funP Heap@@20 x@@5) (|funP'| Heap@@20 x@@5)) (dummyFunction_4721 (|funP#triggerStateless| x@@5)))
 :qid |stdinbpl.1176:15|
 :skolemid |76|
 :pattern ( (funP Heap@@20 x@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22334) (x@@6 T@Ref) ) (!  (and (= (funP2 Heap@@21 x@@6) (|funP2'| Heap@@21 x@@6)) (dummyFunction_4721 (|funP2#triggerStateless| x@@6)))
 :qid |stdinbpl.1262:15|
 :skolemid |80|
 :pattern ( (funP2 Heap@@21 x@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22334) (ExhaleHeap T@PolymorphicMapType_22334) (Mask@@3 T@PolymorphicMapType_22355) (pm_f T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_11523_11524 Mask@@3 null pm_f) (IsPredicateField_11523_11524 pm_f)) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@22) null (PredicateMaskField_11523 pm_f)) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap) null (PredicateMaskField_11523 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap Mask@@3) (IsPredicateField_11523_11524 pm_f) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap) null (PredicateMaskField_11523 pm_f)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22334) (ExhaleHeap@@0 T@PolymorphicMapType_22334) (Mask@@4 T@PolymorphicMapType_22355) (pm_f@@0 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_11229_11524 Mask@@4 null pm_f@@0) (IsPredicateField_11229_71089 pm_f@@0)) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@23) null (PredicateMaskField_11229 pm_f@@0)) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@0) null (PredicateMaskField_11229 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@0 Mask@@4) (IsPredicateField_11229_71089 pm_f@@0) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@0) null (PredicateMaskField_11229 pm_f@@0)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22334) (ExhaleHeap@@1 T@PolymorphicMapType_22334) (Mask@@5 T@PolymorphicMapType_22355) (pm_f@@1 T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_11523_11524 Mask@@5 null pm_f@@1) (IsWandField_11523_74774 pm_f@@1)) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@24) null (WandMaskField_11523 pm_f@@1)) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@1) null (WandMaskField_11523 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@1 Mask@@5) (IsWandField_11523_74774 pm_f@@1) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@1) null (WandMaskField_11523 pm_f@@1)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22334) (ExhaleHeap@@2 T@PolymorphicMapType_22334) (Mask@@6 T@PolymorphicMapType_22355) (pm_f@@2 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_11229_11524 Mask@@6 null pm_f@@2) (IsWandField_11229_74417 pm_f@@2)) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@25) null (WandMaskField_11229 pm_f@@2)) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@2) null (WandMaskField_11229 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@2 Mask@@6) (IsWandField_11229_74417 pm_f@@2) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@2) null (WandMaskField_11229 pm_f@@2)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22334) (Mask@@7 T@PolymorphicMapType_22355) (i@@6 Int) ) (!  (=> (and (state Heap@@26 Mask@@7) (< AssumeFunctionsAbove 12)) (=> (> i@@6 (- 0 60)) (= (isGreaterOne Heap@@26 i@@6) (> i@@6 1))))
 :qid |stdinbpl.216:15|
 :skolemid |24|
 :pattern ( (state Heap@@26 Mask@@7) (isGreaterOne Heap@@26 i@@6))
)))
(assert (forall ((x@@7 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@7) (P x2)) (= x@@7 x2))
 :qid |stdinbpl.1362:15|
 :skolemid |87|
 :pattern ( (P x@@7) (P x2))
)))
(assert (forall ((x@@8 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@8) (|P#sm| x2@@0)) (= x@@8 x2@@0))
 :qid |stdinbpl.1366:15|
 :skolemid |88|
 :pattern ( (|P#sm| x@@8) (|P#sm| x2@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22334) (Mask@@8 T@PolymorphicMapType_22355) (i@@7 Int) ) (!  (=> (and (state Heap@@27 Mask@@8) (< AssumeFunctionsAbove 2)) (= (fac2 Heap@@27 i@@7) (ite (<= i@@7 1) 1 (* i@@7 (|fac2'| Heap@@27 (- i@@7 1))))))
 :qid |stdinbpl.1058:15|
 :skolemid |70|
 :pattern ( (state Heap@@27 Mask@@8) (fac2 Heap@@27 i@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22334) (Mask@@9 T@PolymorphicMapType_22355) (i@@8 Int) ) (!  (=> (and (state Heap@@28 Mask@@9) (< AssumeFunctionsAbove 10)) (= (fac3 Heap@@28 i@@8) (ite (<= i@@8 1) 1 (* i@@8 (|fac3'| Heap@@28 (- i@@8 1))))))
 :qid |stdinbpl.1122:15|
 :skolemid |74|
 :pattern ( (state Heap@@28 Mask@@9) (fac3 Heap@@28 i@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22334) (Mask@@10 T@PolymorphicMapType_22355) (i@@9 Int) ) (!  (=> (and (state Heap@@29 Mask@@10) (< AssumeFunctionsAbove 11)) (= (fac1 Heap@@29 i@@9) (ite (<= i@@9 1) 1 (* i@@9 (|fac1'| Heap@@29 (- i@@9 1))))))
 :qid |stdinbpl.994:15|
 :skolemid |66|
 :pattern ( (state Heap@@29 Mask@@10) (fac1 Heap@@29 i@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22334) (ExhaleHeap@@3 T@PolymorphicMapType_22334) (Mask@@11 T@PolymorphicMapType_22355) (pm_f@@3 T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@3 Mask@@11) (=> (and (HasDirectPerm_11523_11524 Mask@@11 null pm_f@@3) (IsPredicateField_11523_11524 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_25721_1189) ) (!  (=> (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@30) o2 f_2) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_22394_53) ) (!  (=> (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@30) o2@@0 f_2@@0) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_22407_22408) ) (!  (=> (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@30) o2@@1 f_2@@1) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11229_11524) ) (!  (=> (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@30) o2@@2 f_2@@2) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11229_40865) ) (!  (=> (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@30) o2@@3 f_2@@3) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11523_1189) ) (!  (=> (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@30) o2@@4 f_2@@4) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11523_53) ) (!  (=> (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@30) o2@@5 f_2@@5) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11523_22408) ) (!  (=> (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@30) o2@@6 f_2@@6) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_39791_39792) ) (!  (=> (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@30) o2@@7 f_2@@7) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_40860_40865) ) (!  (=> (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) o2@@8 f_2@@8) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@3 Mask@@11) (IsPredicateField_11523_11524 pm_f@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22334) (ExhaleHeap@@4 T@PolymorphicMapType_22334) (Mask@@12 T@PolymorphicMapType_22355) (pm_f@@4 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@4 Mask@@12) (=> (and (HasDirectPerm_11229_11524 Mask@@12 null pm_f@@4) (IsPredicateField_11229_71089 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_25721_1189) ) (!  (=> (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@31) o2@@9 f_2@@9) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_22394_53) ) (!  (=> (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@31) o2@@10 f_2@@10) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_22407_22408) ) (!  (=> (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@31) o2@@11 f_2@@11) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_11229_11524) ) (!  (=> (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@31) o2@@12 f_2@@12) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_11229_40865) ) (!  (=> (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) o2@@13 f_2@@13) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_11523_1189) ) (!  (=> (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@31) o2@@14 f_2@@14) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_11523_53) ) (!  (=> (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@31) o2@@15 f_2@@15) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_11523_22408) ) (!  (=> (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@31) o2@@16 f_2@@16) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_39791_39792) ) (!  (=> (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@31) o2@@17 f_2@@17) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_40860_40865) ) (!  (=> (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@31) o2@@18 f_2@@18) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@4 Mask@@12) (IsPredicateField_11229_71089 pm_f@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22334) (ExhaleHeap@@5 T@PolymorphicMapType_22334) (Mask@@13 T@PolymorphicMapType_22355) (pm_f@@5 T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@5 Mask@@13) (=> (and (HasDirectPerm_11523_11524 Mask@@13 null pm_f@@5) (IsWandField_11523_74774 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_25721_1189) ) (!  (=> (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@32) o2@@19 f_2@@19) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_22394_53) ) (!  (=> (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@32) o2@@20 f_2@@20) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_22407_22408) ) (!  (=> (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@32) o2@@21 f_2@@21) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_11229_11524) ) (!  (=> (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@32) o2@@22 f_2@@22) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_11229_40865) ) (!  (=> (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@32) o2@@23 f_2@@23) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_11523_1189) ) (!  (=> (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@32) o2@@24 f_2@@24) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_11523_53) ) (!  (=> (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@32) o2@@25 f_2@@25) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_11523_22408) ) (!  (=> (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@32) o2@@26 f_2@@26) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_39791_39792) ) (!  (=> (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@32) o2@@27 f_2@@27) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_40860_40865) ) (!  (=> (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) o2@@28 f_2@@28) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@5 Mask@@13) (IsWandField_11523_74774 pm_f@@5))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22334) (ExhaleHeap@@6 T@PolymorphicMapType_22334) (Mask@@14 T@PolymorphicMapType_22355) (pm_f@@6 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@6 Mask@@14) (=> (and (HasDirectPerm_11229_11524 Mask@@14 null pm_f@@6) (IsWandField_11229_74417 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_25721_1189) ) (!  (=> (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@33) o2@@29 f_2@@29) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_22394_53) ) (!  (=> (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@33) o2@@30 f_2@@30) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_22407_22408) ) (!  (=> (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@33) o2@@31 f_2@@31) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_11229_11524) ) (!  (=> (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@33) o2@@32 f_2@@32) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_11229_40865) ) (!  (=> (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) o2@@33 f_2@@33) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_11523_1189) ) (!  (=> (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@33) o2@@34 f_2@@34) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_11523_53) ) (!  (=> (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@33) o2@@35 f_2@@35) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_11523_22408) ) (!  (=> (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@33) o2@@36 f_2@@36) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_39791_39792) ) (!  (=> (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@33) o2@@37 f_2@@37) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_40860_40865) ) (!  (=> (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@33) o2@@38 f_2@@38) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@6 Mask@@14) (IsWandField_11229_74417 pm_f@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22334) (Mask@@15 T@PolymorphicMapType_22355) (r_1@@7 T@Ref) ) (!  (=> (and (state Heap@@34 Mask@@15) (or (< AssumeFunctionsAbove 0) (|isGreaterOne3#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@34) r_1@@7 f_7)) r_1@@7))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@34) r_1@@7 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@34) r_1@@7 f_7) 60) (|isGreaterOne3'| Heap@@34 r_1@@7))))
 :qid |stdinbpl.507:15|
 :skolemid |42|
 :pattern ( (state Heap@@34 Mask@@15) (|isGreaterOne3'| Heap@@34 r_1@@7))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22334) (Mask@@16 T@PolymorphicMapType_22355) (r_1@@8 T@Ref) ) (!  (=> (and (state Heap@@35 Mask@@16) (or (< AssumeFunctionsAbove 3) (|isGreaterOne2#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@35) r_1@@8 f_7)) r_1@@8))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@35) r_1@@8 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@35) r_1@@8 f_7) 60) (|isGreaterOne2'| Heap@@35 r_1@@8))))
 :qid |stdinbpl.299:15|
 :skolemid |31|
 :pattern ( (state Heap@@35 Mask@@16) (|isGreaterOne2'| Heap@@35 r_1@@8))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22334) (Mask@@17 T@PolymorphicMapType_22355) (r_1@@9 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@17) (or (< AssumeFunctionsAbove 4) (|isGreaterOne22#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@36) r_1@@9 f_7)) r_1@@9))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@36) r_1@@9 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@36) r_1@@9 f_7) 60) (|isGreaterOne22'| Heap@@36 r_1@@9))))
 :qid |stdinbpl.398:15|
 :skolemid |36|
 :pattern ( (state Heap@@36 Mask@@17) (|isGreaterOne22'| Heap@@36 r_1@@9))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22334) (Mask@@18 T@PolymorphicMapType_22355) (r_1@@10 T@Ref) ) (!  (=> (and (state Heap@@37 Mask@@18) (or (< AssumeFunctionsAbove 6) (|isGreaterOne34#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@37) r_1@@10 f_7)) r_1@@10))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@37) r_1@@10 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@37) r_1@@10 f_7) 60) (|isGreaterOne34'| Heap@@37 r_1@@10))))
 :qid |stdinbpl.809:15|
 :skolemid |58|
 :pattern ( (state Heap@@37 Mask@@18) (|isGreaterOne34'| Heap@@37 r_1@@10))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22334) (Mask@@19 T@PolymorphicMapType_22355) (r_1@@11 T@Ref) ) (!  (=> (and (state Heap@@38 Mask@@19) (or (< AssumeFunctionsAbove 7) (|isGreaterOne32#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@38) r_1@@11 f_7)) r_1@@11))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@38) r_1@@11 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@38) r_1@@11 f_7) 60) (|isGreaterOne32'| Heap@@38 r_1@@11))))
 :qid |stdinbpl.606:15|
 :skolemid |47|
 :pattern ( (state Heap@@38 Mask@@19) (|isGreaterOne32'| Heap@@38 r_1@@11))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22334) (Mask@@20 T@PolymorphicMapType_22355) (r_1@@12 T@Ref) ) (!  (=> (and (state Heap@@39 Mask@@20) (or (< AssumeFunctionsAbove 8) (|isGreaterOne35#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@39) r_1@@12 f_7)) r_1@@12))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@39) r_1@@12 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@39) r_1@@12 f_7) 60) (|isGreaterOne35'| Heap@@39 r_1@@12))))
 :qid |stdinbpl.908:15|
 :skolemid |63|
 :pattern ( (state Heap@@39 Mask@@20) (|isGreaterOne35'| Heap@@39 r_1@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@40 T@PolymorphicMapType_22334) (ExhaleHeap@@7 T@PolymorphicMapType_22334) (Mask@@21 T@PolymorphicMapType_22355) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@7 Mask@@21) (=> (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@40) o_1 $allocated) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_39791_39792) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_39791_39791 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_39791_39791 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_11229_11524) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_22394_22394 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22394_22394 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_11229_1189 f_7)))
(assert  (not (IsWandField_11229_1189 f_7)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_22334) (ExhaleHeap@@8 T@PolymorphicMapType_22334) (Mask@@22 T@PolymorphicMapType_22355) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@8 Mask@@22) (succHeap Heap@@41 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@8 Mask@@22))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22355) (o_2@@9 T@Ref) (f_4@@9 T@Field_40860_40865) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| Mask@@23) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11523_81706 f_4@@9))) (not (IsWandField_11523_81722 f_4@@9))) (<= (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| Mask@@23) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| Mask@@23) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22355) (o_2@@10 T@Ref) (f_4@@10 T@Field_11523_22408) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| Mask@@24) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11523_22408 f_4@@10))) (not (IsWandField_11523_22408 f_4@@10))) (<= (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| Mask@@24) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| Mask@@24) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22355) (o_2@@11 T@Ref) (f_4@@11 T@Field_11523_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| Mask@@25) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_11523_53 f_4@@11))) (not (IsWandField_11523_53 f_4@@11))) (<= (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| Mask@@25) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| Mask@@25) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22355) (o_2@@12 T@Ref) (f_4@@12 T@Field_39791_39792) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| Mask@@26) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_11523_11524 f_4@@12))) (not (IsWandField_11523_74774 f_4@@12))) (<= (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| Mask@@26) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| Mask@@26) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22355) (o_2@@13 T@Ref) (f_4@@13 T@Field_11523_1189) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| Mask@@27) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_11523_1189 f_4@@13))) (not (IsWandField_11523_1189 f_4@@13))) (<= (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| Mask@@27) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| Mask@@27) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22355) (o_2@@14 T@Ref) (f_4@@14 T@Field_11229_40865) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| Mask@@28) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_11229_80875 f_4@@14))) (not (IsWandField_11229_80891 f_4@@14))) (<= (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| Mask@@28) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| Mask@@28) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22355) (o_2@@15 T@Ref) (f_4@@15 T@Field_22407_22408) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| Mask@@29) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_11229_22408 f_4@@15))) (not (IsWandField_11229_22408 f_4@@15))) (<= (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| Mask@@29) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| Mask@@29) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22355) (o_2@@16 T@Ref) (f_4@@16 T@Field_22394_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| Mask@@30) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_11229_53 f_4@@16))) (not (IsWandField_11229_53 f_4@@16))) (<= (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| Mask@@30) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| Mask@@30) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22355) (o_2@@17 T@Ref) (f_4@@17 T@Field_11229_11524) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| Mask@@31) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_11229_71089 f_4@@17))) (not (IsWandField_11229_74417 f_4@@17))) (<= (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| Mask@@31) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| Mask@@31) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_22355) (o_2@@18 T@Ref) (f_4@@18 T@Field_25721_1189) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@@32) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_11229_1189 f_4@@18))) (not (IsWandField_11229_1189 f_4@@18))) (<= (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@@32) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@@32) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_22334) (Mask@@33 T@PolymorphicMapType_22355) (r_1@@13 T@Ref) ) (!  (=> (and (state Heap@@42 Mask@@33) (< AssumeFunctionsAbove 0)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@42) r_1@@13 f_7) (- 0 38)) (= (isGreaterOne3 Heap@@42 r_1@@13) (isGreaterOne Heap@@42 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@42) r_1@@13 f_7)))))
 :qid |stdinbpl.494:15|
 :skolemid |40|
 :pattern ( (state Heap@@42 Mask@@33) (isGreaterOne3 Heap@@42 r_1@@13))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_22334) (Mask@@34 T@PolymorphicMapType_22355) (r_1@@14 T@Ref) ) (!  (=> (and (state Heap@@43 Mask@@34) (< AssumeFunctionsAbove 3)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@43) r_1@@14 f_7) (- 0 38)) (= (isGreaterOne2 Heap@@43 r_1@@14) (|isGreaterOne'| Heap@@43 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@43) r_1@@14 f_7)))))
 :qid |stdinbpl.286:15|
 :skolemid |29|
 :pattern ( (state Heap@@43 Mask@@34) (isGreaterOne2 Heap@@43 r_1@@14))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_22334) (Mask@@35 T@PolymorphicMapType_22355) (r_1@@15 T@Ref) ) (!  (=> (and (state Heap@@44 Mask@@35) (< AssumeFunctionsAbove 4)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@44) r_1@@15 f_7) (- 0 38)) (= (isGreaterOne22 Heap@@44 r_1@@15) (|isGreaterOne'| Heap@@44 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@44) r_1@@15 f_7)))))
 :qid |stdinbpl.385:15|
 :skolemid |34|
 :pattern ( (state Heap@@44 Mask@@35) (isGreaterOne22 Heap@@44 r_1@@15))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_22334) (Mask@@36 T@PolymorphicMapType_22355) (r_1@@16 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@36) (< AssumeFunctionsAbove 6)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@45) r_1@@16 f_7) (- 0 38)) (= (isGreaterOne34 Heap@@45 r_1@@16) (isGreaterOne Heap@@45 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@45) r_1@@16 f_7)))))
 :qid |stdinbpl.796:15|
 :skolemid |56|
 :pattern ( (state Heap@@45 Mask@@36) (isGreaterOne34 Heap@@45 r_1@@16))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_22334) (Mask@@37 T@PolymorphicMapType_22355) (r_1@@17 T@Ref) ) (!  (=> (and (state Heap@@46 Mask@@37) (< AssumeFunctionsAbove 7)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@46) r_1@@17 f_7) (- 0 38)) (= (isGreaterOne32 Heap@@46 r_1@@17) (isGreaterOne Heap@@46 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@46) r_1@@17 f_7)))))
 :qid |stdinbpl.593:15|
 :skolemid |45|
 :pattern ( (state Heap@@46 Mask@@37) (isGreaterOne32 Heap@@46 r_1@@17))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_22334) (Mask@@38 T@PolymorphicMapType_22355) (r_1@@18 T@Ref) ) (!  (=> (and (state Heap@@47 Mask@@38) (< AssumeFunctionsAbove 8)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@47) r_1@@18 f_7) (- 0 38)) (= (isGreaterOne35 Heap@@47 r_1@@18) (|isGreaterOne'| Heap@@47 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@47) r_1@@18 f_7)))))
 :qid |stdinbpl.895:15|
 :skolemid |61|
 :pattern ( (state Heap@@47 Mask@@38) (isGreaterOne35 Heap@@47 r_1@@18))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_22355) (o_2@@19 T@Ref) (f_4@@19 T@Field_40860_40865) ) (! (= (HasDirectPerm_11523_70844 Mask@@39 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| Mask@@39) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_70844 Mask@@39 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_22355) (o_2@@20 T@Ref) (f_4@@20 T@Field_11523_22408) ) (! (= (HasDirectPerm_11523_22408 Mask@@40 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| Mask@@40) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_22408 Mask@@40 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_22355) (o_2@@21 T@Ref) (f_4@@21 T@Field_11523_53) ) (! (= (HasDirectPerm_11523_53 Mask@@41 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| Mask@@41) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_53 Mask@@41 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_22355) (o_2@@22 T@Ref) (f_4@@22 T@Field_39791_39792) ) (! (= (HasDirectPerm_11523_11524 Mask@@42 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| Mask@@42) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_11524 Mask@@42 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_22355) (o_2@@23 T@Ref) (f_4@@23 T@Field_11523_1189) ) (! (= (HasDirectPerm_11523_1189 Mask@@43 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| Mask@@43) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_1189 Mask@@43 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_22355) (o_2@@24 T@Ref) (f_4@@24 T@Field_11229_40865) ) (! (= (HasDirectPerm_11229_69703 Mask@@44 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| Mask@@44) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_69703 Mask@@44 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_22355) (o_2@@25 T@Ref) (f_4@@25 T@Field_22407_22408) ) (! (= (HasDirectPerm_11229_22408 Mask@@45 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| Mask@@45) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_22408 Mask@@45 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_22355) (o_2@@26 T@Ref) (f_4@@26 T@Field_22394_53) ) (! (= (HasDirectPerm_11229_53 Mask@@46 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| Mask@@46) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_53 Mask@@46 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_22355) (o_2@@27 T@Ref) (f_4@@27 T@Field_11229_11524) ) (! (= (HasDirectPerm_11229_11524 Mask@@47 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| Mask@@47) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_11524 Mask@@47 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_22355) (o_2@@28 T@Ref) (f_4@@28 T@Field_25721_1189) ) (! (= (HasDirectPerm_11229_1189 Mask@@48 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@@48) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_1189 Mask@@48 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_22334) (ExhaleHeap@@9 T@PolymorphicMapType_22334) (Mask@@49 T@PolymorphicMapType_22355) (o_1@@0 T@Ref) (f_2@@39 T@Field_40860_40865) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@9 Mask@@49) (=> (HasDirectPerm_11523_70844 Mask@@49 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@48) o_1@@0 f_2@@39) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@9 Mask@@49) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_22334) (ExhaleHeap@@10 T@PolymorphicMapType_22334) (Mask@@50 T@PolymorphicMapType_22355) (o_1@@1 T@Ref) (f_2@@40 T@Field_11523_22408) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@10 Mask@@50) (=> (HasDirectPerm_11523_22408 Mask@@50 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@49) o_1@@1 f_2@@40) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@10 Mask@@50) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_22334) (ExhaleHeap@@11 T@PolymorphicMapType_22334) (Mask@@51 T@PolymorphicMapType_22355) (o_1@@2 T@Ref) (f_2@@41 T@Field_11523_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@11 Mask@@51) (=> (HasDirectPerm_11523_53 Mask@@51 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@50) o_1@@2 f_2@@41) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@11 Mask@@51) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_22334) (ExhaleHeap@@12 T@PolymorphicMapType_22334) (Mask@@52 T@PolymorphicMapType_22355) (o_1@@3 T@Ref) (f_2@@42 T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@12 Mask@@52) (=> (HasDirectPerm_11523_11524 Mask@@52 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@51) o_1@@3 f_2@@42) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@12 Mask@@52) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_22334) (ExhaleHeap@@13 T@PolymorphicMapType_22334) (Mask@@53 T@PolymorphicMapType_22355) (o_1@@4 T@Ref) (f_2@@43 T@Field_11523_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@13 Mask@@53) (=> (HasDirectPerm_11523_1189 Mask@@53 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@52) o_1@@4 f_2@@43) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@13 Mask@@53) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_22334) (ExhaleHeap@@14 T@PolymorphicMapType_22334) (Mask@@54 T@PolymorphicMapType_22355) (o_1@@5 T@Ref) (f_2@@44 T@Field_11229_40865) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@14 Mask@@54) (=> (HasDirectPerm_11229_69703 Mask@@54 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@53) o_1@@5 f_2@@44) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@14 Mask@@54) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_22334) (ExhaleHeap@@15 T@PolymorphicMapType_22334) (Mask@@55 T@PolymorphicMapType_22355) (o_1@@6 T@Ref) (f_2@@45 T@Field_22407_22408) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@15 Mask@@55) (=> (HasDirectPerm_11229_22408 Mask@@55 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@54) o_1@@6 f_2@@45) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@15 Mask@@55) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_22334) (ExhaleHeap@@16 T@PolymorphicMapType_22334) (Mask@@56 T@PolymorphicMapType_22355) (o_1@@7 T@Ref) (f_2@@46 T@Field_22394_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@16 Mask@@56) (=> (HasDirectPerm_11229_53 Mask@@56 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@55) o_1@@7 f_2@@46) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@16 Mask@@56) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_22334) (ExhaleHeap@@17 T@PolymorphicMapType_22334) (Mask@@57 T@PolymorphicMapType_22355) (o_1@@8 T@Ref) (f_2@@47 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@17 Mask@@57) (=> (HasDirectPerm_11229_11524 Mask@@57 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@56) o_1@@8 f_2@@47) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@17 Mask@@57) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_22334) (ExhaleHeap@@18 T@PolymorphicMapType_22334) (Mask@@58 T@PolymorphicMapType_22355) (o_1@@9 T@Ref) (f_2@@48 T@Field_25721_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@18 Mask@@58) (=> (HasDirectPerm_11229_1189 Mask@@58 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@57) o_1@@9 f_2@@48) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@18 Mask@@58) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_40860_40865) ) (! (= (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11523_22408) ) (! (= (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_11523_53) ) (! (= (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_39791_39792) ) (! (= (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_11523_1189) ) (! (= (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_11229_40865) ) (! (= (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_22407_22408) ) (! (= (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_22394_53) ) (! (= (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11229_11524) ) (! (= (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_25721_1189) ) (! (= (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22355) (SummandMask1 T@PolymorphicMapType_22355) (SummandMask2 T@PolymorphicMapType_22355) (o_2@@39 T@Ref) (f_4@@39 T@Field_40860_40865) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22355) (SummandMask1@@0 T@PolymorphicMapType_22355) (SummandMask2@@0 T@PolymorphicMapType_22355) (o_2@@40 T@Ref) (f_4@@40 T@Field_11523_22408) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22355) (SummandMask1@@1 T@PolymorphicMapType_22355) (SummandMask2@@1 T@PolymorphicMapType_22355) (o_2@@41 T@Ref) (f_4@@41 T@Field_11523_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22355) (SummandMask1@@2 T@PolymorphicMapType_22355) (SummandMask2@@2 T@PolymorphicMapType_22355) (o_2@@42 T@Ref) (f_4@@42 T@Field_39791_39792) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22355) (SummandMask1@@3 T@PolymorphicMapType_22355) (SummandMask2@@3 T@PolymorphicMapType_22355) (o_2@@43 T@Ref) (f_4@@43 T@Field_11523_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22355) (SummandMask1@@4 T@PolymorphicMapType_22355) (SummandMask2@@4 T@PolymorphicMapType_22355) (o_2@@44 T@Ref) (f_4@@44 T@Field_11229_40865) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22355) (SummandMask1@@5 T@PolymorphicMapType_22355) (SummandMask2@@5 T@PolymorphicMapType_22355) (o_2@@45 T@Ref) (f_4@@45 T@Field_22407_22408) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22355) (SummandMask1@@6 T@PolymorphicMapType_22355) (SummandMask2@@6 T@PolymorphicMapType_22355) (o_2@@46 T@Ref) (f_4@@46 T@Field_22394_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22355) (SummandMask1@@7 T@PolymorphicMapType_22355) (SummandMask2@@7 T@PolymorphicMapType_22355) (o_2@@47 T@Ref) (f_4@@47 T@Field_11229_11524) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22355) (SummandMask1@@8 T@PolymorphicMapType_22355) (SummandMask2@@8 T@PolymorphicMapType_22355) (o_2@@48 T@Ref) (f_4@@48 T@Field_25721_1189) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_22334) (Mask@@59 T@PolymorphicMapType_22355) (r_1@@19 T@Ref) ) (!  (=> (and (state Heap@@58 Mask@@59) (or (< AssumeFunctionsAbove 4) (|isGreaterOne22#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@58) r_1@@19 f_7)) r_1@@19))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@58) r_1@@19 f_7) (- 0 38)) (= (|isGreaterOne22'| Heap@@58 r_1@@19) (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@58) r_1@@19 f_7) 1))))
 :qid |stdinbpl.402:15|
 :skolemid |37|
 :pattern ( (state Heap@@58 Mask@@59) (|isGreaterOne22'| Heap@@58 r_1@@19))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_22334) (Mask@@60 T@PolymorphicMapType_22355) (r_1@@20 T@Ref) ) (!  (=> (and (state Heap@@59 Mask@@60) (or (< AssumeFunctionsAbove 7) (|isGreaterOne32#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@59) r_1@@20 f_7)) r_1@@20))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@59) r_1@@20 f_7) (- 0 38)) (= (|isGreaterOne32'| Heap@@59 r_1@@20) (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@59) r_1@@20 f_7) 1))))
 :qid |stdinbpl.610:15|
 :skolemid |48|
 :pattern ( (state Heap@@59 Mask@@60) (|isGreaterOne32'| Heap@@59 r_1@@20))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_22334) (Mask@@61 T@PolymorphicMapType_22355) (r_1@@21 T@Ref) ) (!  (=> (state Heap@@60 Mask@@61) (= (|isGreaterOne2'| Heap@@60 r_1@@21) (|isGreaterOne2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@60) r_1@@21 f_7)) r_1@@21)))
 :qid |stdinbpl.293:15|
 :skolemid |30|
 :pattern ( (state Heap@@60 Mask@@61) (|isGreaterOne2'| Heap@@60 r_1@@21))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_22334) (Mask@@62 T@PolymorphicMapType_22355) (r_1@@22 T@Ref) ) (!  (=> (state Heap@@61 Mask@@62) (= (|isGreaterOne22'| Heap@@61 r_1@@22) (|isGreaterOne22#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@61) r_1@@22 f_7)) r_1@@22)))
 :qid |stdinbpl.392:15|
 :skolemid |35|
 :pattern ( (state Heap@@61 Mask@@62) (|isGreaterOne22'| Heap@@61 r_1@@22))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_22334) (Mask@@63 T@PolymorphicMapType_22355) (r_1@@23 T@Ref) ) (!  (=> (state Heap@@62 Mask@@63) (= (|isGreaterOne3'| Heap@@62 r_1@@23) (|isGreaterOne3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@62) r_1@@23 f_7)) r_1@@23)))
 :qid |stdinbpl.501:15|
 :skolemid |41|
 :pattern ( (state Heap@@62 Mask@@63) (|isGreaterOne3'| Heap@@62 r_1@@23))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_22334) (Mask@@64 T@PolymorphicMapType_22355) (r_1@@24 T@Ref) ) (!  (=> (state Heap@@63 Mask@@64) (= (|isGreaterOne32'| Heap@@63 r_1@@24) (|isGreaterOne32#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@63) r_1@@24 f_7)) r_1@@24)))
 :qid |stdinbpl.600:15|
 :skolemid |46|
 :pattern ( (state Heap@@63 Mask@@64) (|isGreaterOne32'| Heap@@63 r_1@@24))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_22334) (Mask@@65 T@PolymorphicMapType_22355) (r_1@@25 T@Ref) ) (!  (=> (state Heap@@64 Mask@@65) (= (|isGreaterOne33'| Heap@@64 r_1@@25) (|isGreaterOne33#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@64) r_1@@25 f_7)) r_1@@25)))
 :qid |stdinbpl.709:15|
 :skolemid |52|
 :pattern ( (state Heap@@64 Mask@@65) (|isGreaterOne33'| Heap@@64 r_1@@25))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_22334) (Mask@@66 T@PolymorphicMapType_22355) (r_1@@26 T@Ref) ) (!  (=> (state Heap@@65 Mask@@66) (= (|isGreaterOne34'| Heap@@65 r_1@@26) (|isGreaterOne34#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@65) r_1@@26 f_7)) r_1@@26)))
 :qid |stdinbpl.803:15|
 :skolemid |57|
 :pattern ( (state Heap@@65 Mask@@66) (|isGreaterOne34'| Heap@@65 r_1@@26))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_22334) (Mask@@67 T@PolymorphicMapType_22355) (r_1@@27 T@Ref) ) (!  (=> (state Heap@@66 Mask@@67) (= (|isGreaterOne35'| Heap@@66 r_1@@27) (|isGreaterOne35#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@66) r_1@@27 f_7)) r_1@@27)))
 :qid |stdinbpl.902:15|
 :skolemid |62|
 :pattern ( (state Heap@@66 Mask@@67) (|isGreaterOne35'| Heap@@66 r_1@@27))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_22334) (Mask@@68 T@PolymorphicMapType_22355) (i@@10 Int) ) (!  (=> (state Heap@@67 Mask@@68) (= (|isGreaterOne'| Heap@@67 i@@10) (|isGreaterOne#frame| EmptyFrame i@@10)))
 :qid |stdinbpl.223:15|
 :skolemid |25|
 :pattern ( (state Heap@@67 Mask@@68) (|isGreaterOne'| Heap@@67 i@@10))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_22334) (Mask@@69 T@PolymorphicMapType_22355) (i@@11 Int) ) (!  (=> (and (state Heap@@68 Mask@@69) (or (< AssumeFunctionsAbove 12) (|isGreaterOne#trigger| EmptyFrame i@@11))) (=> (> i@@11 (- 0 60)) (=> (> i@@11 60) (|isGreaterOne'| Heap@@68 i@@11))))
 :qid |stdinbpl.229:15|
 :skolemid |26|
 :pattern ( (state Heap@@68 Mask@@69) (|isGreaterOne'| Heap@@68 i@@11))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_22334) (i@@12 Int) ) (!  (and (= (isGreaterOne Heap@@69 i@@12) (|isGreaterOne'| Heap@@69 i@@12)) (dummyFunction_1424 (|isGreaterOne#triggerStateless| i@@12)))
 :qid |stdinbpl.206:15|
 :skolemid |22|
 :pattern ( (isGreaterOne Heap@@69 i@@12))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_22334) (r_1@@28 T@Ref) ) (!  (and (= (isGreaterOne2 Heap@@70 r_1@@28) (|isGreaterOne2'| Heap@@70 r_1@@28)) (dummyFunction_1424 (|isGreaterOne2#triggerStateless| r_1@@28)))
 :qid |stdinbpl.276:15|
 :skolemid |27|
 :pattern ( (isGreaterOne2 Heap@@70 r_1@@28))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_22334) (r_1@@29 T@Ref) ) (!  (and (= (isGreaterOne22 Heap@@71 r_1@@29) (|isGreaterOne22'| Heap@@71 r_1@@29)) (dummyFunction_1424 (|isGreaterOne22#triggerStateless| r_1@@29)))
 :qid |stdinbpl.375:15|
 :skolemid |32|
 :pattern ( (isGreaterOne22 Heap@@71 r_1@@29))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_22334) (r_1@@30 T@Ref) ) (!  (and (= (isGreaterOne3 Heap@@72 r_1@@30) (|isGreaterOne3'| Heap@@72 r_1@@30)) (dummyFunction_1424 (|isGreaterOne3#triggerStateless| r_1@@30)))
 :qid |stdinbpl.484:15|
 :skolemid |38|
 :pattern ( (isGreaterOne3 Heap@@72 r_1@@30))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_22334) (r_1@@31 T@Ref) ) (!  (and (= (isGreaterOne32 Heap@@73 r_1@@31) (|isGreaterOne32'| Heap@@73 r_1@@31)) (dummyFunction_1424 (|isGreaterOne32#triggerStateless| r_1@@31)))
 :qid |stdinbpl.583:15|
 :skolemid |43|
 :pattern ( (isGreaterOne32 Heap@@73 r_1@@31))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_22334) (r_1@@32 T@Ref) ) (!  (and (= (isGreaterOne33 Heap@@74 r_1@@32) (|isGreaterOne33'| Heap@@74 r_1@@32)) (dummyFunction_1424 (|isGreaterOne33#triggerStateless| r_1@@32)))
 :qid |stdinbpl.692:15|
 :skolemid |49|
 :pattern ( (isGreaterOne33 Heap@@74 r_1@@32))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_22334) (r_1@@33 T@Ref) ) (!  (and (= (isGreaterOne34 Heap@@75 r_1@@33) (|isGreaterOne34'| Heap@@75 r_1@@33)) (dummyFunction_1424 (|isGreaterOne34#triggerStateless| r_1@@33)))
 :qid |stdinbpl.786:15|
 :skolemid |54|
 :pattern ( (isGreaterOne34 Heap@@75 r_1@@33))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_22334) (r_1@@34 T@Ref) ) (!  (and (= (isGreaterOne35 Heap@@76 r_1@@34) (|isGreaterOne35'| Heap@@76 r_1@@34)) (dummyFunction_1424 (|isGreaterOne35#triggerStateless| r_1@@34)))
 :qid |stdinbpl.885:15|
 :skolemid |59|
 :pattern ( (isGreaterOne35 Heap@@76 r_1@@34))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_22334) (Mask@@70 T@PolymorphicMapType_22355) (x@@9 T@Ref) ) (!  (=> (state Heap@@77 Mask@@70) (= (|funP'| Heap@@77 x@@9) (|funP#frame| (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@77) null (P x@@9)) x@@9)))
 :qid |stdinbpl.1193:15|
 :skolemid |79|
 :pattern ( (state Heap@@77 Mask@@70) (|funP'| Heap@@77 x@@9))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_22334) (Mask@@71 T@PolymorphicMapType_22355) (x@@10 T@Ref) ) (!  (=> (state Heap@@78 Mask@@71) (= (|funP2'| Heap@@78 x@@10) (|funP2#frame| (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@78) null (P x@@10)) x@@10)))
 :qid |stdinbpl.1279:15|
 :skolemid |83|
 :pattern ( (state Heap@@78 Mask@@71) (|funP2'| Heap@@78 x@@10))
)))
(assert (forall ((x@@11 T@Ref) ) (! (= (getPredWandId_11523_11524 (P x@@11)) 0)
 :qid |stdinbpl.1356:15|
 :skolemid |86|
 :pattern ( (P x@@11))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_22334) (Mask@@72 T@PolymorphicMapType_22355) (i@@13 Int) ) (!  (=> (state Heap@@79 Mask@@72) (= (|fac1'| Heap@@79 i@@13) (|fac1#frame| EmptyFrame i@@13)))
 :qid |stdinbpl.1001:15|
 :skolemid |67|
 :pattern ( (state Heap@@79 Mask@@72) (|fac1'| Heap@@79 i@@13))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_22334) (Mask@@73 T@PolymorphicMapType_22355) (i@@14 Int) ) (!  (=> (state Heap@@80 Mask@@73) (= (|fac2'| Heap@@80 i@@14) (|fac2#frame| EmptyFrame i@@14)))
 :qid |stdinbpl.1065:15|
 :skolemid |71|
 :pattern ( (state Heap@@80 Mask@@73) (|fac2'| Heap@@80 i@@14))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_22334) (Mask@@74 T@PolymorphicMapType_22355) (i@@15 Int) ) (!  (=> (state Heap@@81 Mask@@74) (= (|fac3'| Heap@@81 i@@15) (|fac3#frame| EmptyFrame i@@15)))
 :qid |stdinbpl.1129:15|
 :skolemid |75|
 :pattern ( (state Heap@@81 Mask@@74) (|fac3'| Heap@@81 i@@15))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_22334) (o T@Ref) (f_3 T@Field_40860_40865) (v T@PolymorphicMapType_22883) ) (! (succHeap Heap@@82 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@82) (store (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@82) o f_3 v) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@82) (store (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@82) o f_3 v) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_22334) (o@@0 T@Ref) (f_3@@0 T@Field_39791_39792) (v@@0 T@FrameType) ) (! (succHeap Heap@@83 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@83) (store (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@83) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@83) (store (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@83) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_22334) (o@@1 T@Ref) (f_3@@1 T@Field_11523_1189) (v@@1 Int) ) (! (succHeap Heap@@84 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@84) (store (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@84) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@84) (store (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@84) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_22334) (o@@2 T@Ref) (f_3@@2 T@Field_11523_22408) (v@@2 T@Ref) ) (! (succHeap Heap@@85 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@85) (store (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@85) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@85) (store (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@85) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_22334) (o@@3 T@Ref) (f_3@@3 T@Field_11523_53) (v@@3 Bool) ) (! (succHeap Heap@@86 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@86) (store (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@86) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@86) (store (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@86) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_22334) (o@@4 T@Ref) (f_3@@4 T@Field_11229_40865) (v@@4 T@PolymorphicMapType_22883) ) (! (succHeap Heap@@87 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@87) (store (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@87) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@87) (store (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@87) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_22334) (o@@5 T@Ref) (f_3@@5 T@Field_11229_11524) (v@@5 T@FrameType) ) (! (succHeap Heap@@88 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@88) (store (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@88) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@88) (store (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@88) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_22334) (o@@6 T@Ref) (f_3@@6 T@Field_25721_1189) (v@@6 Int) ) (! (succHeap Heap@@89 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@89) (store (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@89) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@89) (store (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@89) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_22334) (o@@7 T@Ref) (f_3@@7 T@Field_22407_22408) (v@@7 T@Ref) ) (! (succHeap Heap@@90 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@90) (store (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@90) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@90) (store (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@90) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_22334) (o@@8 T@Ref) (f_3@@8 T@Field_22394_53) (v@@8 Bool) ) (! (succHeap Heap@@91 (PolymorphicMapType_22334 (store (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@91) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (store (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@91) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@91)))
)))
(assert (forall ((x@@12 T@Ref) ) (! (= (PredicateMaskField_11523 (P x@@12)) (|P#sm| x@@12))
 :qid |stdinbpl.1348:15|
 :skolemid |84|
 :pattern ( (PredicateMaskField_11523 (P x@@12)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_22407_22408) (Heap@@92 T@PolymorphicMapType_22334) ) (!  (=> (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@92) o@@9 $allocated) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@92) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@92) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@92) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_39791_39792) (v_1@@1 T@FrameType) (q T@Field_39791_39792) (w@@1 T@FrameType) (r T@Field_39791_39792) (u T@FrameType) ) (!  (=> (and (InsidePredicate_39791_39791 p@@2 v_1@@1 q w@@1) (InsidePredicate_39791_39791 q w@@1 r u)) (InsidePredicate_39791_39791 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39791_39791 p@@2 v_1@@1 q w@@1) (InsidePredicate_39791_39791 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_39791_39792) (v_1@@2 T@FrameType) (q@@0 T@Field_39791_39792) (w@@2 T@FrameType) (r@@0 T@Field_11229_11524) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_39791_39791 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_39791_22394 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_39791_22394 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39791_39791 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_39791_22394 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_39791_39792) (v_1@@3 T@FrameType) (q@@1 T@Field_11229_11524) (w@@3 T@FrameType) (r@@1 T@Field_39791_39792) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_39791_22394 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22394_39791 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_39791_39791 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39791_22394 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22394_39791 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_39791_39792) (v_1@@4 T@FrameType) (q@@2 T@Field_11229_11524) (w@@4 T@FrameType) (r@@2 T@Field_11229_11524) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_39791_22394 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22394_22394 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_39791_22394 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39791_22394 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22394_22394 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_11229_11524) (v_1@@5 T@FrameType) (q@@3 T@Field_39791_39792) (w@@5 T@FrameType) (r@@3 T@Field_39791_39792) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22394_39791 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_39791_39791 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_22394_39791 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22394_39791 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_39791_39791 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_11229_11524) (v_1@@6 T@FrameType) (q@@4 T@Field_39791_39792) (w@@6 T@FrameType) (r@@4 T@Field_11229_11524) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22394_39791 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_39791_22394 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_22394_22394 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22394_39791 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_39791_22394 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_11229_11524) (v_1@@7 T@FrameType) (q@@5 T@Field_11229_11524) (w@@7 T@FrameType) (r@@5 T@Field_39791_39792) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22394_22394 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22394_39791 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_22394_39791 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22394_22394 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22394_39791 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_11229_11524) (v_1@@8 T@FrameType) (q@@6 T@Field_11229_11524) (w@@8 T@FrameType) (r@@6 T@Field_11229_11524) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22394_22394 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22394_22394 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_22394_22394 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22394_22394 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22394_22394 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_22334) (Mask@@75 T@PolymorphicMapType_22355) (r_1@@35 T@Ref) ) (!  (=> (and (state Heap@@93 Mask@@75) (or (< AssumeFunctionsAbove 1) (|isGreaterOne33#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@93) r_1@@35 f_7)) r_1@@35))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@93) r_1@@35 f_7) 60) (|isGreaterOne33'| Heap@@93 r_1@@35)))
 :qid |stdinbpl.715:15|
 :skolemid |53|
 :pattern ( (state Heap@@93 Mask@@75) (|isGreaterOne33'| Heap@@93 r_1@@35))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@94 () T@PolymorphicMapType_22334)
(declare-fun r_1@@36 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_22355)
(set-info :boogie-vc-id mNestedFunc4)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon3_Else_correct  (=> (isGreaterOne3 Heap@@94 r_1@@36) (=> (and (state Heap@@94 Mask@0) (state Heap@@94 Mask@0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_11229_1189 Mask@0 r_1@@36 f_7)) (=> (HasDirectPerm_11229_1189 Mask@0 r_1@@36 f_7) (=> (= (ControlFlow 0 5) (- 0 4)) (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@94) r_1@@36 f_7) 1))))))))
(let ((anon3_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@0) r_1@@36 f_7)))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@0) r_1@@36 f_7))) (=> (= (ControlFlow 0 2) (- 0 1)) (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@94) r_1@@36 f_7) (- 0 38)))))))
(let ((anon0_correct  (=> (state Heap@@94 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@94) r_1@@36 $allocated) (not (= r_1@@36 null))) (and (= Mask@0 (PolymorphicMapType_22355 (store (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ZeroMask) r_1@@36 f_7 (+ (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ZeroMask) r_1@@36 f_7) FullPerm)) (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ZeroMask) (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ZeroMask) (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ZeroMask) (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ZeroMask) (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ZeroMask) (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ZeroMask) (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ZeroMask) (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ZeroMask) (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ZeroMask))) (state Heap@@94 Mask@0))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_11229_1189 Mask@0 r_1@@36 f_7)) (=> (HasDirectPerm_11229_1189 Mask@0 r_1@@36 f_7) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@94) r_1@@36 f_7) (- 0 20)) (=> (and (state Heap@@94 Mask@0) (state Heap@@94 Mask@0)) (and (=> (= (ControlFlow 0 7) 2) anon3_Then_correct) (=> (= (ControlFlow 0 7) 5) anon3_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 7) anon0_correct)))
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
(declare-sort T@Field_22394_53 0)
(declare-sort T@Field_22407_22408 0)
(declare-sort T@Field_25721_1189 0)
(declare-sort T@Field_39791_39792 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_40860_40865 0)
(declare-sort T@Field_11229_11524 0)
(declare-sort T@Field_11229_40865 0)
(declare-sort T@Field_11523_1189 0)
(declare-sort T@Field_11523_53 0)
(declare-sort T@Field_11523_22408 0)
(declare-datatypes ((T@PolymorphicMapType_22355 0)) (((PolymorphicMapType_22355 (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| (Array T@Ref T@Field_25721_1189 Real)) (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| (Array T@Ref T@Field_39791_39792 Real)) (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| (Array T@Ref T@Field_11229_11524 Real)) (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| (Array T@Ref T@Field_22394_53 Real)) (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| (Array T@Ref T@Field_22407_22408 Real)) (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| (Array T@Ref T@Field_11229_40865 Real)) (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| (Array T@Ref T@Field_11523_1189 Real)) (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| (Array T@Ref T@Field_11523_53 Real)) (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| (Array T@Ref T@Field_11523_22408 Real)) (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| (Array T@Ref T@Field_40860_40865 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22883 0)) (((PolymorphicMapType_22883 (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (Array T@Ref T@Field_25721_1189 Bool)) (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (Array T@Ref T@Field_22394_53 Bool)) (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (Array T@Ref T@Field_22407_22408 Bool)) (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (Array T@Ref T@Field_11229_11524 Bool)) (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (Array T@Ref T@Field_11229_40865 Bool)) (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (Array T@Ref T@Field_11523_1189 Bool)) (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (Array T@Ref T@Field_11523_53 Bool)) (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (Array T@Ref T@Field_11523_22408 Bool)) (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (Array T@Ref T@Field_39791_39792 Bool)) (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (Array T@Ref T@Field_40860_40865 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22334 0)) (((PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| (Array T@Ref T@Field_22394_53 Bool)) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| (Array T@Ref T@Field_22407_22408 T@Ref)) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| (Array T@Ref T@Field_25721_1189 Int)) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| (Array T@Ref T@Field_39791_39792 T@FrameType)) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| (Array T@Ref T@Field_40860_40865 T@PolymorphicMapType_22883)) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| (Array T@Ref T@Field_11229_11524 T@FrameType)) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| (Array T@Ref T@Field_11229_40865 T@PolymorphicMapType_22883)) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| (Array T@Ref T@Field_11523_1189 Int)) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| (Array T@Ref T@Field_11523_53 Bool)) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| (Array T@Ref T@Field_11523_22408 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_22394_53)
(declare-fun f_7 () T@Field_25721_1189)
(declare-fun succHeap (T@PolymorphicMapType_22334 T@PolymorphicMapType_22334) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22334 T@PolymorphicMapType_22334) Bool)
(declare-fun state (T@PolymorphicMapType_22334 T@PolymorphicMapType_22355) Bool)
(declare-fun isGreaterOne33 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun isGreaterOne (T@PolymorphicMapType_22334 Int) Bool)
(declare-fun funP (T@PolymorphicMapType_22334 T@Ref) Int)
(declare-fun funP2 (T@PolymorphicMapType_22334 T@Ref) Int)
(declare-fun |funP2#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_11523| (T@PolymorphicMapType_22334 T@Field_39791_39792) Bool)
(declare-fun P (T@Ref) T@Field_39791_39792)
(declare-fun GoodMask (T@PolymorphicMapType_22355) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_22883)
(declare-fun IsPredicateField_11523_11524 (T@Field_39791_39792) Bool)
(declare-fun |isGreaterOne'| (T@PolymorphicMapType_22334 Int) Bool)
(declare-fun dummyFunction_1424 (Bool) Bool)
(declare-fun |isGreaterOne#triggerStateless| (Int) Bool)
(declare-fun |isGreaterOne2'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne2#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne22'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne22#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne3'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne3#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne32'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne32#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne33'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne33#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne34'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne34#triggerStateless| (T@Ref) Bool)
(declare-fun |isGreaterOne35'| (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun |isGreaterOne35#triggerStateless| (T@Ref) Bool)
(declare-fun |fac1'| (T@PolymorphicMapType_22334 Int) Int)
(declare-fun dummyFunction_4721 (Int) Bool)
(declare-fun |fac1#triggerStateless| (Int) Int)
(declare-fun |fac2'| (T@PolymorphicMapType_22334 Int) Int)
(declare-fun |fac2#triggerStateless| (Int) Int)
(declare-fun |fac3'| (T@PolymorphicMapType_22334 Int) Int)
(declare-fun |fac3#triggerStateless| (Int) Int)
(declare-fun |funP'| (T@PolymorphicMapType_22334 T@Ref) Int)
(declare-fun |funP#triggerStateless| (T@Ref) Int)
(declare-fun |funP2'| (T@PolymorphicMapType_22334 T@Ref) Int)
(declare-fun |P#everUsed_11523| (T@Field_39791_39792) Bool)
(declare-fun fac1 (T@PolymorphicMapType_22334 Int) Int)
(declare-fun fac2 (T@PolymorphicMapType_22334 Int) Int)
(declare-fun fac3 (T@PolymorphicMapType_22334 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22334 T@PolymorphicMapType_22334 T@PolymorphicMapType_22355) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11523 (T@Field_39791_39792) T@Field_40860_40865)
(declare-fun HasDirectPerm_11523_11524 (T@PolymorphicMapType_22355 T@Ref T@Field_39791_39792) Bool)
(declare-fun IsPredicateField_11229_71089 (T@Field_11229_11524) Bool)
(declare-fun PredicateMaskField_11229 (T@Field_11229_11524) T@Field_11229_40865)
(declare-fun HasDirectPerm_11229_11524 (T@PolymorphicMapType_22355 T@Ref T@Field_11229_11524) Bool)
(declare-fun IsWandField_11523_74774 (T@Field_39791_39792) Bool)
(declare-fun WandMaskField_11523 (T@Field_39791_39792) T@Field_40860_40865)
(declare-fun IsWandField_11229_74417 (T@Field_11229_11524) Bool)
(declare-fun WandMaskField_11229 (T@Field_11229_11524) T@Field_11229_40865)
(declare-fun |P#sm| (T@Ref) T@Field_40860_40865)
(declare-fun |isGreaterOne3#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |isGreaterOne2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne22#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne34#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne32#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne35#trigger| (T@FrameType T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_22334)
(declare-fun ZeroMask () T@PolymorphicMapType_22355)
(declare-fun InsidePredicate_39791_39791 (T@Field_39791_39792 T@FrameType T@Field_39791_39792 T@FrameType) Bool)
(declare-fun InsidePredicate_22394_22394 (T@Field_11229_11524 T@FrameType T@Field_11229_11524 T@FrameType) Bool)
(declare-fun IsPredicateField_11229_1189 (T@Field_25721_1189) Bool)
(declare-fun IsWandField_11229_1189 (T@Field_25721_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11523_81706 (T@Field_40860_40865) Bool)
(declare-fun IsWandField_11523_81722 (T@Field_40860_40865) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11523_22408 (T@Field_11523_22408) Bool)
(declare-fun IsWandField_11523_22408 (T@Field_11523_22408) Bool)
(declare-fun IsPredicateField_11523_53 (T@Field_11523_53) Bool)
(declare-fun IsWandField_11523_53 (T@Field_11523_53) Bool)
(declare-fun IsPredicateField_11523_1189 (T@Field_11523_1189) Bool)
(declare-fun IsWandField_11523_1189 (T@Field_11523_1189) Bool)
(declare-fun IsPredicateField_11229_80875 (T@Field_11229_40865) Bool)
(declare-fun IsWandField_11229_80891 (T@Field_11229_40865) Bool)
(declare-fun IsPredicateField_11229_22408 (T@Field_22407_22408) Bool)
(declare-fun IsWandField_11229_22408 (T@Field_22407_22408) Bool)
(declare-fun IsPredicateField_11229_53 (T@Field_22394_53) Bool)
(declare-fun IsWandField_11229_53 (T@Field_22394_53) Bool)
(declare-fun isGreaterOne3 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne2 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne22 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne34 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne32 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun isGreaterOne35 (T@PolymorphicMapType_22334 T@Ref) Bool)
(declare-fun HasDirectPerm_11523_70844 (T@PolymorphicMapType_22355 T@Ref T@Field_40860_40865) Bool)
(declare-fun HasDirectPerm_11523_22408 (T@PolymorphicMapType_22355 T@Ref T@Field_11523_22408) Bool)
(declare-fun HasDirectPerm_11523_53 (T@PolymorphicMapType_22355 T@Ref T@Field_11523_53) Bool)
(declare-fun HasDirectPerm_11523_1189 (T@PolymorphicMapType_22355 T@Ref T@Field_11523_1189) Bool)
(declare-fun HasDirectPerm_11229_69703 (T@PolymorphicMapType_22355 T@Ref T@Field_11229_40865) Bool)
(declare-fun HasDirectPerm_11229_22408 (T@PolymorphicMapType_22355 T@Ref T@Field_22407_22408) Bool)
(declare-fun HasDirectPerm_11229_53 (T@PolymorphicMapType_22355 T@Ref T@Field_22394_53) Bool)
(declare-fun HasDirectPerm_11229_1189 (T@PolymorphicMapType_22355 T@Ref T@Field_25721_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_22355 T@PolymorphicMapType_22355 T@PolymorphicMapType_22355) Bool)
(declare-fun |isGreaterOne2#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne22#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne3#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne32#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne33#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne34#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne35#frame| (T@FrameType T@Ref) Bool)
(declare-fun |isGreaterOne#frame| (T@FrameType Int) Bool)
(declare-fun |isGreaterOne#trigger| (T@FrameType Int) Bool)
(declare-fun |funP#frame| (T@FrameType T@Ref) Int)
(declare-fun |funP2#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_11523_11524 (T@Field_39791_39792) Int)
(declare-fun |fac1#frame| (T@FrameType Int) Int)
(declare-fun |fac2#frame| (T@FrameType Int) Int)
(declare-fun |fac3#frame| (T@FrameType Int) Int)
(declare-fun InsidePredicate_39791_22394 (T@Field_39791_39792 T@FrameType T@Field_11229_11524 T@FrameType) Bool)
(declare-fun InsidePredicate_22394_39791 (T@Field_11229_11524 T@FrameType T@Field_39791_39792 T@FrameType) Bool)
(declare-fun |isGreaterOne33#trigger| (T@FrameType T@Ref) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_22334) (Heap1 T@PolymorphicMapType_22334) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_22334) (Mask T@PolymorphicMapType_22355) (r_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (isGreaterOne33 Heap r_1) (isGreaterOne Heap (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap) r_1 f_7))))
 :qid |stdinbpl.702:15|
 :skolemid |51|
 :pattern ( (state Heap Mask) (isGreaterOne33 Heap r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22334) (Mask@@0 T@PolymorphicMapType_22355) (x T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 5)) (= (funP Heap@@0 x) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@0) x f_7)))
 :qid |stdinbpl.1186:15|
 :skolemid |78|
 :pattern ( (state Heap@@0 Mask@@0) (funP Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22334) (Mask@@1 T@PolymorphicMapType_22355) (x@@0 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 9)) (= (funP2 Heap@@1 x@@0) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@1) x@@0 f_7)))
 :qid |stdinbpl.1272:15|
 :skolemid |82|
 :pattern ( (state Heap@@1 Mask@@1) (funP2 Heap@@1 x@@0))
 :pattern ( (state Heap@@1 Mask@@1) (|funP2#triggerStateless| x@@0) (|P#trigger_11523| Heap@@1 (P x@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22334) (Mask@@2 T@PolymorphicMapType_22355) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22334) (Heap1@@0 T@PolymorphicMapType_22334) (Heap2 T@PolymorphicMapType_22334) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_40860_40865) ) (!  (not (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_39791_39792) ) (!  (not (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11523_22408) ) (!  (not (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11523_53) ) (!  (not (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11523_1189) ) (!  (not (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11229_40865) ) (!  (not (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_11229_11524) ) (!  (not (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_22407_22408) ) (!  (not (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_22394_53) ) (!  (not (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_25721_1189) ) (!  (not (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x@@1 T@Ref) ) (! (IsPredicateField_11523_11524 (P x@@1))
 :qid |stdinbpl.1352:15|
 :skolemid |85|
 :pattern ( (P x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22334) (i Int) ) (! (dummyFunction_1424 (|isGreaterOne#triggerStateless| i))
 :qid |stdinbpl.210:15|
 :skolemid |23|
 :pattern ( (|isGreaterOne'| Heap@@3 i))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22334) (r_1@@0 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne2#triggerStateless| r_1@@0))
 :qid |stdinbpl.280:15|
 :skolemid |28|
 :pattern ( (|isGreaterOne2'| Heap@@4 r_1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22334) (r_1@@1 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne22#triggerStateless| r_1@@1))
 :qid |stdinbpl.379:15|
 :skolemid |33|
 :pattern ( (|isGreaterOne22'| Heap@@5 r_1@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22334) (r_1@@2 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne3#triggerStateless| r_1@@2))
 :qid |stdinbpl.488:15|
 :skolemid |39|
 :pattern ( (|isGreaterOne3'| Heap@@6 r_1@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22334) (r_1@@3 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne32#triggerStateless| r_1@@3))
 :qid |stdinbpl.587:15|
 :skolemid |44|
 :pattern ( (|isGreaterOne32'| Heap@@7 r_1@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22334) (r_1@@4 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne33#triggerStateless| r_1@@4))
 :qid |stdinbpl.696:15|
 :skolemid |50|
 :pattern ( (|isGreaterOne33'| Heap@@8 r_1@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22334) (r_1@@5 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne34#triggerStateless| r_1@@5))
 :qid |stdinbpl.790:15|
 :skolemid |55|
 :pattern ( (|isGreaterOne34'| Heap@@9 r_1@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22334) (r_1@@6 T@Ref) ) (! (dummyFunction_1424 (|isGreaterOne35#triggerStateless| r_1@@6))
 :qid |stdinbpl.889:15|
 :skolemid |60|
 :pattern ( (|isGreaterOne35'| Heap@@10 r_1@@6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22334) (i@@0 Int) ) (! (dummyFunction_4721 (|fac1#triggerStateless| i@@0))
 :qid |stdinbpl.988:15|
 :skolemid |65|
 :pattern ( (|fac1'| Heap@@11 i@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22334) (i@@1 Int) ) (! (dummyFunction_4721 (|fac2#triggerStateless| i@@1))
 :qid |stdinbpl.1052:15|
 :skolemid |69|
 :pattern ( (|fac2'| Heap@@12 i@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22334) (i@@2 Int) ) (! (dummyFunction_4721 (|fac3#triggerStateless| i@@2))
 :qid |stdinbpl.1116:15|
 :skolemid |73|
 :pattern ( (|fac3'| Heap@@13 i@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22334) (x@@2 T@Ref) ) (! (dummyFunction_4721 (|funP#triggerStateless| x@@2))
 :qid |stdinbpl.1180:15|
 :skolemid |77|
 :pattern ( (|funP'| Heap@@14 x@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22334) (x@@3 T@Ref) ) (! (dummyFunction_4721 (|funP2#triggerStateless| x@@3))
 :qid |stdinbpl.1266:15|
 :skolemid |81|
 :pattern ( (|funP2'| Heap@@15 x@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22334) (x@@4 T@Ref) ) (! (|P#everUsed_11523| (P x@@4))
 :qid |stdinbpl.1371:15|
 :skolemid |89|
 :pattern ( (|P#trigger_11523| Heap@@16 (P x@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22334) (i@@3 Int) ) (!  (and (= (fac1 Heap@@17 i@@3) (|fac1'| Heap@@17 i@@3)) (dummyFunction_4721 (|fac1#triggerStateless| i@@3)))
 :qid |stdinbpl.984:15|
 :skolemid |64|
 :pattern ( (fac1 Heap@@17 i@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22334) (i@@4 Int) ) (!  (and (= (fac2 Heap@@18 i@@4) (|fac2'| Heap@@18 i@@4)) (dummyFunction_4721 (|fac2#triggerStateless| i@@4)))
 :qid |stdinbpl.1048:15|
 :skolemid |68|
 :pattern ( (fac2 Heap@@18 i@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22334) (i@@5 Int) ) (!  (and (= (fac3 Heap@@19 i@@5) (|fac3'| Heap@@19 i@@5)) (dummyFunction_4721 (|fac3#triggerStateless| i@@5)))
 :qid |stdinbpl.1112:15|
 :skolemid |72|
 :pattern ( (fac3 Heap@@19 i@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22334) (x@@5 T@Ref) ) (!  (and (= (funP Heap@@20 x@@5) (|funP'| Heap@@20 x@@5)) (dummyFunction_4721 (|funP#triggerStateless| x@@5)))
 :qid |stdinbpl.1176:15|
 :skolemid |76|
 :pattern ( (funP Heap@@20 x@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22334) (x@@6 T@Ref) ) (!  (and (= (funP2 Heap@@21 x@@6) (|funP2'| Heap@@21 x@@6)) (dummyFunction_4721 (|funP2#triggerStateless| x@@6)))
 :qid |stdinbpl.1262:15|
 :skolemid |80|
 :pattern ( (funP2 Heap@@21 x@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22334) (ExhaleHeap T@PolymorphicMapType_22334) (Mask@@3 T@PolymorphicMapType_22355) (pm_f T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_11523_11524 Mask@@3 null pm_f) (IsPredicateField_11523_11524 pm_f)) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@22) null (PredicateMaskField_11523 pm_f)) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap) null (PredicateMaskField_11523 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap Mask@@3) (IsPredicateField_11523_11524 pm_f) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap) null (PredicateMaskField_11523 pm_f)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22334) (ExhaleHeap@@0 T@PolymorphicMapType_22334) (Mask@@4 T@PolymorphicMapType_22355) (pm_f@@0 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_11229_11524 Mask@@4 null pm_f@@0) (IsPredicateField_11229_71089 pm_f@@0)) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@23) null (PredicateMaskField_11229 pm_f@@0)) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@0) null (PredicateMaskField_11229 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@0 Mask@@4) (IsPredicateField_11229_71089 pm_f@@0) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@0) null (PredicateMaskField_11229 pm_f@@0)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22334) (ExhaleHeap@@1 T@PolymorphicMapType_22334) (Mask@@5 T@PolymorphicMapType_22355) (pm_f@@1 T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_11523_11524 Mask@@5 null pm_f@@1) (IsWandField_11523_74774 pm_f@@1)) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@24) null (WandMaskField_11523 pm_f@@1)) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@1) null (WandMaskField_11523 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@1 Mask@@5) (IsWandField_11523_74774 pm_f@@1) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@1) null (WandMaskField_11523 pm_f@@1)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22334) (ExhaleHeap@@2 T@PolymorphicMapType_22334) (Mask@@6 T@PolymorphicMapType_22355) (pm_f@@2 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_11229_11524 Mask@@6 null pm_f@@2) (IsWandField_11229_74417 pm_f@@2)) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@25) null (WandMaskField_11229 pm_f@@2)) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@2) null (WandMaskField_11229 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@2 Mask@@6) (IsWandField_11229_74417 pm_f@@2) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@2) null (WandMaskField_11229 pm_f@@2)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22334) (Mask@@7 T@PolymorphicMapType_22355) (i@@6 Int) ) (!  (=> (and (state Heap@@26 Mask@@7) (< AssumeFunctionsAbove 12)) (=> (> i@@6 (- 0 60)) (= (isGreaterOne Heap@@26 i@@6) (> i@@6 1))))
 :qid |stdinbpl.216:15|
 :skolemid |24|
 :pattern ( (state Heap@@26 Mask@@7) (isGreaterOne Heap@@26 i@@6))
)))
(assert (forall ((x@@7 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@7) (P x2)) (= x@@7 x2))
 :qid |stdinbpl.1362:15|
 :skolemid |87|
 :pattern ( (P x@@7) (P x2))
)))
(assert (forall ((x@@8 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@8) (|P#sm| x2@@0)) (= x@@8 x2@@0))
 :qid |stdinbpl.1366:15|
 :skolemid |88|
 :pattern ( (|P#sm| x@@8) (|P#sm| x2@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22334) (Mask@@8 T@PolymorphicMapType_22355) (i@@7 Int) ) (!  (=> (and (state Heap@@27 Mask@@8) (< AssumeFunctionsAbove 2)) (= (fac2 Heap@@27 i@@7) (ite (<= i@@7 1) 1 (* i@@7 (|fac2'| Heap@@27 (- i@@7 1))))))
 :qid |stdinbpl.1058:15|
 :skolemid |70|
 :pattern ( (state Heap@@27 Mask@@8) (fac2 Heap@@27 i@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22334) (Mask@@9 T@PolymorphicMapType_22355) (i@@8 Int) ) (!  (=> (and (state Heap@@28 Mask@@9) (< AssumeFunctionsAbove 10)) (= (fac3 Heap@@28 i@@8) (ite (<= i@@8 1) 1 (* i@@8 (|fac3'| Heap@@28 (- i@@8 1))))))
 :qid |stdinbpl.1122:15|
 :skolemid |74|
 :pattern ( (state Heap@@28 Mask@@9) (fac3 Heap@@28 i@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22334) (Mask@@10 T@PolymorphicMapType_22355) (i@@9 Int) ) (!  (=> (and (state Heap@@29 Mask@@10) (< AssumeFunctionsAbove 11)) (= (fac1 Heap@@29 i@@9) (ite (<= i@@9 1) 1 (* i@@9 (|fac1'| Heap@@29 (- i@@9 1))))))
 :qid |stdinbpl.994:15|
 :skolemid |66|
 :pattern ( (state Heap@@29 Mask@@10) (fac1 Heap@@29 i@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22334) (ExhaleHeap@@3 T@PolymorphicMapType_22334) (Mask@@11 T@PolymorphicMapType_22355) (pm_f@@3 T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@3 Mask@@11) (=> (and (HasDirectPerm_11523_11524 Mask@@11 null pm_f@@3) (IsPredicateField_11523_11524 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_25721_1189) ) (!  (=> (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@30) o2 f_2) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_22394_53) ) (!  (=> (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@30) o2@@0 f_2@@0) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_22407_22408) ) (!  (=> (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@30) o2@@1 f_2@@1) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11229_11524) ) (!  (=> (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@30) o2@@2 f_2@@2) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11229_40865) ) (!  (=> (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@30) o2@@3 f_2@@3) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11523_1189) ) (!  (=> (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@30) o2@@4 f_2@@4) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11523_53) ) (!  (=> (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@30) o2@@5 f_2@@5) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11523_22408) ) (!  (=> (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@30) o2@@6 f_2@@6) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_39791_39792) ) (!  (=> (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@30) o2@@7 f_2@@7) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_40860_40865) ) (!  (=> (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) null (PredicateMaskField_11523 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@30) o2@@8 f_2@@8) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@3 Mask@@11) (IsPredicateField_11523_11524 pm_f@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22334) (ExhaleHeap@@4 T@PolymorphicMapType_22334) (Mask@@12 T@PolymorphicMapType_22355) (pm_f@@4 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@4 Mask@@12) (=> (and (HasDirectPerm_11229_11524 Mask@@12 null pm_f@@4) (IsPredicateField_11229_71089 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_25721_1189) ) (!  (=> (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@31) o2@@9 f_2@@9) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_22394_53) ) (!  (=> (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@31) o2@@10 f_2@@10) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_22407_22408) ) (!  (=> (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@31) o2@@11 f_2@@11) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_11229_11524) ) (!  (=> (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@31) o2@@12 f_2@@12) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_11229_40865) ) (!  (=> (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) o2@@13 f_2@@13) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_11523_1189) ) (!  (=> (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@31) o2@@14 f_2@@14) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_11523_53) ) (!  (=> (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@31) o2@@15 f_2@@15) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_11523_22408) ) (!  (=> (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@31) o2@@16 f_2@@16) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_39791_39792) ) (!  (=> (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@31) o2@@17 f_2@@17) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_40860_40865) ) (!  (=> (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@31) null (PredicateMaskField_11229 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@31) o2@@18 f_2@@18) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@4 Mask@@12) (IsPredicateField_11229_71089 pm_f@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22334) (ExhaleHeap@@5 T@PolymorphicMapType_22334) (Mask@@13 T@PolymorphicMapType_22355) (pm_f@@5 T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@5 Mask@@13) (=> (and (HasDirectPerm_11523_11524 Mask@@13 null pm_f@@5) (IsWandField_11523_74774 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_25721_1189) ) (!  (=> (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@32) o2@@19 f_2@@19) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_22394_53) ) (!  (=> (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@32) o2@@20 f_2@@20) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_22407_22408) ) (!  (=> (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@32) o2@@21 f_2@@21) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_11229_11524) ) (!  (=> (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@32) o2@@22 f_2@@22) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_11229_40865) ) (!  (=> (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@32) o2@@23 f_2@@23) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_11523_1189) ) (!  (=> (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@32) o2@@24 f_2@@24) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_11523_53) ) (!  (=> (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@32) o2@@25 f_2@@25) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_11523_22408) ) (!  (=> (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@32) o2@@26 f_2@@26) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_39791_39792) ) (!  (=> (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@32) o2@@27 f_2@@27) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_40860_40865) ) (!  (=> (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) null (WandMaskField_11523 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@32) o2@@28 f_2@@28) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@5 Mask@@13) (IsWandField_11523_74774 pm_f@@5))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22334) (ExhaleHeap@@6 T@PolymorphicMapType_22334) (Mask@@14 T@PolymorphicMapType_22355) (pm_f@@6 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@6 Mask@@14) (=> (and (HasDirectPerm_11229_11524 Mask@@14 null pm_f@@6) (IsWandField_11229_74417 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_25721_1189) ) (!  (=> (select (|PolymorphicMapType_22883_11229_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@33) o2@@29 f_2@@29) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_22394_53) ) (!  (=> (select (|PolymorphicMapType_22883_11229_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@33) o2@@30 f_2@@30) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_22407_22408) ) (!  (=> (select (|PolymorphicMapType_22883_11229_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@33) o2@@31 f_2@@31) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_11229_11524) ) (!  (=> (select (|PolymorphicMapType_22883_11229_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@33) o2@@32 f_2@@32) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_11229_40865) ) (!  (=> (select (|PolymorphicMapType_22883_11229_72561#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) o2@@33 f_2@@33) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_11523_1189) ) (!  (=> (select (|PolymorphicMapType_22883_39791_1189#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@33) o2@@34 f_2@@34) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_11523_53) ) (!  (=> (select (|PolymorphicMapType_22883_39791_53#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@33) o2@@35 f_2@@35) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_11523_22408) ) (!  (=> (select (|PolymorphicMapType_22883_39791_22408#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@33) o2@@36 f_2@@36) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_39791_39792) ) (!  (=> (select (|PolymorphicMapType_22883_39791_39792#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@33) o2@@37 f_2@@37) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_40860_40865) ) (!  (=> (select (|PolymorphicMapType_22883_39791_73609#PolymorphicMapType_22883| (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@33) null (WandMaskField_11229 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@33) o2@@38 f_2@@38) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@6 Mask@@14) (IsWandField_11229_74417 pm_f@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22334) (Mask@@15 T@PolymorphicMapType_22355) (r_1@@7 T@Ref) ) (!  (=> (and (state Heap@@34 Mask@@15) (or (< AssumeFunctionsAbove 0) (|isGreaterOne3#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@34) r_1@@7 f_7)) r_1@@7))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@34) r_1@@7 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@34) r_1@@7 f_7) 60) (|isGreaterOne3'| Heap@@34 r_1@@7))))
 :qid |stdinbpl.507:15|
 :skolemid |42|
 :pattern ( (state Heap@@34 Mask@@15) (|isGreaterOne3'| Heap@@34 r_1@@7))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22334) (Mask@@16 T@PolymorphicMapType_22355) (r_1@@8 T@Ref) ) (!  (=> (and (state Heap@@35 Mask@@16) (or (< AssumeFunctionsAbove 3) (|isGreaterOne2#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@35) r_1@@8 f_7)) r_1@@8))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@35) r_1@@8 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@35) r_1@@8 f_7) 60) (|isGreaterOne2'| Heap@@35 r_1@@8))))
 :qid |stdinbpl.299:15|
 :skolemid |31|
 :pattern ( (state Heap@@35 Mask@@16) (|isGreaterOne2'| Heap@@35 r_1@@8))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22334) (Mask@@17 T@PolymorphicMapType_22355) (r_1@@9 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@17) (or (< AssumeFunctionsAbove 4) (|isGreaterOne22#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@36) r_1@@9 f_7)) r_1@@9))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@36) r_1@@9 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@36) r_1@@9 f_7) 60) (|isGreaterOne22'| Heap@@36 r_1@@9))))
 :qid |stdinbpl.398:15|
 :skolemid |36|
 :pattern ( (state Heap@@36 Mask@@17) (|isGreaterOne22'| Heap@@36 r_1@@9))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22334) (Mask@@18 T@PolymorphicMapType_22355) (r_1@@10 T@Ref) ) (!  (=> (and (state Heap@@37 Mask@@18) (or (< AssumeFunctionsAbove 6) (|isGreaterOne34#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@37) r_1@@10 f_7)) r_1@@10))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@37) r_1@@10 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@37) r_1@@10 f_7) 60) (|isGreaterOne34'| Heap@@37 r_1@@10))))
 :qid |stdinbpl.809:15|
 :skolemid |58|
 :pattern ( (state Heap@@37 Mask@@18) (|isGreaterOne34'| Heap@@37 r_1@@10))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22334) (Mask@@19 T@PolymorphicMapType_22355) (r_1@@11 T@Ref) ) (!  (=> (and (state Heap@@38 Mask@@19) (or (< AssumeFunctionsAbove 7) (|isGreaterOne32#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@38) r_1@@11 f_7)) r_1@@11))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@38) r_1@@11 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@38) r_1@@11 f_7) 60) (|isGreaterOne32'| Heap@@38 r_1@@11))))
 :qid |stdinbpl.606:15|
 :skolemid |47|
 :pattern ( (state Heap@@38 Mask@@19) (|isGreaterOne32'| Heap@@38 r_1@@11))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22334) (Mask@@20 T@PolymorphicMapType_22355) (r_1@@12 T@Ref) ) (!  (=> (and (state Heap@@39 Mask@@20) (or (< AssumeFunctionsAbove 8) (|isGreaterOne35#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@39) r_1@@12 f_7)) r_1@@12))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@39) r_1@@12 f_7) (- 0 38)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@39) r_1@@12 f_7) 60) (|isGreaterOne35'| Heap@@39 r_1@@12))))
 :qid |stdinbpl.908:15|
 :skolemid |63|
 :pattern ( (state Heap@@39 Mask@@20) (|isGreaterOne35'| Heap@@39 r_1@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@40 T@PolymorphicMapType_22334) (ExhaleHeap@@7 T@PolymorphicMapType_22334) (Mask@@21 T@PolymorphicMapType_22355) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@7 Mask@@21) (=> (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@40) o_1 $allocated) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_39791_39792) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_39791_39791 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_39791_39791 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_11229_11524) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_22394_22394 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22394_22394 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_11229_1189 f_7)))
(assert  (not (IsWandField_11229_1189 f_7)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_22334) (ExhaleHeap@@8 T@PolymorphicMapType_22334) (Mask@@22 T@PolymorphicMapType_22355) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@8 Mask@@22) (succHeap Heap@@41 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@8 Mask@@22))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22355) (o_2@@9 T@Ref) (f_4@@9 T@Field_40860_40865) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| Mask@@23) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11523_81706 f_4@@9))) (not (IsWandField_11523_81722 f_4@@9))) (<= (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| Mask@@23) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| Mask@@23) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22355) (o_2@@10 T@Ref) (f_4@@10 T@Field_11523_22408) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| Mask@@24) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11523_22408 f_4@@10))) (not (IsWandField_11523_22408 f_4@@10))) (<= (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| Mask@@24) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| Mask@@24) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22355) (o_2@@11 T@Ref) (f_4@@11 T@Field_11523_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| Mask@@25) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_11523_53 f_4@@11))) (not (IsWandField_11523_53 f_4@@11))) (<= (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| Mask@@25) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| Mask@@25) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22355) (o_2@@12 T@Ref) (f_4@@12 T@Field_39791_39792) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| Mask@@26) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_11523_11524 f_4@@12))) (not (IsWandField_11523_74774 f_4@@12))) (<= (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| Mask@@26) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| Mask@@26) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22355) (o_2@@13 T@Ref) (f_4@@13 T@Field_11523_1189) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| Mask@@27) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_11523_1189 f_4@@13))) (not (IsWandField_11523_1189 f_4@@13))) (<= (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| Mask@@27) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| Mask@@27) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22355) (o_2@@14 T@Ref) (f_4@@14 T@Field_11229_40865) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| Mask@@28) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_11229_80875 f_4@@14))) (not (IsWandField_11229_80891 f_4@@14))) (<= (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| Mask@@28) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| Mask@@28) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22355) (o_2@@15 T@Ref) (f_4@@15 T@Field_22407_22408) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| Mask@@29) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_11229_22408 f_4@@15))) (not (IsWandField_11229_22408 f_4@@15))) (<= (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| Mask@@29) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| Mask@@29) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22355) (o_2@@16 T@Ref) (f_4@@16 T@Field_22394_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| Mask@@30) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_11229_53 f_4@@16))) (not (IsWandField_11229_53 f_4@@16))) (<= (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| Mask@@30) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| Mask@@30) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22355) (o_2@@17 T@Ref) (f_4@@17 T@Field_11229_11524) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| Mask@@31) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_11229_71089 f_4@@17))) (not (IsWandField_11229_74417 f_4@@17))) (<= (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| Mask@@31) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| Mask@@31) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_22355) (o_2@@18 T@Ref) (f_4@@18 T@Field_25721_1189) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@@32) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_11229_1189 f_4@@18))) (not (IsWandField_11229_1189 f_4@@18))) (<= (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@@32) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@@32) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_22334) (Mask@@33 T@PolymorphicMapType_22355) (r_1@@13 T@Ref) ) (!  (=> (and (state Heap@@42 Mask@@33) (< AssumeFunctionsAbove 0)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@42) r_1@@13 f_7) (- 0 38)) (= (isGreaterOne3 Heap@@42 r_1@@13) (isGreaterOne Heap@@42 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@42) r_1@@13 f_7)))))
 :qid |stdinbpl.494:15|
 :skolemid |40|
 :pattern ( (state Heap@@42 Mask@@33) (isGreaterOne3 Heap@@42 r_1@@13))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_22334) (Mask@@34 T@PolymorphicMapType_22355) (r_1@@14 T@Ref) ) (!  (=> (and (state Heap@@43 Mask@@34) (< AssumeFunctionsAbove 3)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@43) r_1@@14 f_7) (- 0 38)) (= (isGreaterOne2 Heap@@43 r_1@@14) (|isGreaterOne'| Heap@@43 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@43) r_1@@14 f_7)))))
 :qid |stdinbpl.286:15|
 :skolemid |29|
 :pattern ( (state Heap@@43 Mask@@34) (isGreaterOne2 Heap@@43 r_1@@14))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_22334) (Mask@@35 T@PolymorphicMapType_22355) (r_1@@15 T@Ref) ) (!  (=> (and (state Heap@@44 Mask@@35) (< AssumeFunctionsAbove 4)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@44) r_1@@15 f_7) (- 0 38)) (= (isGreaterOne22 Heap@@44 r_1@@15) (|isGreaterOne'| Heap@@44 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@44) r_1@@15 f_7)))))
 :qid |stdinbpl.385:15|
 :skolemid |34|
 :pattern ( (state Heap@@44 Mask@@35) (isGreaterOne22 Heap@@44 r_1@@15))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_22334) (Mask@@36 T@PolymorphicMapType_22355) (r_1@@16 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@36) (< AssumeFunctionsAbove 6)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@45) r_1@@16 f_7) (- 0 38)) (= (isGreaterOne34 Heap@@45 r_1@@16) (isGreaterOne Heap@@45 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@45) r_1@@16 f_7)))))
 :qid |stdinbpl.796:15|
 :skolemid |56|
 :pattern ( (state Heap@@45 Mask@@36) (isGreaterOne34 Heap@@45 r_1@@16))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_22334) (Mask@@37 T@PolymorphicMapType_22355) (r_1@@17 T@Ref) ) (!  (=> (and (state Heap@@46 Mask@@37) (< AssumeFunctionsAbove 7)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@46) r_1@@17 f_7) (- 0 38)) (= (isGreaterOne32 Heap@@46 r_1@@17) (isGreaterOne Heap@@46 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@46) r_1@@17 f_7)))))
 :qid |stdinbpl.593:15|
 :skolemid |45|
 :pattern ( (state Heap@@46 Mask@@37) (isGreaterOne32 Heap@@46 r_1@@17))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_22334) (Mask@@38 T@PolymorphicMapType_22355) (r_1@@18 T@Ref) ) (!  (=> (and (state Heap@@47 Mask@@38) (< AssumeFunctionsAbove 8)) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@47) r_1@@18 f_7) (- 0 38)) (= (isGreaterOne35 Heap@@47 r_1@@18) (|isGreaterOne'| Heap@@47 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@47) r_1@@18 f_7)))))
 :qid |stdinbpl.895:15|
 :skolemid |61|
 :pattern ( (state Heap@@47 Mask@@38) (isGreaterOne35 Heap@@47 r_1@@18))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_22355) (o_2@@19 T@Ref) (f_4@@19 T@Field_40860_40865) ) (! (= (HasDirectPerm_11523_70844 Mask@@39 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| Mask@@39) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_70844 Mask@@39 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_22355) (o_2@@20 T@Ref) (f_4@@20 T@Field_11523_22408) ) (! (= (HasDirectPerm_11523_22408 Mask@@40 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| Mask@@40) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_22408 Mask@@40 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_22355) (o_2@@21 T@Ref) (f_4@@21 T@Field_11523_53) ) (! (= (HasDirectPerm_11523_53 Mask@@41 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| Mask@@41) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_53 Mask@@41 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_22355) (o_2@@22 T@Ref) (f_4@@22 T@Field_39791_39792) ) (! (= (HasDirectPerm_11523_11524 Mask@@42 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| Mask@@42) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_11524 Mask@@42 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_22355) (o_2@@23 T@Ref) (f_4@@23 T@Field_11523_1189) ) (! (= (HasDirectPerm_11523_1189 Mask@@43 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| Mask@@43) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11523_1189 Mask@@43 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_22355) (o_2@@24 T@Ref) (f_4@@24 T@Field_11229_40865) ) (! (= (HasDirectPerm_11229_69703 Mask@@44 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| Mask@@44) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_69703 Mask@@44 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_22355) (o_2@@25 T@Ref) (f_4@@25 T@Field_22407_22408) ) (! (= (HasDirectPerm_11229_22408 Mask@@45 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| Mask@@45) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_22408 Mask@@45 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_22355) (o_2@@26 T@Ref) (f_4@@26 T@Field_22394_53) ) (! (= (HasDirectPerm_11229_53 Mask@@46 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| Mask@@46) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_53 Mask@@46 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_22355) (o_2@@27 T@Ref) (f_4@@27 T@Field_11229_11524) ) (! (= (HasDirectPerm_11229_11524 Mask@@47 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| Mask@@47) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_11524 Mask@@47 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_22355) (o_2@@28 T@Ref) (f_4@@28 T@Field_25721_1189) ) (! (= (HasDirectPerm_11229_1189 Mask@@48 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| Mask@@48) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11229_1189 Mask@@48 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_22334) (ExhaleHeap@@9 T@PolymorphicMapType_22334) (Mask@@49 T@PolymorphicMapType_22355) (o_1@@0 T@Ref) (f_2@@39 T@Field_40860_40865) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@9 Mask@@49) (=> (HasDirectPerm_11523_70844 Mask@@49 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@48) o_1@@0 f_2@@39) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@9 Mask@@49) (select (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_22334) (ExhaleHeap@@10 T@PolymorphicMapType_22334) (Mask@@50 T@PolymorphicMapType_22355) (o_1@@1 T@Ref) (f_2@@40 T@Field_11523_22408) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@10 Mask@@50) (=> (HasDirectPerm_11523_22408 Mask@@50 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@49) o_1@@1 f_2@@40) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@10 Mask@@50) (select (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_22334) (ExhaleHeap@@11 T@PolymorphicMapType_22334) (Mask@@51 T@PolymorphicMapType_22355) (o_1@@2 T@Ref) (f_2@@41 T@Field_11523_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@11 Mask@@51) (=> (HasDirectPerm_11523_53 Mask@@51 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@50) o_1@@2 f_2@@41) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@11 Mask@@51) (select (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_22334) (ExhaleHeap@@12 T@PolymorphicMapType_22334) (Mask@@52 T@PolymorphicMapType_22355) (o_1@@3 T@Ref) (f_2@@42 T@Field_39791_39792) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@12 Mask@@52) (=> (HasDirectPerm_11523_11524 Mask@@52 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@51) o_1@@3 f_2@@42) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@12 Mask@@52) (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_22334) (ExhaleHeap@@13 T@PolymorphicMapType_22334) (Mask@@53 T@PolymorphicMapType_22355) (o_1@@4 T@Ref) (f_2@@43 T@Field_11523_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@13 Mask@@53) (=> (HasDirectPerm_11523_1189 Mask@@53 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@52) o_1@@4 f_2@@43) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@13 Mask@@53) (select (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_22334) (ExhaleHeap@@14 T@PolymorphicMapType_22334) (Mask@@54 T@PolymorphicMapType_22355) (o_1@@5 T@Ref) (f_2@@44 T@Field_11229_40865) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@14 Mask@@54) (=> (HasDirectPerm_11229_69703 Mask@@54 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@53) o_1@@5 f_2@@44) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@14 Mask@@54) (select (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_22334) (ExhaleHeap@@15 T@PolymorphicMapType_22334) (Mask@@55 T@PolymorphicMapType_22355) (o_1@@6 T@Ref) (f_2@@45 T@Field_22407_22408) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@15 Mask@@55) (=> (HasDirectPerm_11229_22408 Mask@@55 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@54) o_1@@6 f_2@@45) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@15 Mask@@55) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_22334) (ExhaleHeap@@16 T@PolymorphicMapType_22334) (Mask@@56 T@PolymorphicMapType_22355) (o_1@@7 T@Ref) (f_2@@46 T@Field_22394_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@16 Mask@@56) (=> (HasDirectPerm_11229_53 Mask@@56 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@55) o_1@@7 f_2@@46) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@16 Mask@@56) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_22334) (ExhaleHeap@@17 T@PolymorphicMapType_22334) (Mask@@57 T@PolymorphicMapType_22355) (o_1@@8 T@Ref) (f_2@@47 T@Field_11229_11524) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@17 Mask@@57) (=> (HasDirectPerm_11229_11524 Mask@@57 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@56) o_1@@8 f_2@@47) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@17 Mask@@57) (select (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_22334) (ExhaleHeap@@18 T@PolymorphicMapType_22334) (Mask@@58 T@PolymorphicMapType_22355) (o_1@@9 T@Ref) (f_2@@48 T@Field_25721_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@18 Mask@@58) (=> (HasDirectPerm_11229_1189 Mask@@58 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@57) o_1@@9 f_2@@48) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@18 Mask@@58) (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_40860_40865) ) (! (= (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11523_22408) ) (! (= (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_11523_53) ) (! (= (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_39791_39792) ) (! (= (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_11523_1189) ) (! (= (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_11229_40865) ) (! (= (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_22407_22408) ) (! (= (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_22394_53) ) (! (= (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11229_11524) ) (! (= (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_25721_1189) ) (! (= (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22355) (SummandMask1 T@PolymorphicMapType_22355) (SummandMask2 T@PolymorphicMapType_22355) (o_2@@39 T@Ref) (f_4@@39 T@Field_40860_40865) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22355_11523_79414#PolymorphicMapType_22355| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22355) (SummandMask1@@0 T@PolymorphicMapType_22355) (SummandMask2@@0 T@PolymorphicMapType_22355) (o_2@@40 T@Ref) (f_4@@40 T@Field_11523_22408) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22355_11523_22408#PolymorphicMapType_22355| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22355) (SummandMask1@@1 T@PolymorphicMapType_22355) (SummandMask2@@1 T@PolymorphicMapType_22355) (o_2@@41 T@Ref) (f_4@@41 T@Field_11523_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22355_11523_53#PolymorphicMapType_22355| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22355) (SummandMask1@@2 T@PolymorphicMapType_22355) (SummandMask2@@2 T@PolymorphicMapType_22355) (o_2@@42 T@Ref) (f_4@@42 T@Field_39791_39792) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22355_11523_11524#PolymorphicMapType_22355| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22355) (SummandMask1@@3 T@PolymorphicMapType_22355) (SummandMask2@@3 T@PolymorphicMapType_22355) (o_2@@43 T@Ref) (f_4@@43 T@Field_11523_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22355_11523_1189#PolymorphicMapType_22355| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22355) (SummandMask1@@4 T@PolymorphicMapType_22355) (SummandMask2@@4 T@PolymorphicMapType_22355) (o_2@@44 T@Ref) (f_4@@44 T@Field_11229_40865) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22355_11229_79003#PolymorphicMapType_22355| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22355) (SummandMask1@@5 T@PolymorphicMapType_22355) (SummandMask2@@5 T@PolymorphicMapType_22355) (o_2@@45 T@Ref) (f_4@@45 T@Field_22407_22408) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22355_11229_22408#PolymorphicMapType_22355| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22355) (SummandMask1@@6 T@PolymorphicMapType_22355) (SummandMask2@@6 T@PolymorphicMapType_22355) (o_2@@46 T@Ref) (f_4@@46 T@Field_22394_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22355_11229_53#PolymorphicMapType_22355| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22355) (SummandMask1@@7 T@PolymorphicMapType_22355) (SummandMask2@@7 T@PolymorphicMapType_22355) (o_2@@47 T@Ref) (f_4@@47 T@Field_11229_11524) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22355_11229_11524#PolymorphicMapType_22355| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22355) (SummandMask1@@8 T@PolymorphicMapType_22355) (SummandMask2@@8 T@PolymorphicMapType_22355) (o_2@@48 T@Ref) (f_4@@48 T@Field_25721_1189) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22355_11229_1189#PolymorphicMapType_22355| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_22334) (Mask@@59 T@PolymorphicMapType_22355) (r_1@@19 T@Ref) ) (!  (=> (and (state Heap@@58 Mask@@59) (or (< AssumeFunctionsAbove 4) (|isGreaterOne22#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@58) r_1@@19 f_7)) r_1@@19))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@58) r_1@@19 f_7) (- 0 38)) (= (|isGreaterOne22'| Heap@@58 r_1@@19) (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@58) r_1@@19 f_7) 1))))
 :qid |stdinbpl.402:15|
 :skolemid |37|
 :pattern ( (state Heap@@58 Mask@@59) (|isGreaterOne22'| Heap@@58 r_1@@19))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_22334) (Mask@@60 T@PolymorphicMapType_22355) (r_1@@20 T@Ref) ) (!  (=> (and (state Heap@@59 Mask@@60) (or (< AssumeFunctionsAbove 7) (|isGreaterOne32#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@59) r_1@@20 f_7)) r_1@@20))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@59) r_1@@20 f_7) (- 0 38)) (= (|isGreaterOne32'| Heap@@59 r_1@@20) (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@59) r_1@@20 f_7) 1))))
 :qid |stdinbpl.610:15|
 :skolemid |48|
 :pattern ( (state Heap@@59 Mask@@60) (|isGreaterOne32'| Heap@@59 r_1@@20))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_22334) (Mask@@61 T@PolymorphicMapType_22355) (r_1@@21 T@Ref) ) (!  (=> (state Heap@@60 Mask@@61) (= (|isGreaterOne2'| Heap@@60 r_1@@21) (|isGreaterOne2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@60) r_1@@21 f_7)) r_1@@21)))
 :qid |stdinbpl.293:15|
 :skolemid |30|
 :pattern ( (state Heap@@60 Mask@@61) (|isGreaterOne2'| Heap@@60 r_1@@21))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_22334) (Mask@@62 T@PolymorphicMapType_22355) (r_1@@22 T@Ref) ) (!  (=> (state Heap@@61 Mask@@62) (= (|isGreaterOne22'| Heap@@61 r_1@@22) (|isGreaterOne22#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@61) r_1@@22 f_7)) r_1@@22)))
 :qid |stdinbpl.392:15|
 :skolemid |35|
 :pattern ( (state Heap@@61 Mask@@62) (|isGreaterOne22'| Heap@@61 r_1@@22))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_22334) (Mask@@63 T@PolymorphicMapType_22355) (r_1@@23 T@Ref) ) (!  (=> (state Heap@@62 Mask@@63) (= (|isGreaterOne3'| Heap@@62 r_1@@23) (|isGreaterOne3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@62) r_1@@23 f_7)) r_1@@23)))
 :qid |stdinbpl.501:15|
 :skolemid |41|
 :pattern ( (state Heap@@62 Mask@@63) (|isGreaterOne3'| Heap@@62 r_1@@23))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_22334) (Mask@@64 T@PolymorphicMapType_22355) (r_1@@24 T@Ref) ) (!  (=> (state Heap@@63 Mask@@64) (= (|isGreaterOne32'| Heap@@63 r_1@@24) (|isGreaterOne32#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@63) r_1@@24 f_7)) r_1@@24)))
 :qid |stdinbpl.600:15|
 :skolemid |46|
 :pattern ( (state Heap@@63 Mask@@64) (|isGreaterOne32'| Heap@@63 r_1@@24))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_22334) (Mask@@65 T@PolymorphicMapType_22355) (r_1@@25 T@Ref) ) (!  (=> (state Heap@@64 Mask@@65) (= (|isGreaterOne33'| Heap@@64 r_1@@25) (|isGreaterOne33#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@64) r_1@@25 f_7)) r_1@@25)))
 :qid |stdinbpl.709:15|
 :skolemid |52|
 :pattern ( (state Heap@@64 Mask@@65) (|isGreaterOne33'| Heap@@64 r_1@@25))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_22334) (Mask@@66 T@PolymorphicMapType_22355) (r_1@@26 T@Ref) ) (!  (=> (state Heap@@65 Mask@@66) (= (|isGreaterOne34'| Heap@@65 r_1@@26) (|isGreaterOne34#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@65) r_1@@26 f_7)) r_1@@26)))
 :qid |stdinbpl.803:15|
 :skolemid |57|
 :pattern ( (state Heap@@65 Mask@@66) (|isGreaterOne34'| Heap@@65 r_1@@26))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_22334) (Mask@@67 T@PolymorphicMapType_22355) (r_1@@27 T@Ref) ) (!  (=> (state Heap@@66 Mask@@67) (= (|isGreaterOne35'| Heap@@66 r_1@@27) (|isGreaterOne35#frame| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@66) r_1@@27 f_7)) r_1@@27)))
 :qid |stdinbpl.902:15|
 :skolemid |62|
 :pattern ( (state Heap@@66 Mask@@67) (|isGreaterOne35'| Heap@@66 r_1@@27))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_22334) (Mask@@68 T@PolymorphicMapType_22355) (i@@10 Int) ) (!  (=> (state Heap@@67 Mask@@68) (= (|isGreaterOne'| Heap@@67 i@@10) (|isGreaterOne#frame| EmptyFrame i@@10)))
 :qid |stdinbpl.223:15|
 :skolemid |25|
 :pattern ( (state Heap@@67 Mask@@68) (|isGreaterOne'| Heap@@67 i@@10))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_22334) (Mask@@69 T@PolymorphicMapType_22355) (i@@11 Int) ) (!  (=> (and (state Heap@@68 Mask@@69) (or (< AssumeFunctionsAbove 12) (|isGreaterOne#trigger| EmptyFrame i@@11))) (=> (> i@@11 (- 0 60)) (=> (> i@@11 60) (|isGreaterOne'| Heap@@68 i@@11))))
 :qid |stdinbpl.229:15|
 :skolemid |26|
 :pattern ( (state Heap@@68 Mask@@69) (|isGreaterOne'| Heap@@68 i@@11))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_22334) (i@@12 Int) ) (!  (and (= (isGreaterOne Heap@@69 i@@12) (|isGreaterOne'| Heap@@69 i@@12)) (dummyFunction_1424 (|isGreaterOne#triggerStateless| i@@12)))
 :qid |stdinbpl.206:15|
 :skolemid |22|
 :pattern ( (isGreaterOne Heap@@69 i@@12))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_22334) (r_1@@28 T@Ref) ) (!  (and (= (isGreaterOne2 Heap@@70 r_1@@28) (|isGreaterOne2'| Heap@@70 r_1@@28)) (dummyFunction_1424 (|isGreaterOne2#triggerStateless| r_1@@28)))
 :qid |stdinbpl.276:15|
 :skolemid |27|
 :pattern ( (isGreaterOne2 Heap@@70 r_1@@28))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_22334) (r_1@@29 T@Ref) ) (!  (and (= (isGreaterOne22 Heap@@71 r_1@@29) (|isGreaterOne22'| Heap@@71 r_1@@29)) (dummyFunction_1424 (|isGreaterOne22#triggerStateless| r_1@@29)))
 :qid |stdinbpl.375:15|
 :skolemid |32|
 :pattern ( (isGreaterOne22 Heap@@71 r_1@@29))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_22334) (r_1@@30 T@Ref) ) (!  (and (= (isGreaterOne3 Heap@@72 r_1@@30) (|isGreaterOne3'| Heap@@72 r_1@@30)) (dummyFunction_1424 (|isGreaterOne3#triggerStateless| r_1@@30)))
 :qid |stdinbpl.484:15|
 :skolemid |38|
 :pattern ( (isGreaterOne3 Heap@@72 r_1@@30))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_22334) (r_1@@31 T@Ref) ) (!  (and (= (isGreaterOne32 Heap@@73 r_1@@31) (|isGreaterOne32'| Heap@@73 r_1@@31)) (dummyFunction_1424 (|isGreaterOne32#triggerStateless| r_1@@31)))
 :qid |stdinbpl.583:15|
 :skolemid |43|
 :pattern ( (isGreaterOne32 Heap@@73 r_1@@31))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_22334) (r_1@@32 T@Ref) ) (!  (and (= (isGreaterOne33 Heap@@74 r_1@@32) (|isGreaterOne33'| Heap@@74 r_1@@32)) (dummyFunction_1424 (|isGreaterOne33#triggerStateless| r_1@@32)))
 :qid |stdinbpl.692:15|
 :skolemid |49|
 :pattern ( (isGreaterOne33 Heap@@74 r_1@@32))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_22334) (r_1@@33 T@Ref) ) (!  (and (= (isGreaterOne34 Heap@@75 r_1@@33) (|isGreaterOne34'| Heap@@75 r_1@@33)) (dummyFunction_1424 (|isGreaterOne34#triggerStateless| r_1@@33)))
 :qid |stdinbpl.786:15|
 :skolemid |54|
 :pattern ( (isGreaterOne34 Heap@@75 r_1@@33))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_22334) (r_1@@34 T@Ref) ) (!  (and (= (isGreaterOne35 Heap@@76 r_1@@34) (|isGreaterOne35'| Heap@@76 r_1@@34)) (dummyFunction_1424 (|isGreaterOne35#triggerStateless| r_1@@34)))
 :qid |stdinbpl.885:15|
 :skolemid |59|
 :pattern ( (isGreaterOne35 Heap@@76 r_1@@34))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_22334) (Mask@@70 T@PolymorphicMapType_22355) (x@@9 T@Ref) ) (!  (=> (state Heap@@77 Mask@@70) (= (|funP'| Heap@@77 x@@9) (|funP#frame| (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@77) null (P x@@9)) x@@9)))
 :qid |stdinbpl.1193:15|
 :skolemid |79|
 :pattern ( (state Heap@@77 Mask@@70) (|funP'| Heap@@77 x@@9))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_22334) (Mask@@71 T@PolymorphicMapType_22355) (x@@10 T@Ref) ) (!  (=> (state Heap@@78 Mask@@71) (= (|funP2'| Heap@@78 x@@10) (|funP2#frame| (select (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@78) null (P x@@10)) x@@10)))
 :qid |stdinbpl.1279:15|
 :skolemid |83|
 :pattern ( (state Heap@@78 Mask@@71) (|funP2'| Heap@@78 x@@10))
)))
(assert (forall ((x@@11 T@Ref) ) (! (= (getPredWandId_11523_11524 (P x@@11)) 0)
 :qid |stdinbpl.1356:15|
 :skolemid |86|
 :pattern ( (P x@@11))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_22334) (Mask@@72 T@PolymorphicMapType_22355) (i@@13 Int) ) (!  (=> (state Heap@@79 Mask@@72) (= (|fac1'| Heap@@79 i@@13) (|fac1#frame| EmptyFrame i@@13)))
 :qid |stdinbpl.1001:15|
 :skolemid |67|
 :pattern ( (state Heap@@79 Mask@@72) (|fac1'| Heap@@79 i@@13))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_22334) (Mask@@73 T@PolymorphicMapType_22355) (i@@14 Int) ) (!  (=> (state Heap@@80 Mask@@73) (= (|fac2'| Heap@@80 i@@14) (|fac2#frame| EmptyFrame i@@14)))
 :qid |stdinbpl.1065:15|
 :skolemid |71|
 :pattern ( (state Heap@@80 Mask@@73) (|fac2'| Heap@@80 i@@14))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_22334) (Mask@@74 T@PolymorphicMapType_22355) (i@@15 Int) ) (!  (=> (state Heap@@81 Mask@@74) (= (|fac3'| Heap@@81 i@@15) (|fac3#frame| EmptyFrame i@@15)))
 :qid |stdinbpl.1129:15|
 :skolemid |75|
 :pattern ( (state Heap@@81 Mask@@74) (|fac3'| Heap@@81 i@@15))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_22334) (o T@Ref) (f_3 T@Field_40860_40865) (v T@PolymorphicMapType_22883) ) (! (succHeap Heap@@82 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@82) (store (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@82) o f_3 v) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@82) (store (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@82) o f_3 v) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@82) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_22334) (o@@0 T@Ref) (f_3@@0 T@Field_39791_39792) (v@@0 T@FrameType) ) (! (succHeap Heap@@83 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@83) (store (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@83) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@83) (store (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@83) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@83) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_22334) (o@@1 T@Ref) (f_3@@1 T@Field_11523_1189) (v@@1 Int) ) (! (succHeap Heap@@84 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@84) (store (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@84) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@84) (store (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@84) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@84) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_22334) (o@@2 T@Ref) (f_3@@2 T@Field_11523_22408) (v@@2 T@Ref) ) (! (succHeap Heap@@85 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@85) (store (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@85) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@85) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@85) (store (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@85) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_22334) (o@@3 T@Ref) (f_3@@3 T@Field_11523_53) (v@@3 Bool) ) (! (succHeap Heap@@86 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@86) (store (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@86) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@86) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@86) (store (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@86) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_22334) (o@@4 T@Ref) (f_3@@4 T@Field_11229_40865) (v@@4 T@PolymorphicMapType_22883) ) (! (succHeap Heap@@87 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@87) (store (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@87) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@87) (store (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@87) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@87) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_22334) (o@@5 T@Ref) (f_3@@5 T@Field_11229_11524) (v@@5 T@FrameType) ) (! (succHeap Heap@@88 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@88) (store (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@88) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@88) (store (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@88) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@88) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_22334) (o@@6 T@Ref) (f_3@@6 T@Field_25721_1189) (v@@6 Int) ) (! (succHeap Heap@@89 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@89) (store (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@89) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@89) (store (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@89) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@89) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_22334) (o@@7 T@Ref) (f_3@@7 T@Field_22407_22408) (v@@7 T@Ref) ) (! (succHeap Heap@@90 (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@90) (store (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@90) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@90) (store (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@90) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@90) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_22334) (o@@8 T@Ref) (f_3@@8 T@Field_22394_53) (v@@8 Bool) ) (! (succHeap Heap@@91 (PolymorphicMapType_22334 (store (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@91) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22334 (store (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@91) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_11524#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11527_40952#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_11524#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11229_69745#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_1189#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_53#PolymorphicMapType_22334| Heap@@91) (|PolymorphicMapType_22334_11523_22408#PolymorphicMapType_22334| Heap@@91)))
)))
(assert (forall ((x@@12 T@Ref) ) (! (= (PredicateMaskField_11523 (P x@@12)) (|P#sm| x@@12))
 :qid |stdinbpl.1348:15|
 :skolemid |84|
 :pattern ( (PredicateMaskField_11523 (P x@@12)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_22407_22408) (Heap@@92 T@PolymorphicMapType_22334) ) (!  (=> (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@92) o@@9 $allocated) (select (|PolymorphicMapType_22334_11101_53#PolymorphicMapType_22334| Heap@@92) (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@92) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22334_11104_11105#PolymorphicMapType_22334| Heap@@92) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_39791_39792) (v_1@@1 T@FrameType) (q T@Field_39791_39792) (w@@1 T@FrameType) (r T@Field_39791_39792) (u T@FrameType) ) (!  (=> (and (InsidePredicate_39791_39791 p@@2 v_1@@1 q w@@1) (InsidePredicate_39791_39791 q w@@1 r u)) (InsidePredicate_39791_39791 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39791_39791 p@@2 v_1@@1 q w@@1) (InsidePredicate_39791_39791 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_39791_39792) (v_1@@2 T@FrameType) (q@@0 T@Field_39791_39792) (w@@2 T@FrameType) (r@@0 T@Field_11229_11524) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_39791_39791 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_39791_22394 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_39791_22394 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39791_39791 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_39791_22394 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_39791_39792) (v_1@@3 T@FrameType) (q@@1 T@Field_11229_11524) (w@@3 T@FrameType) (r@@1 T@Field_39791_39792) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_39791_22394 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22394_39791 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_39791_39791 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39791_22394 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22394_39791 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_39791_39792) (v_1@@4 T@FrameType) (q@@2 T@Field_11229_11524) (w@@4 T@FrameType) (r@@2 T@Field_11229_11524) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_39791_22394 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22394_22394 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_39791_22394 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_39791_22394 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22394_22394 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_11229_11524) (v_1@@5 T@FrameType) (q@@3 T@Field_39791_39792) (w@@5 T@FrameType) (r@@3 T@Field_39791_39792) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22394_39791 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_39791_39791 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_22394_39791 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22394_39791 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_39791_39791 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_11229_11524) (v_1@@6 T@FrameType) (q@@4 T@Field_39791_39792) (w@@6 T@FrameType) (r@@4 T@Field_11229_11524) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22394_39791 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_39791_22394 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_22394_22394 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22394_39791 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_39791_22394 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_11229_11524) (v_1@@7 T@FrameType) (q@@5 T@Field_11229_11524) (w@@7 T@FrameType) (r@@5 T@Field_39791_39792) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22394_22394 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22394_39791 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_22394_39791 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22394_22394 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22394_39791 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_11229_11524) (v_1@@8 T@FrameType) (q@@6 T@Field_11229_11524) (w@@8 T@FrameType) (r@@6 T@Field_11229_11524) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22394_22394 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22394_22394 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_22394_22394 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22394_22394 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22394_22394 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_22334) (Mask@@75 T@PolymorphicMapType_22355) (r_1@@35 T@Ref) ) (!  (=> (and (state Heap@@93 Mask@@75) (or (< AssumeFunctionsAbove 1) (|isGreaterOne33#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@93) r_1@@35 f_7)) r_1@@35))) (=> (> (select (|PolymorphicMapType_22334_11229_1189#PolymorphicMapType_22334| Heap@@93) r_1@@35 f_7) 60) (|isGreaterOne33'| Heap@@93 r_1@@35)))
 :qid |stdinbpl.715:15|
 :skolemid |53|
 :pattern ( (state Heap@@93 Mask@@75) (|isGreaterOne33'| Heap@@93 r_1@@35))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

