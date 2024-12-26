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
(declare-sort T@Field_10584_53 0)
(declare-sort T@Field_10597_10598 0)
(declare-sort T@Field_13911_1189 0)
(declare-sort T@Field_16906_16907 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18118_18123 0)
(declare-sort T@Field_22062_22063 0)
(declare-sort T@Field_24200_24205 0)
(declare-sort T@Field_5608_16907 0)
(declare-sort T@Field_5608_18123 0)
(declare-sort T@Field_16906_1189 0)
(declare-sort T@Field_16906_5613 0)
(declare-sort T@Field_16906_53 0)
(declare-sort T@Field_22062_1189 0)
(declare-sort T@Field_22062_5613 0)
(declare-sort T@Field_22062_53 0)
(declare-datatypes ((T@PolymorphicMapType_10545 0)) (((PolymorphicMapType_10545 (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| (Array T@Ref T@Field_13911_1189 Real)) (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| (Array T@Ref T@Field_16906_16907 Real)) (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| (Array T@Ref T@Field_22062_22063 Real)) (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| (Array T@Ref T@Field_10597_10598 Real)) (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| (Array T@Ref T@Field_5608_16907 Real)) (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| (Array T@Ref T@Field_10584_53 Real)) (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| (Array T@Ref T@Field_5608_18123 Real)) (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| (Array T@Ref T@Field_16906_1189 Real)) (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| (Array T@Ref T@Field_16906_5613 Real)) (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| (Array T@Ref T@Field_16906_53 Real)) (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| (Array T@Ref T@Field_18118_18123 Real)) (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| (Array T@Ref T@Field_22062_1189 Real)) (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| (Array T@Ref T@Field_22062_5613 Real)) (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| (Array T@Ref T@Field_22062_53 Real)) (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| (Array T@Ref T@Field_24200_24205 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11073 0)) (((PolymorphicMapType_11073 (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (Array T@Ref T@Field_13911_1189 Bool)) (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (Array T@Ref T@Field_10597_10598 Bool)) (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (Array T@Ref T@Field_10584_53 Bool)) (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (Array T@Ref T@Field_5608_16907 Bool)) (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (Array T@Ref T@Field_5608_18123 Bool)) (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (Array T@Ref T@Field_16906_1189 Bool)) (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (Array T@Ref T@Field_16906_5613 Bool)) (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (Array T@Ref T@Field_16906_53 Bool)) (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (Array T@Ref T@Field_16906_16907 Bool)) (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (Array T@Ref T@Field_18118_18123 Bool)) (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (Array T@Ref T@Field_22062_1189 Bool)) (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (Array T@Ref T@Field_22062_5613 Bool)) (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (Array T@Ref T@Field_22062_53 Bool)) (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (Array T@Ref T@Field_22062_22063 Bool)) (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (Array T@Ref T@Field_24200_24205 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10524 0)) (((PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| (Array T@Ref T@Field_10584_53 Bool)) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| (Array T@Ref T@Field_10597_10598 T@Ref)) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| (Array T@Ref T@Field_13911_1189 Int)) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| (Array T@Ref T@Field_16906_16907 T@FrameType)) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| (Array T@Ref T@Field_18118_18123 T@PolymorphicMapType_11073)) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| (Array T@Ref T@Field_22062_22063 T@FrameType)) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| (Array T@Ref T@Field_24200_24205 T@PolymorphicMapType_11073)) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| (Array T@Ref T@Field_5608_16907 T@FrameType)) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| (Array T@Ref T@Field_5608_18123 T@PolymorphicMapType_11073)) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| (Array T@Ref T@Field_16906_1189 Int)) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| (Array T@Ref T@Field_16906_5613 T@Ref)) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| (Array T@Ref T@Field_16906_53 Bool)) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| (Array T@Ref T@Field_22062_1189 Int)) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| (Array T@Ref T@Field_22062_5613 T@Ref)) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| (Array T@Ref T@Field_22062_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_10584_53)
(declare-fun f_7 () T@Field_13911_1189)
(declare-fun g () T@Field_13911_1189)
(declare-fun h () T@Field_10597_10598)
(declare-fun succHeap (T@PolymorphicMapType_10524 T@PolymorphicMapType_10524) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10524 T@PolymorphicMapType_10524) Bool)
(declare-fun state (T@PolymorphicMapType_10524 T@PolymorphicMapType_10545) Bool)
(declare-fun fun3 (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |fun3#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_5873| (T@PolymorphicMapType_10524 T@Field_16906_16907) Bool)
(declare-fun P (T@Ref) T@Field_16906_16907)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_10545) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11073)
(declare-fun |fun1'| (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun dummyFunction_1468 (Int) Bool)
(declare-fun |fun1#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |fun2'| (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun |fun2#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |fun4'| (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun |fun4#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |fun6'| (T@PolymorphicMapType_10524 Bool T@Ref) Int)
(declare-fun |fun6#triggerStateless| (Bool T@Ref) Int)
(declare-fun |er3'| (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun |er3#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun IsPredicateField_5873_5874 (T@Field_16906_16907) Bool)
(declare-fun Q (T@Ref) T@Field_22062_22063)
(declare-fun IsPredicateField_5898_5899 (T@Field_22062_22063) Bool)
(declare-fun |fun3'| (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |fun5'| (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |fun5#triggerStateless| (T@Ref) Int)
(declare-fun |err1'| (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |err1#triggerStateless| (T@Ref) Int)
(declare-fun |err2'| (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |err2#triggerStateless| (T@Ref) Int)
(declare-fun |P#everUsed_5873| (T@Field_16906_16907) Bool)
(declare-fun |Q#trigger_5898| (T@PolymorphicMapType_10524 T@Field_22062_22063) Bool)
(declare-fun |Q#everUsed_5898| (T@Field_22062_22063) Bool)
(declare-fun fun5 (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun err1 (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun err2 (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10524 T@PolymorphicMapType_10524 T@PolymorphicMapType_10545) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5898 (T@Field_22062_22063) T@Field_24200_24205)
(declare-fun HasDirectPerm_22062_16907 (T@PolymorphicMapType_10545 T@Ref T@Field_22062_22063) Bool)
(declare-fun PredicateMaskField_5873 (T@Field_16906_16907) T@Field_18118_18123)
(declare-fun HasDirectPerm_16906_16907 (T@PolymorphicMapType_10545 T@Ref T@Field_16906_16907) Bool)
(declare-fun IsPredicateField_5608_34206 (T@Field_5608_16907) Bool)
(declare-fun PredicateMaskField_5608 (T@Field_5608_16907) T@Field_5608_18123)
(declare-fun HasDirectPerm_5608_16907 (T@PolymorphicMapType_10545 T@Ref T@Field_5608_16907) Bool)
(declare-fun IsWandField_22062_39887 (T@Field_22062_22063) Bool)
(declare-fun WandMaskField_22062 (T@Field_22062_22063) T@Field_24200_24205)
(declare-fun IsWandField_16906_39530 (T@Field_16906_16907) Bool)
(declare-fun WandMaskField_16906 (T@Field_16906_16907) T@Field_18118_18123)
(declare-fun IsWandField_5608_39173 (T@Field_5608_16907) Bool)
(declare-fun WandMaskField_5608 (T@Field_5608_16907) T@Field_5608_18123)
(declare-fun |err1#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |P#sm| (T@Ref) T@Field_18118_18123)
(declare-fun |Q#sm| (T@Ref) T@Field_24200_24205)
(declare-fun dummyHeap () T@PolymorphicMapType_10524)
(declare-fun ZeroMask () T@PolymorphicMapType_10545)
(declare-fun InsidePredicate_22062_22062 (T@Field_22062_22063 T@FrameType T@Field_22062_22063 T@FrameType) Bool)
(declare-fun InsidePredicate_16906_16906 (T@Field_16906_16907 T@FrameType T@Field_16906_16907 T@FrameType) Bool)
(declare-fun InsidePredicate_10584_10584 (T@Field_5608_16907 T@FrameType T@Field_5608_16907 T@FrameType) Bool)
(declare-fun |fun1#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun |fun2#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun |fun4#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun |er3#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun IsPredicateField_5608_1189 (T@Field_13911_1189) Bool)
(declare-fun IsWandField_5608_1189 (T@Field_13911_1189) Bool)
(declare-fun IsPredicateField_5612_5613 (T@Field_10597_10598) Bool)
(declare-fun IsWandField_5612_5613 (T@Field_10597_10598) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5898_50176 (T@Field_24200_24205) Bool)
(declare-fun IsWandField_5898_50192 (T@Field_24200_24205) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5898_53 (T@Field_22062_53) Bool)
(declare-fun IsWandField_5898_53 (T@Field_22062_53) Bool)
(declare-fun IsPredicateField_5898_5613 (T@Field_22062_5613) Bool)
(declare-fun IsWandField_5898_5613 (T@Field_22062_5613) Bool)
(declare-fun IsPredicateField_5898_1189 (T@Field_22062_1189) Bool)
(declare-fun IsWandField_5898_1189 (T@Field_22062_1189) Bool)
(declare-fun IsPredicateField_5873_49345 (T@Field_18118_18123) Bool)
(declare-fun IsWandField_5873_49361 (T@Field_18118_18123) Bool)
(declare-fun IsPredicateField_5873_53 (T@Field_16906_53) Bool)
(declare-fun IsWandField_5873_53 (T@Field_16906_53) Bool)
(declare-fun IsPredicateField_5873_5613 (T@Field_16906_5613) Bool)
(declare-fun IsWandField_5873_5613 (T@Field_16906_5613) Bool)
(declare-fun IsPredicateField_5873_1189 (T@Field_16906_1189) Bool)
(declare-fun IsWandField_5873_1189 (T@Field_16906_1189) Bool)
(declare-fun IsPredicateField_5608_48514 (T@Field_5608_18123) Bool)
(declare-fun IsWandField_5608_48530 (T@Field_5608_18123) Bool)
(declare-fun IsPredicateField_5608_53 (T@Field_10584_53) Bool)
(declare-fun IsWandField_5608_53 (T@Field_10584_53) Bool)
(declare-fun HasDirectPerm_22062_33961 (T@PolymorphicMapType_10545 T@Ref T@Field_24200_24205) Bool)
(declare-fun HasDirectPerm_22062_53 (T@PolymorphicMapType_10545 T@Ref T@Field_22062_53) Bool)
(declare-fun HasDirectPerm_22062_5613 (T@PolymorphicMapType_10545 T@Ref T@Field_22062_5613) Bool)
(declare-fun HasDirectPerm_22062_1189 (T@PolymorphicMapType_10545 T@Ref T@Field_22062_1189) Bool)
(declare-fun HasDirectPerm_16906_32843 (T@PolymorphicMapType_10545 T@Ref T@Field_18118_18123) Bool)
(declare-fun HasDirectPerm_16906_53 (T@PolymorphicMapType_10545 T@Ref T@Field_16906_53) Bool)
(declare-fun HasDirectPerm_16906_5613 (T@PolymorphicMapType_10545 T@Ref T@Field_16906_5613) Bool)
(declare-fun HasDirectPerm_16906_1189 (T@PolymorphicMapType_10545 T@Ref T@Field_16906_1189) Bool)
(declare-fun HasDirectPerm_5608_31682 (T@PolymorphicMapType_10545 T@Ref T@Field_5608_18123) Bool)
(declare-fun HasDirectPerm_5608_53 (T@PolymorphicMapType_10545 T@Ref T@Field_10584_53) Bool)
(declare-fun HasDirectPerm_5612_5613 (T@PolymorphicMapType_10545 T@Ref T@Field_10597_10598) Bool)
(declare-fun HasDirectPerm_5608_1189 (T@PolymorphicMapType_10545 T@Ref T@Field_13911_1189) Bool)
(declare-fun |fun6#frame| (T@FrameType Bool T@Ref) Int)
(declare-fun FrameFragment_8612 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun fun1 (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun fun2 (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun fun4 (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun fun6 (T@PolymorphicMapType_10524 Bool T@Ref) Int)
(declare-fun er3 (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_10545 T@PolymorphicMapType_10545 T@PolymorphicMapType_10545) Bool)
(declare-fun |fun3#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun5#frame| (T@FrameType T@Ref) Int)
(declare-fun |err2#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_5873_5874 (T@Field_16906_16907) Int)
(declare-fun getPredWandId_5898_5899 (T@Field_22062_22063) Int)
(declare-fun InsidePredicate_22062_16906 (T@Field_22062_22063 T@FrameType T@Field_16906_16907 T@FrameType) Bool)
(declare-fun InsidePredicate_22062_10584 (T@Field_22062_22063 T@FrameType T@Field_5608_16907 T@FrameType) Bool)
(declare-fun InsidePredicate_16906_22062 (T@Field_16906_16907 T@FrameType T@Field_22062_22063 T@FrameType) Bool)
(declare-fun InsidePredicate_16906_10584 (T@Field_16906_16907 T@FrameType T@Field_5608_16907 T@FrameType) Bool)
(declare-fun InsidePredicate_10584_22062 (T@Field_5608_16907 T@FrameType T@Field_22062_22063 T@FrameType) Bool)
(declare-fun InsidePredicate_10584_16906 (T@Field_5608_16907 T@FrameType T@Field_16906_16907 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_10524) (Heap1 T@PolymorphicMapType_10524) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10524) (Mask T@PolymorphicMapType_10545) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (fun3 Heap x) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap) x g)))
 :qid |stdinbpl.365:15|
 :skolemid |32|
 :pattern ( (state Heap Mask) (fun3 Heap x))
 :pattern ( (state Heap Mask) (|fun3#triggerStateless| x) (|P#trigger_5873| Heap (P x)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10524) (Mask@@0 T@PolymorphicMapType_10545) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10524) (Heap1@@0 T@PolymorphicMapType_10524) (Heap2 T@PolymorphicMapType_10524) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24200_24205) ) (!  (not (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22062_22063) ) (!  (not (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22062_53) ) (!  (not (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_22062_5613) ) (!  (not (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_22062_1189) ) (!  (not (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18118_18123) ) (!  (not (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16906_16907) ) (!  (not (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16906_53) ) (!  (not (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16906_5613) ) (!  (not (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16906_1189) ) (!  (not (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5608_18123) ) (!  (not (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5608_16907) ) (!  (not (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10584_53) ) (!  (not (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10597_10598) ) (!  (not (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13911_1189) ) (!  (not (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10524) (x@@0 T@Ref) (y T@Ref) ) (! (dummyFunction_1468 (|fun1#triggerStateless| x@@0 y))
 :qid |stdinbpl.212:15|
 :skolemid |23|
 :pattern ( (|fun1'| Heap@@1 x@@0 y))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10524) (x@@1 T@Ref) (y@@0 T@Ref) ) (! (dummyFunction_1468 (|fun2#triggerStateless| x@@1 y@@0))
 :qid |stdinbpl.286:15|
 :skolemid |27|
 :pattern ( (|fun2'| Heap@@2 x@@1 y@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10524) (x@@2 T@Ref) (y@@1 T@Ref) ) (! (dummyFunction_1468 (|fun4#triggerStateless| x@@2 y@@1))
 :qid |stdinbpl.445:15|
 :skolemid |35|
 :pattern ( (|fun4'| Heap@@3 x@@2 y@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10524) (b_24 Bool) (x@@3 T@Ref) ) (! (dummyFunction_1468 (|fun6#triggerStateless| b_24 x@@3))
 :qid |stdinbpl.544:15|
 :skolemid |39|
 :pattern ( (|fun6'| Heap@@4 b_24 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10524) (x@@4 T@Ref) (y@@2 T@Ref) ) (! (dummyFunction_1468 (|er3#triggerStateless| x@@4 y@@2))
 :qid |stdinbpl.866:15|
 :skolemid |55|
 :pattern ( (|er3'| Heap@@5 x@@4 y@@2))
)))
(assert (forall ((x@@5 T@Ref) ) (! (IsPredicateField_5873_5874 (P x@@5))
 :qid |stdinbpl.938:15|
 :skolemid |59|
 :pattern ( (P x@@5))
)))
(assert (forall ((x@@6 T@Ref) ) (! (IsPredicateField_5898_5899 (Q x@@6))
 :qid |stdinbpl.993:15|
 :skolemid |65|
 :pattern ( (Q x@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10524) (x@@7 T@Ref) ) (! (dummyFunction_1468 (|fun3#triggerStateless| x@@7))
 :qid |stdinbpl.359:15|
 :skolemid |31|
 :pattern ( (|fun3'| Heap@@6 x@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10524) (x@@8 T@Ref) ) (! (dummyFunction_1468 (|fun5#triggerStateless| x@@8))
 :qid |stdinbpl.613:15|
 :skolemid |43|
 :pattern ( (|fun5'| Heap@@7 x@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10524) (x@@9 T@Ref) ) (! (dummyFunction_1468 (|err1#triggerStateless| x@@9))
 :qid |stdinbpl.722:15|
 :skolemid |47|
 :pattern ( (|err1'| Heap@@8 x@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10524) (x@@10 T@Ref) ) (! (dummyFunction_1468 (|err2#triggerStateless| x@@10))
 :qid |stdinbpl.785:15|
 :skolemid |51|
 :pattern ( (|err2'| Heap@@9 x@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10524) (x@@11 T@Ref) ) (! (|P#everUsed_5873| (P x@@11))
 :qid |stdinbpl.957:15|
 :skolemid |63|
 :pattern ( (|P#trigger_5873| Heap@@10 (P x@@11)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10524) (x@@12 T@Ref) ) (! (|Q#everUsed_5898| (Q x@@12))
 :qid |stdinbpl.1012:15|
 :skolemid |69|
 :pattern ( (|Q#trigger_5898| Heap@@11 (Q x@@12)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10524) (x@@13 T@Ref) ) (!  (and (= (fun3 Heap@@12 x@@13) (|fun3'| Heap@@12 x@@13)) (dummyFunction_1468 (|fun3#triggerStateless| x@@13)))
 :qid |stdinbpl.355:15|
 :skolemid |30|
 :pattern ( (fun3 Heap@@12 x@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10524) (x@@14 T@Ref) ) (!  (and (= (fun5 Heap@@13 x@@14) (|fun5'| Heap@@13 x@@14)) (dummyFunction_1468 (|fun5#triggerStateless| x@@14)))
 :qid |stdinbpl.609:15|
 :skolemid |42|
 :pattern ( (fun5 Heap@@13 x@@14))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10524) (x@@15 T@Ref) ) (!  (and (= (err1 Heap@@14 x@@15) (|err1'| Heap@@14 x@@15)) (dummyFunction_1468 (|err1#triggerStateless| x@@15)))
 :qid |stdinbpl.718:15|
 :skolemid |46|
 :pattern ( (err1 Heap@@14 x@@15))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10524) (x@@16 T@Ref) ) (!  (and (= (err2 Heap@@15 x@@16) (|err2'| Heap@@15 x@@16)) (dummyFunction_1468 (|err2#triggerStateless| x@@16)))
 :qid |stdinbpl.781:15|
 :skolemid |50|
 :pattern ( (err2 Heap@@15 x@@16))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10524) (ExhaleHeap T@PolymorphicMapType_10524) (Mask@@1 T@PolymorphicMapType_10545) (pm_f T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_22062_16907 Mask@@1 null pm_f) (IsPredicateField_5898_5899 pm_f)) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@16) null (PredicateMaskField_5898 pm_f)) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap) null (PredicateMaskField_5898 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@1) (IsPredicateField_5898_5899 pm_f) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap) null (PredicateMaskField_5898 pm_f)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10524) (ExhaleHeap@@0 T@PolymorphicMapType_10524) (Mask@@2 T@PolymorphicMapType_10545) (pm_f@@0 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_16906_16907 Mask@@2 null pm_f@@0) (IsPredicateField_5873_5874 pm_f@@0)) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@17) null (PredicateMaskField_5873 pm_f@@0)) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@0) null (PredicateMaskField_5873 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5873_5874 pm_f@@0) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@0) null (PredicateMaskField_5873 pm_f@@0)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10524) (ExhaleHeap@@1 T@PolymorphicMapType_10524) (Mask@@3 T@PolymorphicMapType_10545) (pm_f@@1 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_5608_16907 Mask@@3 null pm_f@@1) (IsPredicateField_5608_34206 pm_f@@1)) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@18) null (PredicateMaskField_5608 pm_f@@1)) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@1) null (PredicateMaskField_5608 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@1 Mask@@3) (IsPredicateField_5608_34206 pm_f@@1) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@1) null (PredicateMaskField_5608 pm_f@@1)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10524) (ExhaleHeap@@2 T@PolymorphicMapType_10524) (Mask@@4 T@PolymorphicMapType_10545) (pm_f@@2 T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_22062_16907 Mask@@4 null pm_f@@2) (IsWandField_22062_39887 pm_f@@2)) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@19) null (WandMaskField_22062 pm_f@@2)) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@2) null (WandMaskField_22062 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@2 Mask@@4) (IsWandField_22062_39887 pm_f@@2) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@2) null (WandMaskField_22062 pm_f@@2)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10524) (ExhaleHeap@@3 T@PolymorphicMapType_10524) (Mask@@5 T@PolymorphicMapType_10545) (pm_f@@3 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_16906_16907 Mask@@5 null pm_f@@3) (IsWandField_16906_39530 pm_f@@3)) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@20) null (WandMaskField_16906 pm_f@@3)) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@3) null (WandMaskField_16906 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@3 Mask@@5) (IsWandField_16906_39530 pm_f@@3) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@3) null (WandMaskField_16906 pm_f@@3)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10524) (ExhaleHeap@@4 T@PolymorphicMapType_10524) (Mask@@6 T@PolymorphicMapType_10545) (pm_f@@4 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_5608_16907 Mask@@6 null pm_f@@4) (IsWandField_5608_39173 pm_f@@4)) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@21) null (WandMaskField_5608 pm_f@@4)) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@4) null (WandMaskField_5608 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@4 Mask@@6) (IsWandField_5608_39173 pm_f@@4) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@4) null (WandMaskField_5608 pm_f@@4)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10524) (Mask@@7 T@PolymorphicMapType_10545) (x@@17 T@Ref) ) (!  (=> (state Heap@@22 Mask@@7) (= (|err1'| Heap@@22 x@@17) (|err1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@22) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@22) x@@17 h) f_7)) x@@17)))
 :qid |stdinbpl.735:15|
 :skolemid |49|
 :pattern ( (state Heap@@22 Mask@@7) (|err1'| Heap@@22 x@@17))
)))
(assert (forall ((x@@18 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@18) (P x2)) (= x@@18 x2))
 :qid |stdinbpl.948:15|
 :skolemid |61|
 :pattern ( (P x@@18) (P x2))
)))
(assert (forall ((x@@19 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@19) (|P#sm| x2@@0)) (= x@@19 x2@@0))
 :qid |stdinbpl.952:15|
 :skolemid |62|
 :pattern ( (|P#sm| x@@19) (|P#sm| x2@@0))
)))
(assert (forall ((x@@20 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Q x@@20) (Q x2@@1)) (= x@@20 x2@@1))
 :qid |stdinbpl.1003:15|
 :skolemid |67|
 :pattern ( (Q x@@20) (Q x2@@1))
)))
(assert (forall ((x@@21 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Q#sm| x@@21) (|Q#sm| x2@@2)) (= x@@21 x2@@2))
 :qid |stdinbpl.1007:15|
 :skolemid |68|
 :pattern ( (|Q#sm| x@@21) (|Q#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10524) (ExhaleHeap@@5 T@PolymorphicMapType_10524) (Mask@@8 T@PolymorphicMapType_10545) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@8) (=> (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@23) o_1 $allocated) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@8) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_22062_22063) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22062_22062 p v_1 p w))
 :qid |stdinbpl.182:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22062_22062 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16906_16907) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16906_16906 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.182:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16906_16906 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_5608_16907) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_10584_10584 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.182:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10584_10584 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10524) (Mask@@9 T@PolymorphicMapType_10545) (x@@22 T@Ref) (y@@3 T@Ref) ) (!  (=> (state Heap@@24 Mask@@9) (= (|fun1'| Heap@@24 x@@22 y@@3) (|fun1#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@24) x@@22 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@24) y@@3 g))) x@@22 y@@3)))
 :qid |stdinbpl.225:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@9) (|fun1'| Heap@@24 x@@22 y@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10524) (Mask@@10 T@PolymorphicMapType_10545) (x@@23 T@Ref) (y@@4 T@Ref) ) (!  (=> (state Heap@@25 Mask@@10) (= (|fun2'| Heap@@25 x@@23 y@@4) (|fun2#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@25) x@@23 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@25) y@@4 g))) x@@23 y@@4)))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (state Heap@@25 Mask@@10) (|fun2'| Heap@@25 x@@23 y@@4))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10524) (Mask@@11 T@PolymorphicMapType_10545) (x@@24 T@Ref) (y@@5 T@Ref) ) (!  (=> (state Heap@@26 Mask@@11) (= (|fun4'| Heap@@26 x@@24 y@@5) (|fun4#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@26) x@@24 f_7)) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@26) null (P y@@5))) x@@24 y@@5)))
 :qid |stdinbpl.458:15|
 :skolemid |37|
 :pattern ( (state Heap@@26 Mask@@11) (|fun4'| Heap@@26 x@@24 y@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10524) (Mask@@12 T@PolymorphicMapType_10545) (x@@25 T@Ref) (y@@6 T@Ref) ) (!  (=> (state Heap@@27 Mask@@12) (= (|er3'| Heap@@27 x@@25 y@@6) (|er3#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@27) x@@25 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@27) y@@6 g))) x@@25 y@@6)))
 :qid |stdinbpl.879:15|
 :skolemid |57|
 :pattern ( (state Heap@@27 Mask@@12) (|er3'| Heap@@27 x@@25 y@@6))
)))
(assert  (not (IsPredicateField_5608_1189 f_7)))
(assert  (not (IsWandField_5608_1189 f_7)))
(assert  (not (IsPredicateField_5608_1189 g)))
(assert  (not (IsWandField_5608_1189 g)))
(assert  (not (IsPredicateField_5612_5613 h)))
(assert  (not (IsWandField_5612_5613 h)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10524) (ExhaleHeap@@6 T@PolymorphicMapType_10524) (Mask@@13 T@PolymorphicMapType_10545) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@6 Mask@@13) (succHeap Heap@@28 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@6 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10545) (o_2@@14 T@Ref) (f_4@@14 T@Field_24200_24205) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@@14) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5898_50176 f_4@@14))) (not (IsWandField_5898_50192 f_4@@14))) (<= (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@@14) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@@14) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10545) (o_2@@15 T@Ref) (f_4@@15 T@Field_22062_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@@15) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5898_53 f_4@@15))) (not (IsWandField_5898_53 f_4@@15))) (<= (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@@15) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@@15) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10545) (o_2@@16 T@Ref) (f_4@@16 T@Field_22062_5613) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@@16) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5898_5613 f_4@@16))) (not (IsWandField_5898_5613 f_4@@16))) (<= (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@@16) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@@16) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10545) (o_2@@17 T@Ref) (f_4@@17 T@Field_22062_22063) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@@17) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5898_5899 f_4@@17))) (not (IsWandField_22062_39887 f_4@@17))) (<= (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@@17) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@@17) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10545) (o_2@@18 T@Ref) (f_4@@18 T@Field_22062_1189) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@@18) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5898_1189 f_4@@18))) (not (IsWandField_5898_1189 f_4@@18))) (<= (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@@18) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@@18) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10545) (o_2@@19 T@Ref) (f_4@@19 T@Field_18118_18123) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@@19) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5873_49345 f_4@@19))) (not (IsWandField_5873_49361 f_4@@19))) (<= (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@@19) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@@19) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10545) (o_2@@20 T@Ref) (f_4@@20 T@Field_16906_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@@20) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5873_53 f_4@@20))) (not (IsWandField_5873_53 f_4@@20))) (<= (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@@20) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@@20) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10545) (o_2@@21 T@Ref) (f_4@@21 T@Field_16906_5613) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@@21) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5873_5613 f_4@@21))) (not (IsWandField_5873_5613 f_4@@21))) (<= (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@@21) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@@21) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10545) (o_2@@22 T@Ref) (f_4@@22 T@Field_16906_16907) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@@22) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5873_5874 f_4@@22))) (not (IsWandField_16906_39530 f_4@@22))) (<= (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@@22) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@@22) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10545) (o_2@@23 T@Ref) (f_4@@23 T@Field_16906_1189) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@@23) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5873_1189 f_4@@23))) (not (IsWandField_5873_1189 f_4@@23))) (<= (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@@23) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@@23) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10545) (o_2@@24 T@Ref) (f_4@@24 T@Field_5608_18123) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@@24) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5608_48514 f_4@@24))) (not (IsWandField_5608_48530 f_4@@24))) (<= (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@@24) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@@24) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10545) (o_2@@25 T@Ref) (f_4@@25 T@Field_10584_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@@25) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5608_53 f_4@@25))) (not (IsWandField_5608_53 f_4@@25))) (<= (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@@25) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@@25) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10545) (o_2@@26 T@Ref) (f_4@@26 T@Field_10597_10598) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@@26) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5612_5613 f_4@@26))) (not (IsWandField_5612_5613 f_4@@26))) (<= (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@@26) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@@26) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10545) (o_2@@27 T@Ref) (f_4@@27 T@Field_5608_16907) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@@27) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5608_34206 f_4@@27))) (not (IsWandField_5608_39173 f_4@@27))) (<= (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@@27) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@@27) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10545) (o_2@@28 T@Ref) (f_4@@28 T@Field_13911_1189) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@@28) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_5608_1189 f_4@@28))) (not (IsWandField_5608_1189 f_4@@28))) (<= (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@@28) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@@28) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10545) (o_2@@29 T@Ref) (f_4@@29 T@Field_24200_24205) ) (! (= (HasDirectPerm_22062_33961 Mask@@29 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@@29) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_33961 Mask@@29 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10545) (o_2@@30 T@Ref) (f_4@@30 T@Field_22062_22063) ) (! (= (HasDirectPerm_22062_16907 Mask@@30 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@@30) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_16907 Mask@@30 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10545) (o_2@@31 T@Ref) (f_4@@31 T@Field_22062_53) ) (! (= (HasDirectPerm_22062_53 Mask@@31 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@@31) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_53 Mask@@31 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10545) (o_2@@32 T@Ref) (f_4@@32 T@Field_22062_5613) ) (! (= (HasDirectPerm_22062_5613 Mask@@32 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@@32) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_5613 Mask@@32 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10545) (o_2@@33 T@Ref) (f_4@@33 T@Field_22062_1189) ) (! (= (HasDirectPerm_22062_1189 Mask@@33 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@@33) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_1189 Mask@@33 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10545) (o_2@@34 T@Ref) (f_4@@34 T@Field_18118_18123) ) (! (= (HasDirectPerm_16906_32843 Mask@@34 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@@34) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_32843 Mask@@34 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10545) (o_2@@35 T@Ref) (f_4@@35 T@Field_16906_16907) ) (! (= (HasDirectPerm_16906_16907 Mask@@35 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@@35) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_16907 Mask@@35 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10545) (o_2@@36 T@Ref) (f_4@@36 T@Field_16906_53) ) (! (= (HasDirectPerm_16906_53 Mask@@36 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@@36) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_53 Mask@@36 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10545) (o_2@@37 T@Ref) (f_4@@37 T@Field_16906_5613) ) (! (= (HasDirectPerm_16906_5613 Mask@@37 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@@37) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_5613 Mask@@37 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_10545) (o_2@@38 T@Ref) (f_4@@38 T@Field_16906_1189) ) (! (= (HasDirectPerm_16906_1189 Mask@@38 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@@38) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_1189 Mask@@38 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_10545) (o_2@@39 T@Ref) (f_4@@39 T@Field_5608_18123) ) (! (= (HasDirectPerm_5608_31682 Mask@@39 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@@39) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5608_31682 Mask@@39 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_10545) (o_2@@40 T@Ref) (f_4@@40 T@Field_5608_16907) ) (! (= (HasDirectPerm_5608_16907 Mask@@40 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@@40) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5608_16907 Mask@@40 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_10545) (o_2@@41 T@Ref) (f_4@@41 T@Field_10584_53) ) (! (= (HasDirectPerm_5608_53 Mask@@41 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@@41) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5608_53 Mask@@41 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_10545) (o_2@@42 T@Ref) (f_4@@42 T@Field_10597_10598) ) (! (= (HasDirectPerm_5612_5613 Mask@@42 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@@42) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5612_5613 Mask@@42 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_10545) (o_2@@43 T@Ref) (f_4@@43 T@Field_13911_1189) ) (! (= (HasDirectPerm_5608_1189 Mask@@43 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@@43) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5608_1189 Mask@@43 o_2@@43 f_4@@43))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10524) (Mask@@44 T@PolymorphicMapType_10545) (b_24@@0 Bool) (x@@26 T@Ref) ) (!  (=> (state Heap@@29 Mask@@44) (= (|fun6'| Heap@@29 b_24@@0 x@@26) (|fun6#frame| (FrameFragment_8612 (ite b_24@@0 (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@29) x@@26 f_7)) EmptyFrame)) b_24@@0 x@@26)))
 :qid |stdinbpl.557:15|
 :skolemid |41|
 :pattern ( (state Heap@@29 Mask@@44) (|fun6'| Heap@@29 b_24@@0 x@@26))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10524) (Mask@@45 T@PolymorphicMapType_10545) (x@@27 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@45) (< AssumeFunctionsAbove 2)) (= (fun5 Heap@@30 x@@27) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@30) x@@27 f_7) (ite (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@30) x@@27 h) null) 0 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@30) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@30) x@@27 h) g)))))
 :qid |stdinbpl.619:15|
 :skolemid |44|
 :pattern ( (state Heap@@30 Mask@@45) (fun5 Heap@@30 x@@27))
 :pattern ( (state Heap@@30 Mask@@45) (|fun5#triggerStateless| x@@27) (|Q#trigger_5898| Heap@@30 (Q x@@27)))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.170:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10524) (ExhaleHeap@@7 T@PolymorphicMapType_10524) (Mask@@46 T@PolymorphicMapType_10545) (o_1@@0 T@Ref) (f_2 T@Field_24200_24205) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@7 Mask@@46) (=> (HasDirectPerm_22062_33961 Mask@@46 o_1@@0 f_2) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@31) o_1@@0 f_2) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@7 Mask@@46) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10524) (ExhaleHeap@@8 T@PolymorphicMapType_10524) (Mask@@47 T@PolymorphicMapType_10545) (o_1@@1 T@Ref) (f_2@@0 T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@8 Mask@@47) (=> (HasDirectPerm_22062_16907 Mask@@47 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@32) o_1@@1 f_2@@0) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@8 Mask@@47) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10524) (ExhaleHeap@@9 T@PolymorphicMapType_10524) (Mask@@48 T@PolymorphicMapType_10545) (o_1@@2 T@Ref) (f_2@@1 T@Field_22062_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@9 Mask@@48) (=> (HasDirectPerm_22062_53 Mask@@48 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@33) o_1@@2 f_2@@1) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@9 Mask@@48) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10524) (ExhaleHeap@@10 T@PolymorphicMapType_10524) (Mask@@49 T@PolymorphicMapType_10545) (o_1@@3 T@Ref) (f_2@@2 T@Field_22062_5613) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@10 Mask@@49) (=> (HasDirectPerm_22062_5613 Mask@@49 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@34) o_1@@3 f_2@@2) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@10 Mask@@49) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10524) (ExhaleHeap@@11 T@PolymorphicMapType_10524) (Mask@@50 T@PolymorphicMapType_10545) (o_1@@4 T@Ref) (f_2@@3 T@Field_22062_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@11 Mask@@50) (=> (HasDirectPerm_22062_1189 Mask@@50 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@35) o_1@@4 f_2@@3) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@11 Mask@@50) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10524) (ExhaleHeap@@12 T@PolymorphicMapType_10524) (Mask@@51 T@PolymorphicMapType_10545) (o_1@@5 T@Ref) (f_2@@4 T@Field_18118_18123) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@12 Mask@@51) (=> (HasDirectPerm_16906_32843 Mask@@51 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@36) o_1@@5 f_2@@4) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@12 Mask@@51) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10524) (ExhaleHeap@@13 T@PolymorphicMapType_10524) (Mask@@52 T@PolymorphicMapType_10545) (o_1@@6 T@Ref) (f_2@@5 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@13 Mask@@52) (=> (HasDirectPerm_16906_16907 Mask@@52 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@37) o_1@@6 f_2@@5) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@13 Mask@@52) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10524) (ExhaleHeap@@14 T@PolymorphicMapType_10524) (Mask@@53 T@PolymorphicMapType_10545) (o_1@@7 T@Ref) (f_2@@6 T@Field_16906_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@14 Mask@@53) (=> (HasDirectPerm_16906_53 Mask@@53 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@38) o_1@@7 f_2@@6) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@14 Mask@@53) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10524) (ExhaleHeap@@15 T@PolymorphicMapType_10524) (Mask@@54 T@PolymorphicMapType_10545) (o_1@@8 T@Ref) (f_2@@7 T@Field_16906_5613) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@15 Mask@@54) (=> (HasDirectPerm_16906_5613 Mask@@54 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@39) o_1@@8 f_2@@7) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@15 Mask@@54) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10524) (ExhaleHeap@@16 T@PolymorphicMapType_10524) (Mask@@55 T@PolymorphicMapType_10545) (o_1@@9 T@Ref) (f_2@@8 T@Field_16906_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@16 Mask@@55) (=> (HasDirectPerm_16906_1189 Mask@@55 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@40) o_1@@9 f_2@@8) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@16 Mask@@55) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10524) (ExhaleHeap@@17 T@PolymorphicMapType_10524) (Mask@@56 T@PolymorphicMapType_10545) (o_1@@10 T@Ref) (f_2@@9 T@Field_5608_18123) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@17 Mask@@56) (=> (HasDirectPerm_5608_31682 Mask@@56 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@41) o_1@@10 f_2@@9) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@17 Mask@@56) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10524) (ExhaleHeap@@18 T@PolymorphicMapType_10524) (Mask@@57 T@PolymorphicMapType_10545) (o_1@@11 T@Ref) (f_2@@10 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@18 Mask@@57) (=> (HasDirectPerm_5608_16907 Mask@@57 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@42) o_1@@11 f_2@@10) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@18 Mask@@57) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_10524) (ExhaleHeap@@19 T@PolymorphicMapType_10524) (Mask@@58 T@PolymorphicMapType_10545) (o_1@@12 T@Ref) (f_2@@11 T@Field_10584_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@19 Mask@@58) (=> (HasDirectPerm_5608_53 Mask@@58 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@43) o_1@@12 f_2@@11) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@19 Mask@@58) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_10524) (ExhaleHeap@@20 T@PolymorphicMapType_10524) (Mask@@59 T@PolymorphicMapType_10545) (o_1@@13 T@Ref) (f_2@@12 T@Field_10597_10598) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@20 Mask@@59) (=> (HasDirectPerm_5612_5613 Mask@@59 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@44) o_1@@13 f_2@@12) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@20 Mask@@59) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_10524) (ExhaleHeap@@21 T@PolymorphicMapType_10524) (Mask@@60 T@PolymorphicMapType_10545) (o_1@@14 T@Ref) (f_2@@13 T@Field_13911_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@21 Mask@@60) (=> (HasDirectPerm_5608_1189 Mask@@60 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@45) o_1@@14 f_2@@13) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@21 Mask@@60) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_24200_24205) ) (! (= (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_22062_53) ) (! (= (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_22062_5613) ) (! (= (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_22062_22063) ) (! (= (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_22062_1189) ) (! (= (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_18118_18123) ) (! (= (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_16906_53) ) (! (= (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_16906_5613) ) (! (= (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_16906_16907) ) (! (= (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_16906_1189) ) (! (= (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_5608_18123) ) (! (= (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_10584_53) ) (! (= (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_10597_10598) ) (! (= (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_5608_16907) ) (! (= (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_13911_1189) ) (! (= (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_10524) (x@@28 T@Ref) (y@@7 T@Ref) ) (!  (and (= (fun1 Heap@@46 x@@28 y@@7) (|fun1'| Heap@@46 x@@28 y@@7)) (dummyFunction_1468 (|fun1#triggerStateless| x@@28 y@@7)))
 :qid |stdinbpl.208:15|
 :skolemid |22|
 :pattern ( (fun1 Heap@@46 x@@28 y@@7))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_10524) (x@@29 T@Ref) (y@@8 T@Ref) ) (!  (and (= (fun2 Heap@@47 x@@29 y@@8) (|fun2'| Heap@@47 x@@29 y@@8)) (dummyFunction_1468 (|fun2#triggerStateless| x@@29 y@@8)))
 :qid |stdinbpl.282:15|
 :skolemid |26|
 :pattern ( (fun2 Heap@@47 x@@29 y@@8))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_10524) (x@@30 T@Ref) (y@@9 T@Ref) ) (!  (and (= (fun4 Heap@@48 x@@30 y@@9) (|fun4'| Heap@@48 x@@30 y@@9)) (dummyFunction_1468 (|fun4#triggerStateless| x@@30 y@@9)))
 :qid |stdinbpl.441:15|
 :skolemid |34|
 :pattern ( (fun4 Heap@@48 x@@30 y@@9))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_10524) (b_24@@1 Bool) (x@@31 T@Ref) ) (!  (and (= (fun6 Heap@@49 b_24@@1 x@@31) (|fun6'| Heap@@49 b_24@@1 x@@31)) (dummyFunction_1468 (|fun6#triggerStateless| b_24@@1 x@@31)))
 :qid |stdinbpl.540:15|
 :skolemid |38|
 :pattern ( (fun6 Heap@@49 b_24@@1 x@@31))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_10524) (x@@32 T@Ref) (y@@10 T@Ref) ) (!  (and (= (er3 Heap@@50 x@@32 y@@10) (|er3'| Heap@@50 x@@32 y@@10)) (dummyFunction_1468 (|er3#triggerStateless| x@@32 y@@10)))
 :qid |stdinbpl.862:15|
 :skolemid |54|
 :pattern ( (er3 Heap@@50 x@@32 y@@10))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_10524) (Mask@@61 T@PolymorphicMapType_10545) (x@@33 T@Ref) (y@@11 T@Ref) ) (!  (=> (and (state Heap@@51 Mask@@61) (< AssumeFunctionsAbove 0)) (=> (= x@@33 y@@11) (= (fun2 Heap@@51 x@@33 y@@11) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@51) y@@11 f_7) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@51) x@@33 g)))))
 :qid |stdinbpl.292:15|
 :skolemid |28|
 :pattern ( (state Heap@@51 Mask@@61) (fun2 Heap@@51 x@@33 y@@11))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_10524) (Mask@@62 T@PolymorphicMapType_10545) (x@@34 T@Ref) (y@@12 T@Ref) ) (!  (=> (and (state Heap@@52 Mask@@62) (< AssumeFunctionsAbove 6)) (=> (= x@@34 y@@12) (= (fun1 Heap@@52 x@@34 y@@12) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@52) y@@12 f_7) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@52) x@@34 g)))))
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (state Heap@@52 Mask@@62) (fun1 Heap@@52 x@@34 y@@12))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_10524) (Mask@@63 T@PolymorphicMapType_10545) (x@@35 T@Ref) (y@@13 T@Ref) ) (!  (=> (and (state Heap@@53 Mask@@63) (< AssumeFunctionsAbove 7)) (=> (= x@@35 y@@13) (= (fun4 Heap@@53 x@@35 y@@13) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@53) y@@13 f_7) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@53) y@@13 g)))))
 :qid |stdinbpl.451:15|
 :skolemid |36|
 :pattern ( (state Heap@@53 Mask@@63) (fun4 Heap@@53 x@@35 y@@13))
 :pattern ( (state Heap@@53 Mask@@63) (|fun4#triggerStateless| x@@35 y@@13) (|P#trigger_5873| Heap@@53 (P y@@13)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10545) (SummandMask1 T@PolymorphicMapType_10545) (SummandMask2 T@PolymorphicMapType_10545) (o_2@@59 T@Ref) (f_4@@59 T@Field_24200_24205) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10545) (SummandMask1@@0 T@PolymorphicMapType_10545) (SummandMask2@@0 T@PolymorphicMapType_10545) (o_2@@60 T@Ref) (f_4@@60 T@Field_22062_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10545) (SummandMask1@@1 T@PolymorphicMapType_10545) (SummandMask2@@1 T@PolymorphicMapType_10545) (o_2@@61 T@Ref) (f_4@@61 T@Field_22062_5613) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10545) (SummandMask1@@2 T@PolymorphicMapType_10545) (SummandMask2@@2 T@PolymorphicMapType_10545) (o_2@@62 T@Ref) (f_4@@62 T@Field_22062_22063) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10545) (SummandMask1@@3 T@PolymorphicMapType_10545) (SummandMask2@@3 T@PolymorphicMapType_10545) (o_2@@63 T@Ref) (f_4@@63 T@Field_22062_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10545) (SummandMask1@@4 T@PolymorphicMapType_10545) (SummandMask2@@4 T@PolymorphicMapType_10545) (o_2@@64 T@Ref) (f_4@@64 T@Field_18118_18123) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10545) (SummandMask1@@5 T@PolymorphicMapType_10545) (SummandMask2@@5 T@PolymorphicMapType_10545) (o_2@@65 T@Ref) (f_4@@65 T@Field_16906_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10545) (SummandMask1@@6 T@PolymorphicMapType_10545) (SummandMask2@@6 T@PolymorphicMapType_10545) (o_2@@66 T@Ref) (f_4@@66 T@Field_16906_5613) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10545) (SummandMask1@@7 T@PolymorphicMapType_10545) (SummandMask2@@7 T@PolymorphicMapType_10545) (o_2@@67 T@Ref) (f_4@@67 T@Field_16906_16907) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10545) (SummandMask1@@8 T@PolymorphicMapType_10545) (SummandMask2@@8 T@PolymorphicMapType_10545) (o_2@@68 T@Ref) (f_4@@68 T@Field_16906_1189) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10545) (SummandMask1@@9 T@PolymorphicMapType_10545) (SummandMask2@@9 T@PolymorphicMapType_10545) (o_2@@69 T@Ref) (f_4@@69 T@Field_5608_18123) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10545) (SummandMask1@@10 T@PolymorphicMapType_10545) (SummandMask2@@10 T@PolymorphicMapType_10545) (o_2@@70 T@Ref) (f_4@@70 T@Field_10584_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10545) (SummandMask1@@11 T@PolymorphicMapType_10545) (SummandMask2@@11 T@PolymorphicMapType_10545) (o_2@@71 T@Ref) (f_4@@71 T@Field_10597_10598) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10545) (SummandMask1@@12 T@PolymorphicMapType_10545) (SummandMask2@@12 T@PolymorphicMapType_10545) (o_2@@72 T@Ref) (f_4@@72 T@Field_5608_16907) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10545) (SummandMask1@@13 T@PolymorphicMapType_10545) (SummandMask2@@13 T@PolymorphicMapType_10545) (o_2@@73 T@Ref) (f_4@@73 T@Field_13911_1189) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_10524) (ExhaleHeap@@22 T@PolymorphicMapType_10524) (Mask@@64 T@PolymorphicMapType_10545) (pm_f@@5 T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@22 Mask@@64) (=> (and (HasDirectPerm_22062_16907 Mask@@64 null pm_f@@5) (IsPredicateField_5898_5899 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@54) o2 f_2@@14) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@54) o2@@0 f_2@@15) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@54) o2@@1 f_2@@16) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@54) o2@@2 f_2@@17) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@54) o2@@3 f_2@@18) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@54) o2@@4 f_2@@19) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@54) o2@@5 f_2@@20) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@54) o2@@6 f_2@@21) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@54) o2@@7 f_2@@22) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@54) o2@@8 f_2@@23) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@54) o2@@9 f_2@@24) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@54) o2@@10 f_2@@25) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@54) o2@@11 f_2@@26) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@54) o2@@12 f_2@@27) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) o2@@13 f_2@@28) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@22 Mask@@64) (IsPredicateField_5898_5899 pm_f@@5))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_10524) (ExhaleHeap@@23 T@PolymorphicMapType_10524) (Mask@@65 T@PolymorphicMapType_10545) (pm_f@@6 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@23 Mask@@65) (=> (and (HasDirectPerm_16906_16907 Mask@@65 null pm_f@@6) (IsPredicateField_5873_5874 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@55) o2@@14 f_2@@29) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@55) o2@@15 f_2@@30) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@55) o2@@16 f_2@@31) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@55) o2@@17 f_2@@32) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@55) o2@@18 f_2@@33) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@55) o2@@19 f_2@@34) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@55) o2@@20 f_2@@35) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@55) o2@@21 f_2@@36) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@55) o2@@22 f_2@@37) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) o2@@23 f_2@@38) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@55) o2@@24 f_2@@39) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@55) o2@@25 f_2@@40) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@55) o2@@26 f_2@@41) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@55) o2@@27 f_2@@42) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@55) o2@@28 f_2@@43) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@23 Mask@@65) (IsPredicateField_5873_5874 pm_f@@6))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_10524) (ExhaleHeap@@24 T@PolymorphicMapType_10524) (Mask@@66 T@PolymorphicMapType_10545) (pm_f@@7 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@24 Mask@@66) (=> (and (HasDirectPerm_5608_16907 Mask@@66 null pm_f@@7) (IsPredicateField_5608_34206 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@56) o2@@29 f_2@@44) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@56) o2@@30 f_2@@45) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@56) o2@@31 f_2@@46) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@56) o2@@32 f_2@@47) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) o2@@33 f_2@@48) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@56) o2@@34 f_2@@49) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@56) o2@@35 f_2@@50) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@56) o2@@36 f_2@@51) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@56) o2@@37 f_2@@52) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@56) o2@@38 f_2@@53) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@56) o2@@39 f_2@@54) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@56) o2@@40 f_2@@55) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@56) o2@@41 f_2@@56) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@56) o2@@42 f_2@@57) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@56) o2@@43 f_2@@58) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@24 Mask@@66) (IsPredicateField_5608_34206 pm_f@@7))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_10524) (ExhaleHeap@@25 T@PolymorphicMapType_10524) (Mask@@67 T@PolymorphicMapType_10545) (pm_f@@8 T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@25 Mask@@67) (=> (and (HasDirectPerm_22062_16907 Mask@@67 null pm_f@@8) (IsWandField_22062_39887 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@57) o2@@44 f_2@@59) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@57) o2@@45 f_2@@60) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@57) o2@@46 f_2@@61) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@57) o2@@47 f_2@@62) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@57) o2@@48 f_2@@63) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@57) o2@@49 f_2@@64) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@57) o2@@50 f_2@@65) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@57) o2@@51 f_2@@66) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@57) o2@@52 f_2@@67) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@57) o2@@53 f_2@@68) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@57) o2@@54 f_2@@69) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@57) o2@@55 f_2@@70) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@57) o2@@56 f_2@@71) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@57) o2@@57 f_2@@72) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) o2@@58 f_2@@73) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@25 Mask@@67) (IsWandField_22062_39887 pm_f@@8))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_10524) (ExhaleHeap@@26 T@PolymorphicMapType_10524) (Mask@@68 T@PolymorphicMapType_10545) (pm_f@@9 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@26 Mask@@68) (=> (and (HasDirectPerm_16906_16907 Mask@@68 null pm_f@@9) (IsWandField_16906_39530 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@58) o2@@59 f_2@@74) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@58) o2@@60 f_2@@75) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@58) o2@@61 f_2@@76) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@58) o2@@62 f_2@@77) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@58) o2@@63 f_2@@78) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@58) o2@@64 f_2@@79) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@58) o2@@65 f_2@@80) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@58) o2@@66 f_2@@81) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@58) o2@@67 f_2@@82) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) o2@@68 f_2@@83) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@58) o2@@69 f_2@@84) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@58) o2@@70 f_2@@85) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@58) o2@@71 f_2@@86) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@58) o2@@72 f_2@@87) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@58) o2@@73 f_2@@88) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@26 Mask@@68) (IsWandField_16906_39530 pm_f@@9))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_10524) (ExhaleHeap@@27 T@PolymorphicMapType_10524) (Mask@@69 T@PolymorphicMapType_10545) (pm_f@@10 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@27 Mask@@69) (=> (and (HasDirectPerm_5608_16907 Mask@@69 null pm_f@@10) (IsWandField_5608_39173 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@59) o2@@74 f_2@@89) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@59) o2@@75 f_2@@90) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@59) o2@@76 f_2@@91) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@59) o2@@77 f_2@@92) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) o2@@78 f_2@@93) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@59) o2@@79 f_2@@94) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@59) o2@@80 f_2@@95) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@59) o2@@81 f_2@@96) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@59) o2@@82 f_2@@97) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@59) o2@@83 f_2@@98) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@59) o2@@84 f_2@@99) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@59) o2@@85 f_2@@100) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@59) o2@@86 f_2@@101) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@59) o2@@87 f_2@@102) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@59) o2@@88 f_2@@103) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@27 Mask@@69) (IsWandField_5608_39173 pm_f@@10))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_10524) (Mask@@70 T@PolymorphicMapType_10545) (b_24@@2 Bool) (x@@36 T@Ref) ) (!  (=> (and (state Heap@@60 Mask@@70) (< AssumeFunctionsAbove 5)) (= (fun6 Heap@@60 b_24@@2 x@@36) (ite b_24@@2 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@60) x@@36 f_7) 0)))
 :qid |stdinbpl.550:15|
 :skolemid |40|
 :pattern ( (state Heap@@60 Mask@@70) (fun6 Heap@@60 b_24@@2 x@@36))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_10524) (Mask@@71 T@PolymorphicMapType_10545) (x@@37 T@Ref) ) (!  (=> (state Heap@@61 Mask@@71) (= (|fun3'| Heap@@61 x@@37) (|fun3#frame| (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@61) null (P x@@37)) x@@37)))
 :qid |stdinbpl.372:15|
 :skolemid |33|
 :pattern ( (state Heap@@61 Mask@@71) (|fun3'| Heap@@61 x@@37))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_10524) (Mask@@72 T@PolymorphicMapType_10545) (x@@38 T@Ref) ) (!  (=> (state Heap@@62 Mask@@72) (= (|fun5'| Heap@@62 x@@38) (|fun5#frame| (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@62) null (Q x@@38)) x@@38)))
 :qid |stdinbpl.626:15|
 :skolemid |45|
 :pattern ( (state Heap@@62 Mask@@72) (|fun5'| Heap@@62 x@@38))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_10524) (Mask@@73 T@PolymorphicMapType_10545) (x@@39 T@Ref) ) (!  (=> (state Heap@@63 Mask@@73) (= (|err2'| Heap@@63 x@@39) (|err2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@63) x@@39 f_7)) x@@39)))
 :qid |stdinbpl.798:15|
 :skolemid |53|
 :pattern ( (state Heap@@63 Mask@@73) (|err2'| Heap@@63 x@@39))
)))
(assert (forall ((x@@40 T@Ref) ) (! (= (getPredWandId_5873_5874 (P x@@40)) 0)
 :qid |stdinbpl.942:15|
 :skolemid |60|
 :pattern ( (P x@@40))
)))
(assert (forall ((x@@41 T@Ref) ) (! (= (getPredWandId_5898_5899 (Q x@@41)) 1)
 :qid |stdinbpl.997:15|
 :skolemid |66|
 :pattern ( (Q x@@41))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_10524) (o T@Ref) (f_3 T@Field_24200_24205) (v T@PolymorphicMapType_11073) ) (! (succHeap Heap@@64 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@64) (store (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@64) o f_3 v) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@64) (store (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@64) o f_3 v) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_10524) (o@@0 T@Ref) (f_3@@0 T@Field_22062_22063) (v@@0 T@FrameType) ) (! (succHeap Heap@@65 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@65) (store (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@65) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@65) (store (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@65) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_10524) (o@@1 T@Ref) (f_3@@1 T@Field_22062_1189) (v@@1 Int) ) (! (succHeap Heap@@66 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@66) (store (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@66) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@66) (store (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@66) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_10524) (o@@2 T@Ref) (f_3@@2 T@Field_22062_5613) (v@@2 T@Ref) ) (! (succHeap Heap@@67 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@67) (store (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@67) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@67) (store (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@67) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_10524) (o@@3 T@Ref) (f_3@@3 T@Field_22062_53) (v@@3 Bool) ) (! (succHeap Heap@@68 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@68) (store (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@68) o@@3 f_3@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@68) (store (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@68) o@@3 f_3@@3 v@@3)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_10524) (o@@4 T@Ref) (f_3@@4 T@Field_18118_18123) (v@@4 T@PolymorphicMapType_11073) ) (! (succHeap Heap@@69 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@69) (store (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@69) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@69) (store (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@69) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_10524) (o@@5 T@Ref) (f_3@@5 T@Field_16906_16907) (v@@5 T@FrameType) ) (! (succHeap Heap@@70 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@70) (store (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@70) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@70) (store (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@70) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_10524) (o@@6 T@Ref) (f_3@@6 T@Field_16906_1189) (v@@6 Int) ) (! (succHeap Heap@@71 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@71) (store (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@71) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@71) (store (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@71) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_10524) (o@@7 T@Ref) (f_3@@7 T@Field_16906_5613) (v@@7 T@Ref) ) (! (succHeap Heap@@72 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@72) (store (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@72) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@72) (store (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@72) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_10524) (o@@8 T@Ref) (f_3@@8 T@Field_16906_53) (v@@8 Bool) ) (! (succHeap Heap@@73 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@73) (store (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@73) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@73) (store (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@73) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_10524) (o@@9 T@Ref) (f_3@@9 T@Field_5608_18123) (v@@9 T@PolymorphicMapType_11073) ) (! (succHeap Heap@@74 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@74) (store (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@74) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@74) (store (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@74) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_10524) (o@@10 T@Ref) (f_3@@10 T@Field_5608_16907) (v@@10 T@FrameType) ) (! (succHeap Heap@@75 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@75) (store (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@75) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@75) (store (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@75) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_10524) (o@@11 T@Ref) (f_3@@11 T@Field_13911_1189) (v@@11 Int) ) (! (succHeap Heap@@76 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@76) (store (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@76) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@76) (store (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@76) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_10524) (o@@12 T@Ref) (f_3@@12 T@Field_10597_10598) (v@@12 T@Ref) ) (! (succHeap Heap@@77 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@77) (store (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@77) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@77) (store (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@77) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_10524) (o@@13 T@Ref) (f_3@@13 T@Field_10584_53) (v@@13 Bool) ) (! (succHeap Heap@@78 (PolymorphicMapType_10524 (store (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@78) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (store (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@78) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@78)))
)))
(assert (forall ((x@@42 T@Ref) ) (! (= (PredicateMaskField_5873 (P x@@42)) (|P#sm| x@@42))
 :qid |stdinbpl.934:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_5873 (P x@@42)))
)))
(assert (forall ((x@@43 T@Ref) ) (! (= (PredicateMaskField_5898 (Q x@@43)) (|Q#sm| x@@43))
 :qid |stdinbpl.989:15|
 :skolemid |64|
 :pattern ( (PredicateMaskField_5898 (Q x@@43)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_10597_10598) (Heap@@79 T@PolymorphicMapType_10524) ) (!  (=> (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@79) o@@14 $allocated) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@79) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@79) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@79) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_22062_22063) (v_1@@2 T@FrameType) (q T@Field_22062_22063) (w@@2 T@FrameType) (r T@Field_22062_22063) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22062_22062 p@@3 v_1@@2 q w@@2) (InsidePredicate_22062_22062 q w@@2 r u)) (InsidePredicate_22062_22062 p@@3 v_1@@2 r u))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_22062 p@@3 v_1@@2 q w@@2) (InsidePredicate_22062_22062 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_22062_22063) (v_1@@3 T@FrameType) (q@@0 T@Field_22062_22063) (w@@3 T@FrameType) (r@@0 T@Field_16906_16907) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_22062 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_22062_16906 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_22062_16906 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_22062 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_22062_16906 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_22062_22063) (v_1@@4 T@FrameType) (q@@1 T@Field_22062_22063) (w@@4 T@FrameType) (r@@1 T@Field_5608_16907) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_22062 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_22062_10584 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_22062_10584 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_22062 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_22062_10584 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_22062_22063) (v_1@@5 T@FrameType) (q@@2 T@Field_16906_16907) (w@@5 T@FrameType) (r@@2 T@Field_22062_22063) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_16906 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16906_22062 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_22062_22062 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_16906 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16906_22062 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_22062_22063) (v_1@@6 T@FrameType) (q@@3 T@Field_16906_16907) (w@@6 T@FrameType) (r@@3 T@Field_16906_16907) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_16906 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16906_16906 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_22062_16906 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_16906 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16906_16906 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_22062_22063) (v_1@@7 T@FrameType) (q@@4 T@Field_16906_16907) (w@@7 T@FrameType) (r@@4 T@Field_5608_16907) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_16906 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16906_10584 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_22062_10584 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_16906 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16906_10584 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_22062_22063) (v_1@@8 T@FrameType) (q@@5 T@Field_5608_16907) (w@@8 T@FrameType) (r@@5 T@Field_22062_22063) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_10584 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10584_22062 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_22062_22062 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_10584 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10584_22062 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_22062_22063) (v_1@@9 T@FrameType) (q@@6 T@Field_5608_16907) (w@@9 T@FrameType) (r@@6 T@Field_16906_16907) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_10584 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10584_16906 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_22062_16906 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_10584 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10584_16906 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_22062_22063) (v_1@@10 T@FrameType) (q@@7 T@Field_5608_16907) (w@@10 T@FrameType) (r@@7 T@Field_5608_16907) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_10584 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10584_10584 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_22062_10584 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_10584 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10584_10584 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_16906_16907) (v_1@@11 T@FrameType) (q@@8 T@Field_22062_22063) (w@@11 T@FrameType) (r@@8 T@Field_22062_22063) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_22062 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_22062_22062 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16906_22062 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_22062 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_22062_22062 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_16906_16907) (v_1@@12 T@FrameType) (q@@9 T@Field_22062_22063) (w@@12 T@FrameType) (r@@9 T@Field_16906_16907) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_22062 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_22062_16906 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16906_16906 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_22062 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_22062_16906 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_16906_16907) (v_1@@13 T@FrameType) (q@@10 T@Field_22062_22063) (w@@13 T@FrameType) (r@@10 T@Field_5608_16907) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_22062 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_22062_10584 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16906_10584 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_22062 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_22062_10584 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_16906_16907) (v_1@@14 T@FrameType) (q@@11 T@Field_16906_16907) (w@@14 T@FrameType) (r@@11 T@Field_22062_22063) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_16906 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16906_22062 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16906_22062 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_16906 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16906_22062 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_16906_16907) (v_1@@15 T@FrameType) (q@@12 T@Field_16906_16907) (w@@15 T@FrameType) (r@@12 T@Field_16906_16907) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_16906 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16906_16906 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16906_16906 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_16906 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16906_16906 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_16906_16907) (v_1@@16 T@FrameType) (q@@13 T@Field_16906_16907) (w@@16 T@FrameType) (r@@13 T@Field_5608_16907) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_16906 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16906_10584 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16906_10584 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_16906 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16906_10584 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_16906_16907) (v_1@@17 T@FrameType) (q@@14 T@Field_5608_16907) (w@@17 T@FrameType) (r@@14 T@Field_22062_22063) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_10584 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10584_22062 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16906_22062 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_10584 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10584_22062 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_16906_16907) (v_1@@18 T@FrameType) (q@@15 T@Field_5608_16907) (w@@18 T@FrameType) (r@@15 T@Field_16906_16907) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_10584 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10584_16906 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16906_16906 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_10584 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10584_16906 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_16906_16907) (v_1@@19 T@FrameType) (q@@16 T@Field_5608_16907) (w@@19 T@FrameType) (r@@16 T@Field_5608_16907) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_10584 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10584_10584 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16906_10584 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_10584 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10584_10584 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_5608_16907) (v_1@@20 T@FrameType) (q@@17 T@Field_22062_22063) (w@@20 T@FrameType) (r@@17 T@Field_22062_22063) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_22062 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_22062_22062 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_10584_22062 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_22062 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_22062_22062 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_5608_16907) (v_1@@21 T@FrameType) (q@@18 T@Field_22062_22063) (w@@21 T@FrameType) (r@@18 T@Field_16906_16907) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_22062 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_22062_16906 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_10584_16906 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_22062 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_22062_16906 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_5608_16907) (v_1@@22 T@FrameType) (q@@19 T@Field_22062_22063) (w@@22 T@FrameType) (r@@19 T@Field_5608_16907) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_22062 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_22062_10584 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_10584_10584 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_22062 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_22062_10584 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_5608_16907) (v_1@@23 T@FrameType) (q@@20 T@Field_16906_16907) (w@@23 T@FrameType) (r@@20 T@Field_22062_22063) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_16906 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16906_22062 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_10584_22062 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_16906 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16906_22062 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_5608_16907) (v_1@@24 T@FrameType) (q@@21 T@Field_16906_16907) (w@@24 T@FrameType) (r@@21 T@Field_16906_16907) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_16906 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16906_16906 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_10584_16906 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_16906 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16906_16906 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_5608_16907) (v_1@@25 T@FrameType) (q@@22 T@Field_16906_16907) (w@@25 T@FrameType) (r@@22 T@Field_5608_16907) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_16906 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16906_10584 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_10584_10584 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_16906 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16906_10584 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_5608_16907) (v_1@@26 T@FrameType) (q@@23 T@Field_5608_16907) (w@@26 T@FrameType) (r@@23 T@Field_22062_22063) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_10584 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10584_22062 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_10584_22062 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_10584 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10584_22062 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_5608_16907) (v_1@@27 T@FrameType) (q@@24 T@Field_5608_16907) (w@@27 T@FrameType) (r@@24 T@Field_16906_16907) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_10584 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10584_16906 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_10584_16906 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_10584 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10584_16906 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_5608_16907) (v_1@@28 T@FrameType) (q@@25 T@Field_5608_16907) (w@@28 T@FrameType) (r@@25 T@Field_5608_16907) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_10584 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10584_10584 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_10584_10584 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_10584 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10584_10584 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_10524) (Mask@@74 T@PolymorphicMapType_10545) (x@@44 T@Ref) ) (!  (=> (and (state Heap@@80 Mask@@74) (< AssumeFunctionsAbove 8)) (= (err1 Heap@@80 x@@44) 0))
 :qid |stdinbpl.728:15|
 :skolemid |48|
 :pattern ( (state Heap@@80 Mask@@74) (err1 Heap@@80 x@@44))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_10524) (Mask@@75 T@PolymorphicMapType_10545) (x@@45 T@Ref) ) (!  (=> (and (state Heap@@81 Mask@@75) (< AssumeFunctionsAbove 4)) (=> (= (err1 Heap@@81 x@@45) 0) (= (err2 Heap@@81 x@@45) 0)))
 :qid |stdinbpl.791:15|
 :skolemid |52|
 :pattern ( (state Heap@@81 Mask@@75) (err2 Heap@@81 x@@45))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_10524) (Mask@@76 T@PolymorphicMapType_10545) (x@@46 T@Ref) (y@@14 T@Ref) ) (!  (=> (and (state Heap@@82 Mask@@76) (< AssumeFunctionsAbove 3)) (= (er3 Heap@@82 x@@46 y@@14) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@82) y@@14 f_7) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@82) x@@46 g))))
 :qid |stdinbpl.872:15|
 :skolemid |56|
 :pattern ( (state Heap@@82 Mask@@76) (er3 Heap@@82 x@@46 y@@14))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@83 () T@PolymorphicMapType_10524)
