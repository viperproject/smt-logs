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
(declare-sort T@Field_16356_53 0)
(declare-sort T@Field_16369_16370 0)
(declare-sort T@Field_19683_1189 0)
(declare-sort T@Field_20071_20072 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_22193_22198 0)
(declare-sort T@Field_23172_23173 0)
(declare-sort T@Field_23185_23190 0)
(declare-sort T@Field_8004_8040 0)
(declare-sort T@Field_8004_22198 0)
(declare-sort T@Field_8039_1189 0)
(declare-sort T@Field_8039_8007 0)
(declare-sort T@Field_8039_53 0)
(declare-sort T@Field_8064_1189 0)
(declare-sort T@Field_8064_8007 0)
(declare-sort T@Field_8064_53 0)
(declare-datatypes ((T@PolymorphicMapType_16317 0)) (((PolymorphicMapType_16317 (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| (Array T@Ref T@Field_20071_20072 Real)) (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| (Array T@Ref T@Field_19683_1189 Real)) (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| (Array T@Ref T@Field_16369_16370 Real)) (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| (Array T@Ref T@Field_23172_23173 Real)) (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| (Array T@Ref T@Field_8064_1189 Real)) (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| (Array T@Ref T@Field_8064_8007 Real)) (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| (Array T@Ref T@Field_8064_53 Real)) (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| (Array T@Ref T@Field_22193_22198 Real)) (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| (Array T@Ref T@Field_8004_8040 Real)) (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| (Array T@Ref T@Field_16356_53 Real)) (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| (Array T@Ref T@Field_8004_22198 Real)) (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| (Array T@Ref T@Field_8039_1189 Real)) (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| (Array T@Ref T@Field_8039_8007 Real)) (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| (Array T@Ref T@Field_8039_53 Real)) (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| (Array T@Ref T@Field_23185_23190 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16845 0)) (((PolymorphicMapType_16845 (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (Array T@Ref T@Field_19683_1189 Bool)) (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (Array T@Ref T@Field_16369_16370 Bool)) (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (Array T@Ref T@Field_16356_53 Bool)) (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (Array T@Ref T@Field_8004_8040 Bool)) (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (Array T@Ref T@Field_8004_22198 Bool)) (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (Array T@Ref T@Field_8064_1189 Bool)) (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (Array T@Ref T@Field_8064_8007 Bool)) (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (Array T@Ref T@Field_8064_53 Bool)) (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (Array T@Ref T@Field_20071_20072 Bool)) (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (Array T@Ref T@Field_22193_22198 Bool)) (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (Array T@Ref T@Field_8039_1189 Bool)) (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (Array T@Ref T@Field_8039_8007 Bool)) (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (Array T@Ref T@Field_8039_53 Bool)) (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (Array T@Ref T@Field_23172_23173 Bool)) (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (Array T@Ref T@Field_23185_23190 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16296 0)) (((PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| (Array T@Ref T@Field_16356_53 Bool)) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| (Array T@Ref T@Field_16369_16370 T@Ref)) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| (Array T@Ref T@Field_19683_1189 Int)) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| (Array T@Ref T@Field_20071_20072 T@FrameType)) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| (Array T@Ref T@Field_22193_22198 T@PolymorphicMapType_16845)) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| (Array T@Ref T@Field_23172_23173 T@FrameType)) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| (Array T@Ref T@Field_23185_23190 T@PolymorphicMapType_16845)) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| (Array T@Ref T@Field_8004_8040 T@FrameType)) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| (Array T@Ref T@Field_8004_22198 T@PolymorphicMapType_16845)) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| (Array T@Ref T@Field_8039_1189 Int)) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| (Array T@Ref T@Field_8039_8007 T@Ref)) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| (Array T@Ref T@Field_8039_53 Bool)) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| (Array T@Ref T@Field_8064_1189 Int)) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| (Array T@Ref T@Field_8064_8007 T@Ref)) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| (Array T@Ref T@Field_8064_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_16356_53)
(declare-fun value_1 () T@Field_19683_1189)
(declare-fun next () T@Field_16369_16370)
(declare-fun succHeap (T@PolymorphicMapType_16296 T@PolymorphicMapType_16296) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16296 T@PolymorphicMapType_16296) Bool)
(declare-fun state (T@PolymorphicMapType_16296 T@PolymorphicMapType_16317) Bool)
(declare-fun get (T@PolymorphicMapType_16296 T@Ref) Int)
(declare-fun |get#triggerStateless| (T@Ref) Int)
(declare-fun |tinv#trigger_8064| (T@PolymorphicMapType_16296 T@Field_20071_20072) Bool)
(declare-fun tinv (T@Ref) T@Field_20071_20072)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_16317) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16845)
(declare-fun inv (T@Ref) T@Field_23172_23173)
(declare-fun IsPredicateField_8039_8040 (T@Field_23172_23173) Bool)
(declare-fun IsPredicateField_8064_8065 (T@Field_20071_20072) Bool)
(declare-fun |get'| (T@PolymorphicMapType_16296 T@Ref) Int)
(declare-fun dummyFunction_1407 (Int) Bool)
(declare-fun |inv#trigger_8039| (T@PolymorphicMapType_16296 T@Field_23172_23173) Bool)
(declare-fun |inv#everUsed_8039| (T@Field_23172_23173) Bool)
(declare-fun |tinv#everUsed_8064| (T@Field_20071_20072) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16296 T@PolymorphicMapType_16296 T@PolymorphicMapType_16317) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8064 (T@Field_20071_20072) T@Field_22193_22198)
(declare-fun HasDirectPerm_8064_8065 (T@PolymorphicMapType_16317 T@Ref T@Field_20071_20072) Bool)
(declare-fun PredicateMaskField_8039 (T@Field_23172_23173) T@Field_23185_23190)
(declare-fun HasDirectPerm_8039_8040 (T@PolymorphicMapType_16317 T@Ref T@Field_23172_23173) Bool)
(declare-fun IsPredicateField_8004_62599 (T@Field_8004_8040) Bool)
(declare-fun PredicateMaskField_8004 (T@Field_8004_8040) T@Field_8004_22198)
(declare-fun HasDirectPerm_8004_8040 (T@PolymorphicMapType_16317 T@Ref T@Field_8004_8040) Bool)
(declare-fun IsWandField_8064_68280 (T@Field_20071_20072) Bool)
(declare-fun WandMaskField_8064 (T@Field_20071_20072) T@Field_22193_22198)
(declare-fun IsWandField_8039_67923 (T@Field_23172_23173) Bool)
(declare-fun WandMaskField_8039 (T@Field_23172_23173) T@Field_23185_23190)
(declare-fun IsWandField_8004_67566 (T@Field_8004_8040) Bool)
(declare-fun WandMaskField_8004 (T@Field_8004_8040) T@Field_8004_22198)
(declare-fun |inv#sm| (T@Ref) T@Field_23185_23190)
(declare-fun |tinv#sm| (T@Ref) T@Field_22193_22198)
(declare-fun dummyHeap () T@PolymorphicMapType_16296)
(declare-fun ZeroMask () T@PolymorphicMapType_16317)
(declare-fun InsidePredicate_23172_23172 (T@Field_23172_23173 T@FrameType T@Field_23172_23173 T@FrameType) Bool)
(declare-fun InsidePredicate_16356_16356 (T@Field_8004_8040 T@FrameType T@Field_8004_8040 T@FrameType) Bool)
(declare-fun InsidePredicate_8064_8064 (T@Field_20071_20072 T@FrameType T@Field_20071_20072 T@FrameType) Bool)
(declare-fun IsPredicateField_8004_1189 (T@Field_19683_1189) Bool)
(declare-fun IsWandField_8004_1189 (T@Field_19683_1189) Bool)
(declare-fun IsPredicateField_8006_8007 (T@Field_16369_16370) Bool)
(declare-fun IsWandField_8006_8007 (T@Field_16369_16370) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8039_78569 (T@Field_23185_23190) Bool)
(declare-fun IsWandField_8039_78585 (T@Field_23185_23190) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8039_53 (T@Field_8039_53) Bool)
(declare-fun IsWandField_8039_53 (T@Field_8039_53) Bool)
(declare-fun IsPredicateField_8039_8007 (T@Field_8039_8007) Bool)
(declare-fun IsWandField_8039_8007 (T@Field_8039_8007) Bool)
(declare-fun IsPredicateField_8039_1189 (T@Field_8039_1189) Bool)
(declare-fun IsWandField_8039_1189 (T@Field_8039_1189) Bool)
(declare-fun IsPredicateField_8004_77738 (T@Field_8004_22198) Bool)
(declare-fun IsWandField_8004_77754 (T@Field_8004_22198) Bool)
(declare-fun IsPredicateField_8004_53 (T@Field_16356_53) Bool)
(declare-fun IsWandField_8004_53 (T@Field_16356_53) Bool)
(declare-fun IsPredicateField_8064_76935 (T@Field_22193_22198) Bool)
(declare-fun IsWandField_8064_76951 (T@Field_22193_22198) Bool)
(declare-fun IsPredicateField_8064_53 (T@Field_8064_53) Bool)
(declare-fun IsWandField_8064_53 (T@Field_8064_53) Bool)
(declare-fun IsPredicateField_8064_8007 (T@Field_8064_8007) Bool)
(declare-fun IsWandField_8064_8007 (T@Field_8064_8007) Bool)
(declare-fun IsPredicateField_8064_1189 (T@Field_8064_1189) Bool)
(declare-fun IsWandField_8064_1189 (T@Field_8064_1189) Bool)
(declare-fun HasDirectPerm_8064_62354 (T@PolymorphicMapType_16317 T@Ref T@Field_22193_22198) Bool)
(declare-fun HasDirectPerm_8064_53 (T@PolymorphicMapType_16317 T@Ref T@Field_8064_53) Bool)
(declare-fun HasDirectPerm_8064_8007 (T@PolymorphicMapType_16317 T@Ref T@Field_8064_8007) Bool)
(declare-fun HasDirectPerm_8064_1189 (T@PolymorphicMapType_16317 T@Ref T@Field_8064_1189) Bool)
(declare-fun HasDirectPerm_8039_61256 (T@PolymorphicMapType_16317 T@Ref T@Field_23185_23190) Bool)
(declare-fun HasDirectPerm_8039_53 (T@PolymorphicMapType_16317 T@Ref T@Field_8039_53) Bool)
(declare-fun HasDirectPerm_8039_8007 (T@PolymorphicMapType_16317 T@Ref T@Field_8039_8007) Bool)
(declare-fun HasDirectPerm_8039_1189 (T@PolymorphicMapType_16317 T@Ref T@Field_8039_1189) Bool)
(declare-fun HasDirectPerm_8004_60115 (T@PolymorphicMapType_16317 T@Ref T@Field_8004_22198) Bool)
(declare-fun HasDirectPerm_8004_53 (T@PolymorphicMapType_16317 T@Ref T@Field_16356_53) Bool)
(declare-fun HasDirectPerm_8006_8007 (T@PolymorphicMapType_16317 T@Ref T@Field_16369_16370) Bool)
(declare-fun HasDirectPerm_8004_1189 (T@PolymorphicMapType_16317 T@Ref T@Field_19683_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16317 T@PolymorphicMapType_16317 T@PolymorphicMapType_16317) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_8039_8040 (T@Field_23172_23173) Int)
(declare-fun getPredWandId_8064_8065 (T@Field_20071_20072) Int)
(declare-fun InsidePredicate_23172_16356 (T@Field_23172_23173 T@FrameType T@Field_8004_8040 T@FrameType) Bool)
(declare-fun InsidePredicate_23172_8064 (T@Field_23172_23173 T@FrameType T@Field_20071_20072 T@FrameType) Bool)
(declare-fun InsidePredicate_16356_23172 (T@Field_8004_8040 T@FrameType T@Field_23172_23173 T@FrameType) Bool)
(declare-fun InsidePredicate_16356_8064 (T@Field_8004_8040 T@FrameType T@Field_20071_20072 T@FrameType) Bool)
(declare-fun InsidePredicate_8064_23172 (T@Field_20071_20072 T@FrameType T@Field_23172_23173 T@FrameType) Bool)
(declare-fun InsidePredicate_8064_16356 (T@Field_20071_20072 T@FrameType T@Field_8004_8040 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_16296) (Heap1 T@PolymorphicMapType_16296) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16296) (Mask T@PolymorphicMapType_16317) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (get Heap this) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap) this value_1)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (get Heap this))
 :pattern ( (state Heap Mask) (|get#triggerStateless| this) (|tinv#trigger_8064| Heap (tinv this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16296) (Mask@@0 T@PolymorphicMapType_16317) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16296) (Heap1@@0 T@PolymorphicMapType_16296) (Heap2 T@PolymorphicMapType_16296) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23185_23190) ) (!  (not (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_23172_23173) ) (!  (not (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8039_53) ) (!  (not (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8039_8007) ) (!  (not (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8039_1189) ) (!  (not (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_22193_22198) ) (!  (not (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_20071_20072) ) (!  (not (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8064_53) ) (!  (not (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8064_8007) ) (!  (not (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8064_1189) ) (!  (not (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8004_22198) ) (!  (not (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8004_8040) ) (!  (not (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_16356_53) ) (!  (not (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_16369_16370) ) (!  (not (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_19683_1189) ) (!  (not (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_8039_8040 (inv this@@0))
 :qid |stdinbpl.309:15|
 :skolemid |28|
 :pattern ( (inv this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_8064_8065 (tinv this@@1))
 :qid |stdinbpl.364:15|
 :skolemid |34|
 :pattern ( (tinv this@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16296) (this@@2 T@Ref) ) (! (dummyFunction_1407 (|get#triggerStateless| this@@2))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|get'| Heap@@1 this@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16296) (this@@3 T@Ref) ) (! (|inv#everUsed_8039| (inv this@@3))
 :qid |stdinbpl.328:15|
 :skolemid |32|
 :pattern ( (|inv#trigger_8039| Heap@@2 (inv this@@3)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16296) (this@@4 T@Ref) ) (! (|tinv#everUsed_8064| (tinv this@@4))
 :qid |stdinbpl.383:15|
 :skolemid |38|
 :pattern ( (|tinv#trigger_8064| Heap@@3 (tinv this@@4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16296) (this@@5 T@Ref) ) (!  (and (= (get Heap@@4 this@@5) (|get'| Heap@@4 this@@5)) (dummyFunction_1407 (|get#triggerStateless| this@@5)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (get Heap@@4 this@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16296) (ExhaleHeap T@PolymorphicMapType_16296) (Mask@@1 T@PolymorphicMapType_16317) (pm_f_4 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8064_8065 Mask@@1 null pm_f_4) (IsPredicateField_8064_8065 pm_f_4)) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@5) null (PredicateMaskField_8064 pm_f_4)) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap) null (PredicateMaskField_8064 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_8064_8065 pm_f_4) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap) null (PredicateMaskField_8064 pm_f_4)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16296) (ExhaleHeap@@0 T@PolymorphicMapType_16296) (Mask@@2 T@PolymorphicMapType_16317) (pm_f_4@@0 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_8039_8040 Mask@@2 null pm_f_4@@0) (IsPredicateField_8039_8040 pm_f_4@@0)) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@6) null (PredicateMaskField_8039 pm_f_4@@0)) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@0) null (PredicateMaskField_8039 pm_f_4@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_8039_8040 pm_f_4@@0) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@0) null (PredicateMaskField_8039 pm_f_4@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16296) (ExhaleHeap@@1 T@PolymorphicMapType_16296) (Mask@@3 T@PolymorphicMapType_16317) (pm_f_4@@1 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_8004_8040 Mask@@3 null pm_f_4@@1) (IsPredicateField_8004_62599 pm_f_4@@1)) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@7) null (PredicateMaskField_8004 pm_f_4@@1)) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@1) null (PredicateMaskField_8004 pm_f_4@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsPredicateField_8004_62599 pm_f_4@@1) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@1) null (PredicateMaskField_8004 pm_f_4@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16296) (ExhaleHeap@@2 T@PolymorphicMapType_16296) (Mask@@4 T@PolymorphicMapType_16317) (pm_f_4@@2 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_8064_8065 Mask@@4 null pm_f_4@@2) (IsWandField_8064_68280 pm_f_4@@2)) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@8) null (WandMaskField_8064 pm_f_4@@2)) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@2) null (WandMaskField_8064 pm_f_4@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_8064_68280 pm_f_4@@2) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@2) null (WandMaskField_8064 pm_f_4@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16296) (ExhaleHeap@@3 T@PolymorphicMapType_16296) (Mask@@5 T@PolymorphicMapType_16317) (pm_f_4@@3 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_8039_8040 Mask@@5 null pm_f_4@@3) (IsWandField_8039_67923 pm_f_4@@3)) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@9) null (WandMaskField_8039 pm_f_4@@3)) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@3) null (WandMaskField_8039 pm_f_4@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsWandField_8039_67923 pm_f_4@@3) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@3) null (WandMaskField_8039 pm_f_4@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16296) (ExhaleHeap@@4 T@PolymorphicMapType_16296) (Mask@@6 T@PolymorphicMapType_16317) (pm_f_4@@4 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_8004_8040 Mask@@6 null pm_f_4@@4) (IsWandField_8004_67566 pm_f_4@@4)) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@10) null (WandMaskField_8004 pm_f_4@@4)) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@4) null (WandMaskField_8004 pm_f_4@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsWandField_8004_67566 pm_f_4@@4) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@4) null (WandMaskField_8004 pm_f_4@@4)))
)))
(assert (forall ((this@@6 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@6) (inv this2)) (= this@@6 this2))
 :qid |stdinbpl.319:15|
 :skolemid |30|
 :pattern ( (inv this@@6) (inv this2))
)))
(assert (forall ((this@@7 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@7) (|inv#sm| this2@@0)) (= this@@7 this2@@0))
 :qid |stdinbpl.323:15|
 :skolemid |31|
 :pattern ( (|inv#sm| this@@7) (|inv#sm| this2@@0))
)))
(assert (forall ((this@@8 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (tinv this@@8) (tinv this2@@1)) (= this@@8 this2@@1))
 :qid |stdinbpl.374:15|
 :skolemid |36|
 :pattern ( (tinv this@@8) (tinv this2@@1))
)))
(assert (forall ((this@@9 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|tinv#sm| this@@9) (|tinv#sm| this2@@2)) (= this@@9 this2@@2))
 :qid |stdinbpl.378:15|
 :skolemid |37|
 :pattern ( (|tinv#sm| this@@9) (|tinv#sm| this2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16296) (ExhaleHeap@@5 T@PolymorphicMapType_16296) (Mask@@7 T@PolymorphicMapType_16317) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@11) o_13 $allocated) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@5) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@5) o_13 $allocated))
)))
(assert (forall ((p T@Field_23172_23173) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_23172_23172 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23172_23172 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8004_8040) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16356_16356 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16356_16356 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_20071_20072) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8064_8064 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8064_8064 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_8004_1189 value_1)))
(assert  (not (IsWandField_8004_1189 value_1)))
(assert  (not (IsPredicateField_8006_8007 next)))
(assert  (not (IsWandField_8006_8007 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16296) (ExhaleHeap@@6 T@PolymorphicMapType_16296) (Mask@@8 T@PolymorphicMapType_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (succHeap Heap@@12 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_16317) (o_2@@14 T@Ref) (f_4@@14 T@Field_23185_23190) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| Mask@@9) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8039_78569 f_4@@14))) (not (IsWandField_8039_78585 f_4@@14))) (<= (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| Mask@@9) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| Mask@@9) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16317) (o_2@@15 T@Ref) (f_4@@15 T@Field_8039_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8039_53 f_4@@15))) (not (IsWandField_8039_53 f_4@@15))) (<= (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16317) (o_2@@16 T@Ref) (f_4@@16 T@Field_8039_8007) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8039_8007 f_4@@16))) (not (IsWandField_8039_8007 f_4@@16))) (<= (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16317) (o_2@@17 T@Ref) (f_4@@17 T@Field_8039_1189) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8039_1189 f_4@@17))) (not (IsWandField_8039_1189 f_4@@17))) (<= (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16317) (o_2@@18 T@Ref) (f_4@@18 T@Field_23172_23173) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8039_8040 f_4@@18))) (not (IsWandField_8039_67923 f_4@@18))) (<= (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_16317) (o_2@@19 T@Ref) (f_4@@19 T@Field_8004_22198) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8004_77738 f_4@@19))) (not (IsWandField_8004_77754 f_4@@19))) (<= (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_16317) (o_2@@20 T@Ref) (f_4@@20 T@Field_16356_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8004_53 f_4@@20))) (not (IsWandField_8004_53 f_4@@20))) (<= (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_16317) (o_2@@21 T@Ref) (f_4@@21 T@Field_16369_16370) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8006_8007 f_4@@21))) (not (IsWandField_8006_8007 f_4@@21))) (<= (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_16317) (o_2@@22 T@Ref) (f_4@@22 T@Field_19683_1189) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8004_1189 f_4@@22))) (not (IsWandField_8004_1189 f_4@@22))) (<= (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_16317) (o_2@@23 T@Ref) (f_4@@23 T@Field_8004_8040) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8004_62599 f_4@@23))) (not (IsWandField_8004_67566 f_4@@23))) (<= (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_16317) (o_2@@24 T@Ref) (f_4@@24 T@Field_22193_22198) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8064_76935 f_4@@24))) (not (IsWandField_8064_76951 f_4@@24))) (<= (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_16317) (o_2@@25 T@Ref) (f_4@@25 T@Field_8064_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8064_53 f_4@@25))) (not (IsWandField_8064_53 f_4@@25))) (<= (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_16317) (o_2@@26 T@Ref) (f_4@@26 T@Field_8064_8007) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8064_8007 f_4@@26))) (not (IsWandField_8064_8007 f_4@@26))) (<= (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_16317) (o_2@@27 T@Ref) (f_4@@27 T@Field_8064_1189) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8064_1189 f_4@@27))) (not (IsWandField_8064_1189 f_4@@27))) (<= (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_16317) (o_2@@28 T@Ref) (f_4@@28 T@Field_20071_20072) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8064_8065 f_4@@28))) (not (IsWandField_8064_68280 f_4@@28))) (<= (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_16317) (o_2@@29 T@Ref) (f_4@@29 T@Field_22193_22198) ) (! (= (HasDirectPerm_8064_62354 Mask@@24 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| Mask@@24) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_62354 Mask@@24 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_16317) (o_2@@30 T@Ref) (f_4@@30 T@Field_8064_53) ) (! (= (HasDirectPerm_8064_53 Mask@@25 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| Mask@@25) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_53 Mask@@25 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_16317) (o_2@@31 T@Ref) (f_4@@31 T@Field_20071_20072) ) (! (= (HasDirectPerm_8064_8065 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_8065 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_16317) (o_2@@32 T@Ref) (f_4@@32 T@Field_8064_8007) ) (! (= (HasDirectPerm_8064_8007 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_8007 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_16317) (o_2@@33 T@Ref) (f_4@@33 T@Field_8064_1189) ) (! (= (HasDirectPerm_8064_1189 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_1189 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_16317) (o_2@@34 T@Ref) (f_4@@34 T@Field_23185_23190) ) (! (= (HasDirectPerm_8039_61256 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_61256 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_16317) (o_2@@35 T@Ref) (f_4@@35 T@Field_8039_53) ) (! (= (HasDirectPerm_8039_53 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_53 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_16317) (o_2@@36 T@Ref) (f_4@@36 T@Field_23172_23173) ) (! (= (HasDirectPerm_8039_8040 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_8040 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_16317) (o_2@@37 T@Ref) (f_4@@37 T@Field_8039_8007) ) (! (= (HasDirectPerm_8039_8007 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_8007 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_16317) (o_2@@38 T@Ref) (f_4@@38 T@Field_8039_1189) ) (! (= (HasDirectPerm_8039_1189 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_1189 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_16317) (o_2@@39 T@Ref) (f_4@@39 T@Field_8004_22198) ) (! (= (HasDirectPerm_8004_60115 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8004_60115 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_16317) (o_2@@40 T@Ref) (f_4@@40 T@Field_16356_53) ) (! (= (HasDirectPerm_8004_53 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8004_53 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_16317) (o_2@@41 T@Ref) (f_4@@41 T@Field_8004_8040) ) (! (= (HasDirectPerm_8004_8040 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8004_8040 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_16317) (o_2@@42 T@Ref) (f_4@@42 T@Field_16369_16370) ) (! (= (HasDirectPerm_8006_8007 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8006_8007 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_16317) (o_2@@43 T@Ref) (f_4@@43 T@Field_19683_1189) ) (! (= (HasDirectPerm_8004_1189 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8004_1189 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16296) (ExhaleHeap@@7 T@PolymorphicMapType_16296) (Mask@@39 T@PolymorphicMapType_16317) (o_13@@0 T@Ref) (f_20 T@Field_22193_22198) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@39) (=> (HasDirectPerm_8064_62354 Mask@@39 o_13@@0 f_20) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@13) o_13@@0 f_20) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@7) o_13@@0 f_20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@39) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@7) o_13@@0 f_20))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16296) (ExhaleHeap@@8 T@PolymorphicMapType_16296) (Mask@@40 T@PolymorphicMapType_16317) (o_13@@1 T@Ref) (f_20@@0 T@Field_8064_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@40) (=> (HasDirectPerm_8064_53 Mask@@40 o_13@@1 f_20@@0) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@14) o_13@@1 f_20@@0) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@8) o_13@@1 f_20@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@40) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@8) o_13@@1 f_20@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16296) (ExhaleHeap@@9 T@PolymorphicMapType_16296) (Mask@@41 T@PolymorphicMapType_16317) (o_13@@2 T@Ref) (f_20@@1 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@41) (=> (HasDirectPerm_8064_8065 Mask@@41 o_13@@2 f_20@@1) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@15) o_13@@2 f_20@@1) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@9) o_13@@2 f_20@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@41) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@9) o_13@@2 f_20@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16296) (ExhaleHeap@@10 T@PolymorphicMapType_16296) (Mask@@42 T@PolymorphicMapType_16317) (o_13@@3 T@Ref) (f_20@@2 T@Field_8064_8007) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@42) (=> (HasDirectPerm_8064_8007 Mask@@42 o_13@@3 f_20@@2) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@16) o_13@@3 f_20@@2) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@10) o_13@@3 f_20@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@42) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@10) o_13@@3 f_20@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16296) (ExhaleHeap@@11 T@PolymorphicMapType_16296) (Mask@@43 T@PolymorphicMapType_16317) (o_13@@4 T@Ref) (f_20@@3 T@Field_8064_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@43) (=> (HasDirectPerm_8064_1189 Mask@@43 o_13@@4 f_20@@3) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@17) o_13@@4 f_20@@3) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@11) o_13@@4 f_20@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@43) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@11) o_13@@4 f_20@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16296) (ExhaleHeap@@12 T@PolymorphicMapType_16296) (Mask@@44 T@PolymorphicMapType_16317) (o_13@@5 T@Ref) (f_20@@4 T@Field_23185_23190) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@44) (=> (HasDirectPerm_8039_61256 Mask@@44 o_13@@5 f_20@@4) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@18) o_13@@5 f_20@@4) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@12) o_13@@5 f_20@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@44) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@12) o_13@@5 f_20@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16296) (ExhaleHeap@@13 T@PolymorphicMapType_16296) (Mask@@45 T@PolymorphicMapType_16317) (o_13@@6 T@Ref) (f_20@@5 T@Field_8039_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@45) (=> (HasDirectPerm_8039_53 Mask@@45 o_13@@6 f_20@@5) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@19) o_13@@6 f_20@@5) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@13) o_13@@6 f_20@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@45) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@13) o_13@@6 f_20@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_16296) (ExhaleHeap@@14 T@PolymorphicMapType_16296) (Mask@@46 T@PolymorphicMapType_16317) (o_13@@7 T@Ref) (f_20@@6 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@46) (=> (HasDirectPerm_8039_8040 Mask@@46 o_13@@7 f_20@@6) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@20) o_13@@7 f_20@@6) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@14) o_13@@7 f_20@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@46) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@14) o_13@@7 f_20@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_16296) (ExhaleHeap@@15 T@PolymorphicMapType_16296) (Mask@@47 T@PolymorphicMapType_16317) (o_13@@8 T@Ref) (f_20@@7 T@Field_8039_8007) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@47) (=> (HasDirectPerm_8039_8007 Mask@@47 o_13@@8 f_20@@7) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@21) o_13@@8 f_20@@7) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@15) o_13@@8 f_20@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@47) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@15) o_13@@8 f_20@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_16296) (ExhaleHeap@@16 T@PolymorphicMapType_16296) (Mask@@48 T@PolymorphicMapType_16317) (o_13@@9 T@Ref) (f_20@@8 T@Field_8039_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@48) (=> (HasDirectPerm_8039_1189 Mask@@48 o_13@@9 f_20@@8) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@22) o_13@@9 f_20@@8) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@16) o_13@@9 f_20@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@48) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@16) o_13@@9 f_20@@8))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_16296) (ExhaleHeap@@17 T@PolymorphicMapType_16296) (Mask@@49 T@PolymorphicMapType_16317) (o_13@@10 T@Ref) (f_20@@9 T@Field_8004_22198) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@49) (=> (HasDirectPerm_8004_60115 Mask@@49 o_13@@10 f_20@@9) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@23) o_13@@10 f_20@@9) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@17) o_13@@10 f_20@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@49) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@17) o_13@@10 f_20@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_16296) (ExhaleHeap@@18 T@PolymorphicMapType_16296) (Mask@@50 T@PolymorphicMapType_16317) (o_13@@11 T@Ref) (f_20@@10 T@Field_16356_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@50) (=> (HasDirectPerm_8004_53 Mask@@50 o_13@@11 f_20@@10) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@24) o_13@@11 f_20@@10) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@18) o_13@@11 f_20@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@50) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@18) o_13@@11 f_20@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_16296) (ExhaleHeap@@19 T@PolymorphicMapType_16296) (Mask@@51 T@PolymorphicMapType_16317) (o_13@@12 T@Ref) (f_20@@11 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@51) (=> (HasDirectPerm_8004_8040 Mask@@51 o_13@@12 f_20@@11) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@25) o_13@@12 f_20@@11) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@19) o_13@@12 f_20@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@51) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@19) o_13@@12 f_20@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_16296) (ExhaleHeap@@20 T@PolymorphicMapType_16296) (Mask@@52 T@PolymorphicMapType_16317) (o_13@@13 T@Ref) (f_20@@12 T@Field_16369_16370) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@52) (=> (HasDirectPerm_8006_8007 Mask@@52 o_13@@13 f_20@@12) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@26) o_13@@13 f_20@@12) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@20) o_13@@13 f_20@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@52) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@20) o_13@@13 f_20@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_16296) (ExhaleHeap@@21 T@PolymorphicMapType_16296) (Mask@@53 T@PolymorphicMapType_16317) (o_13@@14 T@Ref) (f_20@@13 T@Field_19683_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@53) (=> (HasDirectPerm_8004_1189 Mask@@53 o_13@@14 f_20@@13) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@27) o_13@@14 f_20@@13) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@21) o_13@@14 f_20@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@53) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@21) o_13@@14 f_20@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_23185_23190) ) (! (= (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_8039_53) ) (! (= (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_8039_8007) ) (! (= (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_8039_1189) ) (! (= (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_23172_23173) ) (! (= (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_8004_22198) ) (! (= (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_16356_53) ) (! (= (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_16369_16370) ) (! (= (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_19683_1189) ) (! (= (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_8004_8040) ) (! (= (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_22193_22198) ) (! (= (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_8064_53) ) (! (= (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_8064_8007) ) (! (= (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_8064_1189) ) (! (= (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_20071_20072) ) (! (= (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16317) (SummandMask1 T@PolymorphicMapType_16317) (SummandMask2 T@PolymorphicMapType_16317) (o_2@@59 T@Ref) (f_4@@59 T@Field_23185_23190) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16317) (SummandMask1@@0 T@PolymorphicMapType_16317) (SummandMask2@@0 T@PolymorphicMapType_16317) (o_2@@60 T@Ref) (f_4@@60 T@Field_8039_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16317) (SummandMask1@@1 T@PolymorphicMapType_16317) (SummandMask2@@1 T@PolymorphicMapType_16317) (o_2@@61 T@Ref) (f_4@@61 T@Field_8039_8007) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16317) (SummandMask1@@2 T@PolymorphicMapType_16317) (SummandMask2@@2 T@PolymorphicMapType_16317) (o_2@@62 T@Ref) (f_4@@62 T@Field_8039_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16317) (SummandMask1@@3 T@PolymorphicMapType_16317) (SummandMask2@@3 T@PolymorphicMapType_16317) (o_2@@63 T@Ref) (f_4@@63 T@Field_23172_23173) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_16317) (SummandMask1@@4 T@PolymorphicMapType_16317) (SummandMask2@@4 T@PolymorphicMapType_16317) (o_2@@64 T@Ref) (f_4@@64 T@Field_8004_22198) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_16317) (SummandMask1@@5 T@PolymorphicMapType_16317) (SummandMask2@@5 T@PolymorphicMapType_16317) (o_2@@65 T@Ref) (f_4@@65 T@Field_16356_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_16317) (SummandMask1@@6 T@PolymorphicMapType_16317) (SummandMask2@@6 T@PolymorphicMapType_16317) (o_2@@66 T@Ref) (f_4@@66 T@Field_16369_16370) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_16317) (SummandMask1@@7 T@PolymorphicMapType_16317) (SummandMask2@@7 T@PolymorphicMapType_16317) (o_2@@67 T@Ref) (f_4@@67 T@Field_19683_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_16317) (SummandMask1@@8 T@PolymorphicMapType_16317) (SummandMask2@@8 T@PolymorphicMapType_16317) (o_2@@68 T@Ref) (f_4@@68 T@Field_8004_8040) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_16317) (SummandMask1@@9 T@PolymorphicMapType_16317) (SummandMask2@@9 T@PolymorphicMapType_16317) (o_2@@69 T@Ref) (f_4@@69 T@Field_22193_22198) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_16317) (SummandMask1@@10 T@PolymorphicMapType_16317) (SummandMask2@@10 T@PolymorphicMapType_16317) (o_2@@70 T@Ref) (f_4@@70 T@Field_8064_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_16317) (SummandMask1@@11 T@PolymorphicMapType_16317) (SummandMask2@@11 T@PolymorphicMapType_16317) (o_2@@71 T@Ref) (f_4@@71 T@Field_8064_8007) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_16317) (SummandMask1@@12 T@PolymorphicMapType_16317) (SummandMask2@@12 T@PolymorphicMapType_16317) (o_2@@72 T@Ref) (f_4@@72 T@Field_8064_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_16317) (SummandMask1@@13 T@PolymorphicMapType_16317) (SummandMask2@@13 T@PolymorphicMapType_16317) (o_2@@73 T@Ref) (f_4@@73 T@Field_20071_20072) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_16296) (ExhaleHeap@@22 T@PolymorphicMapType_16296) (Mask@@54 T@PolymorphicMapType_16317) (pm_f_4@@5 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_8064_8065 Mask@@54 null pm_f_4@@5) (IsPredicateField_8064_8065 pm_f_4@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20@@14 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4 f_20@@14) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@28) o2_4 f_20@@14) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4 f_20@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4 f_20@@14))
)) (forall ((o2_4@@0 T@Ref) (f_20@@15 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@0 f_20@@15) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@28) o2_4@@0 f_20@@15) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@0 f_20@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@0 f_20@@15))
))) (forall ((o2_4@@1 T@Ref) (f_20@@16 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@1 f_20@@16) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@28) o2_4@@1 f_20@@16) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@1 f_20@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@1 f_20@@16))
))) (forall ((o2_4@@2 T@Ref) (f_20@@17 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@2 f_20@@17) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@28) o2_4@@2 f_20@@17) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@2 f_20@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@2 f_20@@17))
))) (forall ((o2_4@@3 T@Ref) (f_20@@18 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@3 f_20@@18) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@28) o2_4@@3 f_20@@18) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@3 f_20@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@3 f_20@@18))
))) (forall ((o2_4@@4 T@Ref) (f_20@@19 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@4 f_20@@19) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@28) o2_4@@4 f_20@@19) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@4 f_20@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@4 f_20@@19))
))) (forall ((o2_4@@5 T@Ref) (f_20@@20 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@5 f_20@@20) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@28) o2_4@@5 f_20@@20) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@5 f_20@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@5 f_20@@20))
))) (forall ((o2_4@@6 T@Ref) (f_20@@21 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@6 f_20@@21) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@28) o2_4@@6 f_20@@21) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@6 f_20@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@6 f_20@@21))
))) (forall ((o2_4@@7 T@Ref) (f_20@@22 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@7 f_20@@22) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@28) o2_4@@7 f_20@@22) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@7 f_20@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@7 f_20@@22))
))) (forall ((o2_4@@8 T@Ref) (f_20@@23 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@8 f_20@@23) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) o2_4@@8 f_20@@23) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@8 f_20@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@8 f_20@@23))
))) (forall ((o2_4@@9 T@Ref) (f_20@@24 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@9 f_20@@24) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@28) o2_4@@9 f_20@@24) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@9 f_20@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@9 f_20@@24))
))) (forall ((o2_4@@10 T@Ref) (f_20@@25 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@10 f_20@@25) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@28) o2_4@@10 f_20@@25) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@10 f_20@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@10 f_20@@25))
))) (forall ((o2_4@@11 T@Ref) (f_20@@26 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@11 f_20@@26) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@28) o2_4@@11 f_20@@26) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@11 f_20@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@11 f_20@@26))
))) (forall ((o2_4@@12 T@Ref) (f_20@@27 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@12 f_20@@27) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@28) o2_4@@12 f_20@@27) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@12 f_20@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@12 f_20@@27))
))) (forall ((o2_4@@13 T@Ref) (f_20@@28 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@13 f_20@@28) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@28) o2_4@@13 f_20@@28) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@13 f_20@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@13 f_20@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@54) (IsPredicateField_8064_8065 pm_f_4@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_16296) (ExhaleHeap@@23 T@PolymorphicMapType_16296) (Mask@@55 T@PolymorphicMapType_16317) (pm_f_4@@6 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_8039_8040 Mask@@55 null pm_f_4@@6) (IsPredicateField_8039_8040 pm_f_4@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@14 T@Ref) (f_20@@29 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@14 f_20@@29) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@29) o2_4@@14 f_20@@29) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@14 f_20@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@14 f_20@@29))
)) (forall ((o2_4@@15 T@Ref) (f_20@@30 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@15 f_20@@30) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@29) o2_4@@15 f_20@@30) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@15 f_20@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@15 f_20@@30))
))) (forall ((o2_4@@16 T@Ref) (f_20@@31 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@16 f_20@@31) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@29) o2_4@@16 f_20@@31) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@16 f_20@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@16 f_20@@31))
))) (forall ((o2_4@@17 T@Ref) (f_20@@32 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@17 f_20@@32) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@29) o2_4@@17 f_20@@32) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@17 f_20@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@17 f_20@@32))
))) (forall ((o2_4@@18 T@Ref) (f_20@@33 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@18 f_20@@33) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@29) o2_4@@18 f_20@@33) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@18 f_20@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@18 f_20@@33))
))) (forall ((o2_4@@19 T@Ref) (f_20@@34 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@19 f_20@@34) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@29) o2_4@@19 f_20@@34) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@19 f_20@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@19 f_20@@34))
))) (forall ((o2_4@@20 T@Ref) (f_20@@35 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@20 f_20@@35) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@29) o2_4@@20 f_20@@35) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@20 f_20@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@20 f_20@@35))
))) (forall ((o2_4@@21 T@Ref) (f_20@@36 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@21 f_20@@36) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@29) o2_4@@21 f_20@@36) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@21 f_20@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@21 f_20@@36))
))) (forall ((o2_4@@22 T@Ref) (f_20@@37 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@22 f_20@@37) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@29) o2_4@@22 f_20@@37) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@22 f_20@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@22 f_20@@37))
))) (forall ((o2_4@@23 T@Ref) (f_20@@38 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@23 f_20@@38) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@29) o2_4@@23 f_20@@38) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@23 f_20@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@23 f_20@@38))
))) (forall ((o2_4@@24 T@Ref) (f_20@@39 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@24 f_20@@39) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@29) o2_4@@24 f_20@@39) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@24 f_20@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@24 f_20@@39))
))) (forall ((o2_4@@25 T@Ref) (f_20@@40 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@25 f_20@@40) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@29) o2_4@@25 f_20@@40) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@25 f_20@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@25 f_20@@40))
))) (forall ((o2_4@@26 T@Ref) (f_20@@41 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@26 f_20@@41) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@29) o2_4@@26 f_20@@41) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@26 f_20@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@26 f_20@@41))
))) (forall ((o2_4@@27 T@Ref) (f_20@@42 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@27 f_20@@42) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@29) o2_4@@27 f_20@@42) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@27 f_20@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@27 f_20@@42))
))) (forall ((o2_4@@28 T@Ref) (f_20@@43 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@28 f_20@@43) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) o2_4@@28 f_20@@43) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@28 f_20@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@28 f_20@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@55) (IsPredicateField_8039_8040 pm_f_4@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_16296) (ExhaleHeap@@24 T@PolymorphicMapType_16296) (Mask@@56 T@PolymorphicMapType_16317) (pm_f_4@@7 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_8004_8040 Mask@@56 null pm_f_4@@7) (IsPredicateField_8004_62599 pm_f_4@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@29 T@Ref) (f_20@@44 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@29 f_20@@44) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@30) o2_4@@29 f_20@@44) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@29 f_20@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@29 f_20@@44))
)) (forall ((o2_4@@30 T@Ref) (f_20@@45 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@30 f_20@@45) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@30) o2_4@@30 f_20@@45) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@30 f_20@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@30 f_20@@45))
))) (forall ((o2_4@@31 T@Ref) (f_20@@46 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@31 f_20@@46) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@30) o2_4@@31 f_20@@46) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@31 f_20@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@31 f_20@@46))
))) (forall ((o2_4@@32 T@Ref) (f_20@@47 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@32 f_20@@47) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@30) o2_4@@32 f_20@@47) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@32 f_20@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@32 f_20@@47))
))) (forall ((o2_4@@33 T@Ref) (f_20@@48 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@33 f_20@@48) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) o2_4@@33 f_20@@48) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@33 f_20@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@33 f_20@@48))
))) (forall ((o2_4@@34 T@Ref) (f_20@@49 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@34 f_20@@49) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@30) o2_4@@34 f_20@@49) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@34 f_20@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@34 f_20@@49))
))) (forall ((o2_4@@35 T@Ref) (f_20@@50 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@35 f_20@@50) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@30) o2_4@@35 f_20@@50) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@35 f_20@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@35 f_20@@50))
))) (forall ((o2_4@@36 T@Ref) (f_20@@51 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@36 f_20@@51) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@30) o2_4@@36 f_20@@51) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@36 f_20@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@36 f_20@@51))
))) (forall ((o2_4@@37 T@Ref) (f_20@@52 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@37 f_20@@52) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@30) o2_4@@37 f_20@@52) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@37 f_20@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@37 f_20@@52))
))) (forall ((o2_4@@38 T@Ref) (f_20@@53 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@38 f_20@@53) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@30) o2_4@@38 f_20@@53) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@38 f_20@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@38 f_20@@53))
))) (forall ((o2_4@@39 T@Ref) (f_20@@54 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@39 f_20@@54) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@30) o2_4@@39 f_20@@54) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@39 f_20@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@39 f_20@@54))
))) (forall ((o2_4@@40 T@Ref) (f_20@@55 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@40 f_20@@55) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@30) o2_4@@40 f_20@@55) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@40 f_20@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@40 f_20@@55))
))) (forall ((o2_4@@41 T@Ref) (f_20@@56 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@41 f_20@@56) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@30) o2_4@@41 f_20@@56) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@41 f_20@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@41 f_20@@56))
))) (forall ((o2_4@@42 T@Ref) (f_20@@57 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@42 f_20@@57) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@30) o2_4@@42 f_20@@57) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@42 f_20@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@42 f_20@@57))
))) (forall ((o2_4@@43 T@Ref) (f_20@@58 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@43 f_20@@58) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@30) o2_4@@43 f_20@@58) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@43 f_20@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@43 f_20@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@56) (IsPredicateField_8004_62599 pm_f_4@@7))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_16296) (ExhaleHeap@@25 T@PolymorphicMapType_16296) (Mask@@57 T@PolymorphicMapType_16317) (pm_f_4@@8 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_8064_8065 Mask@@57 null pm_f_4@@8) (IsWandField_8064_68280 pm_f_4@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@44 T@Ref) (f_20@@59 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@44 f_20@@59) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@31) o2_4@@44 f_20@@59) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@44 f_20@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@44 f_20@@59))
)) (forall ((o2_4@@45 T@Ref) (f_20@@60 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@45 f_20@@60) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@31) o2_4@@45 f_20@@60) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@45 f_20@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@45 f_20@@60))
))) (forall ((o2_4@@46 T@Ref) (f_20@@61 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@46 f_20@@61) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@31) o2_4@@46 f_20@@61) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@46 f_20@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@46 f_20@@61))
))) (forall ((o2_4@@47 T@Ref) (f_20@@62 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@47 f_20@@62) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@31) o2_4@@47 f_20@@62) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@47 f_20@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@47 f_20@@62))
))) (forall ((o2_4@@48 T@Ref) (f_20@@63 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@48 f_20@@63) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@31) o2_4@@48 f_20@@63) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@48 f_20@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@48 f_20@@63))
))) (forall ((o2_4@@49 T@Ref) (f_20@@64 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@49 f_20@@64) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@31) o2_4@@49 f_20@@64) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@49 f_20@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@49 f_20@@64))
))) (forall ((o2_4@@50 T@Ref) (f_20@@65 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@50 f_20@@65) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@31) o2_4@@50 f_20@@65) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@50 f_20@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@50 f_20@@65))
))) (forall ((o2_4@@51 T@Ref) (f_20@@66 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@51 f_20@@66) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@31) o2_4@@51 f_20@@66) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@51 f_20@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@51 f_20@@66))
))) (forall ((o2_4@@52 T@Ref) (f_20@@67 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@52 f_20@@67) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@31) o2_4@@52 f_20@@67) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@52 f_20@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@52 f_20@@67))
))) (forall ((o2_4@@53 T@Ref) (f_20@@68 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@53 f_20@@68) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) o2_4@@53 f_20@@68) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@53 f_20@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@53 f_20@@68))
))) (forall ((o2_4@@54 T@Ref) (f_20@@69 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@54 f_20@@69) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@31) o2_4@@54 f_20@@69) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@54 f_20@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@54 f_20@@69))
))) (forall ((o2_4@@55 T@Ref) (f_20@@70 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@55 f_20@@70) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@31) o2_4@@55 f_20@@70) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@55 f_20@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@55 f_20@@70))
))) (forall ((o2_4@@56 T@Ref) (f_20@@71 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@56 f_20@@71) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@31) o2_4@@56 f_20@@71) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@56 f_20@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@56 f_20@@71))
))) (forall ((o2_4@@57 T@Ref) (f_20@@72 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@57 f_20@@72) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@31) o2_4@@57 f_20@@72) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@57 f_20@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@57 f_20@@72))
))) (forall ((o2_4@@58 T@Ref) (f_20@@73 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@58 f_20@@73) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@31) o2_4@@58 f_20@@73) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@58 f_20@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@58 f_20@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@57) (IsWandField_8064_68280 pm_f_4@@8))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_16296) (ExhaleHeap@@26 T@PolymorphicMapType_16296) (Mask@@58 T@PolymorphicMapType_16317) (pm_f_4@@9 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_8039_8040 Mask@@58 null pm_f_4@@9) (IsWandField_8039_67923 pm_f_4@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@59 T@Ref) (f_20@@74 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@59 f_20@@74) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@32) o2_4@@59 f_20@@74) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@59 f_20@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@59 f_20@@74))
)) (forall ((o2_4@@60 T@Ref) (f_20@@75 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@60 f_20@@75) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@32) o2_4@@60 f_20@@75) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@60 f_20@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@60 f_20@@75))
))) (forall ((o2_4@@61 T@Ref) (f_20@@76 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@61 f_20@@76) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@32) o2_4@@61 f_20@@76) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@61 f_20@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@61 f_20@@76))
))) (forall ((o2_4@@62 T@Ref) (f_20@@77 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@62 f_20@@77) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@32) o2_4@@62 f_20@@77) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@62 f_20@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@62 f_20@@77))
))) (forall ((o2_4@@63 T@Ref) (f_20@@78 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@63 f_20@@78) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@32) o2_4@@63 f_20@@78) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@63 f_20@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@63 f_20@@78))
))) (forall ((o2_4@@64 T@Ref) (f_20@@79 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@64 f_20@@79) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@32) o2_4@@64 f_20@@79) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@64 f_20@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@64 f_20@@79))
))) (forall ((o2_4@@65 T@Ref) (f_20@@80 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@65 f_20@@80) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@32) o2_4@@65 f_20@@80) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@65 f_20@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@65 f_20@@80))
))) (forall ((o2_4@@66 T@Ref) (f_20@@81 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@66 f_20@@81) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@32) o2_4@@66 f_20@@81) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@66 f_20@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@66 f_20@@81))
))) (forall ((o2_4@@67 T@Ref) (f_20@@82 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@67 f_20@@82) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@32) o2_4@@67 f_20@@82) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@67 f_20@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@67 f_20@@82))
))) (forall ((o2_4@@68 T@Ref) (f_20@@83 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@68 f_20@@83) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@32) o2_4@@68 f_20@@83) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@68 f_20@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@68 f_20@@83))
))) (forall ((o2_4@@69 T@Ref) (f_20@@84 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@69 f_20@@84) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@32) o2_4@@69 f_20@@84) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@69 f_20@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@69 f_20@@84))
))) (forall ((o2_4@@70 T@Ref) (f_20@@85 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@70 f_20@@85) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@32) o2_4@@70 f_20@@85) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@70 f_20@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@70 f_20@@85))
))) (forall ((o2_4@@71 T@Ref) (f_20@@86 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@71 f_20@@86) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@32) o2_4@@71 f_20@@86) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@71 f_20@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@71 f_20@@86))
))) (forall ((o2_4@@72 T@Ref) (f_20@@87 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@72 f_20@@87) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@32) o2_4@@72 f_20@@87) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@72 f_20@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@72 f_20@@87))
))) (forall ((o2_4@@73 T@Ref) (f_20@@88 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@73 f_20@@88) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) o2_4@@73 f_20@@88) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@73 f_20@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@73 f_20@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@58) (IsWandField_8039_67923 pm_f_4@@9))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_16296) (ExhaleHeap@@27 T@PolymorphicMapType_16296) (Mask@@59 T@PolymorphicMapType_16317) (pm_f_4@@10 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_8004_8040 Mask@@59 null pm_f_4@@10) (IsWandField_8004_67566 pm_f_4@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@74 T@Ref) (f_20@@89 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@74 f_20@@89) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@33) o2_4@@74 f_20@@89) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@74 f_20@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@74 f_20@@89))
)) (forall ((o2_4@@75 T@Ref) (f_20@@90 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@75 f_20@@90) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@33) o2_4@@75 f_20@@90) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@75 f_20@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@75 f_20@@90))
))) (forall ((o2_4@@76 T@Ref) (f_20@@91 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@76 f_20@@91) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@33) o2_4@@76 f_20@@91) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@76 f_20@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@76 f_20@@91))
))) (forall ((o2_4@@77 T@Ref) (f_20@@92 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@77 f_20@@92) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@33) o2_4@@77 f_20@@92) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@77 f_20@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@77 f_20@@92))
))) (forall ((o2_4@@78 T@Ref) (f_20@@93 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@78 f_20@@93) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) o2_4@@78 f_20@@93) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@78 f_20@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@78 f_20@@93))
))) (forall ((o2_4@@79 T@Ref) (f_20@@94 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@79 f_20@@94) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@33) o2_4@@79 f_20@@94) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@79 f_20@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@79 f_20@@94))
))) (forall ((o2_4@@80 T@Ref) (f_20@@95 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@80 f_20@@95) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@33) o2_4@@80 f_20@@95) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@80 f_20@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@80 f_20@@95))
))) (forall ((o2_4@@81 T@Ref) (f_20@@96 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@81 f_20@@96) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@33) o2_4@@81 f_20@@96) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@81 f_20@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@81 f_20@@96))
))) (forall ((o2_4@@82 T@Ref) (f_20@@97 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@82 f_20@@97) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@33) o2_4@@82 f_20@@97) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@82 f_20@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@82 f_20@@97))
))) (forall ((o2_4@@83 T@Ref) (f_20@@98 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@83 f_20@@98) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@33) o2_4@@83 f_20@@98) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@83 f_20@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@83 f_20@@98))
))) (forall ((o2_4@@84 T@Ref) (f_20@@99 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@84 f_20@@99) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@33) o2_4@@84 f_20@@99) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@84 f_20@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@84 f_20@@99))
))) (forall ((o2_4@@85 T@Ref) (f_20@@100 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@85 f_20@@100) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@33) o2_4@@85 f_20@@100) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@85 f_20@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@85 f_20@@100))
))) (forall ((o2_4@@86 T@Ref) (f_20@@101 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@86 f_20@@101) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@33) o2_4@@86 f_20@@101) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@86 f_20@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@86 f_20@@101))
))) (forall ((o2_4@@87 T@Ref) (f_20@@102 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@87 f_20@@102) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@33) o2_4@@87 f_20@@102) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@87 f_20@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@87 f_20@@102))
))) (forall ((o2_4@@88 T@Ref) (f_20@@103 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@88 f_20@@103) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@33) o2_4@@88 f_20@@103) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@88 f_20@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@88 f_20@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@59) (IsWandField_8004_67566 pm_f_4@@10))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_16296) (Mask@@60 T@PolymorphicMapType_16317) (this@@10 T@Ref) ) (!  (=> (state Heap@@34 Mask@@60) (= (|get'| Heap@@34 this@@10) (|get#frame| (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@34) null (tinv this@@10)) this@@10)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@34 Mask@@60) (|get'| Heap@@34 this@@10))
)))
(assert (forall ((this@@11 T@Ref) ) (! (= (getPredWandId_8039_8040 (inv this@@11)) 0)
 :qid |stdinbpl.313:15|
 :skolemid |29|
 :pattern ( (inv this@@11))
)))
(assert (forall ((this@@12 T@Ref) ) (! (= (getPredWandId_8064_8065 (tinv this@@12)) 1)
 :qid |stdinbpl.368:15|
 :skolemid |35|
 :pattern ( (tinv this@@12))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_16296) (o_12 T@Ref) (f_21 T@Field_23185_23190) (v T@PolymorphicMapType_16845) ) (! (succHeap Heap@@35 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@35) (store (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@35) o_12 f_21 v) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@35) (store (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@35) o_12 f_21 v) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_16296) (o_12@@0 T@Ref) (f_21@@0 T@Field_23172_23173) (v@@0 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@36) (store (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@36) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@36) (store (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@36) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_16296) (o_12@@1 T@Ref) (f_21@@1 T@Field_8039_1189) (v@@1 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@37) (store (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@37) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@37) (store (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@37) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_16296) (o_12@@2 T@Ref) (f_21@@2 T@Field_8039_8007) (v@@2 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@38) (store (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@38) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@38) (store (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@38) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_16296) (o_12@@3 T@Ref) (f_21@@3 T@Field_8039_53) (v@@3 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@39) (store (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@39) o_12@@3 f_21@@3 v@@3) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@39) (store (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@39) o_12@@3 f_21@@3 v@@3) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_16296) (o_12@@4 T@Ref) (f_21@@4 T@Field_22193_22198) (v@@4 T@PolymorphicMapType_16845) ) (! (succHeap Heap@@40 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@40) (store (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@40) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@40) (store (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@40) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_16296) (o_12@@5 T@Ref) (f_21@@5 T@Field_20071_20072) (v@@5 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@41) (store (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@41) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@41) (store (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@41) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_16296) (o_12@@6 T@Ref) (f_21@@6 T@Field_8064_1189) (v@@6 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@42) (store (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@42) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@42) (store (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@42) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_16296) (o_12@@7 T@Ref) (f_21@@7 T@Field_8064_8007) (v@@7 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@43) (store (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@43) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@43) (store (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@43) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_16296) (o_12@@8 T@Ref) (f_21@@8 T@Field_8064_53) (v@@8 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@44) (store (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@44) o_12@@8 f_21@@8 v@@8)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@44) (store (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@44) o_12@@8 f_21@@8 v@@8)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_16296) (o_12@@9 T@Ref) (f_21@@9 T@Field_8004_22198) (v@@9 T@PolymorphicMapType_16845) ) (! (succHeap Heap@@45 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@45) (store (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@45) o_12@@9 f_21@@9 v@@9) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@45) (store (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@45) o_12@@9 f_21@@9 v@@9) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_16296) (o_12@@10 T@Ref) (f_21@@10 T@Field_8004_8040) (v@@10 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@46) (store (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@46) o_12@@10 f_21@@10 v@@10) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@46) (store (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@46) o_12@@10 f_21@@10 v@@10) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_16296) (o_12@@11 T@Ref) (f_21@@11 T@Field_19683_1189) (v@@11 Int) ) (! (succHeap Heap@@47 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@47) (store (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@47) o_12@@11 f_21@@11 v@@11) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@47) (store (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@47) o_12@@11 f_21@@11 v@@11) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_16296) (o_12@@12 T@Ref) (f_21@@12 T@Field_16369_16370) (v@@12 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@48) (store (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@48) o_12@@12 f_21@@12 v@@12) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@48) (store (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@48) o_12@@12 f_21@@12 v@@12) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_16296) (o_12@@13 T@Ref) (f_21@@13 T@Field_16356_53) (v@@13 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_16296 (store (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@49) o_12@@13 f_21@@13 v@@13) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (store (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@49) o_12@@13 f_21@@13 v@@13) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@49)))
)))
(assert (forall ((this@@13 T@Ref) ) (! (= (PredicateMaskField_8039 (inv this@@13)) (|inv#sm| this@@13))
 :qid |stdinbpl.305:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_8039 (inv this@@13)))
)))
(assert (forall ((this@@14 T@Ref) ) (! (= (PredicateMaskField_8064 (tinv this@@14)) (|tinv#sm| this@@14))
 :qid |stdinbpl.360:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_8064 (tinv this@@14)))
)))
(assert (forall ((o_12@@14 T@Ref) (f_19 T@Field_16369_16370) (Heap@@50 T@PolymorphicMapType_16296) ) (!  (=> (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@50) o_12@@14 $allocated) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@50) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@50) o_12@@14 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@50) o_12@@14 f_19))
)))
(assert (forall ((p@@3 T@Field_23172_23173) (v_1@@2 T@FrameType) (q T@Field_23172_23173) (w@@2 T@FrameType) (r T@Field_23172_23173) (u T@FrameType) ) (!  (=> (and (InsidePredicate_23172_23172 p@@3 v_1@@2 q w@@2) (InsidePredicate_23172_23172 q w@@2 r u)) (InsidePredicate_23172_23172 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_23172 p@@3 v_1@@2 q w@@2) (InsidePredicate_23172_23172 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_23172_23173) (v_1@@3 T@FrameType) (q@@0 T@Field_23172_23173) (w@@3 T@FrameType) (r@@0 T@Field_8004_8040) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_23172 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_23172_16356 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_23172_16356 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_23172 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_23172_16356 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_23172_23173) (v_1@@4 T@FrameType) (q@@1 T@Field_23172_23173) (w@@4 T@FrameType) (r@@1 T@Field_20071_20072) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_23172 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_23172_8064 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_23172_8064 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_23172 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_23172_8064 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_23172_23173) (v_1@@5 T@FrameType) (q@@2 T@Field_8004_8040) (w@@5 T@FrameType) (r@@2 T@Field_23172_23173) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_16356 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16356_23172 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_23172_23172 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_16356 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16356_23172 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_23172_23173) (v_1@@6 T@FrameType) (q@@3 T@Field_8004_8040) (w@@6 T@FrameType) (r@@3 T@Field_8004_8040) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_16356 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16356_16356 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_23172_16356 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_16356 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16356_16356 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_23172_23173) (v_1@@7 T@FrameType) (q@@4 T@Field_8004_8040) (w@@7 T@FrameType) (r@@4 T@Field_20071_20072) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_16356 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16356_8064 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_23172_8064 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_16356 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16356_8064 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_23172_23173) (v_1@@8 T@FrameType) (q@@5 T@Field_20071_20072) (w@@8 T@FrameType) (r@@5 T@Field_23172_23173) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_8064 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8064_23172 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_23172_23172 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_8064 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8064_23172 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_23172_23173) (v_1@@9 T@FrameType) (q@@6 T@Field_20071_20072) (w@@9 T@FrameType) (r@@6 T@Field_8004_8040) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_8064 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8064_16356 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_23172_16356 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_8064 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8064_16356 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_23172_23173) (v_1@@10 T@FrameType) (q@@7 T@Field_20071_20072) (w@@10 T@FrameType) (r@@7 T@Field_20071_20072) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_8064 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8064_8064 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_23172_8064 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_8064 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8064_8064 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_8004_8040) (v_1@@11 T@FrameType) (q@@8 T@Field_23172_23173) (w@@11 T@FrameType) (r@@8 T@Field_23172_23173) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_23172 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_23172_23172 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16356_23172 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_23172 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_23172_23172 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_8004_8040) (v_1@@12 T@FrameType) (q@@9 T@Field_23172_23173) (w@@12 T@FrameType) (r@@9 T@Field_8004_8040) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_23172 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_23172_16356 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16356_16356 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_23172 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_23172_16356 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_8004_8040) (v_1@@13 T@FrameType) (q@@10 T@Field_23172_23173) (w@@13 T@FrameType) (r@@10 T@Field_20071_20072) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_23172 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_23172_8064 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16356_8064 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_23172 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_23172_8064 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_8004_8040) (v_1@@14 T@FrameType) (q@@11 T@Field_8004_8040) (w@@14 T@FrameType) (r@@11 T@Field_23172_23173) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_16356 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16356_23172 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16356_23172 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_16356 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16356_23172 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_8004_8040) (v_1@@15 T@FrameType) (q@@12 T@Field_8004_8040) (w@@15 T@FrameType) (r@@12 T@Field_8004_8040) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_16356 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16356_16356 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16356_16356 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_16356 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16356_16356 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_8004_8040) (v_1@@16 T@FrameType) (q@@13 T@Field_8004_8040) (w@@16 T@FrameType) (r@@13 T@Field_20071_20072) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_16356 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16356_8064 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16356_8064 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_16356 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16356_8064 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_8004_8040) (v_1@@17 T@FrameType) (q@@14 T@Field_20071_20072) (w@@17 T@FrameType) (r@@14 T@Field_23172_23173) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_8064 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8064_23172 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16356_23172 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_8064 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8064_23172 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_8004_8040) (v_1@@18 T@FrameType) (q@@15 T@Field_20071_20072) (w@@18 T@FrameType) (r@@15 T@Field_8004_8040) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_8064 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8064_16356 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16356_16356 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_8064 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8064_16356 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_8004_8040) (v_1@@19 T@FrameType) (q@@16 T@Field_20071_20072) (w@@19 T@FrameType) (r@@16 T@Field_20071_20072) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_8064 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8064_8064 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16356_8064 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_8064 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8064_8064 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_20071_20072) (v_1@@20 T@FrameType) (q@@17 T@Field_23172_23173) (w@@20 T@FrameType) (r@@17 T@Field_23172_23173) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_23172 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_23172_23172 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_8064_23172 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_23172 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_23172_23172 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_20071_20072) (v_1@@21 T@FrameType) (q@@18 T@Field_23172_23173) (w@@21 T@FrameType) (r@@18 T@Field_8004_8040) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_23172 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_23172_16356 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_8064_16356 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_23172 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_23172_16356 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_20071_20072) (v_1@@22 T@FrameType) (q@@19 T@Field_23172_23173) (w@@22 T@FrameType) (r@@19 T@Field_20071_20072) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_23172 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_23172_8064 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_8064_8064 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_23172 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_23172_8064 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_20071_20072) (v_1@@23 T@FrameType) (q@@20 T@Field_8004_8040) (w@@23 T@FrameType) (r@@20 T@Field_23172_23173) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_16356 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16356_23172 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_8064_23172 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_16356 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16356_23172 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_20071_20072) (v_1@@24 T@FrameType) (q@@21 T@Field_8004_8040) (w@@24 T@FrameType) (r@@21 T@Field_8004_8040) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_16356 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16356_16356 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_8064_16356 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_16356 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16356_16356 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_20071_20072) (v_1@@25 T@FrameType) (q@@22 T@Field_8004_8040) (w@@25 T@FrameType) (r@@22 T@Field_20071_20072) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_16356 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16356_8064 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_8064_8064 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_16356 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16356_8064 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_20071_20072) (v_1@@26 T@FrameType) (q@@23 T@Field_20071_20072) (w@@26 T@FrameType) (r@@23 T@Field_23172_23173) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_8064 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8064_23172 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_8064_23172 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_8064 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8064_23172 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_20071_20072) (v_1@@27 T@FrameType) (q@@24 T@Field_20071_20072) (w@@27 T@FrameType) (r@@24 T@Field_8004_8040) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_8064 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8064_16356 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_8064_16356 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_8064 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8064_16356 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_20071_20072) (v_1@@28 T@FrameType) (q@@25 T@Field_20071_20072) (w@@28 T@FrameType) (r@@25 T@Field_20071_20072) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_8064 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8064_8064 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_8064_8064 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_8064 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8064_8064 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |inv#definedness|)
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
(declare-sort T@Field_16356_53 0)
(declare-sort T@Field_16369_16370 0)
(declare-sort T@Field_19683_1189 0)
(declare-sort T@Field_20071_20072 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_22193_22198 0)
(declare-sort T@Field_23172_23173 0)
(declare-sort T@Field_23185_23190 0)
(declare-sort T@Field_8004_8040 0)
(declare-sort T@Field_8004_22198 0)
(declare-sort T@Field_8039_1189 0)
(declare-sort T@Field_8039_8007 0)
(declare-sort T@Field_8039_53 0)
(declare-sort T@Field_8064_1189 0)
(declare-sort T@Field_8064_8007 0)
(declare-sort T@Field_8064_53 0)
(declare-datatypes ((T@PolymorphicMapType_16317 0)) (((PolymorphicMapType_16317 (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| (Array T@Ref T@Field_20071_20072 Real)) (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| (Array T@Ref T@Field_19683_1189 Real)) (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| (Array T@Ref T@Field_16369_16370 Real)) (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| (Array T@Ref T@Field_23172_23173 Real)) (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| (Array T@Ref T@Field_8064_1189 Real)) (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| (Array T@Ref T@Field_8064_8007 Real)) (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| (Array T@Ref T@Field_8064_53 Real)) (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| (Array T@Ref T@Field_22193_22198 Real)) (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| (Array T@Ref T@Field_8004_8040 Real)) (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| (Array T@Ref T@Field_16356_53 Real)) (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| (Array T@Ref T@Field_8004_22198 Real)) (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| (Array T@Ref T@Field_8039_1189 Real)) (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| (Array T@Ref T@Field_8039_8007 Real)) (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| (Array T@Ref T@Field_8039_53 Real)) (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| (Array T@Ref T@Field_23185_23190 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16845 0)) (((PolymorphicMapType_16845 (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (Array T@Ref T@Field_19683_1189 Bool)) (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (Array T@Ref T@Field_16369_16370 Bool)) (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (Array T@Ref T@Field_16356_53 Bool)) (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (Array T@Ref T@Field_8004_8040 Bool)) (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (Array T@Ref T@Field_8004_22198 Bool)) (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (Array T@Ref T@Field_8064_1189 Bool)) (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (Array T@Ref T@Field_8064_8007 Bool)) (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (Array T@Ref T@Field_8064_53 Bool)) (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (Array T@Ref T@Field_20071_20072 Bool)) (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (Array T@Ref T@Field_22193_22198 Bool)) (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (Array T@Ref T@Field_8039_1189 Bool)) (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (Array T@Ref T@Field_8039_8007 Bool)) (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (Array T@Ref T@Field_8039_53 Bool)) (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (Array T@Ref T@Field_23172_23173 Bool)) (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (Array T@Ref T@Field_23185_23190 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16296 0)) (((PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| (Array T@Ref T@Field_16356_53 Bool)) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| (Array T@Ref T@Field_16369_16370 T@Ref)) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| (Array T@Ref T@Field_19683_1189 Int)) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| (Array T@Ref T@Field_20071_20072 T@FrameType)) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| (Array T@Ref T@Field_22193_22198 T@PolymorphicMapType_16845)) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| (Array T@Ref T@Field_23172_23173 T@FrameType)) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| (Array T@Ref T@Field_23185_23190 T@PolymorphicMapType_16845)) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| (Array T@Ref T@Field_8004_8040 T@FrameType)) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| (Array T@Ref T@Field_8004_22198 T@PolymorphicMapType_16845)) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| (Array T@Ref T@Field_8039_1189 Int)) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| (Array T@Ref T@Field_8039_8007 T@Ref)) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| (Array T@Ref T@Field_8039_53 Bool)) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| (Array T@Ref T@Field_8064_1189 Int)) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| (Array T@Ref T@Field_8064_8007 T@Ref)) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| (Array T@Ref T@Field_8064_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_16356_53)
(declare-fun value_1 () T@Field_19683_1189)
(declare-fun next () T@Field_16369_16370)
(declare-fun succHeap (T@PolymorphicMapType_16296 T@PolymorphicMapType_16296) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16296 T@PolymorphicMapType_16296) Bool)
(declare-fun state (T@PolymorphicMapType_16296 T@PolymorphicMapType_16317) Bool)
(declare-fun get (T@PolymorphicMapType_16296 T@Ref) Int)
(declare-fun |get#triggerStateless| (T@Ref) Int)
(declare-fun |tinv#trigger_8064| (T@PolymorphicMapType_16296 T@Field_20071_20072) Bool)
(declare-fun tinv (T@Ref) T@Field_20071_20072)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_16317) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16845)
(declare-fun inv (T@Ref) T@Field_23172_23173)
(declare-fun IsPredicateField_8039_8040 (T@Field_23172_23173) Bool)
(declare-fun IsPredicateField_8064_8065 (T@Field_20071_20072) Bool)
(declare-fun |get'| (T@PolymorphicMapType_16296 T@Ref) Int)
(declare-fun dummyFunction_1407 (Int) Bool)
(declare-fun |inv#trigger_8039| (T@PolymorphicMapType_16296 T@Field_23172_23173) Bool)
(declare-fun |inv#everUsed_8039| (T@Field_23172_23173) Bool)
(declare-fun |tinv#everUsed_8064| (T@Field_20071_20072) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16296 T@PolymorphicMapType_16296 T@PolymorphicMapType_16317) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8064 (T@Field_20071_20072) T@Field_22193_22198)
(declare-fun HasDirectPerm_8064_8065 (T@PolymorphicMapType_16317 T@Ref T@Field_20071_20072) Bool)
(declare-fun PredicateMaskField_8039 (T@Field_23172_23173) T@Field_23185_23190)
(declare-fun HasDirectPerm_8039_8040 (T@PolymorphicMapType_16317 T@Ref T@Field_23172_23173) Bool)
(declare-fun IsPredicateField_8004_62599 (T@Field_8004_8040) Bool)
(declare-fun PredicateMaskField_8004 (T@Field_8004_8040) T@Field_8004_22198)
(declare-fun HasDirectPerm_8004_8040 (T@PolymorphicMapType_16317 T@Ref T@Field_8004_8040) Bool)
(declare-fun IsWandField_8064_68280 (T@Field_20071_20072) Bool)
(declare-fun WandMaskField_8064 (T@Field_20071_20072) T@Field_22193_22198)
(declare-fun IsWandField_8039_67923 (T@Field_23172_23173) Bool)
(declare-fun WandMaskField_8039 (T@Field_23172_23173) T@Field_23185_23190)
(declare-fun IsWandField_8004_67566 (T@Field_8004_8040) Bool)
(declare-fun WandMaskField_8004 (T@Field_8004_8040) T@Field_8004_22198)
(declare-fun |inv#sm| (T@Ref) T@Field_23185_23190)
(declare-fun |tinv#sm| (T@Ref) T@Field_22193_22198)
(declare-fun dummyHeap () T@PolymorphicMapType_16296)
(declare-fun ZeroMask () T@PolymorphicMapType_16317)
(declare-fun InsidePredicate_23172_23172 (T@Field_23172_23173 T@FrameType T@Field_23172_23173 T@FrameType) Bool)
(declare-fun InsidePredicate_16356_16356 (T@Field_8004_8040 T@FrameType T@Field_8004_8040 T@FrameType) Bool)
(declare-fun InsidePredicate_8064_8064 (T@Field_20071_20072 T@FrameType T@Field_20071_20072 T@FrameType) Bool)
(declare-fun IsPredicateField_8004_1189 (T@Field_19683_1189) Bool)
(declare-fun IsWandField_8004_1189 (T@Field_19683_1189) Bool)
(declare-fun IsPredicateField_8006_8007 (T@Field_16369_16370) Bool)
(declare-fun IsWandField_8006_8007 (T@Field_16369_16370) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8039_78569 (T@Field_23185_23190) Bool)
(declare-fun IsWandField_8039_78585 (T@Field_23185_23190) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8039_53 (T@Field_8039_53) Bool)
(declare-fun IsWandField_8039_53 (T@Field_8039_53) Bool)
(declare-fun IsPredicateField_8039_8007 (T@Field_8039_8007) Bool)
(declare-fun IsWandField_8039_8007 (T@Field_8039_8007) Bool)
(declare-fun IsPredicateField_8039_1189 (T@Field_8039_1189) Bool)
(declare-fun IsWandField_8039_1189 (T@Field_8039_1189) Bool)
(declare-fun IsPredicateField_8004_77738 (T@Field_8004_22198) Bool)
(declare-fun IsWandField_8004_77754 (T@Field_8004_22198) Bool)
(declare-fun IsPredicateField_8004_53 (T@Field_16356_53) Bool)
(declare-fun IsWandField_8004_53 (T@Field_16356_53) Bool)
(declare-fun IsPredicateField_8064_76935 (T@Field_22193_22198) Bool)
(declare-fun IsWandField_8064_76951 (T@Field_22193_22198) Bool)
(declare-fun IsPredicateField_8064_53 (T@Field_8064_53) Bool)
(declare-fun IsWandField_8064_53 (T@Field_8064_53) Bool)
(declare-fun IsPredicateField_8064_8007 (T@Field_8064_8007) Bool)
(declare-fun IsWandField_8064_8007 (T@Field_8064_8007) Bool)
(declare-fun IsPredicateField_8064_1189 (T@Field_8064_1189) Bool)
(declare-fun IsWandField_8064_1189 (T@Field_8064_1189) Bool)
(declare-fun HasDirectPerm_8064_62354 (T@PolymorphicMapType_16317 T@Ref T@Field_22193_22198) Bool)
(declare-fun HasDirectPerm_8064_53 (T@PolymorphicMapType_16317 T@Ref T@Field_8064_53) Bool)
(declare-fun HasDirectPerm_8064_8007 (T@PolymorphicMapType_16317 T@Ref T@Field_8064_8007) Bool)
(declare-fun HasDirectPerm_8064_1189 (T@PolymorphicMapType_16317 T@Ref T@Field_8064_1189) Bool)
(declare-fun HasDirectPerm_8039_61256 (T@PolymorphicMapType_16317 T@Ref T@Field_23185_23190) Bool)
(declare-fun HasDirectPerm_8039_53 (T@PolymorphicMapType_16317 T@Ref T@Field_8039_53) Bool)
(declare-fun HasDirectPerm_8039_8007 (T@PolymorphicMapType_16317 T@Ref T@Field_8039_8007) Bool)
(declare-fun HasDirectPerm_8039_1189 (T@PolymorphicMapType_16317 T@Ref T@Field_8039_1189) Bool)
(declare-fun HasDirectPerm_8004_60115 (T@PolymorphicMapType_16317 T@Ref T@Field_8004_22198) Bool)
(declare-fun HasDirectPerm_8004_53 (T@PolymorphicMapType_16317 T@Ref T@Field_16356_53) Bool)
(declare-fun HasDirectPerm_8006_8007 (T@PolymorphicMapType_16317 T@Ref T@Field_16369_16370) Bool)
(declare-fun HasDirectPerm_8004_1189 (T@PolymorphicMapType_16317 T@Ref T@Field_19683_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16317 T@PolymorphicMapType_16317 T@PolymorphicMapType_16317) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_8039_8040 (T@Field_23172_23173) Int)
(declare-fun getPredWandId_8064_8065 (T@Field_20071_20072) Int)
(declare-fun InsidePredicate_23172_16356 (T@Field_23172_23173 T@FrameType T@Field_8004_8040 T@FrameType) Bool)
(declare-fun InsidePredicate_23172_8064 (T@Field_23172_23173 T@FrameType T@Field_20071_20072 T@FrameType) Bool)
(declare-fun InsidePredicate_16356_23172 (T@Field_8004_8040 T@FrameType T@Field_23172_23173 T@FrameType) Bool)
(declare-fun InsidePredicate_16356_8064 (T@Field_8004_8040 T@FrameType T@Field_20071_20072 T@FrameType) Bool)
(declare-fun InsidePredicate_8064_23172 (T@Field_20071_20072 T@FrameType T@Field_23172_23173 T@FrameType) Bool)
(declare-fun InsidePredicate_8064_16356 (T@Field_20071_20072 T@FrameType T@Field_8004_8040 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_16296) (Heap1 T@PolymorphicMapType_16296) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16296) (Mask T@PolymorphicMapType_16317) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (get Heap this) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap) this value_1)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (get Heap this))
 :pattern ( (state Heap Mask) (|get#triggerStateless| this) (|tinv#trigger_8064| Heap (tinv this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16296) (Mask@@0 T@PolymorphicMapType_16317) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16296) (Heap1@@0 T@PolymorphicMapType_16296) (Heap2 T@PolymorphicMapType_16296) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23185_23190) ) (!  (not (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_23172_23173) ) (!  (not (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8039_53) ) (!  (not (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8039_8007) ) (!  (not (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8039_1189) ) (!  (not (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_22193_22198) ) (!  (not (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_20071_20072) ) (!  (not (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8064_53) ) (!  (not (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8064_8007) ) (!  (not (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8064_1189) ) (!  (not (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8004_22198) ) (!  (not (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8004_8040) ) (!  (not (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_16356_53) ) (!  (not (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_16369_16370) ) (!  (not (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_19683_1189) ) (!  (not (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_8039_8040 (inv this@@0))
 :qid |stdinbpl.309:15|
 :skolemid |28|
 :pattern ( (inv this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_8064_8065 (tinv this@@1))
 :qid |stdinbpl.364:15|
 :skolemid |34|
 :pattern ( (tinv this@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16296) (this@@2 T@Ref) ) (! (dummyFunction_1407 (|get#triggerStateless| this@@2))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|get'| Heap@@1 this@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16296) (this@@3 T@Ref) ) (! (|inv#everUsed_8039| (inv this@@3))
 :qid |stdinbpl.328:15|
 :skolemid |32|
 :pattern ( (|inv#trigger_8039| Heap@@2 (inv this@@3)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16296) (this@@4 T@Ref) ) (! (|tinv#everUsed_8064| (tinv this@@4))
 :qid |stdinbpl.383:15|
 :skolemid |38|
 :pattern ( (|tinv#trigger_8064| Heap@@3 (tinv this@@4)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16296) (this@@5 T@Ref) ) (!  (and (= (get Heap@@4 this@@5) (|get'| Heap@@4 this@@5)) (dummyFunction_1407 (|get#triggerStateless| this@@5)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (get Heap@@4 this@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16296) (ExhaleHeap T@PolymorphicMapType_16296) (Mask@@1 T@PolymorphicMapType_16317) (pm_f_4 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8064_8065 Mask@@1 null pm_f_4) (IsPredicateField_8064_8065 pm_f_4)) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@5) null (PredicateMaskField_8064 pm_f_4)) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap) null (PredicateMaskField_8064 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_8064_8065 pm_f_4) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap) null (PredicateMaskField_8064 pm_f_4)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16296) (ExhaleHeap@@0 T@PolymorphicMapType_16296) (Mask@@2 T@PolymorphicMapType_16317) (pm_f_4@@0 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_8039_8040 Mask@@2 null pm_f_4@@0) (IsPredicateField_8039_8040 pm_f_4@@0)) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@6) null (PredicateMaskField_8039 pm_f_4@@0)) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@0) null (PredicateMaskField_8039 pm_f_4@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_8039_8040 pm_f_4@@0) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@0) null (PredicateMaskField_8039 pm_f_4@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16296) (ExhaleHeap@@1 T@PolymorphicMapType_16296) (Mask@@3 T@PolymorphicMapType_16317) (pm_f_4@@1 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_8004_8040 Mask@@3 null pm_f_4@@1) (IsPredicateField_8004_62599 pm_f_4@@1)) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@7) null (PredicateMaskField_8004 pm_f_4@@1)) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@1) null (PredicateMaskField_8004 pm_f_4@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsPredicateField_8004_62599 pm_f_4@@1) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@1) null (PredicateMaskField_8004 pm_f_4@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16296) (ExhaleHeap@@2 T@PolymorphicMapType_16296) (Mask@@4 T@PolymorphicMapType_16317) (pm_f_4@@2 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_8064_8065 Mask@@4 null pm_f_4@@2) (IsWandField_8064_68280 pm_f_4@@2)) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@8) null (WandMaskField_8064 pm_f_4@@2)) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@2) null (WandMaskField_8064 pm_f_4@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_8064_68280 pm_f_4@@2) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@2) null (WandMaskField_8064 pm_f_4@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16296) (ExhaleHeap@@3 T@PolymorphicMapType_16296) (Mask@@5 T@PolymorphicMapType_16317) (pm_f_4@@3 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_8039_8040 Mask@@5 null pm_f_4@@3) (IsWandField_8039_67923 pm_f_4@@3)) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@9) null (WandMaskField_8039 pm_f_4@@3)) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@3) null (WandMaskField_8039 pm_f_4@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (IsWandField_8039_67923 pm_f_4@@3) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@3) null (WandMaskField_8039 pm_f_4@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16296) (ExhaleHeap@@4 T@PolymorphicMapType_16296) (Mask@@6 T@PolymorphicMapType_16317) (pm_f_4@@4 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_8004_8040 Mask@@6 null pm_f_4@@4) (IsWandField_8004_67566 pm_f_4@@4)) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@10) null (WandMaskField_8004 pm_f_4@@4)) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@4) null (WandMaskField_8004 pm_f_4@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (IsWandField_8004_67566 pm_f_4@@4) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@4) null (WandMaskField_8004 pm_f_4@@4)))
)))
(assert (forall ((this@@6 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@6) (inv this2)) (= this@@6 this2))
 :qid |stdinbpl.319:15|
 :skolemid |30|
 :pattern ( (inv this@@6) (inv this2))
)))
(assert (forall ((this@@7 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@7) (|inv#sm| this2@@0)) (= this@@7 this2@@0))
 :qid |stdinbpl.323:15|
 :skolemid |31|
 :pattern ( (|inv#sm| this@@7) (|inv#sm| this2@@0))
)))
(assert (forall ((this@@8 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (tinv this@@8) (tinv this2@@1)) (= this@@8 this2@@1))
 :qid |stdinbpl.374:15|
 :skolemid |36|
 :pattern ( (tinv this@@8) (tinv this2@@1))
)))
(assert (forall ((this@@9 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|tinv#sm| this@@9) (|tinv#sm| this2@@2)) (= this@@9 this2@@2))
 :qid |stdinbpl.378:15|
 :skolemid |37|
 :pattern ( (|tinv#sm| this@@9) (|tinv#sm| this2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16296) (ExhaleHeap@@5 T@PolymorphicMapType_16296) (Mask@@7 T@PolymorphicMapType_16317) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (=> (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@11) o_13 $allocated) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@5) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@7) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@5) o_13 $allocated))
)))
(assert (forall ((p T@Field_23172_23173) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_23172_23172 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23172_23172 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8004_8040) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16356_16356 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16356_16356 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_20071_20072) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8064_8064 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8064_8064 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_8004_1189 value_1)))
(assert  (not (IsWandField_8004_1189 value_1)))
(assert  (not (IsPredicateField_8006_8007 next)))
(assert  (not (IsWandField_8006_8007 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16296) (ExhaleHeap@@6 T@PolymorphicMapType_16296) (Mask@@8 T@PolymorphicMapType_16317) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8) (succHeap Heap@@12 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_16317) (o_2@@14 T@Ref) (f_4@@14 T@Field_23185_23190) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| Mask@@9) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8039_78569 f_4@@14))) (not (IsWandField_8039_78585 f_4@@14))) (<= (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| Mask@@9) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| Mask@@9) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16317) (o_2@@15 T@Ref) (f_4@@15 T@Field_8039_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8039_53 f_4@@15))) (not (IsWandField_8039_53 f_4@@15))) (<= (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16317) (o_2@@16 T@Ref) (f_4@@16 T@Field_8039_8007) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8039_8007 f_4@@16))) (not (IsWandField_8039_8007 f_4@@16))) (<= (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16317) (o_2@@17 T@Ref) (f_4@@17 T@Field_8039_1189) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8039_1189 f_4@@17))) (not (IsWandField_8039_1189 f_4@@17))) (<= (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16317) (o_2@@18 T@Ref) (f_4@@18 T@Field_23172_23173) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8039_8040 f_4@@18))) (not (IsWandField_8039_67923 f_4@@18))) (<= (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_16317) (o_2@@19 T@Ref) (f_4@@19 T@Field_8004_22198) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8004_77738 f_4@@19))) (not (IsWandField_8004_77754 f_4@@19))) (<= (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_16317) (o_2@@20 T@Ref) (f_4@@20 T@Field_16356_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8004_53 f_4@@20))) (not (IsWandField_8004_53 f_4@@20))) (<= (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_16317) (o_2@@21 T@Ref) (f_4@@21 T@Field_16369_16370) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8006_8007 f_4@@21))) (not (IsWandField_8006_8007 f_4@@21))) (<= (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_16317) (o_2@@22 T@Ref) (f_4@@22 T@Field_19683_1189) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8004_1189 f_4@@22))) (not (IsWandField_8004_1189 f_4@@22))) (<= (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_16317) (o_2@@23 T@Ref) (f_4@@23 T@Field_8004_8040) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8004_62599 f_4@@23))) (not (IsWandField_8004_67566 f_4@@23))) (<= (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_16317) (o_2@@24 T@Ref) (f_4@@24 T@Field_22193_22198) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8064_76935 f_4@@24))) (not (IsWandField_8064_76951 f_4@@24))) (<= (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_16317) (o_2@@25 T@Ref) (f_4@@25 T@Field_8064_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8064_53 f_4@@25))) (not (IsWandField_8064_53 f_4@@25))) (<= (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_16317) (o_2@@26 T@Ref) (f_4@@26 T@Field_8064_8007) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8064_8007 f_4@@26))) (not (IsWandField_8064_8007 f_4@@26))) (<= (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_16317) (o_2@@27 T@Ref) (f_4@@27 T@Field_8064_1189) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8064_1189 f_4@@27))) (not (IsWandField_8064_1189 f_4@@27))) (<= (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_16317) (o_2@@28 T@Ref) (f_4@@28 T@Field_20071_20072) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8064_8065 f_4@@28))) (not (IsWandField_8064_68280 f_4@@28))) (<= (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_16317) (o_2@@29 T@Ref) (f_4@@29 T@Field_22193_22198) ) (! (= (HasDirectPerm_8064_62354 Mask@@24 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| Mask@@24) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_62354 Mask@@24 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_16317) (o_2@@30 T@Ref) (f_4@@30 T@Field_8064_53) ) (! (= (HasDirectPerm_8064_53 Mask@@25 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| Mask@@25) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_53 Mask@@25 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_16317) (o_2@@31 T@Ref) (f_4@@31 T@Field_20071_20072) ) (! (= (HasDirectPerm_8064_8065 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_8065 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_16317) (o_2@@32 T@Ref) (f_4@@32 T@Field_8064_8007) ) (! (= (HasDirectPerm_8064_8007 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_8007 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_16317) (o_2@@33 T@Ref) (f_4@@33 T@Field_8064_1189) ) (! (= (HasDirectPerm_8064_1189 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8064_1189 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_16317) (o_2@@34 T@Ref) (f_4@@34 T@Field_23185_23190) ) (! (= (HasDirectPerm_8039_61256 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_61256 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_16317) (o_2@@35 T@Ref) (f_4@@35 T@Field_8039_53) ) (! (= (HasDirectPerm_8039_53 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_53 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_16317) (o_2@@36 T@Ref) (f_4@@36 T@Field_23172_23173) ) (! (= (HasDirectPerm_8039_8040 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_8040 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_16317) (o_2@@37 T@Ref) (f_4@@37 T@Field_8039_8007) ) (! (= (HasDirectPerm_8039_8007 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_8007 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_16317) (o_2@@38 T@Ref) (f_4@@38 T@Field_8039_1189) ) (! (= (HasDirectPerm_8039_1189 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8039_1189 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_16317) (o_2@@39 T@Ref) (f_4@@39 T@Field_8004_22198) ) (! (= (HasDirectPerm_8004_60115 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8004_60115 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_16317) (o_2@@40 T@Ref) (f_4@@40 T@Field_16356_53) ) (! (= (HasDirectPerm_8004_53 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8004_53 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_16317) (o_2@@41 T@Ref) (f_4@@41 T@Field_8004_8040) ) (! (= (HasDirectPerm_8004_8040 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8004_8040 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_16317) (o_2@@42 T@Ref) (f_4@@42 T@Field_16369_16370) ) (! (= (HasDirectPerm_8006_8007 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8006_8007 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_16317) (o_2@@43 T@Ref) (f_4@@43 T@Field_19683_1189) ) (! (= (HasDirectPerm_8004_1189 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8004_1189 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16296) (ExhaleHeap@@7 T@PolymorphicMapType_16296) (Mask@@39 T@PolymorphicMapType_16317) (o_13@@0 T@Ref) (f_20 T@Field_22193_22198) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@39) (=> (HasDirectPerm_8064_62354 Mask@@39 o_13@@0 f_20) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@13) o_13@@0 f_20) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@7) o_13@@0 f_20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@39) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@7) o_13@@0 f_20))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16296) (ExhaleHeap@@8 T@PolymorphicMapType_16296) (Mask@@40 T@PolymorphicMapType_16317) (o_13@@1 T@Ref) (f_20@@0 T@Field_8064_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@40) (=> (HasDirectPerm_8064_53 Mask@@40 o_13@@1 f_20@@0) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@14) o_13@@1 f_20@@0) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@8) o_13@@1 f_20@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@40) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@8) o_13@@1 f_20@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16296) (ExhaleHeap@@9 T@PolymorphicMapType_16296) (Mask@@41 T@PolymorphicMapType_16317) (o_13@@2 T@Ref) (f_20@@1 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@41) (=> (HasDirectPerm_8064_8065 Mask@@41 o_13@@2 f_20@@1) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@15) o_13@@2 f_20@@1) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@9) o_13@@2 f_20@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@41) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@9) o_13@@2 f_20@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16296) (ExhaleHeap@@10 T@PolymorphicMapType_16296) (Mask@@42 T@PolymorphicMapType_16317) (o_13@@3 T@Ref) (f_20@@2 T@Field_8064_8007) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@42) (=> (HasDirectPerm_8064_8007 Mask@@42 o_13@@3 f_20@@2) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@16) o_13@@3 f_20@@2) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@10) o_13@@3 f_20@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@42) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@10) o_13@@3 f_20@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16296) (ExhaleHeap@@11 T@PolymorphicMapType_16296) (Mask@@43 T@PolymorphicMapType_16317) (o_13@@4 T@Ref) (f_20@@3 T@Field_8064_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@43) (=> (HasDirectPerm_8064_1189 Mask@@43 o_13@@4 f_20@@3) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@17) o_13@@4 f_20@@3) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@11) o_13@@4 f_20@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@43) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@11) o_13@@4 f_20@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16296) (ExhaleHeap@@12 T@PolymorphicMapType_16296) (Mask@@44 T@PolymorphicMapType_16317) (o_13@@5 T@Ref) (f_20@@4 T@Field_23185_23190) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@44) (=> (HasDirectPerm_8039_61256 Mask@@44 o_13@@5 f_20@@4) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@18) o_13@@5 f_20@@4) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@12) o_13@@5 f_20@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@44) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@12) o_13@@5 f_20@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16296) (ExhaleHeap@@13 T@PolymorphicMapType_16296) (Mask@@45 T@PolymorphicMapType_16317) (o_13@@6 T@Ref) (f_20@@5 T@Field_8039_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@45) (=> (HasDirectPerm_8039_53 Mask@@45 o_13@@6 f_20@@5) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@19) o_13@@6 f_20@@5) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@13) o_13@@6 f_20@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@45) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@13) o_13@@6 f_20@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_16296) (ExhaleHeap@@14 T@PolymorphicMapType_16296) (Mask@@46 T@PolymorphicMapType_16317) (o_13@@7 T@Ref) (f_20@@6 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@46) (=> (HasDirectPerm_8039_8040 Mask@@46 o_13@@7 f_20@@6) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@20) o_13@@7 f_20@@6) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@14) o_13@@7 f_20@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@46) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@14) o_13@@7 f_20@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_16296) (ExhaleHeap@@15 T@PolymorphicMapType_16296) (Mask@@47 T@PolymorphicMapType_16317) (o_13@@8 T@Ref) (f_20@@7 T@Field_8039_8007) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@47) (=> (HasDirectPerm_8039_8007 Mask@@47 o_13@@8 f_20@@7) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@21) o_13@@8 f_20@@7) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@15) o_13@@8 f_20@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@47) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@15) o_13@@8 f_20@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_16296) (ExhaleHeap@@16 T@PolymorphicMapType_16296) (Mask@@48 T@PolymorphicMapType_16317) (o_13@@9 T@Ref) (f_20@@8 T@Field_8039_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@48) (=> (HasDirectPerm_8039_1189 Mask@@48 o_13@@9 f_20@@8) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@22) o_13@@9 f_20@@8) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@16) o_13@@9 f_20@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@48) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@16) o_13@@9 f_20@@8))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_16296) (ExhaleHeap@@17 T@PolymorphicMapType_16296) (Mask@@49 T@PolymorphicMapType_16317) (o_13@@10 T@Ref) (f_20@@9 T@Field_8004_22198) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@49) (=> (HasDirectPerm_8004_60115 Mask@@49 o_13@@10 f_20@@9) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@23) o_13@@10 f_20@@9) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@17) o_13@@10 f_20@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@49) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@17) o_13@@10 f_20@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_16296) (ExhaleHeap@@18 T@PolymorphicMapType_16296) (Mask@@50 T@PolymorphicMapType_16317) (o_13@@11 T@Ref) (f_20@@10 T@Field_16356_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@50) (=> (HasDirectPerm_8004_53 Mask@@50 o_13@@11 f_20@@10) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@24) o_13@@11 f_20@@10) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@18) o_13@@11 f_20@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@50) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@18) o_13@@11 f_20@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_16296) (ExhaleHeap@@19 T@PolymorphicMapType_16296) (Mask@@51 T@PolymorphicMapType_16317) (o_13@@12 T@Ref) (f_20@@11 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@51) (=> (HasDirectPerm_8004_8040 Mask@@51 o_13@@12 f_20@@11) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@25) o_13@@12 f_20@@11) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@19) o_13@@12 f_20@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@19 Mask@@51) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@19) o_13@@12 f_20@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_16296) (ExhaleHeap@@20 T@PolymorphicMapType_16296) (Mask@@52 T@PolymorphicMapType_16317) (o_13@@13 T@Ref) (f_20@@12 T@Field_16369_16370) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@52) (=> (HasDirectPerm_8006_8007 Mask@@52 o_13@@13 f_20@@12) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@26) o_13@@13 f_20@@12) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@20) o_13@@13 f_20@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@20 Mask@@52) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@20) o_13@@13 f_20@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_16296) (ExhaleHeap@@21 T@PolymorphicMapType_16296) (Mask@@53 T@PolymorphicMapType_16317) (o_13@@14 T@Ref) (f_20@@13 T@Field_19683_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@53) (=> (HasDirectPerm_8004_1189 Mask@@53 o_13@@14 f_20@@13) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@27) o_13@@14 f_20@@13) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@21) o_13@@14 f_20@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@21 Mask@@53) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@21) o_13@@14 f_20@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_23185_23190) ) (! (= (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_8039_53) ) (! (= (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_8039_8007) ) (! (= (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_8039_1189) ) (! (= (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_23172_23173) ) (! (= (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_8004_22198) ) (! (= (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_16356_53) ) (! (= (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_16369_16370) ) (! (= (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_19683_1189) ) (! (= (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_8004_8040) ) (! (= (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_22193_22198) ) (! (= (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_8064_53) ) (! (= (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_8064_8007) ) (! (= (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_8064_1189) ) (! (= (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_20071_20072) ) (! (= (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16317) (SummandMask1 T@PolymorphicMapType_16317) (SummandMask2 T@PolymorphicMapType_16317) (o_2@@59 T@Ref) (f_4@@59 T@Field_23185_23190) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16317_8039_75128#PolymorphicMapType_16317| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16317) (SummandMask1@@0 T@PolymorphicMapType_16317) (SummandMask2@@0 T@PolymorphicMapType_16317) (o_2@@60 T@Ref) (f_4@@60 T@Field_8039_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16317_8039_53#PolymorphicMapType_16317| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16317) (SummandMask1@@1 T@PolymorphicMapType_16317) (SummandMask2@@1 T@PolymorphicMapType_16317) (o_2@@61 T@Ref) (f_4@@61 T@Field_8039_8007) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16317_8039_8007#PolymorphicMapType_16317| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16317) (SummandMask1@@2 T@PolymorphicMapType_16317) (SummandMask2@@2 T@PolymorphicMapType_16317) (o_2@@62 T@Ref) (f_4@@62 T@Field_8039_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16317_8039_1189#PolymorphicMapType_16317| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16317) (SummandMask1@@3 T@PolymorphicMapType_16317) (SummandMask2@@3 T@PolymorphicMapType_16317) (o_2@@63 T@Ref) (f_4@@63 T@Field_23172_23173) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16317_8039_8040#PolymorphicMapType_16317| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_16317) (SummandMask1@@4 T@PolymorphicMapType_16317) (SummandMask2@@4 T@PolymorphicMapType_16317) (o_2@@64 T@Ref) (f_4@@64 T@Field_8004_22198) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16317_8004_74717#PolymorphicMapType_16317| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_16317) (SummandMask1@@5 T@PolymorphicMapType_16317) (SummandMask2@@5 T@PolymorphicMapType_16317) (o_2@@65 T@Ref) (f_4@@65 T@Field_16356_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16317_8004_53#PolymorphicMapType_16317| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_16317) (SummandMask1@@6 T@PolymorphicMapType_16317) (SummandMask2@@6 T@PolymorphicMapType_16317) (o_2@@66 T@Ref) (f_4@@66 T@Field_16369_16370) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16317_8006_8007#PolymorphicMapType_16317| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_16317) (SummandMask1@@7 T@PolymorphicMapType_16317) (SummandMask2@@7 T@PolymorphicMapType_16317) (o_2@@67 T@Ref) (f_4@@67 T@Field_19683_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16317_8004_1189#PolymorphicMapType_16317| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_16317) (SummandMask1@@8 T@PolymorphicMapType_16317) (SummandMask2@@8 T@PolymorphicMapType_16317) (o_2@@68 T@Ref) (f_4@@68 T@Field_8004_8040) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16317_8004_8065#PolymorphicMapType_16317| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_16317) (SummandMask1@@9 T@PolymorphicMapType_16317) (SummandMask2@@9 T@PolymorphicMapType_16317) (o_2@@69 T@Ref) (f_4@@69 T@Field_22193_22198) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16317_8064_74318#PolymorphicMapType_16317| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_16317) (SummandMask1@@10 T@PolymorphicMapType_16317) (SummandMask2@@10 T@PolymorphicMapType_16317) (o_2@@70 T@Ref) (f_4@@70 T@Field_8064_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16317_8064_53#PolymorphicMapType_16317| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_16317) (SummandMask1@@11 T@PolymorphicMapType_16317) (SummandMask2@@11 T@PolymorphicMapType_16317) (o_2@@71 T@Ref) (f_4@@71 T@Field_8064_8007) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16317_8064_8007#PolymorphicMapType_16317| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_16317) (SummandMask1@@12 T@PolymorphicMapType_16317) (SummandMask2@@12 T@PolymorphicMapType_16317) (o_2@@72 T@Ref) (f_4@@72 T@Field_8064_1189) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16317_8064_1189#PolymorphicMapType_16317| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_16317) (SummandMask1@@13 T@PolymorphicMapType_16317) (SummandMask2@@13 T@PolymorphicMapType_16317) (o_2@@73 T@Ref) (f_4@@73 T@Field_20071_20072) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16317_8064_8065#PolymorphicMapType_16317| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_16296) (ExhaleHeap@@22 T@PolymorphicMapType_16296) (Mask@@54 T@PolymorphicMapType_16317) (pm_f_4@@5 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_8064_8065 Mask@@54 null pm_f_4@@5) (IsPredicateField_8064_8065 pm_f_4@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20@@14 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4 f_20@@14) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@28) o2_4 f_20@@14) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4 f_20@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4 f_20@@14))
)) (forall ((o2_4@@0 T@Ref) (f_20@@15 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@0 f_20@@15) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@28) o2_4@@0 f_20@@15) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@0 f_20@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@0 f_20@@15))
))) (forall ((o2_4@@1 T@Ref) (f_20@@16 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@1 f_20@@16) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@28) o2_4@@1 f_20@@16) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@1 f_20@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@1 f_20@@16))
))) (forall ((o2_4@@2 T@Ref) (f_20@@17 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@2 f_20@@17) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@28) o2_4@@2 f_20@@17) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@2 f_20@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@2 f_20@@17))
))) (forall ((o2_4@@3 T@Ref) (f_20@@18 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@3 f_20@@18) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@28) o2_4@@3 f_20@@18) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@3 f_20@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@3 f_20@@18))
))) (forall ((o2_4@@4 T@Ref) (f_20@@19 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@4 f_20@@19) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@28) o2_4@@4 f_20@@19) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@4 f_20@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@4 f_20@@19))
))) (forall ((o2_4@@5 T@Ref) (f_20@@20 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@5 f_20@@20) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@28) o2_4@@5 f_20@@20) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@5 f_20@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@5 f_20@@20))
))) (forall ((o2_4@@6 T@Ref) (f_20@@21 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@6 f_20@@21) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@28) o2_4@@6 f_20@@21) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@6 f_20@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@6 f_20@@21))
))) (forall ((o2_4@@7 T@Ref) (f_20@@22 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@7 f_20@@22) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@28) o2_4@@7 f_20@@22) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@7 f_20@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@7 f_20@@22))
))) (forall ((o2_4@@8 T@Ref) (f_20@@23 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@8 f_20@@23) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) o2_4@@8 f_20@@23) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@8 f_20@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@8 f_20@@23))
))) (forall ((o2_4@@9 T@Ref) (f_20@@24 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@9 f_20@@24) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@28) o2_4@@9 f_20@@24) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@9 f_20@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@9 f_20@@24))
))) (forall ((o2_4@@10 T@Ref) (f_20@@25 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@10 f_20@@25) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@28) o2_4@@10 f_20@@25) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@10 f_20@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@10 f_20@@25))
))) (forall ((o2_4@@11 T@Ref) (f_20@@26 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@11 f_20@@26) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@28) o2_4@@11 f_20@@26) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@11 f_20@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@11 f_20@@26))
))) (forall ((o2_4@@12 T@Ref) (f_20@@27 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@12 f_20@@27) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@28) o2_4@@12 f_20@@27) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@12 f_20@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@12 f_20@@27))
))) (forall ((o2_4@@13 T@Ref) (f_20@@28 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@28) null (PredicateMaskField_8064 pm_f_4@@5))) o2_4@@13 f_20@@28) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@28) o2_4@@13 f_20@@28) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@13 f_20@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@22) o2_4@@13 f_20@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@54) (IsPredicateField_8064_8065 pm_f_4@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_16296) (ExhaleHeap@@23 T@PolymorphicMapType_16296) (Mask@@55 T@PolymorphicMapType_16317) (pm_f_4@@6 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_8039_8040 Mask@@55 null pm_f_4@@6) (IsPredicateField_8039_8040 pm_f_4@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@14 T@Ref) (f_20@@29 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@14 f_20@@29) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@29) o2_4@@14 f_20@@29) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@14 f_20@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@14 f_20@@29))
)) (forall ((o2_4@@15 T@Ref) (f_20@@30 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@15 f_20@@30) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@29) o2_4@@15 f_20@@30) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@15 f_20@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@15 f_20@@30))
))) (forall ((o2_4@@16 T@Ref) (f_20@@31 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@16 f_20@@31) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@29) o2_4@@16 f_20@@31) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@16 f_20@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@16 f_20@@31))
))) (forall ((o2_4@@17 T@Ref) (f_20@@32 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@17 f_20@@32) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@29) o2_4@@17 f_20@@32) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@17 f_20@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@17 f_20@@32))
))) (forall ((o2_4@@18 T@Ref) (f_20@@33 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@18 f_20@@33) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@29) o2_4@@18 f_20@@33) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@18 f_20@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@18 f_20@@33))
))) (forall ((o2_4@@19 T@Ref) (f_20@@34 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@19 f_20@@34) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@29) o2_4@@19 f_20@@34) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@19 f_20@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@19 f_20@@34))
))) (forall ((o2_4@@20 T@Ref) (f_20@@35 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@20 f_20@@35) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@29) o2_4@@20 f_20@@35) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@20 f_20@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@20 f_20@@35))
))) (forall ((o2_4@@21 T@Ref) (f_20@@36 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@21 f_20@@36) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@29) o2_4@@21 f_20@@36) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@21 f_20@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@21 f_20@@36))
))) (forall ((o2_4@@22 T@Ref) (f_20@@37 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@22 f_20@@37) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@29) o2_4@@22 f_20@@37) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@22 f_20@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@22 f_20@@37))
))) (forall ((o2_4@@23 T@Ref) (f_20@@38 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@23 f_20@@38) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@29) o2_4@@23 f_20@@38) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@23 f_20@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@23 f_20@@38))
))) (forall ((o2_4@@24 T@Ref) (f_20@@39 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@24 f_20@@39) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@29) o2_4@@24 f_20@@39) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@24 f_20@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@24 f_20@@39))
))) (forall ((o2_4@@25 T@Ref) (f_20@@40 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@25 f_20@@40) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@29) o2_4@@25 f_20@@40) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@25 f_20@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@25 f_20@@40))
))) (forall ((o2_4@@26 T@Ref) (f_20@@41 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@26 f_20@@41) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@29) o2_4@@26 f_20@@41) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@26 f_20@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@26 f_20@@41))
))) (forall ((o2_4@@27 T@Ref) (f_20@@42 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@27 f_20@@42) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@29) o2_4@@27 f_20@@42) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@27 f_20@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@27 f_20@@42))
))) (forall ((o2_4@@28 T@Ref) (f_20@@43 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) null (PredicateMaskField_8039 pm_f_4@@6))) o2_4@@28 f_20@@43) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@29) o2_4@@28 f_20@@43) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@28 f_20@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@23) o2_4@@28 f_20@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@55) (IsPredicateField_8039_8040 pm_f_4@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_16296) (ExhaleHeap@@24 T@PolymorphicMapType_16296) (Mask@@56 T@PolymorphicMapType_16317) (pm_f_4@@7 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_8004_8040 Mask@@56 null pm_f_4@@7) (IsPredicateField_8004_62599 pm_f_4@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@29 T@Ref) (f_20@@44 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@29 f_20@@44) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@30) o2_4@@29 f_20@@44) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@29 f_20@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@29 f_20@@44))
)) (forall ((o2_4@@30 T@Ref) (f_20@@45 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@30 f_20@@45) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@30) o2_4@@30 f_20@@45) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@30 f_20@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@30 f_20@@45))
))) (forall ((o2_4@@31 T@Ref) (f_20@@46 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@31 f_20@@46) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@30) o2_4@@31 f_20@@46) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@31 f_20@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@31 f_20@@46))
))) (forall ((o2_4@@32 T@Ref) (f_20@@47 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@32 f_20@@47) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@30) o2_4@@32 f_20@@47) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@32 f_20@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@32 f_20@@47))
))) (forall ((o2_4@@33 T@Ref) (f_20@@48 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@33 f_20@@48) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) o2_4@@33 f_20@@48) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@33 f_20@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@33 f_20@@48))
))) (forall ((o2_4@@34 T@Ref) (f_20@@49 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@34 f_20@@49) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@30) o2_4@@34 f_20@@49) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@34 f_20@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@34 f_20@@49))
))) (forall ((o2_4@@35 T@Ref) (f_20@@50 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@35 f_20@@50) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@30) o2_4@@35 f_20@@50) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@35 f_20@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@35 f_20@@50))
))) (forall ((o2_4@@36 T@Ref) (f_20@@51 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@36 f_20@@51) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@30) o2_4@@36 f_20@@51) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@36 f_20@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@36 f_20@@51))
))) (forall ((o2_4@@37 T@Ref) (f_20@@52 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@37 f_20@@52) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@30) o2_4@@37 f_20@@52) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@37 f_20@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@37 f_20@@52))
))) (forall ((o2_4@@38 T@Ref) (f_20@@53 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@38 f_20@@53) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@30) o2_4@@38 f_20@@53) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@38 f_20@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@38 f_20@@53))
))) (forall ((o2_4@@39 T@Ref) (f_20@@54 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@39 f_20@@54) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@30) o2_4@@39 f_20@@54) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@39 f_20@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@39 f_20@@54))
))) (forall ((o2_4@@40 T@Ref) (f_20@@55 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@40 f_20@@55) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@30) o2_4@@40 f_20@@55) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@40 f_20@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@40 f_20@@55))
))) (forall ((o2_4@@41 T@Ref) (f_20@@56 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@41 f_20@@56) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@30) o2_4@@41 f_20@@56) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@41 f_20@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@41 f_20@@56))
))) (forall ((o2_4@@42 T@Ref) (f_20@@57 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@42 f_20@@57) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@30) o2_4@@42 f_20@@57) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@42 f_20@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@42 f_20@@57))
))) (forall ((o2_4@@43 T@Ref) (f_20@@58 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@30) null (PredicateMaskField_8004 pm_f_4@@7))) o2_4@@43 f_20@@58) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@30) o2_4@@43 f_20@@58) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@43 f_20@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@24) o2_4@@43 f_20@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@56) (IsPredicateField_8004_62599 pm_f_4@@7))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_16296) (ExhaleHeap@@25 T@PolymorphicMapType_16296) (Mask@@57 T@PolymorphicMapType_16317) (pm_f_4@@8 T@Field_20071_20072) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_8064_8065 Mask@@57 null pm_f_4@@8) (IsWandField_8064_68280 pm_f_4@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@44 T@Ref) (f_20@@59 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@44 f_20@@59) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@31) o2_4@@44 f_20@@59) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@44 f_20@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@44 f_20@@59))
)) (forall ((o2_4@@45 T@Ref) (f_20@@60 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@45 f_20@@60) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@31) o2_4@@45 f_20@@60) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@45 f_20@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@45 f_20@@60))
))) (forall ((o2_4@@46 T@Ref) (f_20@@61 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@46 f_20@@61) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@31) o2_4@@46 f_20@@61) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@46 f_20@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@46 f_20@@61))
))) (forall ((o2_4@@47 T@Ref) (f_20@@62 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@47 f_20@@62) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@31) o2_4@@47 f_20@@62) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@47 f_20@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@47 f_20@@62))
))) (forall ((o2_4@@48 T@Ref) (f_20@@63 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@48 f_20@@63) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@31) o2_4@@48 f_20@@63) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@48 f_20@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@48 f_20@@63))
))) (forall ((o2_4@@49 T@Ref) (f_20@@64 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@49 f_20@@64) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@31) o2_4@@49 f_20@@64) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@49 f_20@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@49 f_20@@64))
))) (forall ((o2_4@@50 T@Ref) (f_20@@65 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@50 f_20@@65) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@31) o2_4@@50 f_20@@65) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@50 f_20@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@50 f_20@@65))
))) (forall ((o2_4@@51 T@Ref) (f_20@@66 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@51 f_20@@66) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@31) o2_4@@51 f_20@@66) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@51 f_20@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@51 f_20@@66))
))) (forall ((o2_4@@52 T@Ref) (f_20@@67 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@52 f_20@@67) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@31) o2_4@@52 f_20@@67) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@52 f_20@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@52 f_20@@67))
))) (forall ((o2_4@@53 T@Ref) (f_20@@68 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@53 f_20@@68) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) o2_4@@53 f_20@@68) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@53 f_20@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@53 f_20@@68))
))) (forall ((o2_4@@54 T@Ref) (f_20@@69 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@54 f_20@@69) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@31) o2_4@@54 f_20@@69) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@54 f_20@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@54 f_20@@69))
))) (forall ((o2_4@@55 T@Ref) (f_20@@70 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@55 f_20@@70) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@31) o2_4@@55 f_20@@70) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@55 f_20@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@55 f_20@@70))
))) (forall ((o2_4@@56 T@Ref) (f_20@@71 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@56 f_20@@71) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@31) o2_4@@56 f_20@@71) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@56 f_20@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@56 f_20@@71))
))) (forall ((o2_4@@57 T@Ref) (f_20@@72 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@57 f_20@@72) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@31) o2_4@@57 f_20@@72) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@57 f_20@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@57 f_20@@72))
))) (forall ((o2_4@@58 T@Ref) (f_20@@73 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@31) null (WandMaskField_8064 pm_f_4@@8))) o2_4@@58 f_20@@73) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@31) o2_4@@58 f_20@@73) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@58 f_20@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@25) o2_4@@58 f_20@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@57) (IsWandField_8064_68280 pm_f_4@@8))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_16296) (ExhaleHeap@@26 T@PolymorphicMapType_16296) (Mask@@58 T@PolymorphicMapType_16317) (pm_f_4@@9 T@Field_23172_23173) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_8039_8040 Mask@@58 null pm_f_4@@9) (IsWandField_8039_67923 pm_f_4@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@59 T@Ref) (f_20@@74 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@59 f_20@@74) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@32) o2_4@@59 f_20@@74) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@59 f_20@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@59 f_20@@74))
)) (forall ((o2_4@@60 T@Ref) (f_20@@75 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@60 f_20@@75) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@32) o2_4@@60 f_20@@75) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@60 f_20@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@60 f_20@@75))
))) (forall ((o2_4@@61 T@Ref) (f_20@@76 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@61 f_20@@76) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@32) o2_4@@61 f_20@@76) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@61 f_20@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@61 f_20@@76))
))) (forall ((o2_4@@62 T@Ref) (f_20@@77 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@62 f_20@@77) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@32) o2_4@@62 f_20@@77) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@62 f_20@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@62 f_20@@77))
))) (forall ((o2_4@@63 T@Ref) (f_20@@78 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@63 f_20@@78) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@32) o2_4@@63 f_20@@78) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@63 f_20@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@63 f_20@@78))
))) (forall ((o2_4@@64 T@Ref) (f_20@@79 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@64 f_20@@79) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@32) o2_4@@64 f_20@@79) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@64 f_20@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@64 f_20@@79))
))) (forall ((o2_4@@65 T@Ref) (f_20@@80 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@65 f_20@@80) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@32) o2_4@@65 f_20@@80) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@65 f_20@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@65 f_20@@80))
))) (forall ((o2_4@@66 T@Ref) (f_20@@81 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@66 f_20@@81) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@32) o2_4@@66 f_20@@81) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@66 f_20@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@66 f_20@@81))
))) (forall ((o2_4@@67 T@Ref) (f_20@@82 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@67 f_20@@82) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@32) o2_4@@67 f_20@@82) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@67 f_20@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@67 f_20@@82))
))) (forall ((o2_4@@68 T@Ref) (f_20@@83 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@68 f_20@@83) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@32) o2_4@@68 f_20@@83) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@68 f_20@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@68 f_20@@83))
))) (forall ((o2_4@@69 T@Ref) (f_20@@84 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@69 f_20@@84) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@32) o2_4@@69 f_20@@84) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@69 f_20@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@69 f_20@@84))
))) (forall ((o2_4@@70 T@Ref) (f_20@@85 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@70 f_20@@85) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@32) o2_4@@70 f_20@@85) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@70 f_20@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@70 f_20@@85))
))) (forall ((o2_4@@71 T@Ref) (f_20@@86 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@71 f_20@@86) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@32) o2_4@@71 f_20@@86) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@71 f_20@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@71 f_20@@86))
))) (forall ((o2_4@@72 T@Ref) (f_20@@87 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@72 f_20@@87) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@32) o2_4@@72 f_20@@87) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@72 f_20@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@72 f_20@@87))
))) (forall ((o2_4@@73 T@Ref) (f_20@@88 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) null (WandMaskField_8039 pm_f_4@@9))) o2_4@@73 f_20@@88) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@32) o2_4@@73 f_20@@88) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@73 f_20@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@26) o2_4@@73 f_20@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@58) (IsWandField_8039_67923 pm_f_4@@9))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_16296) (ExhaleHeap@@27 T@PolymorphicMapType_16296) (Mask@@59 T@PolymorphicMapType_16317) (pm_f_4@@10 T@Field_8004_8040) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_8004_8040 Mask@@59 null pm_f_4@@10) (IsWandField_8004_67566 pm_f_4@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_4@@74 T@Ref) (f_20@@89 T@Field_19683_1189) ) (!  (=> (select (|PolymorphicMapType_16845_8004_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@74 f_20@@89) (= (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@33) o2_4@@74 f_20@@89) (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@74 f_20@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@74 f_20@@89))
)) (forall ((o2_4@@75 T@Ref) (f_20@@90 T@Field_16369_16370) ) (!  (=> (select (|PolymorphicMapType_16845_8006_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@75 f_20@@90) (= (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@33) o2_4@@75 f_20@@90) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@75 f_20@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@75 f_20@@90))
))) (forall ((o2_4@@76 T@Ref) (f_20@@91 T@Field_16356_53) ) (!  (=> (select (|PolymorphicMapType_16845_8004_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@76 f_20@@91) (= (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@33) o2_4@@76 f_20@@91) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@76 f_20@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@76 f_20@@91))
))) (forall ((o2_4@@77 T@Ref) (f_20@@92 T@Field_8004_8040) ) (!  (=> (select (|PolymorphicMapType_16845_8004_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@77 f_20@@92) (= (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@33) o2_4@@77 f_20@@92) (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@77 f_20@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@77 f_20@@92))
))) (forall ((o2_4@@78 T@Ref) (f_20@@93 T@Field_8004_22198) ) (!  (=> (select (|PolymorphicMapType_16845_8004_64381#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@78 f_20@@93) (= (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) o2_4@@78 f_20@@93) (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@78 f_20@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@78 f_20@@93))
))) (forall ((o2_4@@79 T@Ref) (f_20@@94 T@Field_8064_1189) ) (!  (=> (select (|PolymorphicMapType_16845_20071_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@79 f_20@@94) (= (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@33) o2_4@@79 f_20@@94) (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@79 f_20@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@79 f_20@@94))
))) (forall ((o2_4@@80 T@Ref) (f_20@@95 T@Field_8064_8007) ) (!  (=> (select (|PolymorphicMapType_16845_20071_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@80 f_20@@95) (= (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@33) o2_4@@80 f_20@@95) (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@80 f_20@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@80 f_20@@95))
))) (forall ((o2_4@@81 T@Ref) (f_20@@96 T@Field_8064_53) ) (!  (=> (select (|PolymorphicMapType_16845_20071_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@81 f_20@@96) (= (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@33) o2_4@@81 f_20@@96) (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@81 f_20@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@81 f_20@@96))
))) (forall ((o2_4@@82 T@Ref) (f_20@@97 T@Field_20071_20072) ) (!  (=> (select (|PolymorphicMapType_16845_20071_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@82 f_20@@97) (= (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@33) o2_4@@82 f_20@@97) (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@82 f_20@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@82 f_20@@97))
))) (forall ((o2_4@@83 T@Ref) (f_20@@98 T@Field_22193_22198) ) (!  (=> (select (|PolymorphicMapType_16845_20071_65429#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@83 f_20@@98) (= (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@33) o2_4@@83 f_20@@98) (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@83 f_20@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@83 f_20@@98))
))) (forall ((o2_4@@84 T@Ref) (f_20@@99 T@Field_8039_1189) ) (!  (=> (select (|PolymorphicMapType_16845_23172_1189#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@84 f_20@@99) (= (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@33) o2_4@@84 f_20@@99) (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@84 f_20@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@84 f_20@@99))
))) (forall ((o2_4@@85 T@Ref) (f_20@@100 T@Field_8039_8007) ) (!  (=> (select (|PolymorphicMapType_16845_23172_8007#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@85 f_20@@100) (= (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@33) o2_4@@85 f_20@@100) (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@85 f_20@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@85 f_20@@100))
))) (forall ((o2_4@@86 T@Ref) (f_20@@101 T@Field_8039_53) ) (!  (=> (select (|PolymorphicMapType_16845_23172_53#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@86 f_20@@101) (= (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@33) o2_4@@86 f_20@@101) (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@86 f_20@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@86 f_20@@101))
))) (forall ((o2_4@@87 T@Ref) (f_20@@102 T@Field_23172_23173) ) (!  (=> (select (|PolymorphicMapType_16845_23172_20072#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@87 f_20@@102) (= (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@33) o2_4@@87 f_20@@102) (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@87 f_20@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@87 f_20@@102))
))) (forall ((o2_4@@88 T@Ref) (f_20@@103 T@Field_23185_23190) ) (!  (=> (select (|PolymorphicMapType_16845_23172_66477#PolymorphicMapType_16845| (select (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@33) null (WandMaskField_8004 pm_f_4@@10))) o2_4@@88 f_20@@103) (= (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@33) o2_4@@88 f_20@@103) (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@88 f_20@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| ExhaleHeap@@27) o2_4@@88 f_20@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@59) (IsWandField_8004_67566 pm_f_4@@10))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_16296) (Mask@@60 T@PolymorphicMapType_16317) (this@@10 T@Ref) ) (!  (=> (state Heap@@34 Mask@@60) (= (|get'| Heap@@34 this@@10) (|get#frame| (select (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@34) null (tinv this@@10)) this@@10)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@34 Mask@@60) (|get'| Heap@@34 this@@10))
)))
(assert (forall ((this@@11 T@Ref) ) (! (= (getPredWandId_8039_8040 (inv this@@11)) 0)
 :qid |stdinbpl.313:15|
 :skolemid |29|
 :pattern ( (inv this@@11))
)))
(assert (forall ((this@@12 T@Ref) ) (! (= (getPredWandId_8064_8065 (tinv this@@12)) 1)
 :qid |stdinbpl.368:15|
 :skolemid |35|
 :pattern ( (tinv this@@12))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_16296) (o_12 T@Ref) (f_21 T@Field_23185_23190) (v T@PolymorphicMapType_16845) ) (! (succHeap Heap@@35 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@35) (store (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@35) o_12 f_21 v) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@35) (store (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@35) o_12 f_21 v) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@35) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_16296) (o_12@@0 T@Ref) (f_21@@0 T@Field_23172_23173) (v@@0 T@FrameType) ) (! (succHeap Heap@@36 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@36) (store (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@36) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@36) (store (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@36) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@36) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_16296) (o_12@@1 T@Ref) (f_21@@1 T@Field_8039_1189) (v@@1 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@37) (store (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@37) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@37) (store (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@37) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@37) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_16296) (o_12@@2 T@Ref) (f_21@@2 T@Field_8039_8007) (v@@2 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@38) (store (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@38) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@38) (store (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@38) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@38) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_16296) (o_12@@3 T@Ref) (f_21@@3 T@Field_8039_53) (v@@3 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@39) (store (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@39) o_12@@3 f_21@@3 v@@3) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@39) (store (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@39) o_12@@3 f_21@@3 v@@3) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@39) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_16296) (o_12@@4 T@Ref) (f_21@@4 T@Field_22193_22198) (v@@4 T@PolymorphicMapType_16845) ) (! (succHeap Heap@@40 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@40) (store (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@40) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@40) (store (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@40) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@40) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_16296) (o_12@@5 T@Ref) (f_21@@5 T@Field_20071_20072) (v@@5 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@41) (store (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@41) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@41) (store (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@41) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@41) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_16296) (o_12@@6 T@Ref) (f_21@@6 T@Field_8064_1189) (v@@6 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@42) (store (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@42) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@42) (store (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@42) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@42) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_16296) (o_12@@7 T@Ref) (f_21@@7 T@Field_8064_8007) (v@@7 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@43) (store (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@43) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@43) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@43) (store (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@43) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_16296) (o_12@@8 T@Ref) (f_21@@8 T@Field_8064_53) (v@@8 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@44) (store (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@44) o_12@@8 f_21@@8 v@@8)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@44) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@44) (store (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@44) o_12@@8 f_21@@8 v@@8)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_16296) (o_12@@9 T@Ref) (f_21@@9 T@Field_8004_22198) (v@@9 T@PolymorphicMapType_16845) ) (! (succHeap Heap@@45 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@45) (store (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@45) o_12@@9 f_21@@9 v@@9) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@45) (store (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@45) o_12@@9 f_21@@9 v@@9) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@45) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_16296) (o_12@@10 T@Ref) (f_21@@10 T@Field_8004_8040) (v@@10 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@46) (store (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@46) o_12@@10 f_21@@10 v@@10) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@46) (store (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@46) o_12@@10 f_21@@10 v@@10) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@46) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_16296) (o_12@@11 T@Ref) (f_21@@11 T@Field_19683_1189) (v@@11 Int) ) (! (succHeap Heap@@47 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@47) (store (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@47) o_12@@11 f_21@@11 v@@11) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@47) (store (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@47) o_12@@11 f_21@@11 v@@11) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@47) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_16296) (o_12@@12 T@Ref) (f_21@@12 T@Field_16369_16370) (v@@12 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@48) (store (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@48) o_12@@12 f_21@@12 v@@12) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@48) (store (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@48) o_12@@12 f_21@@12 v@@12) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@48) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_16296) (o_12@@13 T@Ref) (f_21@@13 T@Field_16356_53) (v@@13 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_16296 (store (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@49) o_12@@13 f_21@@13 v@@13) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16296 (store (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@49) o_12@@13 f_21@@13 v@@13) (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_8065#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8068_22285#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_8040#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8043_26663#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_8040#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8004_60157#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_8007#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8039_53#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_1189#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_8007#PolymorphicMapType_16296| Heap@@49) (|PolymorphicMapType_16296_8064_53#PolymorphicMapType_16296| Heap@@49)))
)))
(assert (forall ((this@@13 T@Ref) ) (! (= (PredicateMaskField_8039 (inv this@@13)) (|inv#sm| this@@13))
 :qid |stdinbpl.305:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_8039 (inv this@@13)))
)))
(assert (forall ((this@@14 T@Ref) ) (! (= (PredicateMaskField_8064 (tinv this@@14)) (|tinv#sm| this@@14))
 :qid |stdinbpl.360:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_8064 (tinv this@@14)))
)))
(assert (forall ((o_12@@14 T@Ref) (f_19 T@Field_16369_16370) (Heap@@50 T@PolymorphicMapType_16296) ) (!  (=> (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@50) o_12@@14 $allocated) (select (|PolymorphicMapType_16296_7876_53#PolymorphicMapType_16296| Heap@@50) (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@50) o_12@@14 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16296_7879_7880#PolymorphicMapType_16296| Heap@@50) o_12@@14 f_19))
)))
(assert (forall ((p@@3 T@Field_23172_23173) (v_1@@2 T@FrameType) (q T@Field_23172_23173) (w@@2 T@FrameType) (r T@Field_23172_23173) (u T@FrameType) ) (!  (=> (and (InsidePredicate_23172_23172 p@@3 v_1@@2 q w@@2) (InsidePredicate_23172_23172 q w@@2 r u)) (InsidePredicate_23172_23172 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_23172 p@@3 v_1@@2 q w@@2) (InsidePredicate_23172_23172 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_23172_23173) (v_1@@3 T@FrameType) (q@@0 T@Field_23172_23173) (w@@3 T@FrameType) (r@@0 T@Field_8004_8040) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_23172 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_23172_16356 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_23172_16356 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_23172 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_23172_16356 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_23172_23173) (v_1@@4 T@FrameType) (q@@1 T@Field_23172_23173) (w@@4 T@FrameType) (r@@1 T@Field_20071_20072) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_23172 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_23172_8064 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_23172_8064 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_23172 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_23172_8064 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_23172_23173) (v_1@@5 T@FrameType) (q@@2 T@Field_8004_8040) (w@@5 T@FrameType) (r@@2 T@Field_23172_23173) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_16356 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16356_23172 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_23172_23172 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_16356 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16356_23172 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_23172_23173) (v_1@@6 T@FrameType) (q@@3 T@Field_8004_8040) (w@@6 T@FrameType) (r@@3 T@Field_8004_8040) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_16356 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16356_16356 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_23172_16356 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_16356 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16356_16356 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_23172_23173) (v_1@@7 T@FrameType) (q@@4 T@Field_8004_8040) (w@@7 T@FrameType) (r@@4 T@Field_20071_20072) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_16356 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16356_8064 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_23172_8064 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_16356 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16356_8064 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_23172_23173) (v_1@@8 T@FrameType) (q@@5 T@Field_20071_20072) (w@@8 T@FrameType) (r@@5 T@Field_23172_23173) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_8064 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8064_23172 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_23172_23172 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_8064 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8064_23172 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_23172_23173) (v_1@@9 T@FrameType) (q@@6 T@Field_20071_20072) (w@@9 T@FrameType) (r@@6 T@Field_8004_8040) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_8064 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8064_16356 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_23172_16356 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_8064 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8064_16356 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_23172_23173) (v_1@@10 T@FrameType) (q@@7 T@Field_20071_20072) (w@@10 T@FrameType) (r@@7 T@Field_20071_20072) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_23172_8064 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8064_8064 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_23172_8064 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23172_8064 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8064_8064 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_8004_8040) (v_1@@11 T@FrameType) (q@@8 T@Field_23172_23173) (w@@11 T@FrameType) (r@@8 T@Field_23172_23173) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_23172 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_23172_23172 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16356_23172 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_23172 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_23172_23172 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_8004_8040) (v_1@@12 T@FrameType) (q@@9 T@Field_23172_23173) (w@@12 T@FrameType) (r@@9 T@Field_8004_8040) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_23172 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_23172_16356 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16356_16356 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_23172 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_23172_16356 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_8004_8040) (v_1@@13 T@FrameType) (q@@10 T@Field_23172_23173) (w@@13 T@FrameType) (r@@10 T@Field_20071_20072) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_23172 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_23172_8064 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16356_8064 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_23172 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_23172_8064 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_8004_8040) (v_1@@14 T@FrameType) (q@@11 T@Field_8004_8040) (w@@14 T@FrameType) (r@@11 T@Field_23172_23173) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_16356 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16356_23172 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16356_23172 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_16356 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16356_23172 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_8004_8040) (v_1@@15 T@FrameType) (q@@12 T@Field_8004_8040) (w@@15 T@FrameType) (r@@12 T@Field_8004_8040) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_16356 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16356_16356 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16356_16356 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_16356 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16356_16356 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_8004_8040) (v_1@@16 T@FrameType) (q@@13 T@Field_8004_8040) (w@@16 T@FrameType) (r@@13 T@Field_20071_20072) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_16356 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16356_8064 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16356_8064 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_16356 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16356_8064 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_8004_8040) (v_1@@17 T@FrameType) (q@@14 T@Field_20071_20072) (w@@17 T@FrameType) (r@@14 T@Field_23172_23173) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_8064 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8064_23172 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16356_23172 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_8064 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8064_23172 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_8004_8040) (v_1@@18 T@FrameType) (q@@15 T@Field_20071_20072) (w@@18 T@FrameType) (r@@15 T@Field_8004_8040) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_8064 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8064_16356 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16356_16356 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_8064 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8064_16356 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_8004_8040) (v_1@@19 T@FrameType) (q@@16 T@Field_20071_20072) (w@@19 T@FrameType) (r@@16 T@Field_20071_20072) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16356_8064 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8064_8064 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16356_8064 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16356_8064 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8064_8064 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_20071_20072) (v_1@@20 T@FrameType) (q@@17 T@Field_23172_23173) (w@@20 T@FrameType) (r@@17 T@Field_23172_23173) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_23172 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_23172_23172 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_8064_23172 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_23172 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_23172_23172 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_20071_20072) (v_1@@21 T@FrameType) (q@@18 T@Field_23172_23173) (w@@21 T@FrameType) (r@@18 T@Field_8004_8040) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_23172 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_23172_16356 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_8064_16356 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_23172 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_23172_16356 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_20071_20072) (v_1@@22 T@FrameType) (q@@19 T@Field_23172_23173) (w@@22 T@FrameType) (r@@19 T@Field_20071_20072) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_23172 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_23172_8064 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_8064_8064 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_23172 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_23172_8064 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_20071_20072) (v_1@@23 T@FrameType) (q@@20 T@Field_8004_8040) (w@@23 T@FrameType) (r@@20 T@Field_23172_23173) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_16356 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16356_23172 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_8064_23172 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_16356 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16356_23172 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_20071_20072) (v_1@@24 T@FrameType) (q@@21 T@Field_8004_8040) (w@@24 T@FrameType) (r@@21 T@Field_8004_8040) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_16356 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16356_16356 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_8064_16356 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_16356 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16356_16356 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_20071_20072) (v_1@@25 T@FrameType) (q@@22 T@Field_8004_8040) (w@@25 T@FrameType) (r@@22 T@Field_20071_20072) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_16356 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16356_8064 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_8064_8064 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_16356 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16356_8064 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_20071_20072) (v_1@@26 T@FrameType) (q@@23 T@Field_20071_20072) (w@@26 T@FrameType) (r@@23 T@Field_23172_23173) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_8064 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8064_23172 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_8064_23172 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_8064 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8064_23172 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_20071_20072) (v_1@@27 T@FrameType) (q@@24 T@Field_20071_20072) (w@@27 T@FrameType) (r@@24 T@Field_8004_8040) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_8064 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8064_16356 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_8064_16356 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_8064 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8064_16356 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_20071_20072) (v_1@@28 T@FrameType) (q@@25 T@Field_20071_20072) (w@@28 T@FrameType) (r@@25 T@Field_20071_20072) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_8064_8064 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8064_8064 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_8064_8064 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8064_8064 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8064_8064 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