(declare-fun x@@47 () T@Ref)
(declare-fun y@@15 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_10545)
(declare-fun Mask@1 () T@PolymorphicMapType_10545)
(set-info :boogie-vc-id |fun2#definedness|)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (state Heap@@83 ZeroMask) (=> (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@83) x@@47 $allocated)) (and (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@83) y@@15 $allocated) (= AssumeFunctionsAbove 0))) (=> (and (and (and (not (= x@@47 null)) (= Mask@0 (PolymorphicMapType_10545 (store (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ZeroMask) x@@47 f_7 (+ (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ZeroMask) x@@47 f_7) FullPerm)) (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ZeroMask) (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ZeroMask)))) (and (state Heap@@83 Mask@0) (= x@@47 y@@15))) (and (and (not (= y@@15 null)) (= Mask@1 (PolymorphicMapType_10545 (store (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@0) y@@15 g (+ (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@0) y@@15 g) FullPerm)) (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@0) (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@0)))) (and (state Heap@@83 Mask@1) (state Heap@@83 Mask@1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_5608_1189 Mask@1 y@@15 f_7)) (=> (HasDirectPerm_5608_1189 Mask@1 y@@15 f_7) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_5608_1189 Mask@1 x@@47 g)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-sort T@Field_10584_53 0)
(declare-sort T@Field_10597_10598 0)
(declare-sort T@Field_13911_1189 0)
(declare-sort T@Field_16906_16907 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18118_18123 0)
(declare-sort T@Field_22062_22063 0)
(declare-sort T@Field_24200_24205 0)
(declare-sort T@Field_5608_16907 0)
(declare-sort T@Field_5608_18123 0)
(declare-sort T@Field_16906_1189 0)
(declare-sort T@Field_16906_5613 0)
(declare-sort T@Field_16906_53 0)
(declare-sort T@Field_22062_1189 0)
(declare-sort T@Field_22062_5613 0)
(declare-sort T@Field_22062_53 0)
(declare-datatypes ((T@PolymorphicMapType_10545 0)) (((PolymorphicMapType_10545 (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| (Array T@Ref T@Field_13911_1189 Real)) (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| (Array T@Ref T@Field_16906_16907 Real)) (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| (Array T@Ref T@Field_22062_22063 Real)) (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| (Array T@Ref T@Field_10597_10598 Real)) (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| (Array T@Ref T@Field_5608_16907 Real)) (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| (Array T@Ref T@Field_10584_53 Real)) (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| (Array T@Ref T@Field_5608_18123 Real)) (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| (Array T@Ref T@Field_16906_1189 Real)) (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| (Array T@Ref T@Field_16906_5613 Real)) (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| (Array T@Ref T@Field_16906_53 Real)) (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| (Array T@Ref T@Field_18118_18123 Real)) (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| (Array T@Ref T@Field_22062_1189 Real)) (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| (Array T@Ref T@Field_22062_5613 Real)) (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| (Array T@Ref T@Field_22062_53 Real)) (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| (Array T@Ref T@Field_24200_24205 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11073 0)) (((PolymorphicMapType_11073 (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (Array T@Ref T@Field_13911_1189 Bool)) (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (Array T@Ref T@Field_10597_10598 Bool)) (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (Array T@Ref T@Field_10584_53 Bool)) (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (Array T@Ref T@Field_5608_16907 Bool)) (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (Array T@Ref T@Field_5608_18123 Bool)) (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (Array T@Ref T@Field_16906_1189 Bool)) (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (Array T@Ref T@Field_16906_5613 Bool)) (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (Array T@Ref T@Field_16906_53 Bool)) (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (Array T@Ref T@Field_16906_16907 Bool)) (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (Array T@Ref T@Field_18118_18123 Bool)) (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (Array T@Ref T@Field_22062_1189 Bool)) (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (Array T@Ref T@Field_22062_5613 Bool)) (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (Array T@Ref T@Field_22062_53 Bool)) (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (Array T@Ref T@Field_22062_22063 Bool)) (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (Array T@Ref T@Field_24200_24205 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10524 0)) (((PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| (Array T@Ref T@Field_10584_53 Bool)) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| (Array T@Ref T@Field_10597_10598 T@Ref)) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| (Array T@Ref T@Field_13911_1189 Int)) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| (Array T@Ref T@Field_16906_16907 T@FrameType)) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| (Array T@Ref T@Field_18118_18123 T@PolymorphicMapType_11073)) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| (Array T@Ref T@Field_22062_22063 T@FrameType)) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| (Array T@Ref T@Field_24200_24205 T@PolymorphicMapType_11073)) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| (Array T@Ref T@Field_5608_16907 T@FrameType)) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| (Array T@Ref T@Field_5608_18123 T@PolymorphicMapType_11073)) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| (Array T@Ref T@Field_16906_1189 Int)) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| (Array T@Ref T@Field_16906_5613 T@Ref)) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| (Array T@Ref T@Field_16906_53 Bool)) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| (Array T@Ref T@Field_22062_1189 Int)) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| (Array T@Ref T@Field_22062_5613 T@Ref)) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| (Array T@Ref T@Field_22062_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_10584_53)
(declare-fun f_7 () T@Field_13911_1189)
(declare-fun g () T@Field_13911_1189)
(declare-fun h () T@Field_10597_10598)
(declare-fun succHeap (T@PolymorphicMapType_10524 T@PolymorphicMapType_10524) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10524 T@PolymorphicMapType_10524) Bool)
(declare-fun state (T@PolymorphicMapType_10524 T@PolymorphicMapType_10545) Bool)
(declare-fun fun3 (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |fun3#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_5873| (T@PolymorphicMapType_10524 T@Field_16906_16907) Bool)
(declare-fun P (T@Ref) T@Field_16906_16907)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_10545) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11073)
(declare-fun |fun1'| (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun dummyFunction_1468 (Int) Bool)
(declare-fun |fun1#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |fun2'| (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun |fun2#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |fun4'| (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun |fun4#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |fun6'| (T@PolymorphicMapType_10524 Bool T@Ref) Int)
(declare-fun |fun6#triggerStateless| (Bool T@Ref) Int)
(declare-fun |er3'| (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun |er3#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun IsPredicateField_5873_5874 (T@Field_16906_16907) Bool)
(declare-fun Q (T@Ref) T@Field_22062_22063)
(declare-fun IsPredicateField_5898_5899 (T@Field_22062_22063) Bool)
(declare-fun |fun3'| (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |fun5'| (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |fun5#triggerStateless| (T@Ref) Int)
(declare-fun |err1'| (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |err1#triggerStateless| (T@Ref) Int)
(declare-fun |err2'| (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun |err2#triggerStateless| (T@Ref) Int)
(declare-fun |P#everUsed_5873| (T@Field_16906_16907) Bool)
(declare-fun |Q#trigger_5898| (T@PolymorphicMapType_10524 T@Field_22062_22063) Bool)
(declare-fun |Q#everUsed_5898| (T@Field_22062_22063) Bool)
(declare-fun fun5 (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun err1 (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun err2 (T@PolymorphicMapType_10524 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10524 T@PolymorphicMapType_10524 T@PolymorphicMapType_10545) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5898 (T@Field_22062_22063) T@Field_24200_24205)
(declare-fun HasDirectPerm_22062_16907 (T@PolymorphicMapType_10545 T@Ref T@Field_22062_22063) Bool)
(declare-fun PredicateMaskField_5873 (T@Field_16906_16907) T@Field_18118_18123)
(declare-fun HasDirectPerm_16906_16907 (T@PolymorphicMapType_10545 T@Ref T@Field_16906_16907) Bool)
(declare-fun IsPredicateField_5608_34206 (T@Field_5608_16907) Bool)
(declare-fun PredicateMaskField_5608 (T@Field_5608_16907) T@Field_5608_18123)
(declare-fun HasDirectPerm_5608_16907 (T@PolymorphicMapType_10545 T@Ref T@Field_5608_16907) Bool)
(declare-fun IsWandField_22062_39887 (T@Field_22062_22063) Bool)
(declare-fun WandMaskField_22062 (T@Field_22062_22063) T@Field_24200_24205)
(declare-fun IsWandField_16906_39530 (T@Field_16906_16907) Bool)
(declare-fun WandMaskField_16906 (T@Field_16906_16907) T@Field_18118_18123)
(declare-fun IsWandField_5608_39173 (T@Field_5608_16907) Bool)
(declare-fun WandMaskField_5608 (T@Field_5608_16907) T@Field_5608_18123)
(declare-fun |err1#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun |P#sm| (T@Ref) T@Field_18118_18123)
(declare-fun |Q#sm| (T@Ref) T@Field_24200_24205)
(declare-fun dummyHeap () T@PolymorphicMapType_10524)
(declare-fun ZeroMask () T@PolymorphicMapType_10545)
(declare-fun InsidePredicate_22062_22062 (T@Field_22062_22063 T@FrameType T@Field_22062_22063 T@FrameType) Bool)
(declare-fun InsidePredicate_16906_16906 (T@Field_16906_16907 T@FrameType T@Field_16906_16907 T@FrameType) Bool)
(declare-fun InsidePredicate_10584_10584 (T@Field_5608_16907 T@FrameType T@Field_5608_16907 T@FrameType) Bool)
(declare-fun |fun1#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun |fun2#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun |fun4#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun |er3#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun IsPredicateField_5608_1189 (T@Field_13911_1189) Bool)
(declare-fun IsWandField_5608_1189 (T@Field_13911_1189) Bool)
(declare-fun IsPredicateField_5612_5613 (T@Field_10597_10598) Bool)
(declare-fun IsWandField_5612_5613 (T@Field_10597_10598) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5898_50176 (T@Field_24200_24205) Bool)
(declare-fun IsWandField_5898_50192 (T@Field_24200_24205) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5898_53 (T@Field_22062_53) Bool)
(declare-fun IsWandField_5898_53 (T@Field_22062_53) Bool)
(declare-fun IsPredicateField_5898_5613 (T@Field_22062_5613) Bool)
(declare-fun IsWandField_5898_5613 (T@Field_22062_5613) Bool)
(declare-fun IsPredicateField_5898_1189 (T@Field_22062_1189) Bool)
(declare-fun IsWandField_5898_1189 (T@Field_22062_1189) Bool)
(declare-fun IsPredicateField_5873_49345 (T@Field_18118_18123) Bool)
(declare-fun IsWandField_5873_49361 (T@Field_18118_18123) Bool)
(declare-fun IsPredicateField_5873_53 (T@Field_16906_53) Bool)
(declare-fun IsWandField_5873_53 (T@Field_16906_53) Bool)
(declare-fun IsPredicateField_5873_5613 (T@Field_16906_5613) Bool)
(declare-fun IsWandField_5873_5613 (T@Field_16906_5613) Bool)
(declare-fun IsPredicateField_5873_1189 (T@Field_16906_1189) Bool)
(declare-fun IsWandField_5873_1189 (T@Field_16906_1189) Bool)
(declare-fun IsPredicateField_5608_48514 (T@Field_5608_18123) Bool)
(declare-fun IsWandField_5608_48530 (T@Field_5608_18123) Bool)
(declare-fun IsPredicateField_5608_53 (T@Field_10584_53) Bool)
(declare-fun IsWandField_5608_53 (T@Field_10584_53) Bool)
(declare-fun HasDirectPerm_22062_33961 (T@PolymorphicMapType_10545 T@Ref T@Field_24200_24205) Bool)
(declare-fun HasDirectPerm_22062_53 (T@PolymorphicMapType_10545 T@Ref T@Field_22062_53) Bool)
(declare-fun HasDirectPerm_22062_5613 (T@PolymorphicMapType_10545 T@Ref T@Field_22062_5613) Bool)
(declare-fun HasDirectPerm_22062_1189 (T@PolymorphicMapType_10545 T@Ref T@Field_22062_1189) Bool)
(declare-fun HasDirectPerm_16906_32843 (T@PolymorphicMapType_10545 T@Ref T@Field_18118_18123) Bool)
(declare-fun HasDirectPerm_16906_53 (T@PolymorphicMapType_10545 T@Ref T@Field_16906_53) Bool)
(declare-fun HasDirectPerm_16906_5613 (T@PolymorphicMapType_10545 T@Ref T@Field_16906_5613) Bool)
(declare-fun HasDirectPerm_16906_1189 (T@PolymorphicMapType_10545 T@Ref T@Field_16906_1189) Bool)
(declare-fun HasDirectPerm_5608_31682 (T@PolymorphicMapType_10545 T@Ref T@Field_5608_18123) Bool)
(declare-fun HasDirectPerm_5608_53 (T@PolymorphicMapType_10545 T@Ref T@Field_10584_53) Bool)
(declare-fun HasDirectPerm_5612_5613 (T@PolymorphicMapType_10545 T@Ref T@Field_10597_10598) Bool)
(declare-fun HasDirectPerm_5608_1189 (T@PolymorphicMapType_10545 T@Ref T@Field_13911_1189) Bool)
(declare-fun |fun6#frame| (T@FrameType Bool T@Ref) Int)
(declare-fun FrameFragment_8612 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun fun1 (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun fun2 (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun fun4 (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun fun6 (T@PolymorphicMapType_10524 Bool T@Ref) Int)
(declare-fun er3 (T@PolymorphicMapType_10524 T@Ref T@Ref) Int)
(declare-fun sumMask (T@PolymorphicMapType_10545 T@PolymorphicMapType_10545 T@PolymorphicMapType_10545) Bool)
(declare-fun |fun3#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun5#frame| (T@FrameType T@Ref) Int)
(declare-fun |err2#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_5873_5874 (T@Field_16906_16907) Int)
(declare-fun getPredWandId_5898_5899 (T@Field_22062_22063) Int)
(declare-fun InsidePredicate_22062_16906 (T@Field_22062_22063 T@FrameType T@Field_16906_16907 T@FrameType) Bool)
(declare-fun InsidePredicate_22062_10584 (T@Field_22062_22063 T@FrameType T@Field_5608_16907 T@FrameType) Bool)
(declare-fun InsidePredicate_16906_22062 (T@Field_16906_16907 T@FrameType T@Field_22062_22063 T@FrameType) Bool)
(declare-fun InsidePredicate_16906_10584 (T@Field_16906_16907 T@FrameType T@Field_5608_16907 T@FrameType) Bool)
(declare-fun InsidePredicate_10584_22062 (T@Field_5608_16907 T@FrameType T@Field_22062_22063 T@FrameType) Bool)
(declare-fun InsidePredicate_10584_16906 (T@Field_5608_16907 T@FrameType T@Field_16906_16907 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_10524) (Heap1 T@PolymorphicMapType_10524) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10524) (Mask T@PolymorphicMapType_10545) (x T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (fun3 Heap x) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap) x g)))
 :qid |stdinbpl.365:15|
 :skolemid |32|
 :pattern ( (state Heap Mask) (fun3 Heap x))
 :pattern ( (state Heap Mask) (|fun3#triggerStateless| x) (|P#trigger_5873| Heap (P x)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10524) (Mask@@0 T@PolymorphicMapType_10545) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10524) (Heap1@@0 T@PolymorphicMapType_10524) (Heap2 T@PolymorphicMapType_10524) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24200_24205) ) (!  (not (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22062_22063) ) (!  (not (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_22062_53) ) (!  (not (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_22062_5613) ) (!  (not (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_22062_1189) ) (!  (not (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18118_18123) ) (!  (not (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16906_16907) ) (!  (not (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16906_53) ) (!  (not (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16906_5613) ) (!  (not (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16906_1189) ) (!  (not (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_5608_18123) ) (!  (not (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_5608_16907) ) (!  (not (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10584_53) ) (!  (not (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10597_10598) ) (!  (not (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_13911_1189) ) (!  (not (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10524) (x@@0 T@Ref) (y T@Ref) ) (! (dummyFunction_1468 (|fun1#triggerStateless| x@@0 y))
 :qid |stdinbpl.212:15|
 :skolemid |23|
 :pattern ( (|fun1'| Heap@@1 x@@0 y))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10524) (x@@1 T@Ref) (y@@0 T@Ref) ) (! (dummyFunction_1468 (|fun2#triggerStateless| x@@1 y@@0))
 :qid |stdinbpl.286:15|
 :skolemid |27|
 :pattern ( (|fun2'| Heap@@2 x@@1 y@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10524) (x@@2 T@Ref) (y@@1 T@Ref) ) (! (dummyFunction_1468 (|fun4#triggerStateless| x@@2 y@@1))
 :qid |stdinbpl.445:15|
 :skolemid |35|
 :pattern ( (|fun4'| Heap@@3 x@@2 y@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10524) (b_24 Bool) (x@@3 T@Ref) ) (! (dummyFunction_1468 (|fun6#triggerStateless| b_24 x@@3))
 :qid |stdinbpl.544:15|
 :skolemid |39|
 :pattern ( (|fun6'| Heap@@4 b_24 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10524) (x@@4 T@Ref) (y@@2 T@Ref) ) (! (dummyFunction_1468 (|er3#triggerStateless| x@@4 y@@2))
 :qid |stdinbpl.866:15|
 :skolemid |55|
 :pattern ( (|er3'| Heap@@5 x@@4 y@@2))
)))
(assert (forall ((x@@5 T@Ref) ) (! (IsPredicateField_5873_5874 (P x@@5))
 :qid |stdinbpl.938:15|
 :skolemid |59|
 :pattern ( (P x@@5))
)))
(assert (forall ((x@@6 T@Ref) ) (! (IsPredicateField_5898_5899 (Q x@@6))
 :qid |stdinbpl.993:15|
 :skolemid |65|
 :pattern ( (Q x@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10524) (x@@7 T@Ref) ) (! (dummyFunction_1468 (|fun3#triggerStateless| x@@7))
 :qid |stdinbpl.359:15|
 :skolemid |31|
 :pattern ( (|fun3'| Heap@@6 x@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10524) (x@@8 T@Ref) ) (! (dummyFunction_1468 (|fun5#triggerStateless| x@@8))
 :qid |stdinbpl.613:15|
 :skolemid |43|
 :pattern ( (|fun5'| Heap@@7 x@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10524) (x@@9 T@Ref) ) (! (dummyFunction_1468 (|err1#triggerStateless| x@@9))
 :qid |stdinbpl.722:15|
 :skolemid |47|
 :pattern ( (|err1'| Heap@@8 x@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10524) (x@@10 T@Ref) ) (! (dummyFunction_1468 (|err2#triggerStateless| x@@10))
 :qid |stdinbpl.785:15|
 :skolemid |51|
 :pattern ( (|err2'| Heap@@9 x@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10524) (x@@11 T@Ref) ) (! (|P#everUsed_5873| (P x@@11))
 :qid |stdinbpl.957:15|
 :skolemid |63|
 :pattern ( (|P#trigger_5873| Heap@@10 (P x@@11)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10524) (x@@12 T@Ref) ) (! (|Q#everUsed_5898| (Q x@@12))
 :qid |stdinbpl.1012:15|
 :skolemid |69|
 :pattern ( (|Q#trigger_5898| Heap@@11 (Q x@@12)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10524) (x@@13 T@Ref) ) (!  (and (= (fun3 Heap@@12 x@@13) (|fun3'| Heap@@12 x@@13)) (dummyFunction_1468 (|fun3#triggerStateless| x@@13)))
 :qid |stdinbpl.355:15|
 :skolemid |30|
 :pattern ( (fun3 Heap@@12 x@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10524) (x@@14 T@Ref) ) (!  (and (= (fun5 Heap@@13 x@@14) (|fun5'| Heap@@13 x@@14)) (dummyFunction_1468 (|fun5#triggerStateless| x@@14)))
 :qid |stdinbpl.609:15|
 :skolemid |42|
 :pattern ( (fun5 Heap@@13 x@@14))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10524) (x@@15 T@Ref) ) (!  (and (= (err1 Heap@@14 x@@15) (|err1'| Heap@@14 x@@15)) (dummyFunction_1468 (|err1#triggerStateless| x@@15)))
 :qid |stdinbpl.718:15|
 :skolemid |46|
 :pattern ( (err1 Heap@@14 x@@15))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10524) (x@@16 T@Ref) ) (!  (and (= (err2 Heap@@15 x@@16) (|err2'| Heap@@15 x@@16)) (dummyFunction_1468 (|err2#triggerStateless| x@@16)))
 :qid |stdinbpl.781:15|
 :skolemid |50|
 :pattern ( (err2 Heap@@15 x@@16))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10524) (ExhaleHeap T@PolymorphicMapType_10524) (Mask@@1 T@PolymorphicMapType_10545) (pm_f T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_22062_16907 Mask@@1 null pm_f) (IsPredicateField_5898_5899 pm_f)) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@16) null (PredicateMaskField_5898 pm_f)) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap) null (PredicateMaskField_5898 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@1) (IsPredicateField_5898_5899 pm_f) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap) null (PredicateMaskField_5898 pm_f)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10524) (ExhaleHeap@@0 T@PolymorphicMapType_10524) (Mask@@2 T@PolymorphicMapType_10545) (pm_f@@0 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_16906_16907 Mask@@2 null pm_f@@0) (IsPredicateField_5873_5874 pm_f@@0)) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@17) null (PredicateMaskField_5873 pm_f@@0)) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@0) null (PredicateMaskField_5873 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5873_5874 pm_f@@0) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@0) null (PredicateMaskField_5873 pm_f@@0)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10524) (ExhaleHeap@@1 T@PolymorphicMapType_10524) (Mask@@3 T@PolymorphicMapType_10545) (pm_f@@1 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_5608_16907 Mask@@3 null pm_f@@1) (IsPredicateField_5608_34206 pm_f@@1)) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@18) null (PredicateMaskField_5608 pm_f@@1)) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@1) null (PredicateMaskField_5608 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@1 Mask@@3) (IsPredicateField_5608_34206 pm_f@@1) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@1) null (PredicateMaskField_5608 pm_f@@1)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10524) (ExhaleHeap@@2 T@PolymorphicMapType_10524) (Mask@@4 T@PolymorphicMapType_10545) (pm_f@@2 T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_22062_16907 Mask@@4 null pm_f@@2) (IsWandField_22062_39887 pm_f@@2)) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@19) null (WandMaskField_22062 pm_f@@2)) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@2) null (WandMaskField_22062 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@2 Mask@@4) (IsWandField_22062_39887 pm_f@@2) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@2) null (WandMaskField_22062 pm_f@@2)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10524) (ExhaleHeap@@3 T@PolymorphicMapType_10524) (Mask@@5 T@PolymorphicMapType_10545) (pm_f@@3 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_16906_16907 Mask@@5 null pm_f@@3) (IsWandField_16906_39530 pm_f@@3)) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@20) null (WandMaskField_16906 pm_f@@3)) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@3) null (WandMaskField_16906 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@3 Mask@@5) (IsWandField_16906_39530 pm_f@@3) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@3) null (WandMaskField_16906 pm_f@@3)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10524) (ExhaleHeap@@4 T@PolymorphicMapType_10524) (Mask@@6 T@PolymorphicMapType_10545) (pm_f@@4 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_5608_16907 Mask@@6 null pm_f@@4) (IsWandField_5608_39173 pm_f@@4)) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@21) null (WandMaskField_5608 pm_f@@4)) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@4) null (WandMaskField_5608 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@4 Mask@@6) (IsWandField_5608_39173 pm_f@@4) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@4) null (WandMaskField_5608 pm_f@@4)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10524) (Mask@@7 T@PolymorphicMapType_10545) (x@@17 T@Ref) ) (!  (=> (state Heap@@22 Mask@@7) (= (|err1'| Heap@@22 x@@17) (|err1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@22) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@22) x@@17 h) f_7)) x@@17)))
 :qid |stdinbpl.735:15|
 :skolemid |49|
 :pattern ( (state Heap@@22 Mask@@7) (|err1'| Heap@@22 x@@17))
)))
(assert (forall ((x@@18 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@18) (P x2)) (= x@@18 x2))
 :qid |stdinbpl.948:15|
 :skolemid |61|
 :pattern ( (P x@@18) (P x2))
)))
(assert (forall ((x@@19 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@19) (|P#sm| x2@@0)) (= x@@19 x2@@0))
 :qid |stdinbpl.952:15|
 :skolemid |62|
 :pattern ( (|P#sm| x@@19) (|P#sm| x2@@0))
)))
(assert (forall ((x@@20 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Q x@@20) (Q x2@@1)) (= x@@20 x2@@1))
 :qid |stdinbpl.1003:15|
 :skolemid |67|
 :pattern ( (Q x@@20) (Q x2@@1))
)))
(assert (forall ((x@@21 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Q#sm| x@@21) (|Q#sm| x2@@2)) (= x@@21 x2@@2))
 :qid |stdinbpl.1007:15|
 :skolemid |68|
 :pattern ( (|Q#sm| x@@21) (|Q#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10524) (ExhaleHeap@@5 T@PolymorphicMapType_10524) (Mask@@8 T@PolymorphicMapType_10545) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@8) (=> (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@23) o_1 $allocated) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@8) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_22062_22063) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_22062_22062 p v_1 p w))
 :qid |stdinbpl.182:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22062_22062 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16906_16907) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16906_16906 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.182:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16906_16906 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_5608_16907) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_10584_10584 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.182:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10584_10584 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10524) (Mask@@9 T@PolymorphicMapType_10545) (x@@22 T@Ref) (y@@3 T@Ref) ) (!  (=> (state Heap@@24 Mask@@9) (= (|fun1'| Heap@@24 x@@22 y@@3) (|fun1#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@24) x@@22 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@24) y@@3 g))) x@@22 y@@3)))
 :qid |stdinbpl.225:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@9) (|fun1'| Heap@@24 x@@22 y@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10524) (Mask@@10 T@PolymorphicMapType_10545) (x@@23 T@Ref) (y@@4 T@Ref) ) (!  (=> (state Heap@@25 Mask@@10) (= (|fun2'| Heap@@25 x@@23 y@@4) (|fun2#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@25) x@@23 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@25) y@@4 g))) x@@23 y@@4)))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (state Heap@@25 Mask@@10) (|fun2'| Heap@@25 x@@23 y@@4))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10524) (Mask@@11 T@PolymorphicMapType_10545) (x@@24 T@Ref) (y@@5 T@Ref) ) (!  (=> (state Heap@@26 Mask@@11) (= (|fun4'| Heap@@26 x@@24 y@@5) (|fun4#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@26) x@@24 f_7)) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@26) null (P y@@5))) x@@24 y@@5)))
 :qid |stdinbpl.458:15|
 :skolemid |37|
 :pattern ( (state Heap@@26 Mask@@11) (|fun4'| Heap@@26 x@@24 y@@5))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10524) (Mask@@12 T@PolymorphicMapType_10545) (x@@25 T@Ref) (y@@6 T@Ref) ) (!  (=> (state Heap@@27 Mask@@12) (= (|er3'| Heap@@27 x@@25 y@@6) (|er3#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@27) x@@25 f_7)) (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@27) y@@6 g))) x@@25 y@@6)))
 :qid |stdinbpl.879:15|
 :skolemid |57|
 :pattern ( (state Heap@@27 Mask@@12) (|er3'| Heap@@27 x@@25 y@@6))
)))
(assert  (not (IsPredicateField_5608_1189 f_7)))
(assert  (not (IsWandField_5608_1189 f_7)))
(assert  (not (IsPredicateField_5608_1189 g)))
(assert  (not (IsWandField_5608_1189 g)))
(assert  (not (IsPredicateField_5612_5613 h)))
(assert  (not (IsWandField_5612_5613 h)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10524) (ExhaleHeap@@6 T@PolymorphicMapType_10524) (Mask@@13 T@PolymorphicMapType_10545) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@6 Mask@@13) (succHeap Heap@@28 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@6 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10545) (o_2@@14 T@Ref) (f_4@@14 T@Field_24200_24205) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@@14) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5898_50176 f_4@@14))) (not (IsWandField_5898_50192 f_4@@14))) (<= (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@@14) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@@14) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10545) (o_2@@15 T@Ref) (f_4@@15 T@Field_22062_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@@15) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5898_53 f_4@@15))) (not (IsWandField_5898_53 f_4@@15))) (<= (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@@15) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@@15) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10545) (o_2@@16 T@Ref) (f_4@@16 T@Field_22062_5613) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@@16) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5898_5613 f_4@@16))) (not (IsWandField_5898_5613 f_4@@16))) (<= (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@@16) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@@16) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10545) (o_2@@17 T@Ref) (f_4@@17 T@Field_22062_22063) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@@17) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5898_5899 f_4@@17))) (not (IsWandField_22062_39887 f_4@@17))) (<= (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@@17) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@@17) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10545) (o_2@@18 T@Ref) (f_4@@18 T@Field_22062_1189) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@@18) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5898_1189 f_4@@18))) (not (IsWandField_5898_1189 f_4@@18))) (<= (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@@18) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@@18) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10545) (o_2@@19 T@Ref) (f_4@@19 T@Field_18118_18123) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@@19) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5873_49345 f_4@@19))) (not (IsWandField_5873_49361 f_4@@19))) (<= (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@@19) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@@19) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10545) (o_2@@20 T@Ref) (f_4@@20 T@Field_16906_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@@20) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5873_53 f_4@@20))) (not (IsWandField_5873_53 f_4@@20))) (<= (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@@20) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@@20) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10545) (o_2@@21 T@Ref) (f_4@@21 T@Field_16906_5613) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@@21) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5873_5613 f_4@@21))) (not (IsWandField_5873_5613 f_4@@21))) (<= (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@@21) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@@21) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10545) (o_2@@22 T@Ref) (f_4@@22 T@Field_16906_16907) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@@22) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5873_5874 f_4@@22))) (not (IsWandField_16906_39530 f_4@@22))) (<= (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@@22) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@@22) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10545) (o_2@@23 T@Ref) (f_4@@23 T@Field_16906_1189) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@@23) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5873_1189 f_4@@23))) (not (IsWandField_5873_1189 f_4@@23))) (<= (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@@23) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@@23) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10545) (o_2@@24 T@Ref) (f_4@@24 T@Field_5608_18123) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@@24) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5608_48514 f_4@@24))) (not (IsWandField_5608_48530 f_4@@24))) (<= (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@@24) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@@24) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10545) (o_2@@25 T@Ref) (f_4@@25 T@Field_10584_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@@25) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5608_53 f_4@@25))) (not (IsWandField_5608_53 f_4@@25))) (<= (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@@25) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@@25) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10545) (o_2@@26 T@Ref) (f_4@@26 T@Field_10597_10598) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@@26) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5612_5613 f_4@@26))) (not (IsWandField_5612_5613 f_4@@26))) (<= (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@@26) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@@26) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10545) (o_2@@27 T@Ref) (f_4@@27 T@Field_5608_16907) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@@27) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5608_34206 f_4@@27))) (not (IsWandField_5608_39173 f_4@@27))) (<= (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@@27) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@@27) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10545) (o_2@@28 T@Ref) (f_4@@28 T@Field_13911_1189) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@@28) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_5608_1189 f_4@@28))) (not (IsWandField_5608_1189 f_4@@28))) (<= (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@@28) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@@28) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10545) (o_2@@29 T@Ref) (f_4@@29 T@Field_24200_24205) ) (! (= (HasDirectPerm_22062_33961 Mask@@29 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| Mask@@29) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_33961 Mask@@29 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10545) (o_2@@30 T@Ref) (f_4@@30 T@Field_22062_22063) ) (! (= (HasDirectPerm_22062_16907 Mask@@30 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| Mask@@30) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_16907 Mask@@30 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10545) (o_2@@31 T@Ref) (f_4@@31 T@Field_22062_53) ) (! (= (HasDirectPerm_22062_53 Mask@@31 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| Mask@@31) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_53 Mask@@31 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10545) (o_2@@32 T@Ref) (f_4@@32 T@Field_22062_5613) ) (! (= (HasDirectPerm_22062_5613 Mask@@32 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| Mask@@32) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_5613 Mask@@32 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10545) (o_2@@33 T@Ref) (f_4@@33 T@Field_22062_1189) ) (! (= (HasDirectPerm_22062_1189 Mask@@33 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| Mask@@33) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22062_1189 Mask@@33 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10545) (o_2@@34 T@Ref) (f_4@@34 T@Field_18118_18123) ) (! (= (HasDirectPerm_16906_32843 Mask@@34 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| Mask@@34) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_32843 Mask@@34 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10545) (o_2@@35 T@Ref) (f_4@@35 T@Field_16906_16907) ) (! (= (HasDirectPerm_16906_16907 Mask@@35 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| Mask@@35) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_16907 Mask@@35 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10545) (o_2@@36 T@Ref) (f_4@@36 T@Field_16906_53) ) (! (= (HasDirectPerm_16906_53 Mask@@36 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| Mask@@36) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_53 Mask@@36 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10545) (o_2@@37 T@Ref) (f_4@@37 T@Field_16906_5613) ) (! (= (HasDirectPerm_16906_5613 Mask@@37 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| Mask@@37) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_5613 Mask@@37 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_10545) (o_2@@38 T@Ref) (f_4@@38 T@Field_16906_1189) ) (! (= (HasDirectPerm_16906_1189 Mask@@38 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| Mask@@38) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16906_1189 Mask@@38 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_10545) (o_2@@39 T@Ref) (f_4@@39 T@Field_5608_18123) ) (! (= (HasDirectPerm_5608_31682 Mask@@39 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| Mask@@39) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5608_31682 Mask@@39 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_10545) (o_2@@40 T@Ref) (f_4@@40 T@Field_5608_16907) ) (! (= (HasDirectPerm_5608_16907 Mask@@40 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| Mask@@40) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5608_16907 Mask@@40 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_10545) (o_2@@41 T@Ref) (f_4@@41 T@Field_10584_53) ) (! (= (HasDirectPerm_5608_53 Mask@@41 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| Mask@@41) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5608_53 Mask@@41 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_10545) (o_2@@42 T@Ref) (f_4@@42 T@Field_10597_10598) ) (! (= (HasDirectPerm_5612_5613 Mask@@42 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| Mask@@42) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5612_5613 Mask@@42 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_10545) (o_2@@43 T@Ref) (f_4@@43 T@Field_13911_1189) ) (! (= (HasDirectPerm_5608_1189 Mask@@43 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| Mask@@43) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5608_1189 Mask@@43 o_2@@43 f_4@@43))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10524) (Mask@@44 T@PolymorphicMapType_10545) (b_24@@0 Bool) (x@@26 T@Ref) ) (!  (=> (state Heap@@29 Mask@@44) (= (|fun6'| Heap@@29 b_24@@0 x@@26) (|fun6#frame| (FrameFragment_8612 (ite b_24@@0 (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@29) x@@26 f_7)) EmptyFrame)) b_24@@0 x@@26)))
 :qid |stdinbpl.557:15|
 :skolemid |41|
 :pattern ( (state Heap@@29 Mask@@44) (|fun6'| Heap@@29 b_24@@0 x@@26))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10524) (Mask@@45 T@PolymorphicMapType_10545) (x@@27 T@Ref) ) (!  (=> (and (state Heap@@30 Mask@@45) (< AssumeFunctionsAbove 2)) (= (fun5 Heap@@30 x@@27) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@30) x@@27 f_7) (ite (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@30) x@@27 h) null) 0 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@30) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@30) x@@27 h) g)))))
 :qid |stdinbpl.619:15|
 :skolemid |44|
 :pattern ( (state Heap@@30 Mask@@45) (fun5 Heap@@30 x@@27))
 :pattern ( (state Heap@@30 Mask@@45) (|fun5#triggerStateless| x@@27) (|Q#trigger_5898| Heap@@30 (Q x@@27)))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.170:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10524) (ExhaleHeap@@7 T@PolymorphicMapType_10524) (Mask@@46 T@PolymorphicMapType_10545) (o_1@@0 T@Ref) (f_2 T@Field_24200_24205) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@7 Mask@@46) (=> (HasDirectPerm_22062_33961 Mask@@46 o_1@@0 f_2) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@31) o_1@@0 f_2) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@7 Mask@@46) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10524) (ExhaleHeap@@8 T@PolymorphicMapType_10524) (Mask@@47 T@PolymorphicMapType_10545) (o_1@@1 T@Ref) (f_2@@0 T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@8 Mask@@47) (=> (HasDirectPerm_22062_16907 Mask@@47 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@32) o_1@@1 f_2@@0) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@8 Mask@@47) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10524) (ExhaleHeap@@9 T@PolymorphicMapType_10524) (Mask@@48 T@PolymorphicMapType_10545) (o_1@@2 T@Ref) (f_2@@1 T@Field_22062_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@9 Mask@@48) (=> (HasDirectPerm_22062_53 Mask@@48 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@33) o_1@@2 f_2@@1) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@9 Mask@@48) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10524) (ExhaleHeap@@10 T@PolymorphicMapType_10524) (Mask@@49 T@PolymorphicMapType_10545) (o_1@@3 T@Ref) (f_2@@2 T@Field_22062_5613) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@10 Mask@@49) (=> (HasDirectPerm_22062_5613 Mask@@49 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@34) o_1@@3 f_2@@2) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@10 Mask@@49) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10524) (ExhaleHeap@@11 T@PolymorphicMapType_10524) (Mask@@50 T@PolymorphicMapType_10545) (o_1@@4 T@Ref) (f_2@@3 T@Field_22062_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@11 Mask@@50) (=> (HasDirectPerm_22062_1189 Mask@@50 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@35) o_1@@4 f_2@@3) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@11 Mask@@50) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10524) (ExhaleHeap@@12 T@PolymorphicMapType_10524) (Mask@@51 T@PolymorphicMapType_10545) (o_1@@5 T@Ref) (f_2@@4 T@Field_18118_18123) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@12 Mask@@51) (=> (HasDirectPerm_16906_32843 Mask@@51 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@36) o_1@@5 f_2@@4) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@12 Mask@@51) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10524) (ExhaleHeap@@13 T@PolymorphicMapType_10524) (Mask@@52 T@PolymorphicMapType_10545) (o_1@@6 T@Ref) (f_2@@5 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@13 Mask@@52) (=> (HasDirectPerm_16906_16907 Mask@@52 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@37) o_1@@6 f_2@@5) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@13 Mask@@52) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10524) (ExhaleHeap@@14 T@PolymorphicMapType_10524) (Mask@@53 T@PolymorphicMapType_10545) (o_1@@7 T@Ref) (f_2@@6 T@Field_16906_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@14 Mask@@53) (=> (HasDirectPerm_16906_53 Mask@@53 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@38) o_1@@7 f_2@@6) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@14 Mask@@53) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10524) (ExhaleHeap@@15 T@PolymorphicMapType_10524) (Mask@@54 T@PolymorphicMapType_10545) (o_1@@8 T@Ref) (f_2@@7 T@Field_16906_5613) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@15 Mask@@54) (=> (HasDirectPerm_16906_5613 Mask@@54 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@39) o_1@@8 f_2@@7) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@15 Mask@@54) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10524) (ExhaleHeap@@16 T@PolymorphicMapType_10524) (Mask@@55 T@PolymorphicMapType_10545) (o_1@@9 T@Ref) (f_2@@8 T@Field_16906_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@16 Mask@@55) (=> (HasDirectPerm_16906_1189 Mask@@55 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@40) o_1@@9 f_2@@8) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@16 Mask@@55) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10524) (ExhaleHeap@@17 T@PolymorphicMapType_10524) (Mask@@56 T@PolymorphicMapType_10545) (o_1@@10 T@Ref) (f_2@@9 T@Field_5608_18123) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@17 Mask@@56) (=> (HasDirectPerm_5608_31682 Mask@@56 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@41) o_1@@10 f_2@@9) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@17 Mask@@56) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10524) (ExhaleHeap@@18 T@PolymorphicMapType_10524) (Mask@@57 T@PolymorphicMapType_10545) (o_1@@11 T@Ref) (f_2@@10 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@18 Mask@@57) (=> (HasDirectPerm_5608_16907 Mask@@57 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@42) o_1@@11 f_2@@10) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@18 Mask@@57) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_10524) (ExhaleHeap@@19 T@PolymorphicMapType_10524) (Mask@@58 T@PolymorphicMapType_10545) (o_1@@12 T@Ref) (f_2@@11 T@Field_10584_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@19 Mask@@58) (=> (HasDirectPerm_5608_53 Mask@@58 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@43) o_1@@12 f_2@@11) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@19 Mask@@58) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_10524) (ExhaleHeap@@20 T@PolymorphicMapType_10524) (Mask@@59 T@PolymorphicMapType_10545) (o_1@@13 T@Ref) (f_2@@12 T@Field_10597_10598) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@20 Mask@@59) (=> (HasDirectPerm_5612_5613 Mask@@59 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@44) o_1@@13 f_2@@12) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@20 Mask@@59) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_10524) (ExhaleHeap@@21 T@PolymorphicMapType_10524) (Mask@@60 T@PolymorphicMapType_10545) (o_1@@14 T@Ref) (f_2@@13 T@Field_13911_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@21 Mask@@60) (=> (HasDirectPerm_5608_1189 Mask@@60 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@45) o_1@@14 f_2@@13) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@21 Mask@@60) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_24200_24205) ) (! (= (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_22062_53) ) (! (= (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_22062_5613) ) (! (= (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_22062_22063) ) (! (= (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_22062_1189) ) (! (= (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_18118_18123) ) (! (= (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_16906_53) ) (! (= (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_16906_5613) ) (! (= (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_16906_16907) ) (! (= (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_16906_1189) ) (! (= (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_5608_18123) ) (! (= (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_10584_53) ) (! (= (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_10597_10598) ) (! (= (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_5608_16907) ) (! (= (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_13911_1189) ) (! (= (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_10524) (x@@28 T@Ref) (y@@7 T@Ref) ) (!  (and (= (fun1 Heap@@46 x@@28 y@@7) (|fun1'| Heap@@46 x@@28 y@@7)) (dummyFunction_1468 (|fun1#triggerStateless| x@@28 y@@7)))
 :qid |stdinbpl.208:15|
 :skolemid |22|
 :pattern ( (fun1 Heap@@46 x@@28 y@@7))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_10524) (x@@29 T@Ref) (y@@8 T@Ref) ) (!  (and (= (fun2 Heap@@47 x@@29 y@@8) (|fun2'| Heap@@47 x@@29 y@@8)) (dummyFunction_1468 (|fun2#triggerStateless| x@@29 y@@8)))
 :qid |stdinbpl.282:15|
 :skolemid |26|
 :pattern ( (fun2 Heap@@47 x@@29 y@@8))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_10524) (x@@30 T@Ref) (y@@9 T@Ref) ) (!  (and (= (fun4 Heap@@48 x@@30 y@@9) (|fun4'| Heap@@48 x@@30 y@@9)) (dummyFunction_1468 (|fun4#triggerStateless| x@@30 y@@9)))
 :qid |stdinbpl.441:15|
 :skolemid |34|
 :pattern ( (fun4 Heap@@48 x@@30 y@@9))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_10524) (b_24@@1 Bool) (x@@31 T@Ref) ) (!  (and (= (fun6 Heap@@49 b_24@@1 x@@31) (|fun6'| Heap@@49 b_24@@1 x@@31)) (dummyFunction_1468 (|fun6#triggerStateless| b_24@@1 x@@31)))
 :qid |stdinbpl.540:15|
 :skolemid |38|
 :pattern ( (fun6 Heap@@49 b_24@@1 x@@31))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_10524) (x@@32 T@Ref) (y@@10 T@Ref) ) (!  (and (= (er3 Heap@@50 x@@32 y@@10) (|er3'| Heap@@50 x@@32 y@@10)) (dummyFunction_1468 (|er3#triggerStateless| x@@32 y@@10)))
 :qid |stdinbpl.862:15|
 :skolemid |54|
 :pattern ( (er3 Heap@@50 x@@32 y@@10))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_10524) (Mask@@61 T@PolymorphicMapType_10545) (x@@33 T@Ref) (y@@11 T@Ref) ) (!  (=> (and (state Heap@@51 Mask@@61) (< AssumeFunctionsAbove 0)) (=> (= x@@33 y@@11) (= (fun2 Heap@@51 x@@33 y@@11) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@51) y@@11 f_7) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@51) x@@33 g)))))
 :qid |stdinbpl.292:15|
 :skolemid |28|
 :pattern ( (state Heap@@51 Mask@@61) (fun2 Heap@@51 x@@33 y@@11))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_10524) (Mask@@62 T@PolymorphicMapType_10545) (x@@34 T@Ref) (y@@12 T@Ref) ) (!  (=> (and (state Heap@@52 Mask@@62) (< AssumeFunctionsAbove 6)) (=> (= x@@34 y@@12) (= (fun1 Heap@@52 x@@34 y@@12) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@52) y@@12 f_7) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@52) x@@34 g)))))
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (state Heap@@52 Mask@@62) (fun1 Heap@@52 x@@34 y@@12))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_10524) (Mask@@63 T@PolymorphicMapType_10545) (x@@35 T@Ref) (y@@13 T@Ref) ) (!  (=> (and (state Heap@@53 Mask@@63) (< AssumeFunctionsAbove 7)) (=> (= x@@35 y@@13) (= (fun4 Heap@@53 x@@35 y@@13) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@53) y@@13 f_7) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@53) y@@13 g)))))
 :qid |stdinbpl.451:15|
 :skolemid |36|
 :pattern ( (state Heap@@53 Mask@@63) (fun4 Heap@@53 x@@35 y@@13))
 :pattern ( (state Heap@@53 Mask@@63) (|fun4#triggerStateless| x@@35 y@@13) (|P#trigger_5873| Heap@@53 (P y@@13)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10545) (SummandMask1 T@PolymorphicMapType_10545) (SummandMask2 T@PolymorphicMapType_10545) (o_2@@59 T@Ref) (f_4@@59 T@Field_24200_24205) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10545_5898_46735#PolymorphicMapType_10545| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10545) (SummandMask1@@0 T@PolymorphicMapType_10545) (SummandMask2@@0 T@PolymorphicMapType_10545) (o_2@@60 T@Ref) (f_4@@60 T@Field_22062_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10545_5898_53#PolymorphicMapType_10545| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10545) (SummandMask1@@1 T@PolymorphicMapType_10545) (SummandMask2@@1 T@PolymorphicMapType_10545) (o_2@@61 T@Ref) (f_4@@61 T@Field_22062_5613) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10545_5898_5613#PolymorphicMapType_10545| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10545) (SummandMask1@@2 T@PolymorphicMapType_10545) (SummandMask2@@2 T@PolymorphicMapType_10545) (o_2@@62 T@Ref) (f_4@@62 T@Field_22062_22063) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10545_5898_5899#PolymorphicMapType_10545| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10545) (SummandMask1@@3 T@PolymorphicMapType_10545) (SummandMask2@@3 T@PolymorphicMapType_10545) (o_2@@63 T@Ref) (f_4@@63 T@Field_22062_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10545_5898_1189#PolymorphicMapType_10545| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10545) (SummandMask1@@4 T@PolymorphicMapType_10545) (SummandMask2@@4 T@PolymorphicMapType_10545) (o_2@@64 T@Ref) (f_4@@64 T@Field_18118_18123) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10545_5873_46324#PolymorphicMapType_10545| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10545) (SummandMask1@@5 T@PolymorphicMapType_10545) (SummandMask2@@5 T@PolymorphicMapType_10545) (o_2@@65 T@Ref) (f_4@@65 T@Field_16906_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10545_5873_53#PolymorphicMapType_10545| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10545) (SummandMask1@@6 T@PolymorphicMapType_10545) (SummandMask2@@6 T@PolymorphicMapType_10545) (o_2@@66 T@Ref) (f_4@@66 T@Field_16906_5613) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10545_5873_5613#PolymorphicMapType_10545| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10545) (SummandMask1@@7 T@PolymorphicMapType_10545) (SummandMask2@@7 T@PolymorphicMapType_10545) (o_2@@67 T@Ref) (f_4@@67 T@Field_16906_16907) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10545_5873_5874#PolymorphicMapType_10545| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10545) (SummandMask1@@8 T@PolymorphicMapType_10545) (SummandMask2@@8 T@PolymorphicMapType_10545) (o_2@@68 T@Ref) (f_4@@68 T@Field_16906_1189) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10545_5873_1189#PolymorphicMapType_10545| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10545) (SummandMask1@@9 T@PolymorphicMapType_10545) (SummandMask2@@9 T@PolymorphicMapType_10545) (o_2@@69 T@Ref) (f_4@@69 T@Field_5608_18123) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10545_5608_45913#PolymorphicMapType_10545| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10545) (SummandMask1@@10 T@PolymorphicMapType_10545) (SummandMask2@@10 T@PolymorphicMapType_10545) (o_2@@70 T@Ref) (f_4@@70 T@Field_10584_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10545_5608_53#PolymorphicMapType_10545| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10545) (SummandMask1@@11 T@PolymorphicMapType_10545) (SummandMask2@@11 T@PolymorphicMapType_10545) (o_2@@71 T@Ref) (f_4@@71 T@Field_10597_10598) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10545_5612_5613#PolymorphicMapType_10545| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10545) (SummandMask1@@12 T@PolymorphicMapType_10545) (SummandMask2@@12 T@PolymorphicMapType_10545) (o_2@@72 T@Ref) (f_4@@72 T@Field_5608_16907) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10545_5608_5874#PolymorphicMapType_10545| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10545) (SummandMask1@@13 T@PolymorphicMapType_10545) (SummandMask2@@13 T@PolymorphicMapType_10545) (o_2@@73 T@Ref) (f_4@@73 T@Field_13911_1189) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10545_5608_1189#PolymorphicMapType_10545| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_10524) (ExhaleHeap@@22 T@PolymorphicMapType_10524) (Mask@@64 T@PolymorphicMapType_10545) (pm_f@@5 T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@22 Mask@@64) (=> (and (HasDirectPerm_22062_16907 Mask@@64 null pm_f@@5) (IsPredicateField_5898_5899 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@54) o2 f_2@@14) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@54) o2@@0 f_2@@15) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@54) o2@@1 f_2@@16) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@54) o2@@2 f_2@@17) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@54) o2@@3 f_2@@18) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@54) o2@@4 f_2@@19) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@54) o2@@5 f_2@@20) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@54) o2@@6 f_2@@21) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@54) o2@@7 f_2@@22) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@54) o2@@8 f_2@@23) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@54) o2@@9 f_2@@24) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@54) o2@@10 f_2@@25) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@54) o2@@11 f_2@@26) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@54) o2@@12 f_2@@27) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) null (PredicateMaskField_5898 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@54) o2@@13 f_2@@28) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@22 Mask@@64) (IsPredicateField_5898_5899 pm_f@@5))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_10524) (ExhaleHeap@@23 T@PolymorphicMapType_10524) (Mask@@65 T@PolymorphicMapType_10545) (pm_f@@6 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@23 Mask@@65) (=> (and (HasDirectPerm_16906_16907 Mask@@65 null pm_f@@6) (IsPredicateField_5873_5874 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@55) o2@@14 f_2@@29) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@55) o2@@15 f_2@@30) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@55) o2@@16 f_2@@31) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@55) o2@@17 f_2@@32) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@55) o2@@18 f_2@@33) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@55) o2@@19 f_2@@34) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@55) o2@@20 f_2@@35) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@55) o2@@21 f_2@@36) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@55) o2@@22 f_2@@37) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) o2@@23 f_2@@38) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@55) o2@@24 f_2@@39) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@55) o2@@25 f_2@@40) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@55) o2@@26 f_2@@41) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@55) o2@@27 f_2@@42) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@55) null (PredicateMaskField_5873 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@55) o2@@28 f_2@@43) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@23 Mask@@65) (IsPredicateField_5873_5874 pm_f@@6))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_10524) (ExhaleHeap@@24 T@PolymorphicMapType_10524) (Mask@@66 T@PolymorphicMapType_10545) (pm_f@@7 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@24 Mask@@66) (=> (and (HasDirectPerm_5608_16907 Mask@@66 null pm_f@@7) (IsPredicateField_5608_34206 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@56) o2@@29 f_2@@44) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@56) o2@@30 f_2@@45) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@56) o2@@31 f_2@@46) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@56) o2@@32 f_2@@47) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) o2@@33 f_2@@48) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@56) o2@@34 f_2@@49) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@56) o2@@35 f_2@@50) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@56) o2@@36 f_2@@51) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@56) o2@@37 f_2@@52) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@56) o2@@38 f_2@@53) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@56) o2@@39 f_2@@54) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@56) o2@@40 f_2@@55) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@56) o2@@41 f_2@@56) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@56) o2@@42 f_2@@57) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@56) null (PredicateMaskField_5608 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@56) o2@@43 f_2@@58) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@24 Mask@@66) (IsPredicateField_5608_34206 pm_f@@7))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_10524) (ExhaleHeap@@25 T@PolymorphicMapType_10524) (Mask@@67 T@PolymorphicMapType_10545) (pm_f@@8 T@Field_22062_22063) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@25 Mask@@67) (=> (and (HasDirectPerm_22062_16907 Mask@@67 null pm_f@@8) (IsWandField_22062_39887 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@57) o2@@44 f_2@@59) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@57) o2@@45 f_2@@60) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@57) o2@@46 f_2@@61) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@57) o2@@47 f_2@@62) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@57) o2@@48 f_2@@63) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@57) o2@@49 f_2@@64) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@57) o2@@50 f_2@@65) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@57) o2@@51 f_2@@66) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@57) o2@@52 f_2@@67) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@57) o2@@53 f_2@@68) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@57) o2@@54 f_2@@69) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@57) o2@@55 f_2@@70) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@57) o2@@56 f_2@@71) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@57) o2@@57 f_2@@72) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) null (WandMaskField_22062 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@57) o2@@58 f_2@@73) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@25 Mask@@67) (IsWandField_22062_39887 pm_f@@8))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_10524) (ExhaleHeap@@26 T@PolymorphicMapType_10524) (Mask@@68 T@PolymorphicMapType_10545) (pm_f@@9 T@Field_16906_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@26 Mask@@68) (=> (and (HasDirectPerm_16906_16907 Mask@@68 null pm_f@@9) (IsWandField_16906_39530 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@58) o2@@59 f_2@@74) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@58) o2@@60 f_2@@75) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@58) o2@@61 f_2@@76) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@58) o2@@62 f_2@@77) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@58) o2@@63 f_2@@78) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@58) o2@@64 f_2@@79) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@58) o2@@65 f_2@@80) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@58) o2@@66 f_2@@81) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@58) o2@@67 f_2@@82) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) o2@@68 f_2@@83) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@58) o2@@69 f_2@@84) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@58) o2@@70 f_2@@85) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@58) o2@@71 f_2@@86) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@58) o2@@72 f_2@@87) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@58) null (WandMaskField_16906 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@58) o2@@73 f_2@@88) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@26 Mask@@68) (IsWandField_16906_39530 pm_f@@9))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_10524) (ExhaleHeap@@27 T@PolymorphicMapType_10524) (Mask@@69 T@PolymorphicMapType_10545) (pm_f@@10 T@Field_5608_16907) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@27 Mask@@69) (=> (and (HasDirectPerm_5608_16907 Mask@@69 null pm_f@@10) (IsWandField_5608_39173 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_13911_1189) ) (!  (=> (select (|PolymorphicMapType_11073_5610_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@59) o2@@74 f_2@@89) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_10597_10598) ) (!  (=> (select (|PolymorphicMapType_11073_5612_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@59) o2@@75 f_2@@90) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_10584_53) ) (!  (=> (select (|PolymorphicMapType_11073_5610_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@59) o2@@76 f_2@@91) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_5608_16907) ) (!  (=> (select (|PolymorphicMapType_11073_5610_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@59) o2@@77 f_2@@92) (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_5608_18123) ) (!  (=> (select (|PolymorphicMapType_11073_5610_35988#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) o2@@78 f_2@@93) (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_16906_1189) ) (!  (=> (select (|PolymorphicMapType_11073_16906_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@59) o2@@79 f_2@@94) (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_16906_5613) ) (!  (=> (select (|PolymorphicMapType_11073_16906_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@59) o2@@80 f_2@@95) (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_16906_53) ) (!  (=> (select (|PolymorphicMapType_11073_16906_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@59) o2@@81 f_2@@96) (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_16906_16907) ) (!  (=> (select (|PolymorphicMapType_11073_16906_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@59) o2@@82 f_2@@97) (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_18118_18123) ) (!  (=> (select (|PolymorphicMapType_11073_16906_37036#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@59) o2@@83 f_2@@98) (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_22062_1189) ) (!  (=> (select (|PolymorphicMapType_11073_22062_1204#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@59) o2@@84 f_2@@99) (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_22062_5613) ) (!  (=> (select (|PolymorphicMapType_11073_22062_5613#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@59) o2@@85 f_2@@100) (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_22062_53) ) (!  (=> (select (|PolymorphicMapType_11073_22062_53#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@59) o2@@86 f_2@@101) (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_22062_22063) ) (!  (=> (select (|PolymorphicMapType_11073_22062_16907#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@59) o2@@87 f_2@@102) (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_24200_24205) ) (!  (=> (select (|PolymorphicMapType_11073_22062_38084#PolymorphicMapType_11073| (select (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@59) null (WandMaskField_5608 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@59) o2@@88 f_2@@103) (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@27 Mask@@69) (IsWandField_5608_39173 pm_f@@10))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_10524) (Mask@@70 T@PolymorphicMapType_10545) (b_24@@2 Bool) (x@@36 T@Ref) ) (!  (=> (and (state Heap@@60 Mask@@70) (< AssumeFunctionsAbove 5)) (= (fun6 Heap@@60 b_24@@2 x@@36) (ite b_24@@2 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@60) x@@36 f_7) 0)))
 :qid |stdinbpl.550:15|
 :skolemid |40|
 :pattern ( (state Heap@@60 Mask@@70) (fun6 Heap@@60 b_24@@2 x@@36))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_10524) (Mask@@71 T@PolymorphicMapType_10545) (x@@37 T@Ref) ) (!  (=> (state Heap@@61 Mask@@71) (= (|fun3'| Heap@@61 x@@37) (|fun3#frame| (select (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@61) null (P x@@37)) x@@37)))
 :qid |stdinbpl.372:15|
 :skolemid |33|
 :pattern ( (state Heap@@61 Mask@@71) (|fun3'| Heap@@61 x@@37))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_10524) (Mask@@72 T@PolymorphicMapType_10545) (x@@38 T@Ref) ) (!  (=> (state Heap@@62 Mask@@72) (= (|fun5'| Heap@@62 x@@38) (|fun5#frame| (select (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@62) null (Q x@@38)) x@@38)))
 :qid |stdinbpl.626:15|
 :skolemid |45|
 :pattern ( (state Heap@@62 Mask@@72) (|fun5'| Heap@@62 x@@38))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_10524) (Mask@@73 T@PolymorphicMapType_10545) (x@@39 T@Ref) ) (!  (=> (state Heap@@63 Mask@@73) (= (|err2'| Heap@@63 x@@39) (|err2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@63) x@@39 f_7)) x@@39)))
 :qid |stdinbpl.798:15|
 :skolemid |53|
 :pattern ( (state Heap@@63 Mask@@73) (|err2'| Heap@@63 x@@39))
)))
(assert (forall ((x@@40 T@Ref) ) (! (= (getPredWandId_5873_5874 (P x@@40)) 0)
 :qid |stdinbpl.942:15|
 :skolemid |60|
 :pattern ( (P x@@40))
)))
(assert (forall ((x@@41 T@Ref) ) (! (= (getPredWandId_5898_5899 (Q x@@41)) 1)
 :qid |stdinbpl.997:15|
 :skolemid |66|
 :pattern ( (Q x@@41))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_10524) (o T@Ref) (f_3 T@Field_24200_24205) (v T@PolymorphicMapType_11073) ) (! (succHeap Heap@@64 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@64) (store (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@64) o f_3 v) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@64) (store (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@64) o f_3 v) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@64) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_10524) (o@@0 T@Ref) (f_3@@0 T@Field_22062_22063) (v@@0 T@FrameType) ) (! (succHeap Heap@@65 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@65) (store (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@65) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@65) (store (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@65) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@65) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_10524) (o@@1 T@Ref) (f_3@@1 T@Field_22062_1189) (v@@1 Int) ) (! (succHeap Heap@@66 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@66) (store (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@66) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@66) (store (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@66) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@66) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_10524) (o@@2 T@Ref) (f_3@@2 T@Field_22062_5613) (v@@2 T@Ref) ) (! (succHeap Heap@@67 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@67) (store (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@67) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@67) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@67) (store (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@67) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_10524) (o@@3 T@Ref) (f_3@@3 T@Field_22062_53) (v@@3 Bool) ) (! (succHeap Heap@@68 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@68) (store (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@68) o@@3 f_3@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@68) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@68) (store (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@68) o@@3 f_3@@3 v@@3)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_10524) (o@@4 T@Ref) (f_3@@4 T@Field_18118_18123) (v@@4 T@PolymorphicMapType_11073) ) (! (succHeap Heap@@69 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@69) (store (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@69) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@69) (store (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@69) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@69) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_10524) (o@@5 T@Ref) (f_3@@5 T@Field_16906_16907) (v@@5 T@FrameType) ) (! (succHeap Heap@@70 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@70) (store (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@70) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@70) (store (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@70) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@70) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_10524) (o@@6 T@Ref) (f_3@@6 T@Field_16906_1189) (v@@6 Int) ) (! (succHeap Heap@@71 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@71) (store (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@71) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@71) (store (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@71) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@71) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_10524) (o@@7 T@Ref) (f_3@@7 T@Field_16906_5613) (v@@7 T@Ref) ) (! (succHeap Heap@@72 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@72) (store (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@72) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@72) (store (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@72) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@72) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_10524) (o@@8 T@Ref) (f_3@@8 T@Field_16906_53) (v@@8 Bool) ) (! (succHeap Heap@@73 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@73) (store (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@73) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@73) (store (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@73) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@73) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_10524) (o@@9 T@Ref) (f_3@@9 T@Field_5608_18123) (v@@9 T@PolymorphicMapType_11073) ) (! (succHeap Heap@@74 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@74) (store (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@74) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@74) (store (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@74) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@74) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_10524) (o@@10 T@Ref) (f_3@@10 T@Field_5608_16907) (v@@10 T@FrameType) ) (! (succHeap Heap@@75 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@75) (store (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@75) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@75) (store (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@75) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@75) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_10524) (o@@11 T@Ref) (f_3@@11 T@Field_13911_1189) (v@@11 Int) ) (! (succHeap Heap@@76 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@76) (store (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@76) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@76) (store (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@76) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@76) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_10524) (o@@12 T@Ref) (f_3@@12 T@Field_10597_10598) (v@@12 T@Ref) ) (! (succHeap Heap@@77 (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@77) (store (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@77) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@77) (store (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@77) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@77) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_10524) (o@@13 T@Ref) (f_3@@13 T@Field_10584_53) (v@@13 Bool) ) (! (succHeap Heap@@78 (PolymorphicMapType_10524 (store (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@78) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10524 (store (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@78) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5873_5874#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5877_18210#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5898_5899#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5902_24292#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_16907#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_5608_31724#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_5613#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_16906_53#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_1189#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_5613#PolymorphicMapType_10524| Heap@@78) (|PolymorphicMapType_10524_22062_53#PolymorphicMapType_10524| Heap@@78)))
)))
(assert (forall ((x@@42 T@Ref) ) (! (= (PredicateMaskField_5873 (P x@@42)) (|P#sm| x@@42))
 :qid |stdinbpl.934:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_5873 (P x@@42)))
)))
(assert (forall ((x@@43 T@Ref) ) (! (= (PredicateMaskField_5898 (Q x@@43)) (|Q#sm| x@@43))
 :qid |stdinbpl.989:15|
 :skolemid |64|
 :pattern ( (PredicateMaskField_5898 (Q x@@43)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_10597_10598) (Heap@@79 T@PolymorphicMapType_10524) ) (!  (=> (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@79) o@@14 $allocated) (select (|PolymorphicMapType_10524_5480_53#PolymorphicMapType_10524| Heap@@79) (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@79) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10524_5483_5484#PolymorphicMapType_10524| Heap@@79) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_22062_22063) (v_1@@2 T@FrameType) (q T@Field_22062_22063) (w@@2 T@FrameType) (r T@Field_22062_22063) (u T@FrameType) ) (!  (=> (and (InsidePredicate_22062_22062 p@@3 v_1@@2 q w@@2) (InsidePredicate_22062_22062 q w@@2 r u)) (InsidePredicate_22062_22062 p@@3 v_1@@2 r u))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_22062 p@@3 v_1@@2 q w@@2) (InsidePredicate_22062_22062 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_22062_22063) (v_1@@3 T@FrameType) (q@@0 T@Field_22062_22063) (w@@3 T@FrameType) (r@@0 T@Field_16906_16907) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_22062 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_22062_16906 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_22062_16906 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_22062 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_22062_16906 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_22062_22063) (v_1@@4 T@FrameType) (q@@1 T@Field_22062_22063) (w@@4 T@FrameType) (r@@1 T@Field_5608_16907) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_22062 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_22062_10584 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_22062_10584 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_22062 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_22062_10584 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_22062_22063) (v_1@@5 T@FrameType) (q@@2 T@Field_16906_16907) (w@@5 T@FrameType) (r@@2 T@Field_22062_22063) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_16906 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16906_22062 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_22062_22062 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_16906 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16906_22062 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_22062_22063) (v_1@@6 T@FrameType) (q@@3 T@Field_16906_16907) (w@@6 T@FrameType) (r@@3 T@Field_16906_16907) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_16906 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16906_16906 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_22062_16906 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_16906 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16906_16906 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_22062_22063) (v_1@@7 T@FrameType) (q@@4 T@Field_16906_16907) (w@@7 T@FrameType) (r@@4 T@Field_5608_16907) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_16906 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16906_10584 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_22062_10584 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_16906 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16906_10584 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_22062_22063) (v_1@@8 T@FrameType) (q@@5 T@Field_5608_16907) (w@@8 T@FrameType) (r@@5 T@Field_22062_22063) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_10584 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10584_22062 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_22062_22062 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_10584 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10584_22062 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_22062_22063) (v_1@@9 T@FrameType) (q@@6 T@Field_5608_16907) (w@@9 T@FrameType) (r@@6 T@Field_16906_16907) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_10584 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10584_16906 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_22062_16906 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_10584 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10584_16906 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_22062_22063) (v_1@@10 T@FrameType) (q@@7 T@Field_5608_16907) (w@@10 T@FrameType) (r@@7 T@Field_5608_16907) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_22062_10584 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10584_10584 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_22062_10584 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22062_10584 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10584_10584 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_16906_16907) (v_1@@11 T@FrameType) (q@@8 T@Field_22062_22063) (w@@11 T@FrameType) (r@@8 T@Field_22062_22063) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_22062 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_22062_22062 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16906_22062 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_22062 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_22062_22062 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_16906_16907) (v_1@@12 T@FrameType) (q@@9 T@Field_22062_22063) (w@@12 T@FrameType) (r@@9 T@Field_16906_16907) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_22062 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_22062_16906 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16906_16906 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_22062 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_22062_16906 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_16906_16907) (v_1@@13 T@FrameType) (q@@10 T@Field_22062_22063) (w@@13 T@FrameType) (r@@10 T@Field_5608_16907) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_22062 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_22062_10584 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16906_10584 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_22062 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_22062_10584 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_16906_16907) (v_1@@14 T@FrameType) (q@@11 T@Field_16906_16907) (w@@14 T@FrameType) (r@@11 T@Field_22062_22063) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_16906 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16906_22062 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16906_22062 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_16906 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16906_22062 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_16906_16907) (v_1@@15 T@FrameType) (q@@12 T@Field_16906_16907) (w@@15 T@FrameType) (r@@12 T@Field_16906_16907) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_16906 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16906_16906 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16906_16906 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_16906 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16906_16906 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_16906_16907) (v_1@@16 T@FrameType) (q@@13 T@Field_16906_16907) (w@@16 T@FrameType) (r@@13 T@Field_5608_16907) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_16906 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16906_10584 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16906_10584 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_16906 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16906_10584 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_16906_16907) (v_1@@17 T@FrameType) (q@@14 T@Field_5608_16907) (w@@17 T@FrameType) (r@@14 T@Field_22062_22063) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_10584 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10584_22062 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16906_22062 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_10584 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10584_22062 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_16906_16907) (v_1@@18 T@FrameType) (q@@15 T@Field_5608_16907) (w@@18 T@FrameType) (r@@15 T@Field_16906_16907) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_10584 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10584_16906 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16906_16906 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_10584 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10584_16906 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_16906_16907) (v_1@@19 T@FrameType) (q@@16 T@Field_5608_16907) (w@@19 T@FrameType) (r@@16 T@Field_5608_16907) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16906_10584 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10584_10584 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16906_10584 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16906_10584 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10584_10584 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_5608_16907) (v_1@@20 T@FrameType) (q@@17 T@Field_22062_22063) (w@@20 T@FrameType) (r@@17 T@Field_22062_22063) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_22062 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_22062_22062 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_10584_22062 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_22062 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_22062_22062 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_5608_16907) (v_1@@21 T@FrameType) (q@@18 T@Field_22062_22063) (w@@21 T@FrameType) (r@@18 T@Field_16906_16907) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_22062 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_22062_16906 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_10584_16906 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_22062 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_22062_16906 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_5608_16907) (v_1@@22 T@FrameType) (q@@19 T@Field_22062_22063) (w@@22 T@FrameType) (r@@19 T@Field_5608_16907) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_22062 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_22062_10584 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_10584_10584 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_22062 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_22062_10584 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_5608_16907) (v_1@@23 T@FrameType) (q@@20 T@Field_16906_16907) (w@@23 T@FrameType) (r@@20 T@Field_22062_22063) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_16906 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16906_22062 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_10584_22062 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_16906 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16906_22062 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_5608_16907) (v_1@@24 T@FrameType) (q@@21 T@Field_16906_16907) (w@@24 T@FrameType) (r@@21 T@Field_16906_16907) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_16906 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16906_16906 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_10584_16906 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_16906 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16906_16906 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_5608_16907) (v_1@@25 T@FrameType) (q@@22 T@Field_16906_16907) (w@@25 T@FrameType) (r@@22 T@Field_5608_16907) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_16906 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16906_10584 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_10584_10584 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_16906 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16906_10584 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_5608_16907) (v_1@@26 T@FrameType) (q@@23 T@Field_5608_16907) (w@@26 T@FrameType) (r@@23 T@Field_22062_22063) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_10584 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10584_22062 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_10584_22062 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_10584 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10584_22062 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_5608_16907) (v_1@@27 T@FrameType) (q@@24 T@Field_5608_16907) (w@@27 T@FrameType) (r@@24 T@Field_16906_16907) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_10584 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10584_16906 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_10584_16906 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_10584 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10584_16906 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_5608_16907) (v_1@@28 T@FrameType) (q@@25 T@Field_5608_16907) (w@@28 T@FrameType) (r@@25 T@Field_5608_16907) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_10584_10584 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10584_10584 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_10584_10584 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.177:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10584_10584 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10584_10584 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_10524) (Mask@@74 T@PolymorphicMapType_10545) (x@@44 T@Ref) ) (!  (=> (and (state Heap@@80 Mask@@74) (< AssumeFunctionsAbove 8)) (= (err1 Heap@@80 x@@44) 0))
 :qid |stdinbpl.728:15|
 :skolemid |48|
 :pattern ( (state Heap@@80 Mask@@74) (err1 Heap@@80 x@@44))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_10524) (Mask@@75 T@PolymorphicMapType_10545) (x@@45 T@Ref) ) (!  (=> (and (state Heap@@81 Mask@@75) (< AssumeFunctionsAbove 4)) (=> (= (err1 Heap@@81 x@@45) 0) (= (err2 Heap@@81 x@@45) 0)))
 :qid |stdinbpl.791:15|
 :skolemid |52|
 :pattern ( (state Heap@@81 Mask@@75) (err2 Heap@@81 x@@45))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_10524) (Mask@@76 T@PolymorphicMapType_10545) (x@@46 T@Ref) (y@@14 T@Ref) ) (!  (=> (and (state Heap@@82 Mask@@76) (< AssumeFunctionsAbove 3)) (= (er3 Heap@@82 x@@46 y@@14) (+ (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@82) y@@14 f_7) (select (|PolymorphicMapType_10524_5608_1189#PolymorphicMapType_10524| Heap@@82) x@@46 g))))
 :qid |stdinbpl.872:15|
 :skolemid |56|
 :pattern ( (state Heap@@82 Mask@@76) (er3 Heap@@82 x@@46 y@@14))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

